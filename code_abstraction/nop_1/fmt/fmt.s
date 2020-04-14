	.section	.text
	.align	16
	#Procedure 0x401630

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
	call	emit_stdin_note
	call	emit_mandatory_arg_note
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
	.align	16
	#Procedure 0x401760

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401790

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017c0

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
	mov	edi, OFFSET FLAT:.str.7
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
	mov	ebx, OFFSET FLAT:.str.7
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
	mov	r14d, OFFSET FLAT:.str.7
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
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
	.align	16
	#Procedure 0x4018e0

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
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + uniform]],  0
	mov	byte ptr [byte ptr [rip + split]],  0
	mov	byte ptr [byte ptr [rip + tagged]],  0
	mov	byte ptr [byte ptr [rip + crown]],  0
	mov	dword ptr [dword ptr [rip + max_width]],  0x4b
	mov	qword ptr [word ptr [rip + prefix]], OFFSET FLAT:.str_0
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  0
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	mov	dword ptr [dword ptr [rip + prefix_length]],  0
	xor	r14d, r14d
	cmp	r13d, 2
	jl	.label_11
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_11
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_11
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	r12, [r12 + 8]
	dec	r13d
	mov	r14, rax
.label_11:
	xor	r15d, r15d
	jmp	.label_17
.label_475:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	set_prefix
	nop	dword ptr [rax + rax]
.label_17:
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_27
	lea	eax, [rbx - 0x70]
	cmp	eax, 7
	ja	.label_29
	jmp	qword ptr [word ptr [+ (rax * 8) + label_31]]
.label_476:
	mov	byte ptr [byte ptr [rip + split]],  1
	jmp	.label_17
.label_29:
	cmp	ebx, 0x63
	je	.label_13
	cmp	ebx, 0x67
	jne	.label_14
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_17
.label_477:
	mov	byte ptr [byte ptr [rip + tagged]],  1
	jmp	.label_17
.label_478:
	mov	byte ptr [byte ptr [rip + uniform]],  1
	jmp	.label_17
.label_479:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_17
.label_13:
	mov	byte ptr [byte ptr [rip + crown]],  1
	jmp	.label_17
.label_27:
	cmp	ebx, -1
	jne	.label_20
	test	r14, r14
	je	.label_21
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x9c4
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + max_width]],  eax
.label_21:
	test	r15, r15
	movsxd	rbx,  dword ptr [dword ptr [rip + max_width]]
	je	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r15
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
	test	r14, r14
	jne	.label_22
	add	eax, 0xa
	mov	dword ptr [dword ptr [rip + max_width]],  eax
	jmp	.label_22
.label_18:
	imul	eax, ebx, 0xbb
	cdqe	
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x26
	add	eax, ecx
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
.label_22:
	cmp	dword ptr [dword ptr [rip + optind]],  r13d
	jne	.label_30
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	mov	r15b, 1
	jmp	.label_12
.label_30:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	r15b, 1
	jmp	.label_15
	nop	dword ptr [rax]
.label_24:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_15:
	cmp	eax, r13d
	jge	.label_12
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_19
	cmp	byte ptr [rbx + 1], 0
	je	.label_23
.label_19:
	mov	esi, OFFSET FLAT:.str.17_0
	mov	rdi, rbx
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_25
	mov	rdi, rbp
	call	fmt
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_24
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_16
	nop	word ptr cs:[rax + rax]
.label_25:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_16:
	call	error
	jmp	.label_24
.label_23:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	jmp	.label_24
.label_12:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_20:
	cmp	ebx, 0xffffff7d
	je	.label_28
	cmp	ebx, 0xffffff7e
	jne	.label_14
	xor	edi, edi
	call	usage
.label_28:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.14
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_14:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_26:
	mov	edi, 1
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ca0

	.globl set_prefix
	.type set_prefix, @function
set_prefix:
	push	rbx
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x20
	jne	.label_32
	mov	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	nop	dword ptr [rax]
.label_33:
	inc	eax
	movzx	ecx, byte ptr [rbx + 1]
	inc	rbx
	cmp	ecx, 0x20
	je	.label_33
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  eax
.label_32:
	mov	qword ptr [word ptr [rip + prefix]],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  eax
	movsxd	rcx, eax
	add	rcx, rbx
	nop	
.label_34:
	mov	rax, rcx
	cmp	rax, rbx
	jbe	.label_35
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x20
	je	.label_34
.label_35:
	mov	byte ptr [rax], 0
	sub	eax, ebx
	mov	dword ptr [dword ptr [rip + prefix_length]],  eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl fmt
	.type fmt, @function
fmt:
	push	rbx
	mov	rbx, rdi
	mov	esi, 2
	call	fadvise
	mov	byte ptr [byte ptr [rip + tabs]],  0
	mov	dword ptr [dword ptr [rip + other_indent]],  0
	mov	rdi, rbx
	call	get_prefix
	mov	dword ptr [dword ptr [rip + next_char]],  eax
	jmp	.label_36
	nop	
.label_37:
	call	fmt_paragraph
	mov	rdi,  qword ptr [word ptr [rip + word_limit]]
	call	put_paragraph
