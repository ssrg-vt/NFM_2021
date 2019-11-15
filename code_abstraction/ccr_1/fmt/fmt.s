	.section	.text
	.align	16
	#Procedure 0x4016d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_12
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_12:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
	#Procedure 0x401800

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401830

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401860

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_19
	nop	
.label_32:
	mov	edi, OFFSET FLAT:label_23
	call	strcmp
	test	eax, eax
	je	.label_30
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_32
.label_30:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_23
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_23
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
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
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_27
	call	setlocale
	mov	edi, OFFSET FLAT:label_45
	mov	esi, OFFSET FLAT:label_46
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_45
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + uniform]],  0
	mov	byte ptr [byte ptr [rip + split]],  0
	mov	byte ptr [byte ptr [rip + tagged]],  0
	mov	byte ptr [byte ptr [rip + crown]],  0
	mov	dword ptr [dword ptr [rip + max_width]],  0x4b
	mov	qword ptr [word ptr [rip + prefix]], OFFSET FLAT:label_27
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  0
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	mov	dword ptr [dword ptr [rip + prefix_length]],  0
	xor	r14d, r14d
	cmp	r13d, 2
	jl	.label_49
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	cmp	byte ptr [rax], 0x2d
	jne	.label_49
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_49
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	r12, [r12 + 8]
	dec	r13d
	mov	r14, rax
.label_49:
	xor	r15d, r15d
	jmp	.label_42
.label_537:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	set_prefix
	nop	dword ptr [rax + rax]
.label_42:
	mov	edx, OFFSET FLAT:label_41
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_36
	lea	eax, [rbx - 0x63]
	cmp	eax, 0x14
	ja	.label_37
	jmp	qword ptr [word ptr [+ (rax * 8) + label_38]]
.label_535:
	mov	byte ptr [byte ptr [rip + crown]],  1
	jmp	.label_42
.label_536:
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_42
.label_538:
	mov	byte ptr [byte ptr [rip + split]],  1
	jmp	.label_42
.label_539:
	mov	byte ptr [byte ptr [rip + tagged]],  1
	jmp	.label_42
.label_540:
	mov	byte ptr [byte ptr [rip + uniform]],  1
	jmp	.label_42
.label_541:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_42
.label_36:
	cmp	ebx, -1
	jne	.label_56
	test	r14, r14
	je	.label_57
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x9c4
	mov	ecx, OFFSET FLAT:label_27
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + max_width]],  eax
.label_57:
	test	r15, r15
	movsxd	rbx,  dword ptr [dword ptr [rip + max_width]]
	je	.label_40
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_27
	xor	r9d, r9d
	mov	rdi, r15
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
	test	r14, r14
	jne	.label_54
	add	eax, 0xa
	mov	dword ptr [dword ptr [rip + max_width]],  eax
	jmp	.label_54
.label_40:
	imul	eax, ebx, 0xbb
	cdqe	
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x26
	add	eax, ecx
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
.label_54:
	cmp	dword ptr [dword ptr [rip + optind]],  r13d
	jne	.label_35
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	mov	r15b, 1
	jmp	.label_39
.label_35:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	r15b, 1
	cmp	eax, r13d
	jge	.label_39
	mov	r15b, 1
	nop	dword ptr [rax]
.label_34:
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_33
	cmp	byte ptr [rbx + 1], 0
	je	.label_51
.label_33:
	mov	esi, OFFSET FLAT:label_55
	mov	rdi, rbx
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_58
	mov	rdi, rbp
	call	fmt
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_59
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_47
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_48
	nop	dword ptr [rax]
.label_58:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
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
.label_48:
	call	error
	jmp	.label_59
.label_51:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	nop	dword ptr [rax]
.label_59:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r13d
	jl	.label_34
.label_39:
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
.label_56:
	cmp	ebx, 0xffffff7d
	je	.label_44
	cmp	ebx, 0xffffff7e
	jne	.label_37
	xor	edi, edi
	call	usage
.label_44:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_23
	mov	edx, OFFSET FLAT:label_21
	mov	r8d, OFFSET FLAT:label_52
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_37:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_53
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_53:
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d30

	.globl set_prefix
	.type set_prefix, @function
set_prefix:
	push	rbx
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	cmp	byte ptr [rbx], 0x20
	jne	.label_61
	mov	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	nop	dword ptr [rax]
.label_62:
	inc	eax
	cmp	byte ptr [rbx + 1], 0x20
	lea	rbx, [rbx + 1]
	je	.label_62
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  eax
.label_61:
	mov	qword ptr [word ptr [rip + prefix]],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  eax
	movsxd	rcx, eax
	add	rcx, rbx
	nop	dword ptr [rax]
