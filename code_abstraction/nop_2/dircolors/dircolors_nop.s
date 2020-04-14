	.section	.text
	.align	16
	#Procedure 0x401710

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
	jne	.label_8
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
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	nop	
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_7
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.32
	mov	rbp, rbp
	mov	edx, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.36
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x401950

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
	mov	esi, OFFSET FLAT:.str_1
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
.label_15:
	mov	r13b, cl
	nop	
	mov	ebp, r12d
	mov	rsp, rsp
	jmp	.label_13
.label_17:
	mov	rsp, rsp
	mov	ebp, 1
	nop	word ptr cs:[rax + rax]
.label_13:
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
	jle	.label_10
	cmp	eax, 0x62
	lea	rdi, [rdi]
	je	.label_13
	mov	cl, 1
	cmp	eax, 0x70
	je	.label_15
	cmp	eax, 0x63
	je	.label_17
	mov	rbp, rbp
	jmp	.label_19
.label_10:
	cmp	eax, -1
	jne	.label_38
	movsxd	r15,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	test	r13b, r13b
	lea	rsi, [rsi]
	je	.label_27
	nop	
	cmp	r12d, 2
	jne	.label_30
.label_27:
	lea	rbx, [rbx + r15*8]
	mov	eax, r14d
	sub	eax, r15d
	mov	rsp, rsp
	movzx	ebp, r13b
	lea	rdi, [rdi]
	xor	ebp, 1
	mov	rsp, rsp
	cmp	ebp, eax
	jl	.label_34
	lea	rdi, [rdi]
	mov	ebp, OFFSET FLAT:G_line
	mov	rbp, rbp
	test	r13b, r13b
	lea	rsi, [rsi]
	je	.label_36
	mov	rbp, rbp
	mov	r14d, OFFSET FLAT:G_line
	nop	dword ptr [rax]
.label_20:
	mov	rdi, rbp
	nop	
	call	puts
	mov	rdi, rbp
	nop	
	call	strlen
	lea	rbp, [rax + rbp + 1]
	mov	rax, rbp
	sub	rax, r14
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	rax, 0x10c4
	jb	.label_20
	jmp	.label_28
.label_36:
	mov	rbp, rbp
	cmp	r12d, 2
	nop	
	jne	.label_16
	mov	edi, OFFSET FLAT:.str.44
	call	getenv
	nop	
	test	rax, rax
	je	.label_29
	cmp	byte ptr [rax], 0
	je	.label_29
	mov	rbp, rbp
	mov	rdi, rax
	call	last_component
	nop	
	movzx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x63
	jne	.label_11
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x73
	lea	rdi, [rdi]
	jne	.label_11
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x68
	nop	
	jne	.label_11
	lea	rdi, [rdi]
	mov	r12d, 1
	nop	
	cmp	byte ptr [rax + 3], 0
	je	.label_16
.label_11:
	mov	esi, OFFSET FLAT:.str.45
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	movzx	r12d, al
.label_16:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:lsc_obstack
	nop	
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	mov	rbp, rbp
	call	_obstack_begin
	cmp	r15d, r14d
	nop	
	jne	.label_35
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	call	dc_parse_stream
	nop	
	mov	ebx, 1
	nop	
	test	al, al
	je	.label_28
	movzx	ebx, al
	jmp	.label_9
.label_35:
	mov	rbx, qword ptr [rbx]
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	cmp	eax, 0x2d
	jne	.label_14
	mov	rbp, rbp
	cmp	byte ptr [rbx + 1], 0
	lea	rdi, [rdi]
	je	.label_18
.label_14:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.116
	mov	rdi, rbx
	mov	rsp, rsp
	call	freopen_safer
	test	rax, rax
	je	.label_31
.label_18:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	dc_parse_stream
	mov	rsp, rsp
	mov	bpl, al
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	call	rpl_fclose
	nop	
	test	eax, eax
	je	.label_37
.label_31:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebp
	call	error
	lea	rdi, [rdi]
	mov	ebx, 1
	lea	rdi, [rdi]
	jmp	.label_28
.label_37:
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	je	.label_28
	lea	rdi, [rdi]
	movzx	ebx, bpl