.label_36:
	mov	rdi, rbx
	call	get_paragraph
	test	al, al
	jne	.label_37
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x401d70

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	dword ptr [dword ptr [rip + in_column]],  0
	call	getc_unlocked
	mov	rdi, r14
	mov	esi, eax
	call	get_space
	cmp	dword ptr [dword ptr [rip + prefix_length]],  0
	je	.label_38
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  ecx
	mov	rbx,  qword ptr [word ptr [rip + prefix]]
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	.label_40
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_41:
	movzx	ecx, cl
	cmp	eax, ecx
	jne	.label_39
	inc	dword ptr [dword ptr [rip + in_column]]
	mov	rdi, r14
	call	getc_unlocked
	mov	cl, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	jne	.label_41
.label_40:
	mov	rdi, r14
	mov	esi, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	get_space
.label_38:
	mov	ecx,  dword ptr [dword ptr [rip + prefix_lead_space]]
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	cmp	ecx, edx
	cmovle	edx, ecx
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  edx
.label_39:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x401e10

	.globl get_paragraph
	.type get_paragraph, @function
get_paragraph:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + last_line_length]],  0
	mov	esi,  dword ptr [dword ptr [rip + next_char]]
	jmp	.label_45
	nop	dword ptr [rax]
.label_53:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi, rbx
	call	get_prefix
	mov	esi, eax
.label_45:
	cmp	esi, -1
	je	.label_43
	cmp	esi, 0xa
	je	.label_43
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	jl	.label_43
	mov	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	add	ecx, eax
	cmp	dword ptr [dword ptr [rip + in_column]],  ecx
	jge	.label_48
	nop	dword ptr [rax]
.label_43:
	mov	rdi, rbx
	call	copy_rest
	cmp	eax, -1
	jne	.label_53
	mov	ebp, 0xffffffff
	xor	eax, eax
.label_52:
	mov	dword ptr [dword ptr [rip + next_char]],  ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_48:
	mov	dword ptr [dword ptr [rip + prefix_indent]],  eax
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + first_indent]],  eax
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
	mov	qword ptr [word ptr [rip + word_limit]], OFFSET FLAT:unused_word_type
	mov	rdi, rbx
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
	movzx	edi, al
	call	set_other_indent
	mov	al,  byte ptr [byte ptr [rip + split]]
	and	al, 1
	jne	.label_44
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_49
	mov	edi, ebp
	call	same_para
	test	al, al
	je	.label_44
	nop	dword ptr [rax]
.label_47:
	mov	rdi, rbx
	mov	esi, ebp
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
	test	al, al
	je	.label_44
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_47
	jmp	.label_44
.label_49:
	mov	r14b,  byte ptr [byte ptr [rip + tagged]]
	and	r14b, 1
	mov	edi, ebp
	call	same_para
	test	r14b, r14b
	je	.label_51
	test	al, al
	je	.label_44
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	je	.label_44
.label_42:
	mov	rdi, rbx
	mov	esi, ebp
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
	test	al, al
	je	.label_44
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_42
	jmp	.label_44
.label_46:
	mov	rdi, rbx
	mov	esi, ebp
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
.label_51:
	test	al, al
	je	.label_44
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_46
.label_44:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	jbe	.label_50
	or	byte ptr [rax - 0x18], 8
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	or	byte ptr [rax - 0x18], 2
	mov	al, 1
	jmp	.label_52
.label_50:
	mov	edi, OFFSET FLAT:.str.46
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 0x25e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_paragraph
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401fe0

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	qword ptr [rax + 0x18], 0
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rsp + 4], ecx
	mov	ecx,  dword ptr [dword ptr [rip + max_width]]
	mov	dword ptr [rax + 8], ecx
	mov	r12,  qword ptr [word ptr [rip + word_limit]]
	lea	r14, [r12 - 0x28]
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	r14, rax
	jb	.label_54
	mov	r13d, OFFSET FLAT:unused_word_type
	nop	word ptr [rax + rax]
.label_57:
	cmp	r14, r13
	mov	eax, OFFSET FLAT:other_indent
	mov	ecx, OFFSET FLAT:first_indent
	cmove	rax, rcx
	mov	ebp, dword ptr [rax]
	add	ebp, dword ptr [r12 - 0x20]
	mov	rbx, r12
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_58:
	mov	rdi, rbx
	mov	esi, ebp
	call	line_cost
	add	rax, qword ptr [rbx + 0x18]
	cmp	r14, r13
	jne	.label_55
	mov	ecx,  dword ptr [dword ptr [rip + last_line_length]]
	test	ecx, ecx
	jle	.label_55
	mov	edx, ebp
	sub	edx, ecx
	add	edx, edx
	lea	ecx, [rdx + rdx*4]
	movsxd	rcx, ecx
	imul	rcx, rcx
	shr	rcx, 1
	add	rax, rcx
.label_55:
	cmp	rax, r15
	jge	.label_59
	mov	qword ptr [r12 - 8], rbx
	mov	dword ptr [r12 - 0x14], ebp
	mov	r15, rax