.label_63:
	mov	rax, rcx
	cmp	rax, rbx
	jbe	.label_64
	lea	rcx, [rax - 1]
	cmp	byte ptr [rax - 1], 0x20
	je	.label_63
.label_64:
	mov	byte ptr [rax], 0
	sub	eax, ebx
	mov	dword ptr [dword ptr [rip + prefix_length]],  eax
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x401da0

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
	jmp	.label_65
	nop	
.label_66:
	call	fmt_paragraph
	mov	rdi,  qword ptr [word ptr [rip + word_limit]]
	call	put_paragraph
.label_65:
	mov	rdi, rbx
	call	get_paragraph
	test	al, al
	jne	.label_66
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x401df0

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
	je	.label_67
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  ecx
	mov	rbx,  qword ptr [word ptr [rip + prefix]]
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	.label_69
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_68:
	movzx	ecx, cl
	cmp	eax, ecx
	jne	.label_70
	inc	dword ptr [dword ptr [rip + in_column]]
	mov	rdi, r14
	call	getc_unlocked
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	jne	.label_68
.label_69:
	mov	rdi, r14
	mov	esi, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	get_space
.label_67:
	mov	ecx,  dword ptr [dword ptr [rip + prefix_lead_space]]
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	cmp	ecx, edx
	cmovle	edx, ecx
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  edx
.label_70:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl get_paragraph
	.type get_paragraph, @function
get_paragraph:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + last_line_length]],  0
	mov	esi,  dword ptr [dword ptr [rip + next_char]]
	jmp	.label_80
	nop	dword ptr [rax]
.label_84:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi, rbx
	call	get_prefix
	mov	esi, eax
.label_80:
	cmp	esi, -1
	je	.label_74
	cmp	esi, 0xa
	je	.label_74
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	jl	.label_74
	mov	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	add	ecx, eax
	cmp	dword ptr [dword ptr [rip + in_column]],  ecx
	jge	.label_82
	nop	dword ptr [rax]
.label_74:
	mov	rdi, rbx
	call	copy_rest
	cmp	eax, -1
	jne	.label_84
	mov	ebp, 0xffffffff
	xor	eax, eax
.label_83:
	mov	dword ptr [dword ptr [rip + next_char]],  ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_82:
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
	test	al, al
	jne	.label_75
	cmp	byte ptr [byte ptr [rip + crown]],  1
	jne	.label_79
	mov	edi, ebp
	call	same_para
	test	al, al
	je	.label_75
	nop	word ptr cs:[rax + rax]
.label_81:
	mov	rdi, rbx
	mov	esi, ebp
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
	test	al, al
	je	.label_75
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_81
	jmp	.label_75
.label_79:
	mov	r14b,  byte ptr [byte ptr [rip + tagged]]
	mov	edi, ebp
	call	same_para
	test	r14b, r14b
	je	.label_85
	test	al, al
	je	.label_75
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	je	.label_75
.label_77:
	mov	rdi, rbx
	mov	esi, ebp
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
	test	al, al
	je	.label_75
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_77
	jmp	.label_75
.label_76:
	mov	rdi, rbx
	mov	esi, ebp
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
.label_85:
	test	al, al
	je	.label_75
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_76
.label_75:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	jbe	.label_78
	or	byte ptr [rax - 0x18], 8
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	or	byte ptr [rax - 0x18], 2
	mov	al, 1
	jmp	.label_83
.label_78:
	mov	edi, OFFSET FLAT:label_71
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 0x25e
	mov	ecx, OFFSET FLAT:label_73
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402060

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
	jb	.label_86
	mov	r13d, OFFSET FLAT:unused_word_type
	nop	word ptr [rax + rax]
.label_89:
	cmp	r14, r13
	mov	eax, OFFSET FLAT:other_indent
	mov	ecx, OFFSET FLAT:first_indent
	cmove	rax, rcx
	mov	ebp, dword ptr [rax]
	add	ebp, dword ptr [r12 - 0x20]
	mov	rbx, r12
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	rdi, rbx
	mov	esi, ebp
	call	line_cost
	add	rax, qword ptr [rbx + 0x18]
	cmp	r14, r13
	jne	.label_88
	mov	ecx,  dword ptr [dword ptr [rip + last_line_length]]
	test	ecx, ecx
	jle	.label_88
	mov	edx, ebp
	sub	edx, ecx
	add	edx, edx
	lea	ecx, [rdx + rdx*4]
	movsxd	rcx, ecx
	imul	rcx, rcx
	shr	rcx, 1
	add	rax, rcx
.label_88:
	cmp	rax, r15
	jge	.label_91
	mov	qword ptr [r12 - 8], rbx
	mov	dword ptr [r12 - 0x14], ebp
	mov	r15, rax