.label_9:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	mov	r14,  qword ptr [word ptr [rip + label_26]]
	lea	rsi, [rsi]
	mov	r15, rax
	nop	
	sub	r15, r14
	jne	.label_33
	or	byte ptr [byte ptr [rip + label_12]],  2
.label_33:
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_22]]
	mov	rsp, rsp
	add	rax, rcx
	not	rcx
	mov	rsp, rsp
	and	rcx, rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + label_23]]
	mov	rdx, rcx
	sub	rdx, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + label_24]]
	mov	rdi, rsi
	sub	rdi, rax
	cmp	rdx, rdi
	nop	
	cmova	rcx, rsi
	nop	
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_26]],  rcx
	nop	
	test	r12d, r12d
	mov	eax, OFFSET FLAT:.str.18_0
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.20
	cmove	rdi, rax
	mov	eax, OFFSET FLAT:.str.19
	mov	ebp, OFFSET FLAT:.str.21
	cmove	rbp, rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	esi, 1
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	fwrite_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	ebx, 1
.label_28:
	lea	rsi, [rsi]
	mov	eax, ebx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_38:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	je	.label_32
	cmp	eax, 0xffffff7e
	jne	.label_19
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_32:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.12
	xor	r9d, r9d
	xor	eax, eax
	lea	rdi, [rdi]
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_30:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_34:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	nop	
	mov	rdi, qword ptr [rbx + rbp*8]
	lea	rsi, [rsi]
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r14
	lea	rsi, [rsi]
	call	error
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_21
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	__fprintf_chk
.label_21:
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_19:
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_29:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ef0

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
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, OFFSET FLAT:.str.46
	call	getenv
	test	rax, rax
	mov	rbp, rbp
	je	.label_51
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_53
.label_51:
	mov	eax, OFFSET FLAT:.str.47
.label_53:
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:G_line
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 3
	mov	qword ptr [rsp + 8], rax
	xor	ebx, ebx
	jmp	.label_57
.label_65:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x28]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbp
	nop	
	mov	r8, rbx
	call	error
	mov	rdi, r14
	call	free
	nop	word ptr cs:[rax + rax]
.label_57:
	test	r12, r12
	je	.label_54
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rcx, r12
	nop	
	call	__getdelim
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	lea	rdi, [rdi]
	jg	.label_40
	mov	rbp, rbp
	jmp	.label_42
	nop	dword ptr [rax + rax]
.label_54:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:label_47
	mov	rsp, rsp
	cmp	r13, rax
	lea	rsi, [rsi]
	je	.label_48
	mov	rbp, rbp
	mov	rdi, r13
	call	strlen
	nop	
	mov	rbp, r13
	lea	r13, [rax + r13 + 1]
.label_40:
	lea	rsi, [rsi]
	inc	rbx
	mov	rsp, rsp
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rax, qword ptr [r15]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_63:
	movzx	ecx, byte ptr [rbp + 1]
	lea	rdi, [rdi]
	inc	rbp
	lea	rsi, [rsi]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	lea	rsi, [rsi]
	jne	.label_63
	mov	rbp, rbp
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_57
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, 0x23
	mov	rbp, rbp
	mov	r14, rbp
	je	.label_57
	nop	word ptr [rax + rax]
.label_69:
	movzx	ecx, byte ptr [r14 + 1]
	mov	rbp, rbp
	inc	r14
	test	rcx, rcx
	je	.label_66
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 0x2000
	test	cx, cx
	lea	rdi, [rdi]
	je	.label_69
.label_66:
	mov	rsi, r14
	mov	rbp, rbp
	sub	rsi, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	xstrndup
	cmp	byte ptr [r14], 0
	mov	edx, 0
	je	.label_49
	mov	rdi, qword ptr [r15]
	nop	dword ptr [rax + rax]
.label_39:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r14 + 1]
	lea	rsi, [rsi]
	inc	r14
	mov	rbp, rbp
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	mov	rbp, rbp
	jne	.label_39
	mov	rsp, rsp
	test	cl, cl
	je	.label_44
	nop	
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0x23
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	edx, 0
	je	.label_49
	lea	rdi, [rdi]
	jmp	.label_52
	nop	