.label_59:
	cmp	rbx,  qword ptr [word ptr [rip + word_limit]]
	je	.label_56
	add	ebp, dword ptr [rbx - 0x1c]
	add	ebp, dword ptr [rbx + 8]
	add	rbx, 0x28
	cmp	ebp,  dword ptr [dword ptr [rip + max_width]]
	jl	.label_58
.label_56:
	mov	rdi, r14
	call	base_cost
	add	rax, r15
	mov	qword ptr [r12 - 0x10], rax
	add	r12, -0x28
	add	r14, -0x28
	cmp	r14, r13
	jae	.label_57
.label_54:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rax + 8], ecx
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
	#Procedure 0x402100

	.globl put_paragraph
	.type put_paragraph, @function
put_paragraph:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbx,  qword ptr [word ptr [rip + label_61]]
	jmp	.label_62
.label_60:
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_62:
	cmp	rbx, r14
	jne	.label_60
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402140

	.globl get_space
	.type get_space, @function
get_space:
	push	rbx
	mov	eax, esi
	mov	rbx, rdi
	jmp	.label_63
	nop	dword ptr [rax + rax]
.label_64:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rdi, rbx
	call	getc_unlocked
.label_63:
	cmp	eax, 9
	je	.label_66
	cmp	eax, 0x20
	jne	.label_65
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	jmp	.label_64
.label_65:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021b0

	.globl copy_rest
	.type copy_rest, @function
copy_rest:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + out_column]],  0
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	jg	.label_71
	cmp	r14d, -1
	je	.label_70
	cmp	r14d, 0xa
	jne	.label_71
	mov	ebp, r14d
	jmp	.label_67
.label_71:
	mov	edi,  dword ptr [dword ptr [rip + next_prefix_indent]]
	call	put_space
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	cmp	eax,  dword ptr [dword ptr [rip + in_column]]
	je	.label_69
	mov	rbp,  qword ptr [word ptr [rip + prefix]]
	nop	word ptr [rax + rax]
.label_72:
	movsx	edi, byte ptr [rbp]
	test	edi, edi
	je	.label_69
	inc	rbp
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax,  dword ptr [dword ptr [rip + in_column]]
	jne	.label_72
.label_69:
	cmp	r14d, -1
	je	.label_68
	mov	ebp, 0xa
	cmp	r14d, 0xa
	je	.label_67
	mov	edi,  dword ptr [dword ptr [rip + in_column]]
	sub	edi,  dword ptr [dword ptr [rip + out_column]]
	call	put_space
	mov	ebp, r14d
	jmp	.label_67
.label_68:
	mov	eax,  dword ptr [dword ptr [rip + prefix_length]]
	add	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	ebp, 0xffffffff
	cmp	dword ptr [dword ptr [rip + in_column]],  eax
	jl	.label_67
	mov	edi, 0xa
	call	putchar_unlocked
	jmp	.label_67
.label_70:
	mov	ebp, r14d
	jmp	.label_67
	nop	word ptr [rax + rax]
.label_74:
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
.label_67:
	cmp	ebp, -1
	je	.label_73
	cmp	ebp, 0xa
	jne	.label_74
.label_73:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022c0

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	r12, rdi
	mov	r14d, OFFSET FLAT:wptr
	mov	r15d, OFFSET FLAT:label_75
	nop	dword ptr [rax]
.label_87:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	qword ptr [rcx], rax
	nop	word ptr cs:[rax + rax]
.label_77:
	cmp	qword ptr [word ptr [rip + wptr]],  r14
	jne	.label_80
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_80:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + wptr]],  rcx
	mov	byte ptr [rax], bpl
	mov	rdi, r12
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_85
	movsxd	rbx, ebp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_77
.label_85:
	mov	eax,  dword ptr [dword ptr [rip + wptr]]
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	sub	eax, dword ptr [rcx]
	mov	dword ptr [rcx + 8], eax
	add	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rdi,  qword ptr [word ptr [rip + word_limit]]
	call	check_punctuation
	mov	ebx,  dword ptr [dword ptr [rip + in_column]]
	mov	rdi, r12
	mov	esi, ebp
	call	get_space
	mov	ebp, eax
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	sub	eax, ebx
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	dword ptr [rcx + 0xc], eax
	cmp	ebp, -1
	je	.label_76
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	test	byte ptr [rax + 0x10], 2
	jne	.label_79
	xor	eax, eax
	jmp	.label_82
	nop	dword ptr [rax]
.label_79:
	cmp	ebp, 0xa
	jne	.label_84
.label_76:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	or	byte ptr [rax + 0x10], 8
	jmp	.label_86
.label_84:
	cmp	dword ptr [rax + 0xc], 1
	setg	al