.label_91:
	cmp	rbx,  qword ptr [word ptr [rip + word_limit]]
	je	.label_87
	add	ebp, dword ptr [rbx - 0x1c]
	add	ebp, dword ptr [rbx + 8]
	add	rbx, 0x28
	cmp	ebp,  dword ptr [dword ptr [rip + max_width]]
	jl	.label_90
.label_87:
	mov	rdi, r14
	call	base_cost
	add	rax, r15
	mov	qword ptr [r12 - 0x10], rax
	add	r12, -0x28
	add	r14, -0x28
	cmp	r14, r13
	jae	.label_89
.label_86:
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
	#Procedure 0x402180

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
	mov	rbx,  qword ptr [word ptr [rip + label_93]]
	jmp	.label_94
.label_92:
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_94:
	cmp	rbx, r14
	jne	.label_92
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4021c0

	.globl get_space
	.type get_space, @function
get_space:
	push	rbx
	mov	eax, esi
	mov	rbx, rdi
	jmp	.label_95
	nop	dword ptr [rax + rax]
.label_96:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rdi, rbx
	call	getc_unlocked
.label_95:
	cmp	eax, 9
	je	.label_98
	cmp	eax, 0x20
	jne	.label_97
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	jmp	.label_96
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	jmp	.label_96
.label_97:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402230

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
	jg	.label_103
	cmp	r14d, -1
	je	.label_102
	cmp	r14d, 0xa
	jne	.label_103
	mov	ebp, r14d
	jmp	.label_99
.label_103:
	mov	edi,  dword ptr [dword ptr [rip + next_prefix_indent]]
	call	put_space
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	cmp	eax,  dword ptr [dword ptr [rip + in_column]]
	je	.label_101
	mov	rbp,  qword ptr [word ptr [rip + prefix]]
	nop	word ptr [rax + rax]
.label_104:
	movsx	edi, byte ptr [rbp]
	test	edi, edi
	je	.label_101
	inc	rbp
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax,  dword ptr [dword ptr [rip + in_column]]
	jne	.label_104
.label_101:
	cmp	r14d, -1
	je	.label_100
	mov	ebp, 0xa
	cmp	r14d, 0xa
	je	.label_99
	mov	edi,  dword ptr [dword ptr [rip + in_column]]
	sub	edi,  dword ptr [dword ptr [rip + out_column]]
	call	put_space
	mov	ebp, r14d
	jmp	.label_99
.label_100:
	mov	eax,  dword ptr [dword ptr [rip + prefix_length]]
	add	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	ebp, 0xffffffff
	cmp	dword ptr [dword ptr [rip + in_column]],  eax
	jl	.label_99
	mov	edi, 0xa
	call	putchar_unlocked
	jmp	.label_99
.label_102:
	mov	ebp, r14d
	jmp	.label_99
	nop	word ptr [rax + rax]
.label_106:
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
.label_99:
	cmp	ebp, -1
	je	.label_105
	cmp	ebp, 0xa
	jne	.label_106
.label_105:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402340

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
	mov	r15d, OFFSET FLAT:label_107
	nop	dword ptr [rax]
.label_116:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	qword ptr [rcx], rax
	nop	word ptr cs:[rax + rax]
.label_110:
	cmp	qword ptr [word ptr [rip + wptr]],  r14
	jne	.label_108
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_108:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + wptr]],  rcx
	mov	byte ptr [rax], bpl
	mov	rdi, r12
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_118
	movsxd	rbx, ebp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_110
.label_118:
	mov	ebx,  dword ptr [dword ptr [rip + wptr]]
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	sub	ebx, dword ptr [rax]
	mov	dword ptr [rax + 8], ebx
	add	ebx,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + in_column]],  ebx
	mov	rdi,  qword ptr [word ptr [rip + word_limit]]
	call	check_punctuation
	mov	rdi, r12
	mov	esi, ebp
	call	get_space
	mov	ebp, eax
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	sub	eax, ebx
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	dword ptr [rcx + 0xc], eax
	cmp	ebp, -1
	je	.label_109
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	test	byte ptr [rax + 0x10], 2
	jne	.label_112
	xor	eax, eax
	jmp	.label_115
	nop	dword ptr [rax]
.label_112:
	cmp	ebp, 0xa
	jne	.label_117
.label_109:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	or	byte ptr [rax + 0x10], 8
	jmp	.label_119
.label_117:
	cmp	dword ptr [rax + 0xc], 1
	setg	al
.label_115:
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	dl, byte ptr [rcx + 0x10]
	shl	al, 3
	and	dl, 0xf7
	or	dl, al
	mov	byte ptr [rcx + 0x10], dl
	cmp	ebp, 0xa
	je	.label_119
	cmp	byte ptr [byte ptr [rip + uniform]],  1
	jne	.label_114
	nop	dword ptr [rax]
