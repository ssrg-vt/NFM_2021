	.section	.text
	.align	32
	#Procedure 0x401760

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	jne	.label_7
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	rbp, rbp
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018b0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	esi, OFFSET FLAT:.str.22
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edi, OFFSET FLAT:.str.6
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	nop	
	add	rbx, 0x10
	nop	
	test	rsi, rsi
	jne	.label_9
.label_10:
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.6
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_8
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_8
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	
	.section	.text
	.align	32
	#Procedure 0x401a30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rsi
	mov	r14d, edi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.8
	mov	esi, OFFSET FLAT:.str.9
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	call	textdomain
	nop	
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	nop	
	mov	r12d, 2
	xor	ecx, ecx
.label_34:
	mov	r15b, cl
	nop	
	mov	ebp, r12d
	mov	rsp, rsp
	jmp	.label_15
.label_32:
	mov	rsp, rsp
	mov	ebp, 1
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	rsp, rsp
	mov	r12d, ebp
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, rbx
	nop	
	call	getopt_long
	nop	
	cmp	eax, 0x61
	jle	.label_31
	cmp	eax, 0x62
	lea	rdi, [rdi]
	je	.label_15
	mov	cl, 1
	cmp	eax, 0x70
	je	.label_34
	cmp	eax, 0x63
	je	.label_32
	mov	rbp, rbp
	jmp	.label_11
.label_31:
	cmp	eax, -1
	jne	.label_14
	movsxd	rbp,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	test	r15b, r15b
	lea	rsi, [rsi]
	je	.label_35
	nop	
	cmp	r12d, 2
	jne	.label_29
.label_35:
	lea	r13, [rbx + rbp*8]
	mov	eax, r14d
	sub	eax, ebp
	mov	rsp, rsp
	movzx	ebx, r15b
	lea	rdi, [rdi]
	xor	ebx, 1
	mov	rsp, rsp
	cmp	ebx, eax
	jl	.label_17
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:G_line
	mov	rbp, rbp
	test	r15b, r15b
	lea	rsi, [rsi]
	je	.label_28
	mov	rbp, rbp
	mov	r14d, OFFSET FLAT:G_line
	xor	ebp, ebp
	nop	
.label_12:
	nop	
	mov	rdi, rbx
	call	puts
	nop	
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rax + rbx + 1]
	mov	rax, rbx
	lea	rsi, [rsi]
	sub	rax, r14
	mov	rsp, rsp
	cmp	rax, 0x10c4
	jb	.label_12
	jmp	.label_13
.label_28:
	mov	rbp, rbp
	cmp	r12d, 2
	nop	
	jne	.label_18
	call	guess_shell_syntax
	mov	r12d, eax
	nop	
	cmp	r12d, 2
	je	.label_23
.label_18:
	mov	edi, OFFSET FLAT:lsc_obstack
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	nop	
	mov	r8d, OFFSET FLAT:free
	nop	
	call	_obstack_begin
	cmp	ebp, r14d
	jne	.label_30
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	call	dc_parse_stream
	lea	rsi, [rsi]
	jmp	.label_24
.label_30:
	nop	
	mov	rdi, qword ptr [r13]
	lea	rdi, [rdi]
	call	dc_parse_file
.label_24:
	nop	
	mov	ebp, 1
	test	al, al
	je	.label_13
	movzx	ebp, al
	lea	rdi, [rdi]
	mov	r14,  qword ptr [word ptr [rip + label_19]]
	mov	rbp, rbp
	mov	r15,  qword ptr [word ptr [rip + label_20]]
	sub	r14, r15
	jne	.label_21
	lea	rdi, [rdi]
	or	byte ptr [byte ptr [rip + label_22]],  2
.label_21:
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	mov	rcx,  qword ptr [word ptr [rip + label_19]]
	add	rcx, rax
	not	rax
	mov	rbp, rbp
	and	rax, rcx
	mov	rcx,  qword ptr [word ptr [rip + label_26]]
	nop	
	mov	rdx, rax
	sub	rdx, rcx
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_27]]
	nop	
	mov	rdi, rsi
	nop	
	sub	rdi, rcx
	nop	
	cmp	rdx, rdi
	cmova	rax, rsi
	mov	qword ptr [word ptr [rip + label_19]],  rax
	mov	qword ptr [word ptr [rip + label_20]],  rax
	test	r12d, r12d
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.20
	cmove	rdi, rax
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.19
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.21
	cmove	rbx, rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, r14
	lea	rsi, [rsi]
	call	fwrite_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	ebp, 1