.label_82:
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	dl, byte ptr [rcx + 0x10]
	shl	al, 3
	and	dl, 0xf7
	or	dl, al
	mov	byte ptr [rcx + 0x10], dl
	cmp	ebp, 0xa
	je	.label_86
	movzx	eax,  byte ptr [byte ptr [rip + uniform]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_81
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	movzx	ecx, byte ptr [rax + 0x10]
	and	ecx, 8
	shr	ecx, 3
	inc	ecx
	mov	dword ptr [rax + 0xc], ecx
.label_81:
	cmp	qword ptr [word ptr [rip + word_limit]],  r15
	jne	.label_78
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_78:
	add	qword ptr [word ptr [rip + word_limit]],  0x28
	cmp	ebp, 0xa
	je	.label_83
	cmp	ebp, -1
	jne	.label_87
.label_83:
	mov	rdi, r12
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	get_prefix
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460

	.globl set_other_indent
	.type set_other_indent, @function
set_other_indent:
	movzx	eax,  byte ptr [byte ptr [rip + split]]
	and	eax, 1
	cmp	eax, 1
	je	.label_88
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_92
	mov	eax, OFFSET FLAT:in_column
	mov	ecx, OFFSET FLAT:first_indent
	test	dil, dil
	cmovne	rcx, rax
	mov	eax, dword ptr [rcx]
	jmp	.label_91
.label_92:
	movzx	eax,  byte ptr [byte ptr [rip + tagged]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_88
	test	dil, dil
	je	.label_89
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	jne	.label_91
.label_89:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	cmp	dword ptr [dword ptr [rip + other_indent]],  eax
	jne	.label_90
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax*2]
	jmp	.label_91
.label_88:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
.label_91:
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_90:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl same_para
	.type same_para, @function
same_para:
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [rip + prefix_indent]]
	jne	.label_93
	add	eax,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	dword ptr [dword ptr [rip + in_column]],  eax
	setge	cl
	cmp	edi, 0xa
	setne	dl
	cmp	edi, -1
	setne	al
	and	al, dl
	and	al, cl
	ret	
.label_93:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402520

	.globl put_space
	.type put_space, @function
put_space:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	add	ebx, eax
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_94
	mov	ebp, ebx
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, ebx
	and	ebp, 0xfffffff8
	lea	ecx, [rax + 1]
	cmp	ecx, ebp
	jge	.label_94
	cmp	eax, ebp
	jge	.label_94
	nop	word ptr cs:[rax + rax]
.label_96:
	mov	edi, 9
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	add	ecx, 8
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
	cmp	ecx, ebp
	jl	.label_96
.label_94:
	cmp	dword ptr [dword ptr [rip + out_column]],  ebx
	jge	.label_95
	nop	word ptr cs:[rax + rax]
.label_97:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, ebx
	jl	.label_97
.label_95:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r14
	push	rbx
	push	rax
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	qword ptr [word ptr [rip + word_limit]],  rax
	je	.label_102
	call	fmt_paragraph
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	mov	rsi,  qword ptr [word ptr [rip + label_61]]
	cmp	rsi, rbx
	je	.label_100
	movabs	r8, 0x7ffffffffffffff7
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	lea	rdx, [r8 + 8]
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rax, qword ptr [rsi + 0x20]
	sub	rdi, qword ptr [rax + 0x18]
	cmp	rdi, rdx
	cmovl	rbx, rsi
	cmovg	rdi, rdx
	lea	rdx, [rdi + 9]
	cmp	rdi, r8
	cmovge	rdx, rdi
	cmp	rax, rcx
	mov	rsi, rax
	jne	.label_98
.label_100:
	mov	rdi, rbx
	call	put_paragraph
	mov	rsi, qword ptr [rbx]
	mov	rdx,  qword ptr [word ptr [rip + wptr]]
	sub	rdx, rsi
	mov	r14d, OFFSET FLAT:parabuf
	mov	edi, OFFSET FLAT:parabuf
	call	memmove
	mov	eax, dword ptr [rbx]
	sub	eax, r14d
	cdqe	
	sub	qword ptr [word ptr [rip + wptr]],  rax
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	cmp	rbx, rcx
	ja	.label_101
	neg	rax
	mov	rdx, rbx
	nop	
.label_103:
	add	qword ptr [rdx], rax
	add	rdx, 0x28
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	cmp	rdx, rcx
	jbe	.label_103
.label_101:
	mov	edx, 0x28
	sub	rdx, rbx
	add	rdx, rcx
	mov	r14d, OFFSET FLAT:unused_word_type
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsi, rbx
	call	memmove
	sub	rbx, r14
	movabs	rcx, 0x9999999999999999
	mov	rax, rbx
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 4
	add	rdx, rax
	lea	rax, [rdx + rdx*4]
	shl	rax, 3
	add	qword ptr [word ptr [rip + word_limit]],  rax
	jmp	.label_99
.label_102:
	mov	rdx,  qword ptr [word ptr [rip + wptr]]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
.label_99:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402730

	.globl check_punctuation
	.type check_punctuation, @function