.label_58:
	nop	
	mov	cl, byte ptr [rsi + 1]
	inc	rsi
.label_52:
	nop	
	movzx	edx, cl
	cmp	edx, 0x23
	je	.label_61
	test	cl, cl
	jne	.label_58
.label_61:
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	inc	rsi
.label_60:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rsi - 2]
	lea	rsi, [rsi]
	dec	rsi
	lea	rsi, [rsi]
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_60
	mov	rsp, rsp
	sub	rsi, r14
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xstrndup
	mov	rdx, rax
	mov	rax, rbp
	mov	rbp, rbp
	jmp	.label_49
.label_44:
	lea	rdi, [rdi]
	xor	edx, edx
.label_49:
	mov	rsp, rsp
	test	rax, rax
	je	.label_57
	mov	r14, rax
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_65
	mov	rbp, rdx
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.46
	mov	rbp, rbp
	mov	rdi, r14
	call	c_strcasecmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_70
	mov	rax, qword ptr [rsp + 8]
	cmp	eax, 2
	mov	ecx, 1
	cmove	eax, ecx
	nop	
	test	eax, eax
	nop	
	je	.label_72
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	nop	
	cmp	eax, 0x2a
	mov	rbp, rbp
	je	.label_77
	mov	rbp, rbp
	movzx	eax, al
	nop	
	cmp	eax, 0x2e
	jne	.label_41
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	mov	rbp, rbp
	jne	.label_43
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:lsc_obstack
	lea	rdi, [rdi]
	mov	esi, 1
	call	_obstack_newchunk
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_43:
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x2a
.label_77:
	mov	rsp, rsp
	mov	rdi, r14
	call	append_quoted
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	lea	rdi, [rdi]
	jne	.label_62
	nop	
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	lea	rdi, [rdi]
	call	_obstack_newchunk
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_62:
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x3d
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	append_quoted
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	jne	.label_68
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_68:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x3a
	mov	rsp, rsp
	jmp	.label_56
.label_70:
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	fnmatch
	test	eax, eax
	je	.label_45
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	cmp	eax, 2
	lea	rsi, [rsi]
	sete	al
	mov	rsp, rsp
	movzx	eax, al
	nop	
	add	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_56
.label_72:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	jmp	.label_56
.label_45:
	mov	rsp, rsp
	mov	eax, 2
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	jmp	.label_56
.label_41:
	mov	esi, OFFSET FLAT:.str.49
	mov	rdi, r14
	call	c_strcasecmp
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	je	.label_56
	mov	esi, OFFSET FLAT:.str.50
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_56
	mov	esi, OFFSET FLAT:.str.51
	mov	rbp, rbp
	mov	rdi, r14
	nop	
	mov	r15, r14
	call	c_strcasecmp
	test	eax, eax
	mov	rbp, rbp
	mov	r14d, 0
	je	.label_67
.label_74:
	mov	rsi,  qword ptr [word ptr [+ (r14 * 8) + slack_codes]]
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	c_strcasecmp
	test	eax, eax
	nop	
	je	.label_73
	mov	rsp, rsp
	inc	r14
	lea	rsi, [rsi]
	cmp	r14, 0x25
	jne	.label_74
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	eax, [rax - 1]
	nop	
	cmp	eax, 1
	lea	rsi, [rsi]
	ja	.label_76
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r14, rax
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_46
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	jmp	.label_55
.label_67:
	mov	rdi, r15
	jmp	.label_59
.label_73:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	mov	rsp, rsp
	jne	.label_75
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	rbp, rbp
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_75:
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [+ (r14 * 8) + ls_codes]]
	mov	cl, byte ptr [r14]
	lea	rdx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_25]],  rdx
	lea	rdi, [rdi]
	mov	byte ptr [rax], cl
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	jne	.label_64
	mov	edi, OFFSET FLAT:lsc_obstack
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	call	_obstack_newchunk
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_64:
	mov	rbp, rbp
	mov	cl, byte ptr [r14 + 1]
	lea	rdx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_25]],  rdx
	mov	byte ptr [rax], cl
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	jne	.label_71
	mov	edi, OFFSET FLAT:lsc_obstack
	lea	rdi, [rdi]
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_71:
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x3d
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	append_quoted
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	lea	rdi, [rdi]
	jne	.label_50
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_50:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	mov	byte ptr [rax], 0x3a
	mov	rdi, r15
	jmp	.label_59