.label_119:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	movzx	ecx, byte ptr [rax + 0x10]
	and	ecx, 8
	shr	ecx, 3
	inc	ecx
	mov	dword ptr [rax + 0xc], ecx
.label_114:
	cmp	qword ptr [word ptr [rip + word_limit]],  r15
	jne	.label_111
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_111:
	add	qword ptr [word ptr [rip + word_limit]],  0x28
	cmp	ebp, 0xa
	je	.label_113
	cmp	ebp, -1
	jne	.label_116
.label_113:
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
	#Procedure 0x4024d0

	.globl set_other_indent
	.type set_other_indent, @function
set_other_indent:
	cmp	byte ptr [byte ptr [rip + split]],  1
	je	.label_120
	cmp	byte ptr [byte ptr [rip + crown]],  1
	jne	.label_124
	mov	eax, OFFSET FLAT:in_column
	mov	ecx, OFFSET FLAT:first_indent
	test	dil, dil
	cmovne	rcx, rax
	mov	eax, dword ptr [rcx]
	jmp	.label_122
.label_124:
	cmp	byte ptr [byte ptr [rip + tagged]],  1
	jne	.label_120
	test	dil, dil
	je	.label_121
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	jne	.label_122
.label_121:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	cmp	dword ptr [dword ptr [rip + other_indent]],  eax
	jne	.label_123
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx*2]
	jmp	.label_122
.label_120:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
.label_122:
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_123:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402540

	.globl same_para
	.type same_para, @function
same_para:
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [rip + prefix_indent]]
	jne	.label_125
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
.label_125:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402580

	.globl put_space
	.type put_space, @function
put_space:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	add	ebx, eax
	cmp	byte ptr [byte ptr [rip + tabs]],  1
	jne	.label_126
	mov	ebp, ebx
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, ebx
	and	ebp, 0xfffffff8
	lea	ecx, [rax + 1]
	cmp	ecx, ebp
	jge	.label_126
	cmp	eax, ebp
	jge	.label_126
	nop	
.label_127:
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
	jl	.label_127
.label_126:
	cmp	dword ptr [dword ptr [rip + out_column]],  ebx
	jge	.label_128
	nop	word ptr cs:[rax + rax]
.label_129:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, ebx
	jl	.label_129
.label_128:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402620

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r14
	push	rbx
	push	rax
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	qword ptr [word ptr [rip + word_limit]],  rax
	je	.label_130
	call	fmt_paragraph
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	mov	rsi,  qword ptr [word ptr [rip + label_93]]
	cmp	rsi, rbx
	je	.label_134
	movabs	r8, 0x7ffffffffffffff7
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	lea	rdx, [r8 + 8]
	nop	word ptr cs:[rax + rax]
.label_132:
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
	jne	.label_132
.label_134:
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
	ja	.label_135
	neg	rax
	mov	rdx, rbx
	nop	
.label_131:
	add	qword ptr [rdx], rax
	add	rdx, 0x28
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	cmp	rdx, rcx
	jbe	.label_131
.label_135:
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
	jmp	.label_133
.label_130:
	mov	rdx,  qword ptr [word ptr [rip + wptr]]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
.label_133:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402780

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
	movzx	r12d, byte ptr [r15 + rbx - 1]
	mov	edi, OFFSET FLAT:label_136
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
	lea	rbx, [r15 + rbx - 1]
	mov	byte ptr [r14 + 0x10], bpl
	jl	.label_138
	nop	word ptr cs:[rax + rax]
.label_139:
	movsx	esi, byte ptr [rbx]
	mov	edi, OFFSET FLAT:label_137
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_138
	dec	rbx
	cmp	r15, rbx
	jb	.label_139
.label_138:
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
	#Procedure 0x402850

	.globl line_cost
	.type line_cost, @function
line_cost:
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	xor	eax, eax
	cmp	rcx, rdi
	je	.label_140
	movsxd	rax,  dword ptr [dword ptr [rip + goal_width]]
	movsxd	rdx, esi
	sub	rax, rdx
	add	rax, rax
	lea	rax, [rax + rax*4]
	imul	rax, rax
	cmp	qword ptr [rdi + 0x20], rcx
	je	.label_140
	movsxd	rcx, dword ptr [rdi + 0x14]
	sub	rdx, rcx
	add	rdx, rdx
	lea	rcx, [rdx + rdx*4]
	imul	rcx, rcx
	shr	rcx, 1
	add	rax, rcx
.label_140:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028a0

	.globl base_cost
	.type base_cost, @function