.label_13:
	nop	
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_14:
	cmp	eax, 0xffffff7d
	je	.label_16
	cmp	eax, 0xffffff7e
	mov	rsp, rsp
	jne	.label_11
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_16:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.12
	mov	rbp, rbp
	xor	r9d, r9d
	xor	eax, eax
	lea	rsi, [rsi]
	call	version_etc
	nop	
	xor	edi, edi
	call	exit
.label_29:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_17:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r13 + rbx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbp
	call	error
	nop	
	test	r15b, r15b
	je	.label_33
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_33:
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_11:
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_23:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e90

	.globl guess_shell_syntax
	.type guess_shell_syntax, @function
guess_shell_syntax:
	push	rax
	mov	edi, OFFSET FLAT:.str.44
	call	getenv
	mov	rsp, rsp
	mov	ecx, 2
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_36
	nop	
	cmp	byte ptr [rax], 0
	nop	
	je	.label_36
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	last_component
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x63
	jne	.label_37
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x73
	mov	rbp, rbp
	jne	.label_37
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x68
	mov	rbp, rbp
	jne	.label_37
	mov	ecx, 1
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 3], 0
	je	.label_36
.label_37:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.45
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	pop	rcx
	lea	rdi, [rdi]
	ret	
.label_36:
	nop	
	mov	eax, ecx
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30

	.globl dc_parse_stream
	.type dc_parse_stream, @function
dc_parse_stream:
	nop	
	push	rbp
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], 0
	mov	qword ptr [rsp + 0x28], 0
	mov	edi, OFFSET FLAT:.str.46
	call	getenv
	test	rax, rax
	mov	rbp, rbp
	je	.label_64
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_66
.label_64:
	mov	eax, OFFSET FLAT:.str.47
.label_66:
	mov	qword ptr [rsp], rax
	mov	r13d, OFFSET FLAT:G_line
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	eax, 3
	mov	qword ptr [rsp + 0x10], rax
	xor	r15d, r15d
	jmp	.label_42
	nop	dword ptr [rax]
.label_43:
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	free
.label_42:
	test	r12, r12
	mov	rsp, rsp
	je	.label_52
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x30]
	nop	
	lea	rsi, [rsp + 0x28]
	mov	rsp, rsp
	mov	rdx, r12
	call	getline
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	jg	.label_60
	mov	rbp, rbp
	jmp	.label_65
.label_52:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:label_38
	cmp	r13, rax
	nop	
	je	.label_39
	mov	rdi, r13
	call	strlen
	mov	rdi, r13
	lea	r13, [rax + r13 + 1]
.label_60:
	inc	r15
	lea	rsi, [rsp + 0x20]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x18]
	call	parse_line
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	nop	
	test	r14, r14
	je	.label_42
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_50
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.46
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	c_strcasecmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_62
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	cmp	eax, 2
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rsp, rsp
	cmove	eax, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	test	eax, eax
	je	.label_58
	movzx	eax, byte ptr [r14]
	lea	rdi, [rdi]
	cmp	eax, 0x2a
	lea	rsi, [rsi]
	je	.label_45
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	jne	.label_47
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	mov	rbp, rbp
	jne	.label_51
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	mov	rbp, rbp
	call	_obstack_newchunk
.label_51:
	mov	rax,  qword ptr [word ptr [rip + label_19]]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_19]],  rcx
	mov	byte ptr [rax], 0x2a
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_63
	nop	word ptr cs:[rax + rax]
.label_50:
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	r8, r15
	call	error
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	free
	nop	
	jmp	.label_42
.label_62:
	xor	edx, edx
	nop	
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp]
	call	fnmatch
	test	eax, eax
	je	.label_44
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	cmp	eax, 2
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rsi, [rsi]
	add	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	jmp	.label_43
.label_58:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_43
.label_44:
	mov	eax, 2
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_43
.label_45:
	mov	rsp, rsp
	mov	rdi, r14
.label_63:
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	jne	.label_67
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	call	_obstack_newchunk
.label_67:
	mov	rax,  qword ptr [word ptr [rip + label_19]]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_19]],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x18]
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	nop	
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	nop	
	jne	.label_49
	jmp	.label_48
.label_47:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.49
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	c_strcasecmp
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_43
	mov	esi, OFFSET FLAT:.str.50
	mov	rdi, r14
	call	c_strcasecmp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_43
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.51
	mov	rdi, r14
	lea	rdi, [rdi]
	call	c_strcasecmp
	test	eax, eax
	je	.label_43
	lea	rdi, [rdi]
	mov	r14, rbx
	mov	rsp, rsp
	mov	rbx, -0x128
	mov	rbp, qword ptr [rsp + 0x20]
	nop	