check_punctuation:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	movsxd	rbx, dword ptr [r14 + 8]
	movsx	esi, byte ptr [r15]
	movzx	r12d, byte ptr [rbx + r15 - 1]
	mov	edi, OFFSET FLAT:.str.48
	mov	edx, 6
	call	memchr
	test	rax, rax
	setne	al
	mov	bpl, byte ptr [r14 + 0x10]
	and	bpl, 0xfe
	or	bpl, al
	mov	byte ptr [r14 + 0x10], bpl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r12*2]
	and	al, 4
	and	bpl, 0xfb
	or	bpl, al
	cmp	rbx, 2
	lea	rbx, [rbx + r15 - 1]
	mov	byte ptr [r14 + 0x10], bpl
	jl	.label_104
	nop	word ptr cs:[rax + rax]
.label_105:
	movsx	esi, byte ptr [rbx]
	mov	edi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_104
	dec	rbx
	cmp	r15, rbx
	jb	.label_105
.label_104:
	movsx	rax, byte ptr [rbx]
	mov	eax, eax
	cmp	rax, 0x40
	sbb	cl, cl
	movabs	rdx, 0x8000400200000001
	bt	rdx, rax
	sbb	al, al
	and	al, cl
	and	al, 1
	mov	cl, byte ptr [r14 + 0x10]
	add	al, al
	and	cl, 0xfd
	or	cl, al
	mov	byte ptr [r14 + 0x10], cl
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl line_cost
	.type line_cost, @function
line_cost:
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	xor	eax, eax
	cmp	rcx, rdi
	je	.label_106
	movsxd	rax,  dword ptr [dword ptr [rip + goal_width]]
	movsxd	rdx, esi
	sub	rax, rdx
	add	rax, rax
	lea	rax, [rax + rax*4]
	imul	rax, rax
	cmp	qword ptr [rdi + 0x20], rcx
	je	.label_106
	movsxd	rcx, dword ptr [rdi + 0x14]
	sub	rdx, rcx
	add	rdx, rdx
	lea	rcx, [rdx + rdx*4]
	imul	rcx, rcx
	shr	rcx, 1
	add	rax, rcx
.label_106:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850

	.globl base_cost
	.type base_cost, @function
base_cost:
	mov	eax, OFFSET FLAT:unused_word_type
	mov	ecx, 0x1324
	cmp	rdi, rax
	jbe	.label_107
	mov	al, byte ptr [rdi - 0x18]
	test	al, 2
	jne	.label_111
	mov	ecx, 0xce4
	test	al, 4
	jne	.label_107
	mov	ecx, 0x1324
	mov	eax, OFFSET FLAT:label_109
	cmp	rdi, rax
	jbe	.label_107
	mov	ecx, 0x1324
	test	byte ptr [rdi - 0x40], 8
	je	.label_107
	movsxd	rcx, dword ptr [rdi - 0x20]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	idiv	rcx
	mov	rcx, rax
	add	rcx, 0x1324
	jmp	.label_107
.label_111:
	test	al, 8
	mov	eax, 0x59164
	mov	ecx, 0x960
	cmove	rcx, rax
.label_107:
	mov	al, byte ptr [rdi + 0x10]
	test	al, 1
	jne	.label_108
	test	al, 8
	je	.label_110
	movsxd	rsi, dword ptr [rdi + 8]
	add	rsi, 2
	mov	eax, 0x57e4
	xor	edx, edx
	idiv	rsi
	add	rcx, rax
.label_110:
	mov	rax, rcx
	ret	
.label_108:
	add	rcx, -0x640
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + out_column]],  0
	mov	edi,  dword ptr [dword ptr [rip + prefix_indent]]
	call	put_space
	mov	rdi,  qword ptr [word ptr [rip + prefix]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	add	eax,  dword ptr [dword ptr [rip + prefix_length]]
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	sub	ebp, eax
	mov	edi, ebp
	call	put_space
	mov	rbp, qword ptr [rbx + 0x20]
	lea	r14, [rbp - 0x28]
	mov	rdi, rbx
	call	put_word
	cmp	r14, rbx
	je	.label_113
	add	rbx, 0x28
	nop	word ptr cs:[rax + rax]
.label_112:
	mov	edi, dword ptr [rbx - 0x1c]
	call	put_space
	mov	rdi, rbx
	call	put_word
	add	rbx, 0x28
	cmp	rbp, rbx
	jne	.label_112
.label_113:
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	dword ptr [dword ptr [rip + last_line_length]],  eax
	mov	edi, 0xa
	pop	rbx
	pop	r14
	pop	rbp
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029a0

	.globl put_word
	.type put_word, @function
put_word:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	ebp, dword ptr [r14 + 8]
	test	ebp, ebp
	je	.label_114
	mov	rbx, qword ptr [r14]
	nop	word ptr cs:[rax + rax]
.label_115:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	putchar_unlocked
	dec	ebp
	jne	.label_115
.label_114:
	mov	eax, dword ptr [r14 + 8]
	add	dword ptr [dword ptr [rip + out_column]],  eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4029e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_118
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_116
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_116
.label_118:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_119
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_116:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_117
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_119:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_117:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ad0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_120
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_120:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402af0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_123
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_121
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_121
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_122
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_122:
	mov	rbx, r14
.label_121:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_123:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0
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
	#Procedure 0x402be0
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
	#Procedure 0x402bf0
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
	#Procedure 0x402c00

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
	#Procedure 0x402c40
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
	#Procedure 0x402c60

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_124
	test	rdx, rdx
	je	.label_124
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_124:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c90
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
	#Procedure 0x402d10

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
.label_179:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_228
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_238]]
.label_424:
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
.label_425:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_139
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_139
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_175:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_162
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_162:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_175
.label_139:
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
	jmp	.label_126
