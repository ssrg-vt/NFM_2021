	.section	.text
	.align	16
	#Procedure 0x401630

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	push	rbx
	nop	
	push	rax
	mov	ebp, edi
	lea	rsi, [rsi]
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	call	emit_stdin_note
	lea	rdi, [rdi]
	call	emit_mandatory_arg_note
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	nop	
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4017a0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x4017d0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	lea	rsi, [rsi]
	jmp	fputs_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401800

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.22
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.7
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_8
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_9
.label_8:
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.7
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	edi, 5
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	call	setlocale
	nop	
	test	rax, rax
	nop	
	je	.label_10
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_10
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14d, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	nop	
	cmp	rbx, r14
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.36
	nop	
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401980

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.10
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + uniform]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + split]],  0
	nop	
	mov	byte ptr [byte ptr [rip + tagged]],  0
	mov	byte ptr [byte ptr [rip + crown]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + max_width]],  0x4b
	mov	qword ptr [word ptr [rip + prefix]], OFFSET FLAT:.str_0
	nop	
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + prefix_length]],  0
	xor	r14d, r14d
	mov	rbp, rbp
	cmp	r13d, 2
	lea	rdi, [rdi]
	jl	.label_14
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	jne	.label_14
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	mov	rsp, rsp
	ja	.label_14
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	rdi, [rdi]
	lea	r12, [r12 + 8]
	mov	rbp, rbp
	dec	r13d
	mov	r14, rax
.label_14:
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	jmp	.label_11
.label_382:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	call	set_prefix
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.11
	nop	
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	nop	
	mov	rsi, r12
	lea	rdi, [rdi]
	call	getopt_long
	mov	ebx, eax
	mov	rsp, rsp
	cmp	ebx, 0x62
	mov	rbp, rbp
	jle	.label_28
	mov	rsp, rsp
	lea	eax, [rbx - 0x70]
	lea	rsi, [rsi]
	cmp	eax, 7
	ja	.label_17
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_31]]
.label_383:
	mov	byte ptr [byte ptr [rip + split]],  1
	jmp	.label_11
.label_17:
	cmp	ebx, 0x63
	nop	
	je	.label_13
	cmp	ebx, 0x67
	jne	.label_15
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_11
.label_384:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + tagged]],  1
	jmp	.label_11
.label_385:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + uniform]],  1
	nop	
	jmp	.label_11
.label_386:
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	jmp	.label_11
.label_13:
	nop	
	mov	byte ptr [byte ptr [rip + crown]],  1
	jmp	.label_11
.label_28:
	cmp	ebx, -1
	jne	.label_27
	test	r14, r14
	nop	
	je	.label_30
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x9c4
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	mov	rbp, rbp
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + max_width]],  eax
.label_30:
	mov	rsp, rsp
	test	r15, r15
	mov	rsp, rsp
	movsxd	rbx,  dword ptr [dword ptr [rip + max_width]]
	lea	rdi, [rdi]
	je	.label_20
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	xor	r9d, r9d
	mov	rdi, r15
	mov	rsp, rsp
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_12
	add	eax, 0xa
	mov	dword ptr [dword ptr [rip + max_width]],  eax
	nop	
	jmp	.label_12
.label_20:
	lea	rsi, [rsi]
	imul	eax, ebx, 0xbb
	cdqe	
	imul	rax, rax, 0x51eb851f
	nop	
	mov	rcx, rax
	shr	rcx, 0x3f
	mov	rbp, rbp
	sar	rax, 0x26
	add	eax, ecx
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
.label_12:
	cmp	dword ptr [dword ptr [rip + optind]],  r13d
	mov	rsp, rsp
	jne	.label_23
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	call	fmt
	mov	r15b, 1
	nop	
	jmp	.label_19
.label_23:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	r15b, 1
	nop	
	jmp	.label_29
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_29:
	mov	rsp, rsp
	cmp	eax, r13d
	mov	rbp, rbp
	jge	.label_19
	lea	rsi, [rsi]
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_25
	cmp	byte ptr [rbx + 1], 0
	lea	rdi, [rdi]
	je	.label_22
.label_25:
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_26
	mov	rsp, rsp
	mov	rdi, rbp
	call	fmt
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	rpl_fclose
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_16
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, ebp
	jmp	.label_18
	nop	word ptr cs:[rax + rax]
.label_26:
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbp
.label_18:
	call	error
	lea	rdi, [rdi]
	jmp	.label_16
.label_22:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	lea	rdi, [rdi]
	jmp	.label_16
.label_19:
	mov	rsp, rsp
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_27:
	cmp	ebx, 0xffffff7d
	je	.label_24
	cmp	ebx, 0xffffff7e
	jne	.label_15
	xor	edi, edi
	call	usage
.label_24:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.14
	xor	r9d, r9d
	lea	rsi, [rsi]
	xor	eax, eax
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	call	exit
.label_15:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_21
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	mov	ecx, ebx
	lea	rsi, [rsi]
	call	error
.label_21:
	mov	edi, 1
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e80

	.globl set_prefix
	.type set_prefix, @function
set_prefix:
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	movzx	eax, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	eax, 0x20
	jne	.label_32
	mov	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	nop	word ptr cs:[rax + rax]
.label_33:
	inc	eax
	movzx	ecx, byte ptr [rbx + 1]
	nop	
	inc	rbx
	cmp	ecx, 0x20
	je	.label_33
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  eax
.label_32:
	mov	qword ptr [word ptr [rip + prefix]],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  eax
	movsxd	rcx, eax
	add	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	rax, rcx
	cmp	rax, rbx
	mov	rbp, rbp
	jbe	.label_35
	mov	rsp, rsp
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rax - 1]
	nop	
	cmp	edx, 0x20
	nop	
	je	.label_34