.label_61:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rbx + label_53]]
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	c_strcasecmp
	nop	
	test	eax, eax
	je	.label_59
	lea	rdi, [rdi]
	add	rbx, 8
	lea	rsi, [rsi]
	jne	.label_61
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	lea	eax, [rax - 1]
	mov	rsp, rsp
	cmp	eax, 1
	lea	rsi, [rsi]
	ja	.label_56
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.52
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbx, r14
	test	rbx, rbx
	je	.label_46
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	jmp	.label_55
.label_59:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	lea	rsi, [rsi]
	jne	.label_57
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_57:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rbx + label_40]]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + label_19]]
	nop	
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_19]],  rdx
	mov	byte ptr [rcx], al
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	mov	rbp, rbp
	jne	.label_41
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	mov	rsp, rsp
	call	_obstack_newchunk
.label_41:
	mov	rax,  qword ptr [word ptr [rbx + label_40]]
	mov	al, byte ptr [rax + 1]
	mov	rcx,  qword ptr [word ptr [rip + label_19]]
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_19]],  rdx
	mov	byte ptr [rcx], al
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	jne	.label_54
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	mov	rbp, rbp
	call	_obstack_newchunk
.label_54:
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_19]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_19]],  rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x18]
	call	append_quoted
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	mov	rbx, r14
	nop	
	jne	.label_49
.label_48:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:lsc_obstack
	lea	rsi, [rsi]
	mov	esi, 1
	call	_obstack_newchunk
.label_49:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_19]]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [word ptr [rip + label_19]],  rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x3a
	jmp	.label_43
.label_56:
	lea	rdi, [rdi]
	mov	rbx, r14
	jmp	.label_43
.label_46:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
.label_55:
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	r9, qword ptr [rsp + 0x20]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	mov	r8, r15
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	jmp	.label_43
.label_65:
	mov	rbp, rbp
	call	free
.label_39:
	mov	rax, qword ptr [rsp + 8]
	and	al, 1
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402510

	.globl dc_parse_file
	.type dc_parse_file, @function
dc_parse_file:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	cmp	eax, 0x2d
	jne	.label_68
	mov	rsp, rsp
	cmp	byte ptr [rbx + 1], 0
	lea	rdi, [rdi]
	je	.label_69
.label_68:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:.str.116
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_71
.label_69:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	dc_parse_stream
	mov	rsp, rsp
	mov	bpl, al
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_70
.label_71:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, rbx
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_70:
	lea	rdi, [rdi]
	mov	al, bpl
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4025d0

	.globl parse_line
	.type parse_line, @function
parse_line:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	qword ptr [r12], 0
	mov	qword ptr [r14], 0
	call	__ctype_b_loc
	mov	qword ptr [rsp], rax
	nop	
	mov	rbp, qword ptr [rax]
	dec	r15
	nop	word ptr cs:[rax + rax]
.label_79:
	nop	
	mov	bl, byte ptr [r15 + 1]
	inc	r15
	mov	rbp, rbp
	movsx	edi, bl
	mov	rsp, rsp
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	lea	rsi, [rsi]
	jne	.label_79
	test	bl, bl
	mov	rbp, rbp
	je	.label_72
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 0x23
	nop	
	je	.label_72
	nop	
	mov	rbx, r14
	nop	
	mov	rax, qword ptr [rsp]
	mov	r14, qword ptr [rax]
	lea	rsi, [rsi]
	mov	r13, r15
.label_73:
	movsx	ebp, byte ptr [r13]
	mov	edi, ebp
	mov	rsp, rsp
	call	to_uchar
	movzx	eax, al
	nop	
	inc	r13
	test	ebp, ebp
	je	.label_80
	movzx	eax, word ptr [r14 + rax*2]
	and	eax, 0x2000
	test	ax, ax
	je	.label_73
.label_80:
	lea	rsi, [r13 - 1]
	nop	
	sub	rsi, r15
	nop	
	mov	rdi, r15
	call	xstrndup
	mov	rbp, rbp
	mov	qword ptr [r12], rax
	lea	rsi, [rsi]
	cmp	byte ptr [r13 - 1], 0
	mov	rsp, rsp
	mov	r14, rbx
	je	.label_72
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, qword ptr [rax]
	nop	dword ptr [rax]
.label_76:
	lea	rsi, [rsi]
	mov	bl, byte ptr [r13]
	lea	rdi, [rdi]
	movsx	edi, bl
	mov	rbp, rbp
	call	to_uchar
	movzx	eax, al
	lea	rsi, [rsi]
	inc	r13
	mov	rsp, rsp
	test	byte ptr [rbp + rax*2 + 1], 0x20
	lea	rsi, [rsi]
	jne	.label_76
	test	bl, bl
	nop	
	je	.label_72
	movzx	eax, bl
	cmp	eax, 0x23
	je	.label_72
	lea	rbx, [r13 - 1]
	mov	rsp, rsp
	jmp	.label_77
	nop	word ptr cs:[rax + rax]