.label_76:
	mov	rdi, r15
	lea	rdi, [rdi]
	jmp	.label_59
.label_46:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
.label_55:
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r14
	mov	r8, rbx
	mov	r14, r15
	lea	rdi, [rdi]
	mov	r9, r14
	call	error
.label_56:
	mov	rdi, r14
.label_59:
	call	free
	mov	rsp, rsp
	mov	rdi, rbp
	call	free
	mov	rsp, rsp
	jmp	.label_57
.label_42:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
.label_48:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	and	al, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402610

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
	je	.label_83
	inc	rbx
	lea	rdi, [rdi]
	mov	al, 1
	nop	word ptr cs:[rax + rax]
.label_87:
	movsx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, 0x3c
	jle	.label_78
	mov	rsp, rsp
	cmp	ecx, 0x3d
	mov	rsp, rsp
	je	.label_82
	lea	rsi, [rsi]
	cmp	ecx, 0x5c
	je	.label_84
	mov	rbp, rbp
	cmp	ecx, 0x5e
	mov	bpl, 1
	mov	rsp, rsp
	jne	.label_81
.label_84:
	not	al
	mov	rsp, rsp
	and	al, 1
	mov	bpl, al
	jmp	.label_81
	nop	
.label_78:
	mov	rbp, rbp
	cmp	ecx, 0x27
	je	.label_79
	cmp	ecx, 0x3a
	lea	rsi, [rsi]
	mov	bpl, 1
	jne	.label_81
.label_82:
	nop	
	test	al, 1
	mov	rsp, rsp
	mov	bpl, 1
	je	.label_81
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	mov	rsp, rsp
	jne	.label_88
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_88:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_85
.label_79:
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	nop	
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	jne	.label_89
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	lea	rsi, [rsi]
	call	_obstack_newchunk
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_89:
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	mov	byte ptr [rax], 0x27
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	mov	rsp, rsp
	jne	.label_86
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_86:
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	mov	byte ptr [rax], 0x5c
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	jne	.label_80
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	lea	rdi, [rdi]
	call	_obstack_newchunk
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_80:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_25]],  rcx
	mov	byte ptr [rax], 0x27
.label_85:
	mov	bpl, 1
.label_81:
	mov	rax,  qword ptr [word ptr [rip + label_25]]
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + label_24]],  rax
	jne	.label_90
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax,  qword ptr [word ptr [rip + label_25]]
.label_90:
	mov	cl, byte ptr [rbx - 1]
	nop	
	lea	rdx, [rax + 1]
	nop	
	mov	qword ptr [word ptr [rip + label_25]],  rdx
	mov	byte ptr [rax], cl
	mov	cl, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	mov	al, bpl
	mov	rsp, rsp
	jne	.label_87
.label_83:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402820

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdi, rsi
	je	.label_91
	nop	dword ptr [rax]
.label_94:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	rsi, [rsi]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	mov	rsp, rsp
	cmovae	eax, ecx
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi]
	mov	rbp, rbp
	lea	r8d, [rdx - 0x41]
	mov	rbp, rbp
	lea	ecx, [rdx + 0x20]
	lea	rsi, [rsi]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	lea	rsi, [rsi]
	and	eax, 0xff
	mov	rbp, rbp
	je	.label_92
	inc	rdi
	inc	rsi
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	eax, ecx
	je	.label_94
	jmp	.label_93
.label_92:
	lea	rsi, [rsi]
	movzx	ecx, cl
	xor	eax, eax
.label_93:
	nop	
	sub	eax, ecx
.label_91:
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4028a0
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
	#Procedure 0x4028b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028c0

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
	je	.label_98
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_95
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_95
.label_98:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_97
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_95:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_96
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
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
.label_97:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_96:
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
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029c0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_99:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_99
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_100
	nop	dword ptr [rax + rax]