.label_35:
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	sub	eax, ebx
	mov	dword ptr [dword ptr [rip + prefix_length]],  eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f30

	.globl fmt
	.type fmt, @function
fmt:
	push	rbx
	mov	rbx, rdi
	nop	
	mov	esi, 2
	call	fadvise
	mov	byte ptr [byte ptr [rip + tabs]],  0
	mov	dword ptr [dword ptr [rip + other_indent]],  0
	mov	rdi, rbx
	call	get_prefix
	mov	dword ptr [dword ptr [rip + next_char]],  eax
	mov	rbp, rbp
	jmp	.label_36
	nop	word ptr cs:[rax + rax]
.label_37:
	call	fmt_paragraph
	mov	rdi,  qword ptr [word ptr [rip + word_limit]]
	call	put_paragraph
.label_36:
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	get_paragraph
	test	al, al
	mov	rbp, rbp
	jne	.label_37
	nop	
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fa0

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdi
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + in_column]],  0
	mov	rsp, rsp
	call	getc_unlocked
	nop	
	mov	rdi, r14
	mov	esi, eax
	call	get_space
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + prefix_length]],  0
	je	.label_41
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  ecx
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + prefix]]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_39
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_40:
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rsp, rsp
	jne	.label_38
	inc	dword ptr [dword ptr [rip + in_column]]
	mov	rdi, r14
	call	getc_unlocked
	mov	cl, byte ptr [rbx]
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	test	cl, cl
	nop	
	jne	.label_40
.label_39:
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	get_space
.label_41:
	mov	ecx,  dword ptr [dword ptr [rip + prefix_lead_space]]
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	cmp	ecx, edx
	lea	rsi, [rsi]
	cmovle	edx, ecx
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  edx
.label_38:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402080

	.globl get_paragraph
	.type get_paragraph, @function
get_paragraph:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	nop	
	mov	dword ptr [dword ptr [rip + last_line_length]],  0
	mov	esi,  dword ptr [dword ptr [rip + next_char]]
	jmp	.label_42
	nop	word ptr [rax + rax]
.label_45:
	lea	rdi, [rdi]
	mov	edi, 0xa
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	rdi, rbx
	call	get_prefix
	lea	rdi, [rdi]
	mov	esi, eax
.label_42:
	mov	rsp, rsp
	cmp	esi, -1
	je	.label_43
	cmp	esi, 0xa
	je	.label_43
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	mov	rsp, rsp
	jl	.label_43
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	lea	rsi, [rsi]
	add	ecx, eax
	cmp	dword ptr [dword ptr [rip + in_column]],  ecx
	mov	rsp, rsp
	jge	.label_52
	nop	word ptr [rax + rax]
.label_43:
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	copy_rest
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_45
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	xor	eax, eax
.label_53:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + next_char]],  ebp
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
.label_52:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + prefix_indent]],  eax
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + first_indent]],  eax
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + word_limit]], OFFSET FLAT:unused_word_type
	mov	rdi, rbx
	nop	
	call	get_line
	mov	ebp, eax
	lea	rsi, [rsi]
	mov	edi, ebp
	call	same_para
	movzx	edi, al
	call	set_other_indent
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + split]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_44
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_51
	mov	edi, ebp
	call	same_para
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_44
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	esi, ebp
	nop	
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
	test	al, al
	mov	rbp, rbp
	je	.label_44
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	lea	rsi, [rsi]
	je	.label_49
	jmp	.label_44
.label_51:
	mov	rsp, rsp
	mov	r14b,  byte ptr [byte ptr [rip + tagged]]
	lea	rdi, [rdi]
	and	r14b, 1
	mov	edi, ebp
	call	same_para
	test	r14b, r14b
	je	.label_47
	lea	rsi, [rsi]
	test	al, al
	je	.label_44
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	je	.label_44
.label_48:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	esi, ebp
	mov	rsp, rsp
	call	get_line
	lea	rsi, [rsi]
	mov	ebp, eax
	nop	
	mov	edi, ebp
	call	same_para
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_44
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_48
	jmp	.label_44
.label_46:
	mov	rdi, rbx
	mov	esi, ebp
	lea	rsi, [rsi]
	call	get_line
	nop	
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
.label_47:
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	je	.label_44
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_46
.label_44:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	nop	
	jbe	.label_50
	lea	rdi, [rdi]
	or	byte ptr [rax - 0x18], 8
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	or	byte ptr [rax - 0x18], 2
	mov	al, 1
	jmp	.label_53
.label_50:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.46
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 0x25e
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_paragraph
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402300

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rsp + 4], ecx
	nop	
	mov	ecx,  dword ptr [dword ptr [rip + max_width]]
	mov	dword ptr [rax + 8], ecx
	mov	r12,  qword ptr [word ptr [rip + word_limit]]
	lea	r14, [r12 - 0x28]
	mov	eax, OFFSET FLAT:unused_word_type
	mov	rsp, rsp
	cmp	r14, rax
	lea	rsi, [rsi]
	jb	.label_54
	lea	rdi, [rdi]
	mov	r13d, OFFSET FLAT:unused_word_type
	nop	word ptr [rax + rax]
.label_59:
	nop	
	cmp	r14, r13
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:other_indent
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:first_indent
	cmove	rax, rcx
	mov	rsp, rsp
	mov	ebp, dword ptr [rax]
	add	ebp, dword ptr [r12 - 0x20]
	mov	rbx, r12
	movabs	r15, 0x7fffffffffffffff
	nop	
.label_56:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, ebp
	call	line_cost
	mov	rsp, rsp
	add	rax, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	cmp	r14, r13
	jne	.label_58
	mov	ecx,  dword ptr [dword ptr [rip + last_line_length]]
	test	ecx, ecx
	lea	rdi, [rdi]
	jle	.label_58
	lea	rsi, [rsi]
	mov	edx, ebp
	mov	rbp, rbp
	sub	edx, ecx
	add	edx, edx
	lea	rsi, [rsi]
	lea	ecx, [rdx + rdx*4]
	movsxd	rcx, ecx
	imul	rcx, rcx
	shr	rcx, 1
	mov	rsp, rsp
	add	rax, rcx