base_cost:
	mov	eax, OFFSET FLAT:unused_word_type
	mov	ecx, 0x1324
	cmp	rdi, rax
	jbe	.label_141
	mov	al, byte ptr [rdi - 0x18]
	test	al, 2
	jne	.label_143
	mov	ecx, 0xce4
	test	al, 4
	jne	.label_141
	mov	ecx, 0x1324
	mov	eax, OFFSET FLAT:label_145
	cmp	rdi, rax
	jbe	.label_141
	mov	ecx, 0x1324
	test	byte ptr [rdi - 0x40], 8
	je	.label_141
	movsxd	rcx, dword ptr [rdi - 0x20]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	idiv	rcx
	mov	rcx, rax
	add	rcx, 0x1324
	jmp	.label_141
.label_143:
	test	al, 8
	mov	eax, 0x59164
	mov	ecx, 0x960
	cmove	rcx, rax
.label_141:
	mov	al, byte ptr [rdi + 0x10]
	test	al, 1
	jne	.label_142
	test	al, 8
	je	.label_144
	movsxd	rsi, dword ptr [rdi + 8]
	add	rsi, 2
	mov	eax, 0x57e4
	xor	edx, edx
	idiv	rsi
	add	rcx, rax
.label_144:
	mov	rax, rcx
	ret	
.label_142:
	add	rcx, -0x640
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402940

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
	je	.label_147
	add	rbx, 0x28
	nop	word ptr cs:[rax + rax]
.label_146:
	mov	edi, dword ptr [rbx - 0x1c]
	call	put_space
	mov	rdi, rbx
	call	put_word
	add	rbx, 0x28
	cmp	rbp, rbx
	jne	.label_146
.label_147:
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
	#Procedure 0x4029f0

	.globl put_word
	.type put_word, @function
put_word:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	ebp, dword ptr [r14 + 8]
	test	ebp, ebp
	je	.label_148
	mov	rbx, qword ptr [r14]
	nop	word ptr cs:[rax + rax]
.label_149:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	putchar_unlocked
	dec	ebp
	jne	.label_149
.label_148:
	mov	eax, dword ptr [r14 + 8]
	add	dword ptr [dword ptr [rip + out_column]],  eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402a30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_150
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_152
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_152
.label_150:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_151
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_153
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_47
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_151:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_153:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_155
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
	#Procedure 0x402b10

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b20

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_156
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_156:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b40

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_157
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_159
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_161
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_159
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_162
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_162:
	mov	rbx, r14
.label_159:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_157:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_158
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bf0
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
	#Procedure 0x402c30
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
	#Procedure 0x402c40
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
	#Procedure 0x402c50

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
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
	#Procedure 0x402c90
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
	#Procedure 0x402cb0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_163
	test	rdx, rdx
	je	.label_163
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_163:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ce0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
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
	#Procedure 0x402d60

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb0], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_277:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_167
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_176]]
.label_498:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_182
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_187
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_499:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_198
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_198
	xor	r14d, r14d
.label_208:
	cmp	r14, r11
	jae	.label_206
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_206:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_208
.label_198:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_212
.label_491:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_212
.label_494:
	mov	al, 1
.label_492:
	mov	r12b, 1
.label_495:
	test	r12b, 1
	mov	cl, 1
	je	.label_224
	mov	ecx, eax
.label_224:
	mov	al, cl
.label_493:
	test	r12b, 1
	jne	.label_227
	test	r11, r11
	je	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_229:
	mov	r14d, 1
	jmp	.label_233
.label_227:
	xor	r14d, r14d
.label_233:
	mov	ecx, OFFSET FLAT:label_187
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_212
.label_496:
	test	r12b, 1
	jne	.label_241
	test	r11, r11
	je	.label_242
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_242:
	mov	r14d, 1
	jmp	.label_169
.label_497:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_248
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_212
.label_241:
	xor	r14d, r14d
.label_169:
	mov	eax, OFFSET FLAT:label_248
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_212:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_179
	nop	dword ptr [rax]
.label_172:
	inc	rsi
.label_179:
	cmp	rbp, -1
	je	.label_257
	cmp	rsi, rbp
	jne	.label_173
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_257:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_193
.label_173:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_200
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_202
	cmp	rbp, -1
	jne	.label_202
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_202:
	cmp	rbx, rbp
	jbe	.label_211
.label_200:
	xor	r8d, r8d
.label_185:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_213
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_216]]
.label_509:
	test	rsi, rsi
	jne	.label_210
	jmp	.label_220
	nop	
.label_211:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_231
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_185
	jmp	.label_178
.label_231:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_185
.label_513:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_249
	test	rsi, rsi
	jne	.label_251
	cmp	rbp, 1
	je	.label_220
	xor	r13d, r13d
	jmp	.label_194