.label_101:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_100:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_101
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_103
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_102
	xor	r8d, r8d
.label_102:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_101
.label_103:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a40
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_105:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_104
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_105
.label_104:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80

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
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	nop	
	call	fileno
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_115
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_118
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_107
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_107:
	lea	rdi, [rdi]
	mov	r15b, r12b
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 1
	mov	rbp, rbp
	call	dup2
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	setne	r12b
	jmp	.label_108
.label_115:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_106
.label_118:
	nop	
	xor	r15d, r15d
.label_108:
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_109
	nop	
	mov	edi, OFFSET FLAT:.str_4
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	nop	
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_109
	lea	rsi, [rsi]
	mov	r13b, 1
	lea	rdi, [rdi]
	jmp	.label_112
.label_109:
	nop	
	test	r12b, r12b
	je	.label_113
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_4
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_112
.label_113:
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_106
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	nop	
	cmp	eax, 2
	jne	.label_112
.label_106:
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_116
.label_112:
	xor	r14d, r14d
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_116
	mov	edi, eax
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_116:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	r15b, r15b
	nop	
	je	.label_114
	nop	
	mov	edi, 2
	call	close
.label_114:
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_117
	mov	edi, 1
	nop	
	call	close
.label_117:
	test	r13b, r13b
	je	.label_110
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	close
.label_110:
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_111
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
.label_111:
	mov	rax, r14
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402c50

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
	je	.label_119
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
	jl	.label_121
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_121
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
	jne	.label_120
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_120:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_121:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_119:
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
	.align	16
	#Procedure 0x402d40
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
	#Procedure 0x402d90
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
	#Procedure 0x402db0
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
	#Procedure 0x402dd0
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
	#Procedure 0x402e40
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
	#Procedure 0x402e60
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
	je	.label_122
	test	rdx, rdx
	nop	
	je	.label_122
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_122:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0
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
	#Procedure 0x402f50

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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_231:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_144
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_151]]
.label_414:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_415:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_175
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_175
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_197:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_190
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_190:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_197
.label_175:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_146
.label_407:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_146
.label_410:
	lea	rsi, [rsi]
	mov	al, 1
.label_408:
	mov	rbp, rbp
	mov	r12b, 1
.label_411:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_230
	lea	rsi, [rsi]
	mov	cl, al
.label_230:
	mov	rsp, rsp
	mov	al, cl
.label_409:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_236
	test	r10, r10
	je	.label_208
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_125
.label_236:
	xor	ecx, ecx
	jmp	.label_125
.label_412:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_126
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_131
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_139
.label_413:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_146
.label_208:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_125:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_146
.label_126:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_139
.label_131:
	lea	rdi, [rdi]
	mov	eax, 1
.label_139:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_146:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_224
	nop	word ptr cs:[rax + rax]
.label_147:
	nop	
	inc	rdi
.label_224:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_232
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_179
	jmp	.label_238
	nop	dword ptr [rax + rax]
.label_232:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_241
.label_179:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_246
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_123
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_123
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_123:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_163
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_169
	nop	dword ptr [rax + rax]
.label_246:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_141
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_169
	jmp	.label_135
.label_141:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_169:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_191
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_219]]
.label_424:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_196
	mov	rbp, rbp
	jmp	.label_228
.label_428:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_229
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_234
	nop	
	cmp	rbp, 1
	je	.label_228
	xor	r13d, r13d
	jmp	.label_170
.label_417:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_242
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_135
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_127
	mov	al, r14b
	and	al, 1
	jne	.label_130
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_183
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_183:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_148
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_148:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_156
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_156:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_155
.label_418:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_174
.label_419:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_172
.label_420:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_174
.label_421:
	mov	bl, 0x66
	jmp	.label_174
.label_422:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_172
.label_425:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_181
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_184
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_188
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_188:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_198
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_198:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_215
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_215:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_181:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_170
.label_426:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_226
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_196
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_196
	mov	rbp, rbp
	jmp	.label_237