.label_58:
	mov	rbp, rbp
	cmp	rax, r15
	jge	.label_57
	mov	qword ptr [r12 - 8], rbx
	mov	rbp, rbp
	mov	dword ptr [r12 - 0x14], ebp
	mov	r15, rax
.label_57:
	mov	rbp, rbp
	cmp	rbx,  qword ptr [word ptr [rip + word_limit]]
	nop	
	je	.label_55
	lea	rdi, [rdi]
	add	ebp, dword ptr [rbx - 0x1c]
	add	ebp, dword ptr [rbx + 8]
	add	rbx, 0x28
	lea	rdi, [rdi]
	cmp	ebp,  dword ptr [dword ptr [rip + max_width]]
	lea	rsi, [rsi]
	jl	.label_56
.label_55:
	mov	rdi, r14
	nop	
	call	base_cost
	add	rax, r15
	mov	qword ptr [r12 - 0x10], rax
	add	r12, -0x28
	mov	rsp, rsp
	add	r14, -0x28
	lea	rsi, [rsi]
	cmp	r14, r13
	jae	.label_59
.label_54:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	nop	
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402480

	.globl put_paragraph
	.type put_paragraph, @function
put_paragraph:
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsp, rsp
	call	put_line
	mov	rbx,  qword ptr [word ptr [rip + label_60]]
	nop	
	jmp	.label_61
.label_62:
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	mov	rsp, rsp
	mov	rdi, rbx
	call	put_line
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbx + 0x20]
.label_61:
	cmp	rbx, r14
	jne	.label_62
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl get_space
	.type get_space, @function
get_space:
	lea	rsi, [rsi]
	push	rbx
	mov	eax, esi
	mov	rbx, rdi
	lea	rdi, [rdi]
	jmp	.label_63
	nop	
.label_64:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	getc_unlocked
.label_63:
	cmp	eax, 9
	mov	rsp, rsp
	je	.label_65
	cmp	eax, 0x20
	mov	rsp, rsp
	jne	.label_66
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	lea	rsi, [rsi]
	inc	eax
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_65:
	nop	
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	rsp, rsp
	mov	eax, ecx
	nop	
	sar	eax, 0x1f
	nop	
	shr	eax, 0x1d
	mov	rbp, rbp
	add	eax, ecx
	and	eax, 0xfffffff8
	nop	
	add	eax, 8
	jmp	.label_64
.label_66:
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402560

	.globl copy_rest
	.type copy_rest, @function
copy_rest:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + out_column]],  0
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	jg	.label_71
	cmp	r14d, -1
	je	.label_70
	cmp	r14d, 0xa
	mov	rsp, rsp
	jne	.label_71
	mov	ebp, r14d
	jmp	.label_68
.label_71:
	nop	
	mov	edi,  dword ptr [dword ptr [rip + next_prefix_indent]]
	call	put_space
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	cmp	eax,  dword ptr [dword ptr [rip + in_column]]
	lea	rdi, [rdi]
	je	.label_67
	mov	rbp,  qword ptr [word ptr [rip + prefix]]
	nop	word ptr [rax + rax]
.label_74:
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rbp]
	mov	rbp, rbp
	test	edi, edi
	je	.label_67
	mov	rsp, rsp
	inc	rbp
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	rsp, rsp
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [rip + in_column]]
	mov	rbp, rbp
	jne	.label_74
.label_67:
	mov	rbp, rbp
	cmp	r14d, -1
	je	.label_69
	nop	
	mov	ebp, 0xa
	nop	
	cmp	r14d, 0xa
	je	.label_68
	mov	edi,  dword ptr [dword ptr [rip + in_column]]
	lea	rsi, [rsi]
	sub	edi,  dword ptr [dword ptr [rip + out_column]]
	call	put_space
	nop	
	mov	ebp, r14d
	mov	rsp, rsp
	jmp	.label_68
.label_69:
	mov	eax,  dword ptr [dword ptr [rip + prefix_length]]
	lea	rsi, [rsi]
	add	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	nop	
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + in_column]],  eax
	lea	rdi, [rdi]
	jl	.label_68
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	jmp	.label_68
.label_70:
	mov	ebp, r14d
	jmp	.label_68
	nop	word ptr cs:[rax + rax]
.label_73:
	mov	rsp, rsp
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	getc_unlocked
	mov	ebp, eax
.label_68:
	cmp	ebp, -1
	je	.label_72
	cmp	ebp, 0xa
	nop	
	jne	.label_73
.label_72:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026d0

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	ebp, esi
	nop	
	mov	r12, rdi
	mov	r14d, OFFSET FLAT:wptr
	mov	r15d, OFFSET FLAT:label_78
.label_82:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	qword ptr [rcx], rax
	nop	word ptr [rax + rax]
.label_80:
	cmp	qword ptr [word ptr [rip + wptr]],  r14
	mov	rbp, rbp
	jne	.label_83
	mov	edi, 1
	lea	rdi, [rdi]
	call	set_other_indent
	mov	rbp, rbp
	call	flush_paragraph