.label_502:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_258
	cmp	byte ptr [rsp + 7], 0
	jne	.label_181
	cmp	r12d, 2
	jne	.label_261
	mov	eax, r9d
	and	al, 1
	jne	.label_261
	cmp	r14, r11
	jae	.label_263
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_263:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_265
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_265:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_269
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	add	r14, 3
	mov	r9b, 1
.label_261:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_276
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_276:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_165
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_165
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_165
	cmp	r14, r11
	jae	.label_183
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_183:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_254
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_254:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_194
.label_503:
	mov	bl, 0x62
	jmp	.label_196
.label_504:
	mov	cl, 0x74
	jmp	.label_166
.label_505:
	mov	bl, 0x76
	jmp	.label_196
.label_506:
	mov	bl, 0x66
	jmp	.label_196
.label_507:
	mov	cl, 0x72
	jmp	.label_166
.label_510:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_205
	cmp	byte ptr [rsp + 7], 0
	jne	.label_181
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_209:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_218
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_218:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_221
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	add	r14, 3
	xor	r9d, r9d
.label_205:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_194
.label_511:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_230
	cmp	r12d, 2
	jne	.label_210
	cmp	byte ptr [rsp + 7], 0
	je	.label_210
	jmp	.label_181
.label_512:
	cmp	r12d, 2
	jne	.label_238
	cmp	byte ptr [rsp + 7], 0
	jne	.label_181
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_197
.label_213:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_245
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_204:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_260
	test	r8b, r8b
	je	.label_260
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_194
.label_249:
	test	rsi, rsi
	jne	.label_259
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_259
.label_220:
	mov	dl, 1
.label_508:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_181
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_194:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_177
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_180
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_177:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_184
.label_180:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_188
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_197
	jmp	.label_203
	nop	dword ptr [rax]
.label_184:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_203
	jmp	.label_197
.label_188:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_203
.label_258:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_172
	xor	r15d, r15d
	jmp	.label_210
.label_238:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_166
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_197
.label_166:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_181
.label_196:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_194
	nop	word ptr cs:[rax + rax]
.label_203:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_181
	cmp	r12d, 2
	jne	.label_225
	mov	eax, r9d
	and	al, 1
	jne	.label_225
	cmp	r14, r11
	jae	.label_228
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_228:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_275
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_275:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_235
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_235:
	add	r14, 3
	mov	r9b, 1
.label_225:
	cmp	r14, r11
	jae	.label_240
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_240:
	inc	r14
	jmp	.label_243
.label_245:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_247
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_247:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_195:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_270
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_267
	cmp	rbp, -2
	je	.label_271
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_273
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_278:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_250
	bt	rsi, rdx
	jb	.label_178
.label_250:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_278
.label_273:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_190
	xor	r13d, r13d
.label_190:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_195
	jmp	.label_204
.label_165:
	xor	r13d, r13d
	jmp	.label_194
.label_259:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_194
.label_230:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_210
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_210
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_210
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_214
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_219
	cmp	byte ptr [rsp + 7], 0
	jne	.label_181
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_222
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_222:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_175
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_175:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_232
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_232:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_234
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_234:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_194
.label_210:
	xor	eax, eax
.label_251:
	xor	r13d, r13d
	jmp	.label_194
.label_260:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_244
	nop	word ptr cs:[rax + rax]
.label_207:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_244:
	test	r8b, r8b
	je	.label_252
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_253
	cmp	r14, r11
	jae	.label_255
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_255:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_253
	nop	dword ptr [rax]
.label_252:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	cmp	r12d, 2
	jne	.label_262
	mov	eax, r9d
	and	al, 1
	jne	.label_262
	cmp	r14, r11
	jae	.label_266
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_266:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_268
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_268:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_274
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_274:
	add	r14, 3
	mov	r9b, 1
.label_262:
	cmp	r14, r11
	jae	.label_170
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_170:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_171
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_171:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_217
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_217:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_253:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_197
	test	r9b, 1
	je	.label_199
	mov	ebx, eax
	and	bl, 1
	jne	.label_199
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_201
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_201:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_164
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_164:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_199:
	cmp	r14, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
.label_197:
	test	r9b, 1
	je	.label_192
	and	al, 1
	jne	.label_192
	cmp	r14, r11
	jae	.label_215
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_215:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_239:
	add	r14, 2
	xor	r9d, r9d
.label_192:
	mov	ebx, r15d
.label_243:
	cmp	r14, r11
	jae	.label_223
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_223:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_172
.label_267:
	xor	r13d, r13d
.label_270:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_204
.label_271:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_236
	mov	rsi, qword ptr [rsp + 0x50]
.label_264:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_237
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_264
	xor	r13d, r13d
	jmp	.label_204
.label_236:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_204
.label_237:
	xor	r13d, r13d
	jmp	.label_204
.label_214:
	xor	r13d, r13d
	jmp	.label_194