.label_78:
	nop	
	inc	r13
.label_77:
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 - 1]
	cmp	eax, 0x23
	mov	rbp, rbp
	je	.label_75
	test	al, al
	mov	rsp, rsp
	jne	.label_78
.label_75:
	mov	rax, qword ptr [rsp]
	mov	rbp, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_74:
	mov	rbp, rbp
	movsx	edi, byte ptr [r13 - 2]
	call	to_uchar
	movzx	eax, al
	dec	r13
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_74
	sub	r13, rbx
	mov	rdi, rbx
	mov	rsi, r13
	call	xstrndup
	nop	
	mov	qword ptr [r14], rax
.label_72:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x402790

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	lea	rdi, [rdi]
	push	rbp
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	rbx, rdi
	mov	cl, byte ptr [rbx]
	test	cl, cl
	mov	rsp, rsp
	je	.label_86
	inc	rbx
	lea	rdi, [rdi]
	mov	al, 1
	nop	word ptr cs:[rax + rax]
.label_89:
	movsx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, 0x3c
	jle	.label_81
	mov	rsp, rsp
	cmp	ecx, 0x3d
	mov	rsp, rsp
	je	.label_84
	lea	rsi, [rsi]
	cmp	ecx, 0x5c
	je	.label_87
	mov	rbp, rbp
	cmp	ecx, 0x5e
	mov	bpl, 1
	mov	rsp, rsp
	jne	.label_83
.label_87:
	not	al
	mov	rsp, rsp
	and	al, 1
	mov	bpl, al
	jmp	.label_83
	nop	
.label_81:
	mov	rbp, rbp
	cmp	ecx, 0x27
	je	.label_82
	cmp	ecx, 0x3a
	lea	rsi, [rsi]
	mov	bpl, 1
	jne	.label_83
.label_84:
	nop	
	test	al, 1
	mov	rsp, rsp
	mov	bpl, 1
	je	.label_83
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	mov	rsp, rsp
	jne	.label_90
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_90:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_19]]
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_19]],  rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_85
.label_82:
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	nop	
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	jne	.label_91
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	lea	rsi, [rsi]
	call	_obstack_newchunk
.label_91:
	mov	rax,  qword ptr [word ptr [rip + label_19]]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_19]],  rcx
	mov	byte ptr [rax], 0x27
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	mov	rsp, rsp
	jne	.label_93
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_93:
	mov	rax,  qword ptr [word ptr [rip + label_19]]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [word ptr [rip + label_19]],  rcx
	mov	byte ptr [rax], 0x5c
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	jne	.label_88
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	lea	rdi, [rdi]
	call	_obstack_newchunk
.label_88:
	mov	rax,  qword ptr [word ptr [rip + label_19]]
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_19]],  rcx
	mov	byte ptr [rax], 0x27
.label_85:
	mov	bpl, 1
.label_83:
	mov	rax,  qword ptr [word ptr [rip + label_27]]
	lea	rsi, [rsi]
	cmp	rax,  qword ptr [word ptr [rip + label_19]]
	jne	.label_92
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_92:
	mov	al, byte ptr [rbx - 1]
	mov	rcx,  qword ptr [word ptr [rip + label_19]]
	nop	
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [word ptr [rip + label_19]],  rdx
	mov	byte ptr [rcx], al
	mov	cl, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	mov	al, bpl
	mov	rsp, rsp
	jne	.label_89
.label_86:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029a0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rsi, [rsi]
	movzx	eax, dil
	mov	rsp, rsp
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029b0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	ebp, ebp
	cmp	rbx, r14
	mov	rsp, rsp
	je	.label_94
	nop	dword ptr [rax]
.label_95:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbx]
	mov	rbp, rbp
	call	c_tolower
	mov	rbp, rbp
	mov	ebp, eax
	lea	rsi, [rsi]
	movzx	edi, byte ptr [r14]
	call	c_tolower
	lea	rsi, [rsi]
	and	ebp, 0xff
	mov	rbp, rbp
	je	.label_96
	inc	rbx
	inc	r14
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	cmp	ebp, ecx
	je	.label_95
.label_96:
	movzx	eax, al
	lea	rsi, [rsi]
	sub	ebp, eax
.label_94:
	mov	eax, ebp
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a30
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
	#Procedure 0x402a40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50

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
	je	.label_98
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_97
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_97
.label_98:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_100
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_97:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
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
	jne	.label_99
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_2
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
.label_100:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_99:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b50

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_101:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_101
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_103
	nop	word ptr [rax + rax]
.label_104:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_103:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_104
	test	sil, sil
	mov	rsp, rsp
	je	.label_102
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_105
	xor	ecx, ecx