.label_427:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_239
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_243
	lea	rdi, [rdi]
	jmp	.label_247
.label_191:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_132
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_150:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_154
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_154
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_170
.label_229:
	test	rdi, rdi
	jne	.label_173
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_173
.label_228:
	mov	dl, 1
.label_423:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_178
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_170
.label_242:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_147
	jmp	.label_196
.label_239:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_172
.label_243:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_168
.label_172:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_194
.label_174:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_170
	lea	rsi, [rsi]
	jmp	.label_171
.label_132:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_207
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_207:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_162:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_240
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_245
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_128
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_137
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_185:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_153
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_167
.label_153:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_185
.label_137:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_223
	xor	r13d, r13d
.label_223:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_162
	mov	rsp, rsp
	jmp	.label_150
.label_173:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_170
.label_226:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_196
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_196
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_196
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_203
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_209
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_213
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_217
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_217:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_222
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_222:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_157
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_157:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_227
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_227:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_170
.label_196:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_170:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_133
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_142
	lea	rsi, [rsi]
	jmp	.label_145
.label_133:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_145
.label_142:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_149
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_159
	nop	word ptr cs:[rax + rax]
.label_145:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_159:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_168
	mov	rsp, rsp
	jmp	.label_171
.label_149:
	mov	bl, r15b
.label_171:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_135
	nop	
	cmp	r9d, 2
	jne	.label_164
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_164
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_205
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_205:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_189
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_189:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_158
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_158:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_164:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_201
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_201:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_182
.label_234:
	xor	r13d, r13d
	nop	
	jmp	.label_170
.label_154:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_212
	nop	dword ptr [rax + rax]
.label_220:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_212:
	test	cl, cl
	je	.label_218
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_193
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_225
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_225:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_193
	nop	dword ptr [rax]
.label_218:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_135
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_244
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_244
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_129
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_129:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_134
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_134:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_216
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_216:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_244:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_160
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_160:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_166
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_166:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_177
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_177:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_193:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_168
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_199
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_199
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_202
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_202:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_210
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_210:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_199:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_220
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_168:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_235
	mov	rsp, rsp
	and	al, 1
	jne	.label_235
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_206
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_206:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_204
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_204:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_235:
	mov	rsp, rsp
	mov	bl, r15b
.label_182:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_192
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_192:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_147
.label_127:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_155
.label_130:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_155:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_161
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_161:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_211
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_138
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_152
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_180
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_180:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_186
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_186:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_170
.label_211:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_170
.label_138:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_170
.label_152:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_170
.label_245:
	xor	r13d, r13d
.label_240:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_150
.label_128:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_214
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_233:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_221
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_233
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_150
.label_214:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_150
.label_221:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_150
.label_203:
	xor	r13d, r13d
	jmp	.label_170
.label_209:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_170
.label_238:
	nop	
	mov	r13, rdi
.label_241:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_124
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_140
.label_124:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_143
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_143
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_165
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_143
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_231
.label_143:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_176
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_176
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_176
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_195:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_187
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_187:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_195
.label_176:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_200
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_200
.label_178:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_135
.label_167:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_135
.label_140:
	nop	
	mov	rbp, r13
	jmp	.label_135
.label_194:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_135:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_136:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_200:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_165:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_136
.label_184:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_135
.label_247:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_135
.label_237:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_135
.label_213:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_135
.label_144:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
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
	#Procedure 0x404610
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
	.align	16
	#Procedure 0x404760
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
	.align	16
	#Procedure 0x404820
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404830

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
	js	.label_260
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_255
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_258
.label_255:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_256
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
.label_258:
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
	ja	.label_257
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
.label_257:
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
.label_260:
	lea	rdi, [rdi]
	call	abort