.label_219:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_194
	nop	dword ptr [rax + rax]
.label_193:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_256
	or	dl, al
	je	.label_178
.label_256:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_191
	or	dl, al
	jne	.label_191
	test	r10b, 1
	jne	.label_272
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_191
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_277
.label_191:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_168
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_174
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_174
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_189:
	cmp	r14, r11
	jae	.label_246
	mov	byte ptr [rcx + r14], al
.label_246:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_189
	jmp	.label_174
.label_181:
	mov	qword ptr [rsp + 0x20], rbp
.label_178:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_226:
	mov	r14, rax
.label_186:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_272:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_226
.label_168:
	mov	rcx, qword ptr [rsp + 8]
.label_174:
	cmp	r14, r11
	jae	.label_186
	mov	byte ptr [rcx + r14], 0
	jmp	.label_186
.label_167:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b20
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
	#Procedure 0x403b30

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_279
	mov	qword ptr [rax], rbx
.label_279:
	mov	rax, r14
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
	#Procedure 0x403c20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_280
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_282:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_282
.label_280:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_283
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_284]], OFFSET FLAT:slot0
.label_283:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_281
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_281:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403cd0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_288
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_291
	cmp	r12d, 0x7fffffff
	je	.label_286
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_289
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_289:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_291:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_287
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_290
.label_287:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_285
	mov	rdi, r14
	call	free
.label_285:
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_290:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_288:
	call	abort
.label_286:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e90

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0
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
	#Procedure 0x403eb0
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
	#Procedure 0x403ec0

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
	#Procedure 0x403f00

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
	je	.label_292
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
.label_292:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60

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
	#Procedure 0x403fa0

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
	#Procedure 0x403fc0
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
	#Procedure 0x403fe0

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
	mov	rcx,  qword ptr [word ptr [rip + label_293]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_294]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
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
	#Procedure 0x404050

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
	#Procedure 0x404060

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

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
	#Procedure 0x4040d0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040e0

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
	mov	rax,  qword ptr [word ptr [rip + label_293]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_294]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
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
	#Procedure 0x404150
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
	#Procedure 0x404170
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
	#Procedure 0x404190

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041a0
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
	#Procedure 0x4041b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0

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
	#Procedure 0x4041d0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_297
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_296
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_301
	mov	eax, OFFSET FLAT:label_302
	jmp	.label_300
.label_296:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_303
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_298
	mov	eax, OFFSET FLAT:label_299
	jmp	.label_300
.label_303:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_248
	mov	eax, OFFSET FLAT:label_187
.label_300:
	cmove	rax, rcx
.label_297:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404290

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
	je	.label_304
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_306
	jmp	.label_305
.label_304:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_305
.label_306:
	mov	eax, 1
	test	bpl, bpl
	je	.label_305
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
.label_305:
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
	#Procedure 0x404310

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
	je	.label_309
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_307
	jmp	.label_308
.label_309:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_308
.label_307:
	mov	eax, 1
	test	bpl, bpl
	je	.label_308
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
.label_308:
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
	#Procedure 0x4043a0

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
	je	.label_310
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_312
	jmp	.label_311
.label_310:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_311
.label_312:
	mov	eax, 1
	test	bpl, bpl
	je	.label_311
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
.label_311:
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
	#Procedure 0x404420

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
	je	.label_315
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_314
	jmp	.label_313
.label_315:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_313
.label_314:
	mov	eax, 1
	test	bpl, bpl
	je	.label_313
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
.label_313:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490

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
	je	.label_318
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_316
	jmp	.label_317
.label_318:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_317
.label_316:
	mov	eax, 1
	test	bpl, bpl
	je	.label_317
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_317:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4044f0

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
	je	.label_319
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_321
	jmp	.label_320
.label_319:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_320
.label_321:
	mov	eax, 1
	test	bpl, bpl
	je	.label_320
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_320:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404540

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
	je	.label_324
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_323
	jmp	.label_322
.label_324:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_322
.label_323:
	mov	eax, 1
	test	bpl, bpl
	je	.label_322
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_322:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404590

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_326
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_327
	jmp	.label_325
.label_326:
	mov	eax, 1
	test	cl, cl
	je	.label_325
.label_327:
	xor	eax, eax
.label_325:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4045c0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_328
	mov	edx, OFFSET FLAT:label_338
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_344
.label_328:
	mov	edx, OFFSET FLAT:label_345
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
	mov	esi, OFFSET FLAT:label_346
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_333
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_334]]
.label_478:
	add	rsp, 8
	jmp	.label_332
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_332
.label_479:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_481:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_482:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_332
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_332
.label_484:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_332
.label_485:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_332
.label_487:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_332
.label_486:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_332:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404920
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_347:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_347
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_349:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_348
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_350
	nop	dword ptr [rax]