.label_105:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_104
.label_102:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bd0
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_107:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_106
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_107
.label_106:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, r12
	nop	
	call	fileno
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_119
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_111
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_112
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_112:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r14d
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 1
	mov	rbp, rbp
	call	dup2
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	setne	r14b
	jmp	.label_114
.label_119:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], 0
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_115
.label_111:
	nop	
	mov	dword ptr [rsp + 4], 0
.label_114:
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_113
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	call	protect_fd
	nop	
	mov	r15b, 1
	test	al, al
	je	.label_109
.label_113:
	test	r14b, r14b
	lea	rsi, [rsi]
	je	.label_117
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	protect_fd
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_109
.label_117:
	nop	
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_115
	mov	edi, 2
	lea	rdi, [rdi]
	call	protect_fd
	lea	rdi, [rdi]
	xor	r13d, r13d
	test	al, al
	je	.label_109
.label_115:
	mov	rdi, rbx
	mov	rsi, rbp
	nop	
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
.label_109:
	nop	
	call	__errno_location
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx]
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_110
	nop	
	mov	edi, 2
	lea	rdi, [rdi]
	call	close
.label_110:
	test	r14b, r14b
	je	.label_116
	mov	rsp, rsp
	mov	edi, 1
	call	close
.label_116:
	test	r15b, r15b
	je	.label_118
	xor	edi, edi
	call	close
.label_118:
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_108
	nop	
	mov	dword ptr [rbx], ebp
.label_108:
	mov	rax, r13
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	mov	ebx, edi
	mov	edi, OFFSET FLAT:.str_4
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	call	open
	mov	ecx, eax
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	cmp	ecx, ebx
	lea	rdi, [rdi]
	je	.label_121
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rsp, rsp
	js	.label_120
	mov	edi, ecx
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
.label_120:
	xor	eax, eax
.label_121:
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x402e10

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
	je	.label_122
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
	jl	.label_124
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_124
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
	jne	.label_123
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_123:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_124:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_122:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
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
	#Procedure 0x402f00
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
	#Procedure 0x402f50
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
	#Procedure 0x402f70
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
	#Procedure 0x402f90

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
	#Procedure 0x403000
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
	#Procedure 0x403020

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
	je	.label_125
	test	rdx, rdx
	nop	
	je	.label_125
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_125:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403060
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
	#Procedure 0x403100

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
.label_147:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_242
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_128]]
.label_455:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11
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
.label_456:
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
	jne	.label_166
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_166
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_199:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_190
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_190:
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
	jne	.label_199
.label_166:
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
	jmp	.label_149
.label_448:
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
	jmp	.label_149
.label_451:
	mov	rsp, rsp
	mov	al, 1
.label_449:
	mov	r15b, 1
.label_452:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_228
	mov	cl, al
.label_228:
	lea	rdi, [rdi]
	mov	al, cl
.label_450:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_231
	test	r10, r10
	je	.label_239
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_127
.label_231:
	xor	ecx, ecx
	jmp	.label_127
.label_453:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_131
	test	r10, r10
	je	.label_139
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_144
.label_454:
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
	jmp	.label_149
.label_239:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_127:
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
	jmp	.label_149
.label_131:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_144
.label_139:
	mov	rbp, rbp
	mov	eax, 1
.label_144:
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
.label_149:
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
	jmp	.label_126
	nop	word ptr [rax + rax]
.label_220:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_126:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_245
	cmp	rsi, rbp
	jne	.label_235
	jmp	.label_133
	nop	word ptr cs:[rax + rax]
.label_245:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_133
.label_235:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_140
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_146
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_146
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
.label_146:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_178
.label_140:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_155:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_184
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_210]]
.label_381:
	test	rsi, rsi
	jne	.label_164
	jmp	.label_198
	nop	word ptr [rax + rax]
.label_178:
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
	jne	.label_212
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
	je	.label_155
	mov	rsp, rsp
	jmp	.label_134
.label_212:
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
	jmp	.label_155
.label_385:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_234
	test	rsi, rsi
	nop	
	jne	.label_241
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_198
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_129
.label_374:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_137
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_134
	cmp	edi, 2
	nop	
	jne	.label_247
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_145
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_192
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_192:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_161
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_161:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_169
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_169:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_177
.label_375:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_183
.label_376:
	mov	cl, 0x74
	jmp	.label_187
.label_377:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_183
.label_378:
	mov	bl, 0x66
	jmp	.label_183
.label_379:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_187
.label_382:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_204
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_130
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
	jae	.label_189
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_189:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_217
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_217:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_224
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_224:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_232
.label_383:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_211
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_246
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_130
.label_246:
	mov	rdi, r14
	jmp	.label_164