.label_83:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + wptr]],  rcx
	mov	byte ptr [rax], bpl
	mov	rdi, r12
	mov	rsp, rsp
	call	getc_unlocked
	mov	ebp, eax
	mov	rsp, rsp
	cmp	ebp, -1
	je	.label_79
	mov	rsp, rsp
	movsxd	rbx, ebp
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_80
.label_79:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + wptr]]
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	sub	eax, dword ptr [rcx]
	mov	dword ptr [rcx + 8], eax
	add	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rdi,  qword ptr [word ptr [rip + word_limit]]
	call	check_punctuation
	lea	rdi, [rdi]
	mov	ebx,  dword ptr [dword ptr [rip + in_column]]
	mov	rbp, rbp
	mov	rdi, r12
	mov	esi, ebp
	nop	
	call	get_space
	mov	rbp, rbp
	mov	ebp, eax
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	sub	eax, ebx
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	dword ptr [rcx + 0xc], eax
	lea	rdi, [rdi]
	cmp	ebp, -1
	mov	rbp, rbp
	je	.label_87
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	test	byte ptr [rax + 0x10], 2
	mov	rsp, rsp
	jne	.label_81
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_84
	nop	dword ptr [rax]
.label_81:
	lea	rdi, [rdi]
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	jne	.label_75
.label_87:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	lea	rdi, [rdi]
	or	byte ptr [rax + 0x10], 8
	lea	rdi, [rdi]
	jmp	.label_77
.label_75:
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xc], 1
	setg	al
.label_84:
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	dl, byte ptr [rcx + 0x10]
	lea	rdi, [rdi]
	shl	al, 3
	and	dl, 0xf7
	lea	rdi, [rdi]
	or	dl, al
	mov	byte ptr [rcx + 0x10], dl
	cmp	ebp, 0xa
	je	.label_77
	movzx	eax,  byte ptr [byte ptr [rip + uniform]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_76
	nop	word ptr [rax + rax]
.label_77:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	movzx	ecx, byte ptr [rax + 0x10]
	and	ecx, 8
	shr	ecx, 3
	inc	ecx
	mov	dword ptr [rax + 0xc], ecx
.label_76:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + word_limit]],  r15
	jne	.label_85
	mov	edi, 1
	call	set_other_indent
	lea	rdi, [rdi]
	call	flush_paragraph
.label_85:
	add	qword ptr [word ptr [rip + word_limit]],  0x28
	cmp	ebp, 0xa
	je	.label_86
	nop	
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_82
.label_86:
	mov	rdi, r12
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	jmp	get_prefix
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028d0

	.globl set_other_indent
	.type set_other_indent, @function
set_other_indent:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + split]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	je	.label_88
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_91
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:in_column
	mov	ecx, OFFSET FLAT:first_indent
	test	dil, dil
	lea	rdi, [rdi]
	cmovne	rcx, rax
	mov	eax, dword ptr [rcx]
	jmp	.label_89
.label_91:
	movzx	eax,  byte ptr [byte ptr [rip + tagged]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_88
	test	dil, dil
	je	.label_92
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	jne	.label_89
.label_92:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	cmp	dword ptr [dword ptr [rip + other_indent]],  eax
	jne	.label_90
	lea	rdi, [rdi]
	test	eax, eax
	sete	al
	lea	rdi, [rdi]
	movzx	eax, al
	lea	eax, [rax + rax*2]
	mov	rbp, rbp
	jmp	.label_89
.label_88:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
.label_89:
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_90:
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl same_para
	.type same_para, @function
same_para:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [rip + prefix_indent]]
	mov	rsp, rsp
	jne	.label_93
	add	eax,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rsp, rsp
	setge	cl
	cmp	edi, 0xa
	lea	rsi, [rsi]
	setne	dl
	cmp	edi, -1
	setne	al
	and	al, dl
	lea	rsi, [rsi]
	and	al, cl
	ret	
.label_93:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029d0

	.globl put_space
	.type put_space, @function
put_space:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	nop	
	push	rax
	mov	ebx, edi
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	rsp, rsp
	add	ebx, eax
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	nop	
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_94
	mov	ebp, ebx
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	mov	rbp, rbp
	add	ebp, ebx
	mov	rbp, rbp
	and	ebp, 0xfffffff8
	lea	ecx, [rax + 1]
	lea	rdi, [rdi]
	cmp	ecx, ebp
	jge	.label_94
	cmp	eax, ebp
	nop	
	jge	.label_94
	nop	dword ptr [rax]
.label_97:
	lea	rdi, [rdi]
	mov	edi, 9
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	ecx, eax
	sar	ecx, 0x1f
	lea	rsi, [rsi]
	shr	ecx, 0x1d
	lea	rdi, [rdi]
	add	ecx, eax
	and	ecx, 0xfffffff8
	add	ecx, 8
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
	cmp	ecx, ebp
	jl	.label_97
.label_94:
	nop	
	cmp	dword ptr [dword ptr [rip + out_column]],  ebx
	jge	.label_95
	nop	dword ptr [rax]
.label_96:
	mov	edi, 0x20
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	nop	
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, ebx
	mov	rbp, rbp
	jl	.label_96
.label_95:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a90

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r14
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	qword ptr [word ptr [rip + word_limit]],  rax
	je	.label_100
	call	fmt_paragraph
	nop	
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_60]]
	cmp	rsi, rbx
	lea	rsi, [rsi]
	je	.label_103
	nop	
	movabs	r8, 0x7ffffffffffffff7
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	nop	
	lea	rdx, [r8 + 8]
	nop	word ptr cs:[rax + rax]
.label_98:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbp, rbp
	sub	rdi, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rdi, rdx
	cmovl	rbx, rsi
	mov	rbp, rbp
	cmovg	rdi, rdx
	lea	rdx, [rdi + 9]
	cmp	rdi, r8
	cmovge	rdx, rdi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	rsi, rax
	jne	.label_98