.label_417:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_126
.label_420:
	mov	al, 1
.label_418:
	mov	r15b, 1
.label_421:
	test	r15b, 1
	mov	cl, 1
	je	.label_205
	mov	cl, al
.label_205:
	mov	al, cl
.label_419:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_201
	test	r10, r10
	je	.label_208
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_209
.label_201:
	xor	ecx, ecx
	jmp	.label_209
.label_422:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_211
	test	r10, r10
	je	.label_216
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_217
.label_423:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_126
.label_208:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_209:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_126
.label_211:
	xor	eax, eax
	jmp	.label_217
.label_216:
	mov	eax, 1
.label_217:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_126:
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
	jmp	.label_200
	nop	dword ptr [rax + rax]
.label_220:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_200:
	cmp	rbp, -1
	je	.label_189
	cmp	rsi, rbp
	jne	.label_191
	jmp	.label_194
	nop	dword ptr [rax]
.label_189:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_194
.label_191:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_196
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_199
	cmp	rbp, -1
	jne	.label_199
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
.label_199:
	cmp	rbx, rbp
	jbe	.label_137
.label_196:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_134:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_218
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_219]]
.label_435:
	test	rsi, rsi
	jne	.label_129
	jmp	.label_155
	nop	word ptr cs:[rax + rax]
.label_137:
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
	jne	.label_243
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_134
	jmp	.label_133
.label_243:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_134
.label_439:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_147
	test	rsi, rsi
	jne	.label_152
	cmp	rbp, 1
	je	.label_155
	xor	r15d, r15d
	jmp	.label_142
.label_428:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_159
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_133
	cmp	edi, 2
	jne	.label_169
	mov	al, r11b
	and	al, 1
	jne	.label_174
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_177
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_177:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_168
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_168:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_190
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_190:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_157
.label_429:
	mov	bl, 0x62
	jmp	.label_202
.label_430:
	mov	cl, 0x74
	jmp	.label_204
.label_431:
	mov	bl, 0x76
	jmp	.label_202
.label_432:
	mov	bl, 0x66
	jmp	.label_202
.label_433:
	mov	cl, 0x72
	jmp	.label_204
.label_436:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_207
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_125
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
	jae	.label_213
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_213:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_224
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_224:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_232
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_241
.label_437:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_245
	cmp	r14d, 2
	jne	.label_246
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_125
.label_246:
	mov	rdi, r14
	jmp	.label_129
.label_438:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_132
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_125
	mov	rdi, r14
	jmp	.label_136
.label_218:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_140
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
.label_187:
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
	ja	.label_156
	test	dl, dl
	je	.label_156
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_142
.label_147:
	test	rsi, rsi
	jne	.label_186
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_186
.label_155:
	mov	dl, 1
.label_434:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_133
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_142
.label_159:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_129
	mov	r14, rdi
	inc	rsi
	jmp	.label_200
.label_207:
	mov	rdi, r14
.label_241:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_142
.label_132:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_204
.label_136:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_135
.label_204:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_133
.label_202:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_142
	jmp	.label_130
.label_140:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_215
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_215:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_166:
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
	je	.label_237
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_242
	cmp	rbp, -2
	je	.label_127
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_131
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_150:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_141
	bt	rsi, rdx
	jb	.label_146
.label_141:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_150
.label_131:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_161
	xor	r15d, r15d
.label_161:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_166
	jmp	.label_187
.label_186:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_142
.label_245:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_129
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_129
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_129
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_192
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_195
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_133
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_203
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_203:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_148
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_148:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_212
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_212:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_198
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_198:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_142
.label_129:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_142:
	test	r12b, r12b
	je	.label_158
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_227
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
.label_158:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_231
.label_227:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_239
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_135
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_231:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_130
	jmp	.label_135
.label_239:
	mov	bl, r13b
	mov	rsi, r14
.label_130:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_133
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_144
	mov	al, r11b
	and	al, 1
	jne	.label_144
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_151
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_151:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_182
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_182:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_170
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_170:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_144:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_181
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_181:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_188
.label_152:
	xor	r15d, r15d
	jmp	.label_142
.label_156:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_143:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_193:
	test	dl, dl
	je	.label_167
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_176
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_206
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_206:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_176
	nop	word ptr [rax + rax]
.label_167:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_125
	cmp	r14d, 2
	jne	.label_171
	mov	al, r11b
	and	al, 1
	jne	.label_171
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_221
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_221:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_225
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_225:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_233
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_233:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_171:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_229
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_229:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_145
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_145:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_138
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_138:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_176:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_135
	test	r11b, 1
	je	.label_165
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_153
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_173
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_173:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_149
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_149:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_165:
	mov	r14, rdi