.label_384:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_138
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_130
	mov	rdi, r14
	jmp	.label_148
.label_184:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_151
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
.label_214:
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
	ja	.label_172
	test	dl, dl
	mov	rsp, rsp
	je	.label_172
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_129
.label_234:
	test	rsi, rsi
	jne	.label_196
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_196
.label_198:
	mov	rbp, rbp
	mov	dl, 1
.label_380:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_134
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_129
.label_137:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_164
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_126
.label_204:
	mov	rdi, r14
.label_232:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_129
.label_138:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_187
.label_148:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_174
.label_187:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_134
.label_183:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_129
	lea	rsi, [rsi]
	jmp	.label_203
.label_151:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_153
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
.label_153:
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
.label_205:
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
	je	.label_154
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
	je	.label_159
	cmp	rbp, -2
	nop	
	je	.label_171
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_227
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_193:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_218
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_191
.label_218:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_193
.label_227:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_152
	xor	r15d, r15d
.label_152:
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
	je	.label_205
	jmp	.label_214
.label_196:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_129
.label_211:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_164
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_164
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_164
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_225
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_230
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_134
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_216
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_216:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_163
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_163:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_182
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_182:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_143
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_143:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_129
.label_164:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_129:
	test	r12b, r12b
	je	.label_141
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_180
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_141:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_181
.label_180:
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
	jne	.label_207
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_174
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_203
	jmp	.label_174
.label_207:
	mov	bl, r13b
	mov	rsi, r14
.label_203:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_134
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_168
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_168
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_173
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_173:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_219
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_219:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_229
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_168:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_243
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_243:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_132
.label_241:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_129
.label_172:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_195
	nop	word ptr cs:[rax + rax]
.label_157:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_195:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_158
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_160
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_167
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_167:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_160
	nop	dword ptr [rax]
.label_158:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_130
	cmp	r14d, 2
	jne	.label_135
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_135
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_197:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_202
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_202:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_209
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_209:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_135:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_188
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_188:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_221
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
.label_221:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_236
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
.label_236:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_160:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_174
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_150
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_175
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_156
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_156:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_215
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_215:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_175
	nop	word ptr cs:[rax + rax]
.label_150:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_175:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_157
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_157
	nop	word ptr cs:[rax + rax]
.label_174:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_201
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_201
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_240
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_240:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_208
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_208:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_132
	nop	word ptr cs:[rax + rax]
.label_201:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_132:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_220
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_220
.label_247:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_177
.label_145:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_177:
	cmp	rcx, r10
	jae	.label_237
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_237:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_244
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_213
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_142
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_223
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_223:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_165
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_165:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_129
.label_244:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_129
.label_213:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_129
.label_142:
	xor	r15d, r15d
	jmp	.label_129
.label_154:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_186
.label_159:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_194
.label_171:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_200
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_206:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_233
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_206
	xor	r15d, r15d
	nop	
	jmp	.label_186
.label_200:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_194:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_186:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_214
.label_233:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_186
.label_225:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_129
.label_230:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_129
	nop	word ptr cs:[rax + rax]
.label_133:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_226
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_130
.label_226:
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
	je	.label_136
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_136
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_176
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_136
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
	je	.label_147
.label_136:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_162
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_162
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_162
	inc	rdx
	nop	dword ptr [rax + rax]
.label_179:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_170
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_170:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_179
.label_162:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_185
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_185
.label_134:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_222:
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
.label_238:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_185:
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
.label_191:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_222
.label_130:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_222
.label_176:
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
	jmp	.label_238
.label_242:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404850
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
	#Procedure 0x404870

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
	je	.label_248
	mov	qword ptr [rax], rbx
.label_248:
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
	#Procedure 0x4049c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_249
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_253:
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
	jl	.label_253
.label_249:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_252
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_250]], OFFSET FLAT:slot0
.label_252:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_251
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_251:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a90

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
	js	.label_260
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_255
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_257
.label_255:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_256
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
	jne	.label_259
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_259:
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
.label_257:
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
	ja	.label_258
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
	je	.label_254
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_254:
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
.label_258:
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
.label_260:
	lea	rdi, [rdi]
	call	abort
.label_256:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d00

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d10
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
	#Procedure 0x404d30
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
	#Procedure 0x404d50

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
	#Procedure 0x404db0

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
	je	.label_261
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
.label_261:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

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
	#Procedure 0x404e80
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
	#Procedure 0x404ea0
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
	#Procedure 0x404ec0

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
	mov	rcx,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x404f60

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
	#Procedure 0x404f80

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
	#Procedure 0x404f90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fa0

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
	#Procedure 0x405010

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
	#Procedure 0x405020

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
	mov	rax,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x4050b0
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
	#Procedure 0x4050e0
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
	#Procedure 0x405110

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120
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
	#Procedure 0x405140

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405150

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
	#Procedure 0x405160

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
	jne	.label_265
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
	je	.label_266
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_265
	nop	
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_265
.label_266:
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
	je	.label_267
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_265
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_265
.label_267:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_265:
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
	#Procedure 0x405290

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
	je	.label_269
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_268
	jmp	.label_270