.label_348:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_350:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_351
	inc	r9
	cmp	r9, 0xa
	jb	.label_349
.label_351:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4049b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_352
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_352:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a40
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_354
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ac0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_357
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_357:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404af0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_358
	test	rax, rax
	je	.label_359
.label_358:
	pop	rbx
	ret	
.label_359:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b10
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_360
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_360:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_361
	test	rbx, rbx
	jne	.label_361
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_361:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_363
	test	rax, rax
	je	.label_362
.label_363:
	pop	rbx
	ret	
.label_362:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404b70

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_364
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_367
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_365
.label_364:
	test	rcx, rcx
	jne	.label_368
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_368:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_366
.label_365:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_367:
	call	xalloc_die
.label_366:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c00
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c10
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
	#Procedure 0x404c40
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_369
	call	rpl_calloc
	test	rax, rax
	je	.label_369
	pop	rcx
	ret	
.label_369:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c70

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
	#Procedure 0x404ca0
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
	.section	.text
	.align	16
	#Procedure 0x404cc0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_47
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404cf0

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
	je	.label_374
	cmp	eax, 1
	je	.label_376
	test	eax, eax
	jne	.label_371
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_372
	cmp	rbx, r15
	jbe	.label_373
.label_372:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_375
	mov	dword ptr [rax], 0x4b
	jmp	.label_371
.label_374:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_371
.label_376:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_371
.label_375:
	mov	dword ptr [rax], 0x22
.label_371:
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
	mov	edx, OFFSET FLAT:label_155
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_373:
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
	#Procedure 0x404dc0

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
	.section	.text
	.align	16
	#Procedure 0x404df0

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
	jae	.label_392
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_385:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_385
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_381
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_393
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_379
	cmp	eax, 0x22
	jne	.label_381
	mov	r12d, 1
.label_379:
	test	rbp, rbp
	jne	.label_383
	jmp	.label_390
.label_393:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_381
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_381
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_381
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_383:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_390
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_394
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_378
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_378
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_384
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_386
	cmp	ecx, 0x44
	je	.label_386
	cmp	ecx, 0x69
	jne	.label_384
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_384
.label_386:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_384
.label_378:
	mov	rsi, r14
.label_384:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_394
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_380]]
.label_467:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_377
.label_394:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_382
.label_468:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_377
.label_469:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_377
.label_471:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_377
.label_465:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_391
.label_466:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_377
.label_470:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_377
.label_472:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_377
.label_473:
	lea	rdi, [rsp]
	mov	edx, 7
.label_377:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_391:
	mov	rsi, r14
.label_475:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_390:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_382:
	mov	r15d, r12d
.label_381:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_474:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_391
.label_476:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_391
.label_392:
	mov	edi, OFFSET FLAT:label_387
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_389
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0

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
	#Procedure 0x4050d0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_395
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_396:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_396
.label_395:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405110

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_397
	test	rsi, rsi
	mov	ecx, 1
	je	.label_398
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_398
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_397:
	mov	ecx, 1
.label_398:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405160

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_399
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_400
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_399
.label_400:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_399
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_401
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_401:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_399:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_402
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_402
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_402:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_403
	ret	
.label_403:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230

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
	jne	.label_404
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_404
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_405
.label_404:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_405:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_406
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_406:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4052a0

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
	je	.label_407
	cmp	r15, -2
	jb	.label_407
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_407
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_407:
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
	#Procedure 0x405300
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_408
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_408
.label_409:
	ret	
.label_408:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_409
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_410
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_410:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405350
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405360
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
	#Procedure 0x405370
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_411
.label_412:
	ret	
.label_411:
	cmp	edi, 0x7f
	je	.label_412
	xor	eax, eax
	jmp	.label_412
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405390
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
	#Procedure 0x4053a0
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
	#Procedure 0x4053b0
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
	#Procedure 0x4053c0
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
	#Procedure 0x4053d0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_413
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_414]]
.label_415:
	ret	
.label_413:
	xor	eax, eax
	jmp	.label_415
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_416
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_416:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405410

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
	#Procedure 0x405420
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_417
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_417:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405440
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
	#Procedure 0x405450
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
	#Procedure 0x405460

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
	je	.label_418
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_419
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_419
.label_418:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_419
	test	cl, cl
	jne	.label_419
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_419:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_421
	cmp	byte ptr [rax], 0x43
	jne	.label_423
	cmp	byte ptr [rax + 1], 0
	je	.label_420
.label_423:
	mov	esi, OFFSET FLAT:label_422
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_421
.label_420:
	xor	ebx, ebx
.label_421:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405510

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_27
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_424
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x405540

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
	nop	word ptr cs:[rax + rax]