.label_103:
	mov	rdi, rbx
	call	put_paragraph
	mov	rsi, qword ptr [rbx]
	mov	rdx,  qword ptr [word ptr [rip + wptr]]
	sub	rdx, rsi
	mov	r14d, OFFSET FLAT:parabuf
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:parabuf
	call	memmove
	mov	eax, dword ptr [rbx]
	sub	eax, r14d
	cdqe	
	mov	rsp, rsp
	sub	qword ptr [word ptr [rip + wptr]],  rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	lea	rsi, [rsi]
	cmp	rbx, rcx
	ja	.label_102
	mov	rsp, rsp
	neg	rax
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	rbp, rbp
	add	qword ptr [rdx], rax
	add	rdx, 0x28
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	rbp, rbp
	cmp	rdx, rcx
	jbe	.label_99
.label_102:
	mov	edx, 0x28
	sub	rdx, rbx
	add	rdx, rcx
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:unused_word_type
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:unused_word_type
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	memmove
	sub	rbx, r14
	movabs	rcx, 0x9999999999999999
	lea	rsi, [rsi]
	mov	rax, rbx
	nop	
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 4
	lea	rsi, [rsi]
	add	rdx, rax
	lea	rsi, [rsi]
	lea	rax, [rdx + rdx*4]
	lea	rdi, [rdi]
	shl	rax, 3
	mov	rsp, rsp
	add	qword ptr [word ptr [rip + word_limit]],  rax
	lea	rdi, [rdi]
	jmp	.label_101
.label_100:
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + wptr]]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	lea	rsi, [rsi]
	call	fwrite_unlocked
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
.label_101:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c60

	.globl check_punctuation
	.type check_punctuation, @function
check_punctuation:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	nop	
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	movsxd	rbx, dword ptr [r14 + 8]
	movsx	esi, byte ptr [r15]
	lea	rsi, [rsi]
	movzx	r12d, byte ptr [rbx + r15 - 1]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.48
	mov	edx, 6
	mov	rsp, rsp
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	setne	al
	mov	bpl, byte ptr [r14 + 0x10]
	and	bpl, 0xfe
	nop	
	or	bpl, al
	mov	rsp, rsp
	mov	byte ptr [r14 + 0x10], bpl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	al, byte ptr [rax + r12*2]
	mov	rsp, rsp
	and	al, 4
	mov	rbp, rbp
	and	bpl, 0xfb
	or	bpl, al
	cmp	rbx, 2
	nop	
	lea	rbx, [rbx + r15 - 1]
	lea	rsi, [rsi]
	mov	byte ptr [r14 + 0x10], bpl
	lea	rsi, [rsi]
	jl	.label_104
	nop	
.label_105:
	movsx	esi, byte ptr [rbx]
	mov	edi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_104
	mov	rbp, rbp
	dec	rbx
	cmp	r15, rbx
	jb	.label_105
.label_104:
	nop	
	movsx	rax, byte ptr [rbx]
	mov	eax, eax
	cmp	rax, 0x40
	lea	rsi, [rsi]
	sbb	cl, cl
	movabs	rdx, 0x8000400200000001
	bt	rdx, rax
	sbb	al, al
	and	al, cl
	and	al, 1
	mov	rsp, rsp
	mov	cl, byte ptr [r14 + 0x10]
	lea	rsi, [rsi]
	add	al, al
	and	cl, 0xfd
	or	cl, al
	lea	rsi, [rsi]
	mov	byte ptr [r14 + 0x10], cl
	pop	rbx
	pop	r12
	nop	
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d60

	.globl line_cost
	.type line_cost, @function
line_cost:
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	rsp, rsp
	xor	eax, eax
	cmp	rcx, rdi
	mov	rsp, rsp
	je	.label_106
	movsxd	rax,  dword ptr [dword ptr [rip + goal_width]]
	nop	
	movsxd	rdx, esi
	mov	rsp, rsp
	sub	rax, rdx
	add	rax, rax
	lea	rax, [rax + rax*4]
	imul	rax, rax
	cmp	qword ptr [rdi + 0x20], rcx
	je	.label_106
	nop	
	movsxd	rcx, dword ptr [rdi + 0x14]
	sub	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, rdx
	nop	
	lea	rcx, [rdx + rdx*4]
	mov	rsp, rsp
	imul	rcx, rcx
	nop	
	shr	rcx, 1
	add	rax, rcx
.label_106:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0

	.globl base_cost
	.type base_cost, @function
base_cost:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:unused_word_type
	lea	rdi, [rdi]
	mov	ecx, 0x1324
	mov	rsp, rsp
	cmp	rdi, rax
	mov	rbp, rbp
	jbe	.label_107
	mov	al, byte ptr [rdi - 0x18]
	lea	rsi, [rsi]
	test	al, 2
	jne	.label_110
	mov	ecx, 0xce4
	lea	rdi, [rdi]
	test	al, 4
	jne	.label_107
	lea	rdi, [rdi]
	mov	ecx, 0x1324
	mov	eax, OFFSET FLAT:label_108
	mov	rsp, rsp
	cmp	rdi, rax
	jbe	.label_107
	mov	rbp, rbp
	mov	ecx, 0x1324
	test	byte ptr [rdi - 0x40], 8
	nop	
	je	.label_107
	movsxd	rcx, dword ptr [rdi - 0x20]
	add	rcx, 2
	mov	eax, 0x9c40
	mov	rsp, rsp
	xor	edx, edx
	idiv	rcx
	nop	
	mov	rcx, rax
	add	rcx, 0x1324
	lea	rsi, [rsi]
	jmp	.label_107
.label_110:
	lea	rdi, [rdi]
	test	al, 8
	nop	
	mov	eax, 0x59164
	lea	rdi, [rdi]
	mov	ecx, 0x960
	cmove	rcx, rax
.label_107:
	lea	rsi, [rsi]
	mov	al, byte ptr [rdi + 0x10]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_109
	mov	rsp, rsp
	test	al, 8
	je	.label_111
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rdi + 8]
	add	rsi, 2
	mov	rbp, rbp
	mov	eax, 0x57e4
	xor	edx, edx
	idiv	rsi
	add	rcx, rax