.label_269:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_270
.label_268:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_270
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
.label_270:
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
	#Procedure 0x405350

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
	je	.label_273
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_272
	lea	rsi, [rsi]
	jmp	.label_271
.label_273:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_271
.label_272:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_271
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
.label_271:
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
	#Procedure 0x405440

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
	je	.label_276
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_275
	jmp	.label_274
.label_276:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_274
.label_275:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_274
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
.label_274:
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
	#Procedure 0x405510

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
	je	.label_279
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_278
	jmp	.label_277
.label_279:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_277
.label_278:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_277
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
.label_277:
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
	#Procedure 0x4055b0

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
	je	.label_282
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_281
	nop	
	jmp	.label_280
.label_282:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_280
.label_281:
	mov	eax, 1
	test	bpl, bpl
	je	.label_280
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
.label_280:
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
	#Procedure 0x405650

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
	je	.label_285
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_284
	lea	rsi, [rsi]
	jmp	.label_283
.label_285:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_283
.label_284:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_283
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
.label_283:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0

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
	je	.label_288
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_287
	jmp	.label_286
.label_288:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_286
.label_287:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_286
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_286:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405750

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
	je	.label_289
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_291
	mov	rbp, rbp
	jmp	.label_290
.label_289:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_290
.label_291:
	xor	eax, eax
.label_290:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057a0

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
	je	.label_297
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_299
.label_297:
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_299:
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
	ja	.label_301
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_292]]
.label_408:
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
.label_301:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_294
.label_409:
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
.label_410:
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
.label_411:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7
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
	jmp	.label_296
.label_412:
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
	jmp	.label_295
.label_413:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
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
	jmp	.label_293
.label_414:
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
.label_293:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_295:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_296:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_300
.label_416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_294:
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
	jmp	.label_298
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_298:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_300:
	mov	rbp, rbp
	call	__fprintf_chk
.label_407:
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
	#Procedure 0x405b90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_302:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_302
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_305:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_303
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_304
	nop	word ptr cs:[rax + rax]
.label_303:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_304:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_306
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_305
.label_306:
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
	#Procedure 0x405c50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_307
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
.label_307:
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
	#Procedure 0x405d00
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
	mov	edx, OFFSET FLAT:.str.15_0
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
	mov	esi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x405d90
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
	jb	.label_308
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_308:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405dd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_309
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_310
.label_309:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_310:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e00
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
	jb	.label_311
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_311:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_312
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_312
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_312:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_313
	test	rax, rax
	nop	
	je	.label_314
.label_313:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_314:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e90

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_315
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_316
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_317
.label_315:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_318
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_318:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_319
.label_317:
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
.label_316:
	call	xalloc_die
.label_319:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f30

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f40
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f50
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
	#Procedure 0x405f90
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
	jb	.label_320
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_320
	pop	rcx
	ret	
.label_320:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405fc0

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
	#Procedure 0x406010
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
	#Procedure 0x406030

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406080

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	mov	rbp, rbp
	call	__strndup
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_321
	pop	rcx
	lea	rsi, [rsi]
	ret	
.label_321:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4060a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_322
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_323
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
	je	.label_323
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
.label_322:
	mov	ecx, 1
.label_323:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406110

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
	js	.label_324
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_326
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
	je	.label_324
.label_326:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_324
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_325
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_325:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_324:
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
	#Procedure 0x4061d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_327
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_327
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_327:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x406200

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_328
	mov	rbp, rbp
	ret	
.label_328:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x406220

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	call	orig_freopen
	lea	rsi, [rsi]
	mov	rbx, rax
	test	r15, r15
	mov	rsp, rsp
	je	.label_329
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_329
	mov	rdi, rbx
	mov	rsp, rsp
	call	fileno
	mov	ebp, eax
	mov	rbp, rbp
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_329
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_329
	nop	
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_330
	mov	edi, r12d
	nop	
	mov	esi, ebp
	call	dup2
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	edi, r12d
	call	close
	nop	
	test	ebp, ebp
	js	.label_329