.label_153:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_143
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_143
.label_135:
	test	r11b, 1
	je	.label_183
	and	al, 1
	jne	.label_183
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_226
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_226:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_188
	nop	dword ptr [rax + rax]
.label_183:
	mov	bl, r13b
	mov	r14, rdi
.label_188:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_220
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_220
.label_169:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_157
.label_174:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_157:
	cmp	rcx, r10
	jae	.label_230
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_230:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_236
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_244
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_235
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_234
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_234:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_185
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_185:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_142
.label_236:
	xor	r15d, r15d
	jmp	.label_142
.label_244:
	xor	r15d, r15d
	jmp	.label_142
.label_235:
	xor	r15d, r15d
	jmp	.label_142
.label_237:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_128
.label_242:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_164
.label_127:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_172
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_160:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_180
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_160
	xor	r15d, r15d
	jmp	.label_128
.label_172:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_164:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_128:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_187
.label_180:
	xor	r15d, r15d
	jmp	.label_128
.label_192:
	xor	r15d, r15d
	jmp	.label_142
.label_195:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_142
	nop	dword ptr [rax + rax]
.label_194:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_154
	or	dl, al
	je	.label_125
.label_154:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_210
	or	dl, al
	jne	.label_210
	test	r8b, 1
	jne	.label_214
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_210
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_179
.label_210:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_223
	test	cl, cl
	jne	.label_223
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_223
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_240:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_163
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_163:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_240
.label_223:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_222
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_222
.label_133:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_178:
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
.label_184:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_222:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_146:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_178
.label_125:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_178
.label_214:
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
	jmp	.label_184
.label_228:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20
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
	#Procedure 0x403f30

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
	je	.label_247
	mov	qword ptr [rax], rbx
.label_247:
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
	#Procedure 0x404030
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_248
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_250:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_250
.label_248:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_251
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_252]], OFFSET FLAT:slot0
.label_251:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_249
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_249:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4040e0

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
	js	.label_253
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_256
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_259
.label_256:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_255
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
	jne	.label_254
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_254:
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
.label_259:
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
	ja	.label_257
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_258
	mov	rdi, rbx
	call	free
.label_258:
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
.label_257:
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
.label_253:
	call	abort
.label_255:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042c0
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
	#Procedure 0x4042d0
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
	#Procedure 0x4042e0

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
	#Procedure 0x404320

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
	je	.label_260
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
.label_260:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

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
	#Procedure 0x4043c0

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
	#Procedure 0x4043e0
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
	#Procedure 0x404400

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
	mov	rcx,  qword ptr [word ptr [rip + label_261]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_262]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
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
	#Procedure 0x404470

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
	#Procedure 0x404480

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044a0

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
	#Procedure 0x4044f0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404500

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
	mov	rax,  qword ptr [word ptr [rip + label_261]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_262]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
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
	#Procedure 0x404570
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
	#Procedure 0x404590
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
	#Procedure 0x4045b0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045c0
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
	#Procedure 0x4045d0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0

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
	#Procedure 0x4045f0

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
	jne	.label_265
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
	je	.label_264
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_265
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_265
.label_264:
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
	je	.label_266
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_265
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_265
.label_266:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_265:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046d0

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
	je	.label_268
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_269
	jmp	.label_267
.label_268:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_267
.label_269:
	mov	eax, 1
	test	bpl, bpl
	je	.label_267
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
.label_267:
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
	#Procedure 0x404760

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
	je	.label_271
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_270
	jmp	.label_272
.label_271:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_272
.label_270:
	mov	eax, 1
	test	bpl, bpl
	je	.label_272
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
.label_272:
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
	#Procedure 0x4047f0

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
	je	.label_275
	jmp	.label_273
.label_274:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_273
.label_275:
	mov	eax, 1
	test	bpl, bpl
	je	.label_273
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
	.align	16
	#Procedure 0x404870

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
	je	.label_278
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_277
	jmp	.label_276
.label_278:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_276
.label_277:
	mov	eax, 1
	test	bpl, bpl
	je	.label_276
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
.label_276:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0

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
	je	.label_281
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_279
	jmp	.label_280
.label_281:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_280
.label_279:
	mov	eax, 1
	test	bpl, bpl
	je	.label_280
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_280:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950

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
	je	.label_282
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_284
	jmp	.label_283
.label_282:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_283
.label_284:
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
	.align	16
	#Procedure 0x4049a0

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
	je	.label_287
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_286
	jmp	.label_285
.label_287:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_285
.label_286:
	mov	eax, 1
	test	bpl, bpl
	je	.label_285
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_285:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_289
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_290
	jmp	.label_288
.label_289:
	mov	eax, 1
	test	cl, cl
	je	.label_288
.label_290:
	xor	eax, eax
.label_288:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404a20

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
	je	.label_296
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_294
.label_296:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_294:
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
	ja	.label_300
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_291]]
.label_387:
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
.label_300:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_299
.label_388:
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
.label_389:
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
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_295
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_298
.label_392:
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
	jmp	.label_293
.label_393:
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
.label_293:
	mov	qword ptr [rsp + 0x10], rdi