.label_111:
	mov	rax, rcx
	ret	
.label_109:
	mov	rbp, rbp
	add	rcx, -0x640
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + out_column]],  0
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + prefix_indent]]
	mov	rsp, rsp
	call	put_space
	nop	
	mov	rdi,  qword ptr [word ptr [rip + prefix]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	add	eax,  dword ptr [dword ptr [rip + prefix_length]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	sub	ebp, eax
	mov	edi, ebp
	call	put_space
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x20]
	lea	r14, [rbp - 0x28]
	mov	rdi, rbx
	call	put_word
	lea	rsi, [rsi]
	cmp	r14, rbx
	mov	rsp, rsp
	je	.label_112
	add	rbx, 0x28
	nop	word ptr cs:[rax + rax]
.label_113:
	nop	
	mov	edi, dword ptr [rbx - 0x1c]
	mov	rsp, rsp
	call	put_space
	mov	rdi, rbx
	call	put_word
	nop	
	add	rbx, 0x28
	cmp	rbp, rbx
	jne	.label_113
.label_112:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	dword ptr [dword ptr [rip + last_line_length]],  eax
	lea	rdi, [rdi]
	mov	edi, 0xa
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	jmp	putchar_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f80

	.globl put_word
	.type put_word, @function
put_word:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r14 + 8]
	mov	rsp, rsp
	test	ebp, ebp
	lea	rdi, [rdi]
	je	.label_114
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r14]
	nop	
.label_115:
	movsx	edi, byte ptr [rbx]
	nop	
	inc	rbx
	mov	rsp, rsp
	call	putchar_unlocked
	dec	ebp
	jne	.label_115
.label_114:
	mov	eax, dword ptr [r14 + 8]
	mov	rsp, rsp
	add	dword ptr [dword ptr [rip + out_column]],  eax
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0
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
	#Procedure 0x402fe0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0

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
	je	.label_117
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_116
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_116
.label_117:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_119
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_116:
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
	jne	.label_118
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
.label_119:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_118:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
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
	.align	16
	#Procedure 0x4030f0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403100

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_120
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_120:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130

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
	je	.label_121
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
	jl	.label_123
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_123
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
	jne	.label_122
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_122:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_123:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_121:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
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
	#Procedure 0x403220
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
	#Procedure 0x403270
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
	#Procedure 0x403290
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
	#Procedure 0x4032b0

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
	#Procedure 0x403320
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
	#Procedure 0x403340

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
	je	.label_124
	test	rdx, rdx
	nop	
	je	.label_124
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_124:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403380
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
	#Procedure 0x403420

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
.label_213:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_194
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_203]]
.label_445:
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
.label_446:
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
	jne	.label_230
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_230
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_142:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_125
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_125:
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
	jne	.label_142
.label_230:
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
	jmp	.label_145
.label_438:
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
	jmp	.label_145
.label_441:
	mov	rsp, rsp
	mov	al, 1
.label_439:
	mov	r15b, 1
.label_442:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_182
	mov	cl, al
.label_182:
	lea	rdi, [rdi]
	mov	al, cl
.label_440:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_187
	test	r10, r10
	je	.label_192
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_195
.label_187:
	xor	ecx, ecx
	jmp	.label_195
.label_443:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_204
	test	r10, r10
	je	.label_218
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_211
.label_444:
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
	jmp	.label_145
.label_192:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_195:
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
	jmp	.label_145
.label_204:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_211
.label_218:
	mov	rbp, rbp
	mov	eax, 1
.label_211:
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
.label_145:
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
	jmp	.label_140
	nop	word ptr [rax + rax]
.label_173:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_140:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_198
	cmp	rsi, rbp
	jne	.label_200
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_198:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_202
.label_200:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_209
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_157
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_157
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
.label_157:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_239
.label_209:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_175:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_244
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_126]]
.label_418:
	test	rsi, rsi
	jne	.label_139
	jmp	.label_141
	nop	word ptr [rax + rax]
.label_239:
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
	jne	.label_161
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
	je	.label_175
	mov	rsp, rsp
	jmp	.label_146
.label_161:
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
	jmp	.label_175
.label_422:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_154
	test	rsi, rsi
	nop	
	jne	.label_137
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_141
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_131
.label_411:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_181
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_146
	cmp	edi, 2
	nop	
	jne	.label_242
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_212
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_215
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_215:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_227
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_227:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_238
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_238:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_236
.label_412:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_128
.label_413:
	mov	cl, 0x74
	jmp	.label_130
.label_414:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_128
.label_415:
	mov	bl, 0x66
	jmp	.label_128
.label_416:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_130
.label_419:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_134
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_147
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
	jae	.label_243
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_243:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_171:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_177
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_177:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_188
.label_420:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_193
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_199
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_147
.label_199:
	mov	rdi, r14
	jmp	.label_139
.label_421:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_207
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_147
	mov	rdi, r14
	jmp	.label_214
.label_244:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_217
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
.label_166:
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
	ja	.label_127
	test	dl, dl
	mov	rsp, rsp
	je	.label_127
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_131
.label_154:
	test	rsi, rsi
	jne	.label_135
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_135
.label_141:
	mov	rbp, rbp
	mov	dl, 1
.label_417:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_146
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_131
.label_181:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_139
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_140
.label_134:
	mov	rdi, r14
.label_188:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_131
.label_207:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_130
.label_214:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_143
.label_130:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_146
.label_128:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_131
	lea	rsi, [rsi]
	jmp	.label_151
.label_217:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_180
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
.label_180:
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
.label_155:
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
	je	.label_219
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
	je	.label_223
	cmp	rbp, -2
	nop	
	je	.label_235
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_163
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_132:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_160
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_129
.label_160:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_132
.label_163:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_205
	xor	r15d, r15d