.label_330:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_329:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406300

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406310

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
	jne	.label_333
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_333
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_331
.label_333:
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
.label_331:
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
	je	.label_332
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_332:
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
	#Procedure 0x4063c0

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
	je	.label_334
	nop	
	cmp	r15, -2
	jb	.label_334
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_334
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_334:
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
	#Procedure 0x406450

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	nop	
	mov	qword ptr [rdi + 0x40], r8
	and	byte ptr [rdi + 0x50], 0xfe
	nop	
	call	_obstack_begin_worker
	mov	eax, 1
	mov	rsp, rsp
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406480

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	nop	
	test	rdx, rdx
	mov	rbp, rbp
	mov	ebx, 0x10
	mov	rsp, rsp
	cmovne	rbx, rdx
	test	rsi, rsi
	nop	
	mov	eax, 0xfe0
	lea	rsi, [rsi]
	cmovne	rax, rsi
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	lea	r15, [rbx - 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], r15
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_chunkfun
	mov	qword ptr [r14 + 8], rax
	nop	
	test	rax, rax
	je	.label_335
	lea	rcx, [rax + r15 + 0x10]
	lea	rsi, [rsi]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	nop	
	mov	qword ptr [r14 + 0x18], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	add	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	and	byte ptr [r14 + 0x50], 0xf9
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	ret	
.label_335:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	.section	.text
	.align	32
	#Procedure 0x406530

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x48], r9
	or	byte ptr [rdi + 0x50], 1
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406550

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	mov	r14, qword ptr [r13 + 0x18]
	mov	rbp, rbp
	sub	r14, qword ptr [r13 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r13 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	nop	
	add	rbx, rdx
	lea	rsi, [rsi]
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_336
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_336
	mov	r15, qword ptr [r13 + 8]
	nop	
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbx
	call	call_chunkfun
	mov	rsp, rsp
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_336
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r12 + 8], r15
	mov	rsp, rsp
	add	rbx, r12
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x20], rbx
	lea	rsi, [rsi]
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbx, qword ptr [r13 + 0x30]
	mov	rsp, rsp
	lea	rax, [r12 + rbx + 0x10]
	not	rbx
	mov	rsp, rsp
	and	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rdx, r14
	mov	rsp, rsp
	call	memcpy
	test	byte ptr [r13 + 0x50], 2
	lea	rdi, [rdi]
	jne	.label_337
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x30]
	mov	rsp, rsp
	lea	rcx, [r15 + rax + 0x10]
	lea	rdi, [rdi]
	not	rax
	and	rax, rcx
	cmp	qword ptr [r13 + 0x10], rax
	jne	.label_337
	mov	rax, qword ptr [r15 + 8]
	nop	
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r13
	mov	rsi, r15
	lea	rsi, [rsi]
	call	call_freefun
.label_337:
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r13 + 0x18], r14
	lea	rsi, [rsi]
	and	byte ptr [r13 + 0x50], 0xfd
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
.label_336:
	nop	
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406690

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_338
	mov	rdi, rsi
	nop	
	jmp	qword ptr [rax + 0x38]
.label_338:
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	jmp	rcx
	nop	
	.section	.text
	.align	32
	#Procedure 0x4066b0

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_339
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x40]
.label_339:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4066d0

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
	mov	rbp, rbp
	je	.label_341
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jae	.label_343
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_343
	mov	rbp, rbp
	jmp	.label_342
.label_341:
	xor	eax, eax
.label_342:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406710

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	nop	
	mov	rsi, qword ptr [r15 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_345
	nop	
.label_347:
	cmp	rsi, r14
	mov	rbp, rbp
	jae	.label_344
	cmp	qword ptr [rsi], r14
	jae	.label_346
.label_344:
	mov	rbx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsp, rsp
	call	call_freefun
	or	byte ptr [r15 + 0x50], 2
	nop	
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_347
.label_345:
	test	r14, r14
	je	.label_348
	call	abort
.label_346:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], r14
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_348:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067a0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 8]
	nop	
	xor	eax, eax
	jmp	.label_349
	nop	dword ptr [rax]
.label_350:
	sub	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_349:
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_350
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067d0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406820
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
	#Procedure 0x406850
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
	#Procedure 0x406870
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406880
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
	#Procedure 0x406890
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
	#Procedure 0x4068b0
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
	#Procedure 0x4068c0
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
	#Procedure 0x4068d0
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
	#Procedure 0x4068e0
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
	#Procedure 0x4068f0
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
	#Procedure 0x406920
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
	#Procedure 0x406940

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
	#Procedure 0x406950
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
	#Procedure 0x406970

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
	#Procedure 0x406980
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
	#Procedure 0x406990

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
	je	.label_361
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_360
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_360
.label_361:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_360
	test	cl, cl
	jne	.label_360
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_360:
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
	#Procedure 0x406a30

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
	je	.label_363
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_362
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_364
.label_362:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_363
.label_364:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_363:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406a80

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
	je	.label_365
	nop	
	mov	rax, rcx
.label_365:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x406ac0

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