.label_298:
	mov	qword ptr [rsp + 8], rsi
.label_295:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_297
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_299:
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
	jmp	.label_292
.label_394:
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
.label_292:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_297:
	call	__fprintf_chk
.label_386:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_301:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_301
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d40

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_304:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_302
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_303
	nop	dword ptr [rax]
.label_302:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_303:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_305
	inc	r9
	cmp	r9, 0xa
	jb	.label_304
.label_305:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404da0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_306
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_306:
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
	#Procedure 0x404e30
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
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
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
	.align	16
	#Procedure 0x404eb0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_307
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_307:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ee0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_308
	test	rax, rax
	je	.label_309
.label_308:
	pop	rbx
	ret	
.label_309:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_310
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_310:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f30

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_311
	test	rbx, rbx
	jne	.label_311
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_311:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_313
	test	rax, rax
	je	.label_312
.label_313:
	pop	rbx
	ret	
.label_312:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404f60

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_314
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_317
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_315
.label_314:
	test	rcx, rcx
	jne	.label_318
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_318:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_316
.label_315:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_317:
	call	xalloc_die
.label_316:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000
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
	#Procedure 0x405030
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_319
	call	rpl_calloc
	test	rax, rax
	je	.label_319
	pop	rcx
	ret	
.label_319:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405060

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
	#Procedure 0x405090
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
	#Procedure 0x4050b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
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
	.align	16
	#Procedure 0x4050e0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_321
	cmp	eax, 1
	je	.label_323
	test	eax, eax
	jne	.label_320
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_325
	cmp	rbx, r15
	jbe	.label_324
.label_325:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_322
	mov	dword ptr [rax], 0x4b
	jmp	.label_320
.label_321:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_320
.label_323:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_320
.label_322:
	mov	dword ptr [rax], 0x22
.label_320:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_324:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x4051b0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_345
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_336:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_336
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_327
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_347
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_348
	cmp	eax, 0x22
	jne	.label_327
	mov	r12d, 1
.label_348:
	test	rbp, rbp
	jne	.label_330
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_332
.label_347:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_327
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_327
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_327
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_330:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_346
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_326
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_340
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_333
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_338
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_342
	cmp	ecx, 0x44
	je	.label_342
	cmp	ecx, 0x69
	jne	.label_338
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_338
	mov	r14d, 1
	jmp	.label_338
.label_342:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_338:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_329
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_331
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_334]]
.label_400:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_335
.label_329:
	cmp	eax, 0x73
	jg	.label_337
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_339
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_350]]
.label_427:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_335
.label_331:
	cmp	eax, 0x54
	je	.label_344
	cmp	eax, 0x59
	jne	.label_326
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_328
.label_337:
	cmp	eax, 0x74
	je	.label_344
	cmp	eax, 0x77
	jne	.label_326
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_335:
	call	bkm_scale
	jmp	.label_343
.label_402:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_328
.label_403:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_328
.label_404:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_328
.label_344:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_328
.label_339:
	cmp	eax, 0x5a
	jne	.label_326
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_328
.label_326:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_341
.label_401:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_328
.label_405:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_328:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_343:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_349
	or	eax, 2
.label_349:
	mov	r12d, eax
.label_346:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_332:
	mov	qword ptr [rcx], rax
.label_341:
	mov	r15d, r12d
.label_327:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_340:
	mov	rbx, r13
	jmp	.label_338
.label_333:
	mov	rbx, r13
	jmp	.label_338
.label_345:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_351
	nop	word ptr cs:[rax + rax]
.label_352:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_352
.label_351:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405560

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_353
	test	rsi, rsi
	mov	ecx, 1
	je	.label_354
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_354
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_353:
	mov	ecx, 1
.label_354:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_355
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_357
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_355
.label_357:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_355
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_356
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_356:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_355:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405630

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_358
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_358
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_358:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_359
	ret	
.label_359:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405680

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
	jne	.label_360
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_360
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_361
.label_360:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_361:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_362
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_362:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056f0

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
	je	.label_363
	cmp	r15, -2
	jb	.label_363
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_363
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_363:
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
	#Procedure 0x405750
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
	#Procedure 0x405780
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
	#Procedure 0x4057a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0
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
	#Procedure 0x4057c0
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
	#Procedure 0x4057e0
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
	#Procedure 0x4057f0
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
	#Procedure 0x405800
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
	#Procedure 0x405810
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
	#Procedure 0x405820
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
	#Procedure 0x405850
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
	#Procedure 0x405870

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
	#Procedure 0x405880
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
	#Procedure 0x4058a0
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
	#Procedure 0x4058b0
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
	#Procedure 0x4058c0

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
	je	.label_373
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_374
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_374
.label_373:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_374
	test	cl, cl
	jne	.label_374
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_374:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_376
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_377
	cmp	byte ptr [rax + 1], 0
	je	.label_375
.label_377:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_376
.label_375:
	xor	ebx, ebx
.label_376:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405970

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
	je	.label_378
	mov	rax, rcx
.label_378:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x4059a0

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