.label_205:
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
	je	.label_155
	jmp	.label_166
.label_135:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_131
.label_193:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_139
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_139
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_139
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_178
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_184
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_146
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_150
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_150:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_246
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_246:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_201
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_201:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_186
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_186:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_131
.label_139:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_131:
	test	r12b, r12b
	je	.label_185
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_241
	jmp	.label_233
	nop	word ptr cs:[rax + rax]
.label_185:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_233
.label_241:
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
	jne	.label_167
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_143
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
.label_233:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_151
	jmp	.label_143
.label_167:
	mov	bl, r13b
	mov	rsi, r14
.label_151:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_146
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_165
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_165
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_224
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_224:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_174
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_174:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_183
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_183:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_165:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_196
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_196:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_169
.label_137:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_131
.label_127:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_237
	nop	word ptr cs:[rax + rax]
.label_152:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_237:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_222
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_226
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_231
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_231:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_226
	nop	dword ptr [rax]
.label_222:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_147
	cmp	r14d, 2
	jne	.label_153
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_153
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_172:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_220
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_220:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_159
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_159:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_153:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_206
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_206:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_133
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
.label_133:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_189
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
.label_189:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_226:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_143
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_216
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_164
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_221
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_221:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_232
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_232:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_164
	nop	word ptr cs:[rax + rax]
.label_216:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_164:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_152
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_152
	nop	word ptr cs:[rax + rax]
.label_143:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_148
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_148
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_225
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_225:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_158
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_158:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_148:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_169:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_173
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_173
.label_242:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_236
.label_212:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_236:
	cmp	rcx, r10
	jae	.label_190
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_190:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_197
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_138
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_210
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_162
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_162:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_229
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_229:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_131
.label_197:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_131
.label_138:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_131
.label_210:
	xor	r15d, r15d
	jmp	.label_131
.label_219:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_170
.label_223:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_168
.label_235:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_144
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_149:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_156
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_149
	xor	r15d, r15d
	nop	
	jmp	.label_170
.label_144:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_168:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_170:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_166
.label_156:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_170
.label_178:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_131
.label_184:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_131
	nop	word ptr cs:[rax + rax]
.label_202:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_179
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_147
.label_179:
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
	jne	.label_208
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
	je	.label_213
.label_136:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_228
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_228
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_228
	inc	rdx
	nop	dword ptr [rax + rax]
.label_240:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_234
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_234:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_240
.label_228:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_245
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_245
.label_146:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_176:
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
.label_191:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_245:
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
.label_129:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_176
.label_147:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_176
.label_208:
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
	jmp	.label_191
.label_194:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b70
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
	#Procedure 0x404b90

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
	je	.label_247
	mov	qword ptr [rax], rbx
.label_247:
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
	#Procedure 0x404ce0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_248
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_251:
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
	jl	.label_251
.label_248:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_250
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_252]], OFFSET FLAT:slot0
.label_250:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_249
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_249:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404db0

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
	js	.label_259
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_254
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_257
.label_254:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_255
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
	jne	.label_258
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_258:
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
	ja	.label_256
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
	je	.label_253
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_253:
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
.label_256:
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
.label_259:
	lea	rdi, [rdi]
	call	abort
.label_255:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405030
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
	#Procedure 0x405050
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
	#Procedure 0x405070

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
	#Procedure 0x4050d0

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
	je	.label_260
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
.label_260:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405140

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
	#Procedure 0x4051a0

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
	#Procedure 0x4051c0
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
	#Procedure 0x4051e0

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
	mov	rcx,  qword ptr [word ptr [rip + label_261]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_262]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
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
	#Procedure 0x405280

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
	#Procedure 0x4052a0

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
	#Procedure 0x4052b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0

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
	#Procedure 0x405330

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
	#Procedure 0x405340

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
	mov	rax,  qword ptr [word ptr [rip + label_261]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_262]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
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
	#Procedure 0x4053d0
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
	#Procedure 0x405400
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
	#Procedure 0x405430

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405440
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
	#Procedure 0x405460

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405470

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
	#Procedure 0x405480

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
	jne	.label_264
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
	je	.label_265
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_264
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_264
.label_265:
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
	je	.label_266
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_264
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_264
.label_266:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_264:
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
	#Procedure 0x4055b0

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
	je	.label_267
	jmp	.label_268
.label_269:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_268
.label_267:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_268
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
.label_268:
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
	#Procedure 0x405670

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
	je	.label_272
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_271
	lea	rsi, [rsi]
	jmp	.label_270
.label_272:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_270
.label_271:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_270
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
.label_270:
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
	#Procedure 0x405760

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
	je	.label_275
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_274
	jmp	.label_273
.label_275:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_273
.label_274:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_273
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
.label_273:
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
	#Procedure 0x405830

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
	je	.label_278
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_277
	jmp	.label_276
.label_278:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_276
.label_277:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_276
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
.label_276:
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
	#Procedure 0x4058d0

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
	je	.label_281
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_280
	nop	
	jmp	.label_279
.label_281:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_279
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_279
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
.label_279:
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
	#Procedure 0x405970

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
	je	.label_284
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_283
	lea	rsi, [rsi]
	jmp	.label_282
.label_284:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_282
.label_283:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_282
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
.label_282:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a00

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
	je	.label_287
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_286
	jmp	.label_285
.label_287:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_285
.label_286:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_285
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_285:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405a70

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
	je	.label_288
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_290
	mov	rbp, rbp
	jmp	.label_289
.label_288:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_289
.label_290:
	xor	eax, eax
.label_289:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ac0

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
	je	.label_291
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_293
.label_291:
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_293:
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
	ja	.label_295
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_296]]
.label_449:
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
.label_295:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_299
.label_450:
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
.label_451:
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
.label_452:
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
	jmp	.label_300
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
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
	jmp	.label_298