.label_256:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404aa0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0
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
	#Procedure 0x404ae0
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
	#Procedure 0x404b10
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
	je	.label_261
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
.label_261:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0
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
	je	.label_262
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
.label_262:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c40
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
	je	.label_263
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
.label_263:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0
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
	je	.label_264
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
.label_264:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d40
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_265]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
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
	#Procedure 0x404de0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_265]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
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
	#Procedure 0x404e80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_265]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
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
	#Procedure 0x404ef0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_265]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
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
	#Procedure 0x404f60

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
	je	.label_268
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
.label_268:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405040
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_265]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_269
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_269
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
.label_269:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4050d0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_265]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_270
	test	rdx, rdx
	je	.label_270
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
.label_270:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405160
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_265]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_271
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_271
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
.label_271:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_265]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_272
	test	rsi, rsi
	je	.label_272
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
.label_272:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0
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
	#Procedure 0x4052d0
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
	#Procedure 0x4052f0

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
	#Procedure 0x405320

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
	jne	.label_274
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_276
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_275
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_275
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_275
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_275
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_275
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_275
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_274
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_274
.label_276:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_275
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_275
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_275
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_275
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_275
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_275
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_273
.label_275:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_274:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_273:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_274
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_274
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405490

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
	je	.label_278
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
	jmp	.label_282
.label_278:
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
.label_282:
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
	ja	.label_284
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_285]]
.label_387:
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
.label_284:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_279
.label_388:
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
.label_389:
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
.label_390:
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
	jmp	.label_281
.label_391:
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
	jmp	.label_277
.label_392:
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
	jmp	.label_286
.label_393:
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
.label_286:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_277:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_281:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_283
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_279:
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
	jmp	.label_280
.label_394:
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
.label_280:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_283:
	mov	rbp, rbp
	call	__fprintf_chk
.label_386:
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
	#Procedure 0x405880
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_287:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_287
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058b0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_289:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_288
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_290
	nop	word ptr cs:[rax + rax]
.label_288:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_290:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_291
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_289
.label_291:
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
	#Procedure 0x405940

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_292
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
.label_292:
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
.label_294:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_293
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_295
	nop	dword ptr [rax + rax]
.label_293:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_295:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_296
	inc	r9
	cmp	r9, 0xa
	jb	.label_294
.label_296:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a80
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
	.align	16
	#Procedure 0x405b10
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
	jb	.label_297
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_298
	test	rax, rax
	je	.label_297
.label_298:
	nop	
	pop	rbx
	ret	
.label_297:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_299
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_300
.label_299:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_300:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b90
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
	jb	.label_302
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_301
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_301
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_301:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_303
	test	rax, rax
	je	.label_302
.label_303:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_302:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_304
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_304
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_304:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_305
	test	rax, rax
	nop	
	je	.label_306
.label_305:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_306:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c60
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_307
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_311
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_310
.label_307:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_313
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_313:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_308
.label_310:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_309
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_309
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_309:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_312
	test	rax, rax
	mov	rbp, rbp
	je	.label_311
.label_312:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_311:
	call	xalloc_die
.label_308:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_314
	test	rax, rax
	mov	rbp, rbp
	je	.label_315
.label_314:
	pop	rbx
	ret	
.label_315:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405d60
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_316
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_319
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_320
	call	free
	xor	eax, eax
	jmp	.label_317
.label_316:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_318
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_320:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_317
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_318
.label_317:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_318:
	mov	rbp, rbp
	call	xalloc_die
.label_319:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405df0
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
	je	.label_321
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_322
.label_321:
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
.label_322:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e50
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
	jb	.label_323
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_323
	pop	rcx
	ret	
.label_323:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405e80

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
	je	.label_325
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_324
.label_325:
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
.label_324:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ee0
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
	je	.label_326
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_327
.label_326:
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
.label_327:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405f40

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
	.align	16
	#Procedure 0x405f90

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	mov	rbp, rbp
	call	__strndup
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_328
	pop	rcx
	lea	rsi, [rsi]
	ret	
.label_328:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405fb0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_329
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_330
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
	je	.label_330
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
.label_329:
	mov	ecx, 1
.label_330:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406020

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
	js	.label_331
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_333
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
	je	.label_331
.label_333:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_331
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_332
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_332:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_331:
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
	#Procedure 0x4060d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_334
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_334
	test	byte ptr [rbx + 1], 1
	je	.label_334
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_334:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406110

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
	call	freopen
	lea	rsi, [rsi]
	mov	rbx, rax
	test	r15, r15
	mov	rsp, rsp
	je	.label_335
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_335
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
	jns	.label_335
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_335
	nop	
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_336
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
	js	.label_335