.label_454:
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
	jmp	.label_297
.label_455:
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
.label_297:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_298:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_300:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_294
.label_457:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_299:
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
	jmp	.label_292
.label_456:
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
.label_292:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_294:
	mov	rbp, rbp
	call	__fprintf_chk
.label_448:
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
	#Procedure 0x405eb0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_301:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_301
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ee0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_304:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_302
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_303
	nop	word ptr cs:[rax + rax]
.label_302:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_303:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_305
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_304
.label_305:
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
	#Procedure 0x405f70

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_306
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
.label_306:
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
	#Procedure 0x406020
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
	mov	esi, OFFSET FLAT:.str.16
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
	#Procedure 0x4060b0
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
	jb	.label_307
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_307:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_308
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_309
.label_308:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_309:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406120
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
	jb	.label_310
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_310:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406160

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_311
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_311
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_311:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_312
	test	rax, rax
	nop	
	je	.label_313
.label_312:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_313:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061b0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_314
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_315
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_316
.label_314:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_317
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_317:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_318
.label_316:
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
.label_315:
	call	xalloc_die
.label_318:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406260
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406270
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
	#Procedure 0x4062b0
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
	jb	.label_319
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_319
	pop	rcx
	ret	
.label_319:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4062e0

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
	#Procedure 0x406330
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
	#Procedure 0x406350

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_2
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
	.align	16
	#Procedure 0x4063a0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_323
	cmp	eax, 1
	je	.label_325
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_320
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	cmp	rbx, r12
	lea	rsi, [rsi]
	jb	.label_321
	cmp	rbx, r15
	jbe	.label_324
.label_321:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	jb	.label_322
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_320
.label_323:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_320
.label_325:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_320
.label_322:
	mov	dword ptr [rax], 0x22
.label_320:
	nop	
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	nop	
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	nop	
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rcx, r14
	nop	
	call	error
.label_324:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406500

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_326
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_342:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_342
	mov	rbp, rbp
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r15d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_328
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	lea	rdi, [rdi]
	call	strtoumax
	mov	rcx, rbp
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, rbx
	nop	
	je	.label_335
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_338
	cmp	eax, 0x22
	jne	.label_328
	lea	rsi, [rsi]
	mov	r12d, 1
.label_338:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_347
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_336
.label_335:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_328
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_328
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_328
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_347:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_341
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_327
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_332
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_334
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strchr
	mov	r14d, 1
	mov	rsp, rsp
	mov	rbx, r13
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_329
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_345
	cmp	ecx, 0x44
	je	.label_345
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_329
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_329
	mov	r14d, 1
	jmp	.label_329
.label_345:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_329:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_337
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_349
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_340]]
.label_396:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_331
.label_337:
	cmp	eax, 0x73
	jg	.label_344
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_346
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_350]]
.label_405:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_331
.label_349:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_333
	nop	
	cmp	eax, 0x59
	jne	.label_327
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_330
.label_344:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_333
	cmp	eax, 0x77
	nop	
	jne	.label_327
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_331:
	nop	
	call	bkm_scale
	jmp	.label_343
.label_398:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_330
.label_399:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_330
.label_400:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_330
.label_333:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_330
.label_346:
	cmp	eax, 0x5a
	jne	.label_327
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_330
.label_327:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_339
.label_397:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_330
.label_401:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_330:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power
.label_343:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_348
	lea	rdi, [rdi]
	or	eax, 2
.label_348:
	mov	r12d, eax
.label_341:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_336:
	mov	qword ptr [rcx], rax
.label_339:
	mov	r15d, r12d
.label_328:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_332:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_329
.label_334:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_329
.label_326:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x406910

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	imul	rcx, rdx
	cmp	rax, rdx
	mov	rsp, rsp
	cmovb	rcx, rsi
	sbb	eax, eax
	lea	rdi, [rdi]
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406950

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	lea	rsi, [rsi]
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_351
	nop	word ptr [rax + rax]
.label_352:
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	call	bkm_scale
	or	ebx, eax
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_352
.label_351:
	mov	rsp, rsp
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_353
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_354
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
	je	.label_354
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
.label_353:
	mov	ecx, 1
.label_354:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a30

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
	js	.label_355
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_357
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
	je	.label_355
.label_357:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_355
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_356
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_356:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_355:
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
	#Procedure 0x406af0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_358
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_358
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_358:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x406b20

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_359
	mov	rbp, rbp
	ret	
.label_359:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x406b40

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
	jne	.label_362
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_362
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_360
.label_362:
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
.label_360:
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
	je	.label_361
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_361:
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
	#Procedure 0x406bf0

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
	je	.label_363
	nop	
	cmp	r15, -2
	jb	.label_363
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_363
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_363:
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
	#Procedure 0x406c80
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_364
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_364
.label_365:
	ret	
.label_364:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_365
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cb0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_366
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_366:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406cd0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ce0
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
	#Procedure 0x406cf0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_367
.label_368:
	ret	
.label_367:
	cmp	edi, 0x7f
	je	.label_368
	xor	eax, eax
	jmp	.label_368
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d10
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
	#Procedure 0x406d20
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
	#Procedure 0x406d30
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
	#Procedure 0x406d40
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
	#Procedure 0x406d50
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_369
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_369
.label_370:
	ret	
.label_369:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_370
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d80
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_371
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_371:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406da0

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
	#Procedure 0x406db0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_372
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_372:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406dd0
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
	#Procedure 0x406de0
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
	#Procedure 0x406df0

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
	je	.label_374
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_373
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_373
.label_374:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_373
	test	cl, cl
	jne	.label_373
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_373:
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
	#Procedure 0x406e90

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
	je	.label_376
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_375
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_377
.label_375:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_376
.label_377:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_376:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ee0

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
	je	.label_378
	nop	
	mov	rax, rcx
.label_378:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x406f20

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