.label_336:
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
	jmp	freopen
.label_335:
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
	.section	.text
	.align	16
	#Procedure 0x4061f0

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
	jne	.label_337
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_337
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_338
.label_337:
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
.label_338:
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
	je	.label_339
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_339:
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
	#Procedure 0x4062a0

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
	je	.label_340
	nop	
	cmp	r15, -2
	jb	.label_340
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_340
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_340:
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
	#Procedure 0x406330

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	nop	
	push	rbx
	mov	r14, rdi
	nop	
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	mov	rsp, rsp
	and	byte ptr [r14 + 0x50], 0xfe
	mov	rsp, rsp
	test	rdx, rdx
	nop	
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovne	rbx, rdx
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	rsi, [rsi]
	lea	r15, [rbx - 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], r15
	nop	
	call	rcx
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_341
	lea	rcx, [rax + r15 + 0x10]
	mov	rsp, rsp
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x20], rcx
	nop	
	mov	qword ptr [rax + 8], 0
	nop	
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
.label_341:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063e0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14d, 0x10
	mov	rbp, rbp
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_342
	mov	rsp, rsp
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	nop	
	and	r14, rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], r14
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	nop	
	pop	r14
	pop	r15
	nop	
	ret	
.label_342:
	mov	rsp, rsp
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064a0

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rbp, rbp
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	nop	
	shr	rbx, 3
	lea	rsi, [rsi]
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	lea	rsi, [rsi]
	add	rsi, r14
	mov	rsp, rsp
	jb	.label_343
	test	al, al
	nop	
	jne	.label_343
	mov	rsp, rsp
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	mov	rsp, rsp
	jne	.label_346
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_345
.label_346:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	call	qword ptr [r12 + 0x38]
.label_345:
	lea	rsi, [rsi]
	mov	r13, rax
	test	r13, r13
	je	.label_343
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	mov	rsp, rsp
	add	rbx, r13
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	lea	rbx, [r13 + rbp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r15
	lea	rdi, [rdi]
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	rdx, r14
	nop	
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_344
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	lea	rax, [rax + rbp + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	jne	.label_344
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	mov	rsp, rsp
	jne	.label_347
	nop	
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	nop	
	jmp	.label_344
.label_347:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_344:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rbx
	mov	rsp, rsp
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	mov	rsp, rsp
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_343:
	mov	rsp, rsp
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406640

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_348
	nop	word ptr cs:[rax + rax]
.label_351:
	mov	rcx, qword ptr [rcx + 8]
.label_348:
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_349
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jae	.label_351
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_351
	mov	rbp, rbp
	jmp	.label_350
.label_349:
	xor	eax, eax
.label_350:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406680

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
	je	.label_353
	nop	
.label_358:
	cmp	rsi, r14
	mov	rbp, rbp
	jae	.label_352
	cmp	qword ptr [rsi], r14
	jae	.label_355
.label_352:
	mov	rbx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x50], 1
	mov	rsp, rsp
	jne	.label_357
	mov	rdi, rsi
	nop	
	call	qword ptr [r15 + 0x40]
	jmp	.label_354
	nop	dword ptr [rax + rax]
.label_357:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_354:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	jne	.label_358
.label_353:
	lea	rsi, [rsi]
	test	r14, r14
	mov	rsp, rsp
	je	.label_356
	call	abort
.label_355:
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_356:
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406730

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 8]
	nop	
	xor	eax, eax
	jmp	.label_359
	nop	dword ptr [rax]
.label_360:
	sub	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_359:
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_360
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760

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
	mov	edx, OFFSET FLAT:.str_0
	nop	
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067b0

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
	jne	.label_361
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_362
	test	cl, cl
	mov	rsp, rsp
	jne	.label_362
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_362
.label_361:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_362
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_362:
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
	#Procedure 0x406840

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
	je	.label_364
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_363
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_365
.label_363:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_364
.label_365:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_364:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406890

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
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_366
	nop	
	mov	rax, rcx
.label_366:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x4068d0

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