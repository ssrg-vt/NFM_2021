	.section	.text
	.align	16
	#Procedure 0x401830

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_30
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_29
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_29
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_30:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401af0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_37
	call	setlocale
	mov	edi, OFFSET FLAT:label_44
	mov	esi, OFFSET FLAT:label_45
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_44
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + operating_mode],  0
	mov	byte ptr [rip + suppress_non_delimited],  0
	mov	byte ptr [rip + delim],  0
	mov	byte ptr [rip + have_read_stdin],  0
	xor	r12d, r12d
	jmp	.label_36
.label_49:
	mov	dword ptr [rip + operating_mode],  1
	mov	r14, qword ptr [rip + optarg]
	nop	dword ptr [rax]
.label_36:
	mov	edx, OFFSET FLAT:label_48
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_41
	add	eax, -0x62
	cmp	eax, 0x1f
	ja	.label_43
	jmp	qword ptr [(rax * 8) + label_47]
.label_598:
	cmp	dword ptr [rip + operating_mode],  0
	je	.label_49
	jmp	.label_51
.label_599:
	mov	rcx, qword ptr [rip + optarg]
	movzx	eax, byte ptr [rcx]
	test	al, al
	je	.label_52
	cmp	byte ptr [rcx + 1], 0
	jne	.label_55
.label_52:
	mov	byte ptr [rip + delim],  al
	mov	r12b, 1
	jmp	.label_36
.label_600:
	cmp	dword ptr [rip + operating_mode],  0
	jne	.label_51
	mov	dword ptr [rip + operating_mode],  2
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_36
.label_601:
	mov	byte ptr [rip + suppress_non_delimited],  1
	jmp	.label_36
.label_602:
	mov	byte ptr [rip + line_delim],  1
	jmp	.label_36
.label_603:
	mov	byte ptr [rip + output_delimiter_specified],  1
	mov	rbx, qword ptr [rip + optarg]
	cmp	byte ptr [rbx], 0
	mov	eax, 1
	je	.label_42
	mov	rdi, rbx
	call	strlen
.label_42:
	mov	qword ptr [rip + output_delimiter_length],  rax
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [rip + output_delimiter_string],  rax
	jmp	.label_36
.label_604:
	mov	byte ptr [rip + complement],  1
	jmp	.label_36
.label_41:
	cmp	eax, -1
	jne	.label_60
	mov	eax, dword ptr [rip + operating_mode]
	test	eax, eax
	je	.label_62
	test	r12b, r12b
	je	.label_67
	cmp	eax, 2
	jne	.label_69
.label_67:
	cmp	eax, 2
	je	.label_64
	test	byte ptr [rip + suppress_non_delimited],  1
	jne	.label_34
.label_64:
	xor	ecx, ecx
	cmp	eax, 2
	setne	cl
	shl	ecx, 2
	movzx	eax, byte ptr [rip + complement]
	lea	esi, [rcx + rax*2]
	mov	rdi, r14
	call	set_fields
	test	r12b, r12b
	jne	.label_50
	mov	byte ptr [rip + delim],  9
.label_50:
	cmp	qword ptr [rip + output_delimiter_string],  0
	jne	.label_53
	mov	al, byte ptr [rip + delim]
	mov	byte ptr [rip + main.dummy],  al
	mov	byte ptr [rip + label_56],  0
	mov	qword ptr [rip + output_delimiter_string], OFFSET FLAT:main.dummy
	mov	qword ptr [rip + output_delimiter_length],  1
.label_53:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jne	.label_65
	mov	edi, OFFSET FLAT:label_59
	call	cut_file
	mov	bl, al
	jmp	.label_35
.label_65:
	mov	bl, 1
	jge	.label_35
	mov	bl, 1
	nop	word ptr [rax + rax]
.label_46:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	cut_file
	and	bl, al
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, ebp
	jl	.label_46
.label_35:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_54
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_54
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	call	error
.label_54:
	not	bl
	and	bl, 1
	movzx	eax, bl
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_60:
	cmp	eax, 0xffffff7d
	je	.label_68
	cmp	eax, 0xffffff7e
	jne	.label_43
	xor	edi, edi
	call	usage
.label_68:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_17
	mov	edx, OFFSET FLAT:label_9
	mov	r8d, OFFSET FLAT:label_38
	mov	r9d, OFFSET FLAT:label_39
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_40
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_43:
	mov	edi, 1
	call	usage
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	jmp	.label_58
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	jmp	.label_58
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	jmp	.label_58
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	jmp	.label_58
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
.label_58:
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
	.section	.text
	.align	16
	#Procedure 0x401e20

	.globl cut_file
	.type cut_file, @function
cut_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_77
	cmp	byte ptr [rbx + 1], 0
	je	.label_83
.label_77:
	mov	esi, OFFSET FLAT:label_97
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
	test	r15, r15
	jne	.label_90
	jmp	.label_93
.label_83:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	r15, qword ptr [rip + stdin]
.label_90:
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	eax, dword ptr [rip + operating_mode]
	mov	rcx, qword ptr [rip + frp]
	mov	qword ptr [rip + current_rp],  rcx
	cmp	eax, 1
	mov	qword ptr [rsp + 0x20], rbx
	jne	.label_84
	xor	r14d, r14d
	jmp	.label_108
	nop	dword ptr [rax + rax]
.label_117:
	mov	rax, qword ptr [rip + frp]
	mov	qword ptr [rip + current_rp],  rax
.label_108:
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_107
.label_98:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	mov	r12b, r13b
	nop	word ptr cs:[rax + rax]
.label_107:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_123
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_109:
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	esi, 0xa
	cmovne	esi, r14d
	cmp	ebp, esi
	je	.label_126
	cmp	ebp, -1
	je	.label_71
	inc	rbx
	mov	rax, qword ptr [rip + current_rp]
	cmp	rbx, qword ptr [rax + 8]
	jbe	.label_75
	add	rax, 0x10
	mov	qword ptr [rip + current_rp],  rax
.label_75:
	mov	rax, qword ptr [rax]
	cmp	rax, rbx
	ja	.label_107
	cmp	byte ptr [rip + output_delimiter_specified],  1
	jne	.label_81
	mov	r13b, 1
	test	r12b, 1
	je	.label_85
	cmp	rbx, rax
	jne	.label_85
	mov	rdi, qword ptr [rip + output_delimiter_string]
	mov	rdx, qword ptr [rip + output_delimiter_length]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_85
.label_81:
	mov	r13d, r12d
.label_85:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_98
	movzx	esi, bpl
	call	__overflow
	mov	r12b, r13b
	jmp	.label_107
.label_123:
	mov	rdi, r15
	call	__uflow
	mov	ebp, eax
	jmp	.label_109
	nop	
.label_126:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_110
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	jmp	.label_117
.label_110:
	movzx	esi, bpl
	call	__overflow
	jmp	.label_117
.label_84:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_122
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_125:
	mov	rsi, r15
	call	ungetc
	mov	rax, qword ptr [rip + current_rp]
	cmp	qword ptr [rax], 1
	seta	al
	xor	al, byte ptr [rip + suppress_non_delimited]
	xor	al, 1
	mov	byte ptr [rsp + 0x17], al
	xor	r13d, r13d
	mov	ebx, 1
	xor	r14d, r14d
	xor	ebp, ebp
	jmp	.label_86
.label_71:
	test	rbx, rbx
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_76
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_78
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	jmp	.label_76
.label_92:
	add	rax, 0x10
	mov	qword ptr [rip + current_rp],  rax
	nop	word ptr [rax + rax]
.label_86:
	cmp	rbx, 1
	setne	al
	or	al, byte ptr [rsp + 0x17]
	test	al, 1
	je	.label_89
	mov	rax, qword ptr [rip + current_rp]
	jmp	.label_99
	nop	dword ptr [rax + rax]
.label_80:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_89:
	movzx	r8d, byte ptr [rip + delim]
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	r9d, 0xa
	cmovne	r9d, r13d
	mov	qword ptr [rsp], r15
	mov	edi, OFFSET FLAT:field_1_buffer
	mov	esi, OFFSET FLAT:field_1_bufsize
	xor	edx, edx
	mov	rcx, -1
	call	getndelim2
	mov	rbx, rax
	test	rbx, rbx
	js	.label_119
	test	rbx, rbx
	je	.label_121
	mov	rdi, qword ptr [rip + field_1_buffer]
	movzx	eax, byte ptr [rdi + rbx - 1]
	cmp	al, byte ptr [rip + delim]
	je	.label_124
	cmp	byte ptr [rip + suppress_non_delimited],  1
	je	.label_89
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	mov	rax, qword ptr [rip + field_1_buffer]
	movsx	eax, byte ptr [rax + rbx - 1]
	movzx	ecx, byte ptr [rip + line_delim]
	test	cl, cl
	mov	esi, 0xa
	cmovne	esi, r13d
	cmp	eax, esi
	je	.label_89
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_80
	call	__overflow
	jmp	.label_89
	nop	dword ptr [rax]
.label_124:
	mov	rax, qword ptr [rip + current_rp]
	cmp	qword ptr [rax], 1
	ja	.label_88
	dec	rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	movzx	eax, byte ptr [rip + delim]
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	eax, ecx
	jne	.label_101
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_127
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_91:
	mov	rsi, r15
	call	ungetc
.label_101:
	mov	r14b, 1
.label_88:
	mov	rax, qword ptr [rip + current_rp]
	xor	ebp, ebp
	cmp	qword ptr [rax + 8], 1
	ja	.label_118
	add	rax, 0x10
	mov	qword ptr [rip + current_rp],  rax
.label_118:
	mov	ebx, 2
.label_99:
	cmp	qword ptr [rax], rbx
	ja	.label_103
	mov	qword ptr [rsp + 0x18], rbx
	test	r14b, 1
	je	.label_73
	mov	rdi, qword ptr [rip + output_delimiter_string]
	mov	rdx, qword ptr [rip + output_delimiter_length]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_73
	nop	dword ptr [rax]
.label_95:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	mov	ebp, ebx
.label_73:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_114
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_104:
	movzx	eax, byte ptr [rip + delim]
	mov	r14b, 1
	cmp	ebx, eax
	je	.label_72
	movzx	ecx, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	ebx, -1
	je	.label_72
	cmp	ebx, ecx
	je	.label_72
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_95
	movzx	esi, bl
	call	__overflow
	mov	ebp, ebx
	jmp	.label_73
.label_114:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	jmp	.label_104
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	r12d, ebp
	mov	ebp, ebx
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_96
.label_116:
	mov	rdi, r15
	call	__uflow
	mov	ebp, eax
	jmp	.label_112
	nop	dword ptr [rax + rax]
.label_103:
	mov	r12d, ebp
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_116
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_112:
	movzx	eax, byte ptr [rip + delim]
	cmp	ebp, eax
	je	.label_96
	movzx	ecx, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	ebp, -1
	je	.label_96
	cmp	ebp, ecx
	jne	.label_103
	nop	
.label_96:
	movzx	ecx, al
	mov	dl, byte ptr [rip + line_delim]
	test	dl, dl
	mov	edx, 0xa
	cmovne	edx, r13d
	cmp	ebp, ecx
	jne	.label_74
	cmp	ecx, edx
	jne	.label_74
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_87
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_128:
	mov	rsi, r15
	call	ungetc
	mov	al, byte ptr [rip + delim]
.label_74:
	movzx	eax, al
	cmp	ebp, eax
	jne	.label_82
	inc	rbx
	mov	rax, qword ptr [rip + current_rp]
	cmp	rbx, qword ptr [rax + 8]
	jbe	.label_86
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_82:
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	esi, 0xa
	cmovne	esi, r13d
	cmp	ebp, -1
	sete	dl
	je	.label_120
	cmp	ebp, esi
	jne	.label_86
.label_120:
	mov	rcx, rbx
	test	r14b, 1
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_105
	cmp	rcx, 1
	jne	.label_105
	test	byte ptr [rip + suppress_non_delimited],  1
	jne	.label_79
.label_105:
	cmp	r12d, esi
	jne	.label_111
	cmp	ebp, esi
	je	.label_111
	cmp	eax, r12d
	jne	.label_79
.label_111:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_115
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_79:
	test	dl, dl
	jne	.label_76
	mov	rax, qword ptr [rip + frp]
	mov	qword ptr [rip + current_rp],  rax
	xor	r14d, r14d
	mov	ebx, 1
	jmp	.label_86
.label_87:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_128
	movzx	eax, byte ptr [rip + delim]
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	esi, 0xa
	cmovne	esi, r13d
	mov	ebp, 0xffffffff
	mov	dl, 1
	jmp	.label_120
.label_115:
	mov	r14d, edx
	call	__overflow
	mov	edx, r14d
	jmp	.label_79
.label_127:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_91
	jmp	.label_88
.label_119:
	mov	rdi, qword ptr [rip + field_1_buffer]
	call	free
	mov	qword ptr [rip + field_1_buffer],  0
	test	byte ptr [r15], 0x30
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_94
.label_76:
	test	byte ptr [r15], 0x20
	jne	.label_93
	cmp	byte ptr [rbx], 0x2d
	jne	.label_100
	cmp	byte ptr [rbx + 1], 0
	je	.label_102
.label_100:
	mov	rdi, r15
	call	rpl_fclose
	mov	bpl, 1
	cmp	eax, -1
	jne	.label_106
.label_93:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_106:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_102:
	mov	rdi, r15
	call	clearerr_unlocked
	mov	bpl, 1
	jmp	.label_106
.label_122:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_125
	jmp	.label_76
.label_78:
	call	__overflow
	jmp	.label_76
.label_121:
	mov	edi, OFFSET FLAT:label_129
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 0x149
	mov	ecx, OFFSET FLAT:label_131
	call	__assert_fail
.label_94:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402520

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdi
	xor	r12d, r12d
	mov	dword ptr [rsp + 0xc], esi
	and	esi, 1
	mov	dword ptr [rsp + 0x20], esi
	je	.label_194
	movzx	edx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_148
	movzx	ecx, byte ptr [rax]
	neg	ecx
.label_148:
	xor	r12d, r12d
	test	ecx, ecx
	sete	r12b
	cmove	rbx, rax
.label_194:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	bpl, r12b
	mov	r13b, r12b
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_159
	nop	dword ptr [rax]
.label_139:
	inc	rbx
	xor	r12d, r12d
.label_159:
	mov	dword ptr [rsp + 0x24], ebp
	mov	r15d, ebp
	and	r15b, 1
	xor	r14d, r14d
	jmp	.label_172
	nop	word ptr cs:[rax + rax]
.label_178:
	inc	rbx
	mov	r14b, 1
.label_172:
	movzx	ebp, byte ptr [rbx]
	cmp	rbp, 0x2c
	je	.label_182
	cmp	bpl, 0x2d
	je	.label_190
	call	__ctype_b_loc
	test	bpl, bpl
	je	.label_182
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	and	eax, 1
	test	ax, ax
	jne	.label_182
	movsx	eax, bpl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_204
	mov	rbp, qword ptr [rip + set_fields.num_start]
	test	rbp, rbp
	setne	al
	test	r14b, al
	jne	.label_211
	mov	qword ptr [rip + set_fields.num_start],  rbx
	mov	rbp, rbx
.label_211:
	test	r15b, r15b
	je	.label_134
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_155
	nop	dword ptr [rax + rax]
.label_134:
	mov	r13b, 1
.label_155:
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_138
	lea	rax, [r12 + r12*4]
	movsx	rcx, byte ptr [rbx]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	cmovae	r12, rax
	jb	.label_138
	cmp	r12, -1
	jne	.label_178
	jmp	.label_138
	nop	
.label_182:
	test	r15b, r15b
	jne	.label_157
	test	r12, r12
	je	.label_160
	mov	rsi, qword ptr [rip + n_frp]
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	mov	ebp, dword ptr [rsp + 0x24]
	jne	.label_177
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_188
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_137
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_185
	nop	dword ptr [rax]
.label_157:
	mov	rdx, qword ptr [rsp + 0x18]
	or	r13b, dl
	and	r13b, 1
	mov	eax, 1
	mov	rcx, qword ptr [rsp + 0x10]
	cmove	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	cmp	dword ptr [rsp + 0x20], 0
	jne	.label_193
	test	r13b, r13b
	je	.label_206
.label_193:
	test	dl, 1
	jne	.label_212
	mov	rcx, qword ptr [rip + n_frp]
	cmp	rcx, qword ptr [rip + n_frp_allocated]
	jne	.label_215
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_135
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_137
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_199
	nop	
.label_190:
	test	r15b, r15b
	jne	.label_147
	mov	eax, r13d
	and	al, 1
	sete	cl
	test	r12, r12
	jne	.label_191
	test	cl, cl
	je	.label_133
.label_191:
	test	al, al
	mov	eax, 1
	cmove	r12, rax
	mov	bpl, 1
	mov	qword ptr [rsp + 0x10], r12
	jmp	.label_139
.label_177:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_164
.label_212:
	cmp	r12, qword ptr [rsp + 0x10]
	jb	.label_169
	mov	rcx, qword ptr [rip + n_frp]
	cmp	rcx, qword ptr [rip + n_frp_allocated]
	jne	.label_176
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_187
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_137
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_168
.label_215:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_200
.label_176:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_203
.label_188:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_207
.label_185:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_164:
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r12
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	jmp	.label_140
.label_135:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_152
.label_199:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
.label_200:
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rcx], rdx
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	jmp	.label_175
.label_187:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_189
.label_168:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
.label_203:
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rcx], rdx
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r12
.label_175:
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	xor	ebp, ebp
.label_140:
	cmp	byte ptr [rbx], 0
	je	.label_136
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
	jmp	.label_139
.label_136:
	test	rsi, rsi
	je	.label_144
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rdi, rax
	call	qsort
	mov	rax, qword ptr [rip + n_frp]
	xor	ebx, ebx
	test	rax, rax
	je	.label_151
	xor	r15d, r15d
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_165:
	mov	r14, r15
	lea	r15, [r14 + 1]
	jmp	.label_162
	nop	dword ptr [rax]
.label_196:
	lea	rsi, [rax + rsi + 8]
	lea	rdi, [rax + rcx]
	mov	rbp, qword ptr [rax + rcx + 8]
	cmp	rbp, rdx
	cmova	rdx, rbp
	mov	qword ptr [rsi], rdx
	lea	rsi, [rax + rcx + 0x10]
	sub	rbx, r15
	shl	rbx, 4
	add	rbx, -0x10
	mov	rdx, rbx
	call	memmove
	mov	rbx, qword ptr [rip + n_frp]
	dec	rbx
	mov	qword ptr [rip + n_frp],  rbx
.label_162:
	cmp	r15, rbx
	jae	.label_213
	mov	rax, qword ptr [rip + frp]
	mov	rcx, r15
	shl	rcx, 4
	mov	rsi, r14
	shl	rsi, 4
	mov	rdx, qword ptr [rax + rsi + 8]
	cmp	qword ptr [rax + rcx], rdx
	jbe	.label_196
	cmp	rbx, r15
	ja	.label_165
	jmp	.label_151
	nop	dword ptr [rax]
.label_213:
	cmp	r15, rbx
	jb	.label_165
.label_151:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 2
	je	.label_216
	mov	r14, qword ptr [rip + frp]
	mov	qword ptr [rip + frp],  0
	mov	qword ptr [rip + n_frp],  0
	mov	qword ptr [rip + n_frp_allocated],  0
	mov	rbp, qword ptr [r14]
	xor	esi, esi
	cmp	rbp, 2
	jb	.label_210
	dec	rbp
	mov	qword ptr [rip + n_frp_allocated],  8
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], 1
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], rbp
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	jmp	.label_154
.label_210:
	xor	eax, eax
.label_154:
	cmp	rbx, 2
	jb	.label_205
	lea	rbp, [r14 + 0x10]
	mov	r15d, 1
	nop	word ptr cs:[rax + rax]
.label_201:
	mov	r12, qword ptr [rbp - 8]
	mov	r13, qword ptr [rbp]
	inc	r12
	cmp	r12, r13
	je	.label_217
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_179
	test	rax, rax
	je	.label_197
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_137
	mov	rcx, rsi
	shr	rcx, 1
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_156
.label_197:
	test	rsi, rsi
	mov	ecx, 8
	cmove	rsi, rcx
	movabs	rcx, 0x7ffffffffffffff
	cmp	rsi, rcx
	ja	.label_192
.label_156:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	mov	rdi, rax
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_179:
	dec	r13
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r13
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
.label_217:
	inc	r15
	add	rbp, 0x10
	cmp	r15, rbx
	jb	.label_201
.label_205:
	shl	rbx, 4
	mov	rbx, qword ptr [r14 + rbx - 8]
	cmp	rbx, -1
	je	.label_167
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_143
	test	rax, rax
	je	.label_208
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_137
	mov	rcx, rsi
	shr	rcx, 1
	lea	rcx, [rsi + rcx + 1]
	jmp	.label_181
.label_208:
	test	rsi, rsi
	mov	ecx, 8
	cmovne	rcx, rsi
	movabs	rdx, 0x7ffffffffffffff
	cmp	rcx, rdx
	ja	.label_132
.label_181:
	mov	qword ptr [rip + n_frp_allocated],  rcx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_143:
	inc	rbx
	shl	rsi, 4
	mov	qword ptr [rax + rsi], rbx
	mov	rcx, qword ptr [rip + n_frp]
	mov	rdx, rcx
	shl	rdx, 4
	mov	qword ptr [rax + rdx + 8], -1
	inc	rcx
	mov	qword ptr [rip + n_frp],  rcx
.label_167:
	mov	rdi, r14
	call	free
	mov	rbx, qword ptr [rip + n_frp]
.label_216:
	inc	rbx
	mov	qword ptr [rip + n_frp],  rbx
	mov	rdi, qword ptr [rip + frp]
	shl	rbx, 4
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
	shl	rcx, 4
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx - 0x10], xmm0
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_138:
	mov	esi, OFFSET FLAT:label_163
	mov	rdi, rbp
	call	strspn
	mov	rdi, rbp
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_174
	mov	esi, OFFSET FLAT:label_170
	jmp	.label_171
.label_204:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_180
	mov	esi, OFFSET FLAT:label_183
	jmp	.label_184
.label_174:
	mov	esi, OFFSET FLAT:label_186
.label_171:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rdi, rbx
	call	free
	mov	edi, 1
	call	usage
.label_180:
	mov	esi, OFFSET FLAT:label_209
.label_184:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_160:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_214
	mov	esi, OFFSET FLAT:label_141
	jmp	.label_142
.label_206:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	jmp	.label_142
.label_137:
	call	xalloc_die
.label_147:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_146
	mov	esi, OFFSET FLAT:label_149
	jmp	.label_150
.label_133:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_153
	mov	esi, OFFSET FLAT:label_141
	jmp	.label_150
.label_169:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	jmp	.label_142
.label_214:
	mov	esi, OFFSET FLAT:label_161
.label_142:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	jmp	.label_166
.label_146:
	mov	esi, OFFSET FLAT:label_173
	jmp	.label_150
.label_153:
	mov	esi, OFFSET FLAT:label_161
.label_150:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_166:
	call	error
	mov	edi, 1
	call	usage
.label_207:
	call	xalloc_die
.label_152:
	call	xalloc_die
.label_189:
	call	xalloc_die
.label_144:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_195
	mov	esi, OFFSET FLAT:label_198
	jmp	.label_142
.label_192:
	call	xalloc_die
.label_195:
	mov	esi, OFFSET FLAT:label_202
	jmp	.label_142
.label_132:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402df0

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	xor	ecx, ecx
	cmp	eax, dword ptr [rsi]
	setg	cl
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e10
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rax
	mov	qword ptr [rip + n_frp],  0
	mov	qword ptr [rip + n_frp_allocated],  0
	mov	rdi, qword ptr [rip + frp]
	call	free
	mov	qword ptr [rip + frp],  0
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e50
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e60

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_223
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_219
	cmp	dword ptr [rbp], 0x20
	jne	.label_219
.label_223:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_221
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_219:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_220
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_221:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_220:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_222
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f20
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f30

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_224
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_224:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f50

	.globl getndelim2
	.type getndelim2, @function
getndelim2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13d, r9d
	mov	dword ptr [rsp + 4], r8d
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r15, rsi
	mov	rbp, rdi
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_240
	mov	r14, qword ptr [r15]
	jmp	.label_246
.label_240:
	cmp	rbx, 0x40
	mov	r14d, 0x40
	cmovb	r14, rbx
	mov	rdi, r14
	call	malloc
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_228
.label_246:
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x48], rbp
	mov	r12, r14
	sub	r12, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x50], r15
	jae	.label_231
	mov	qword ptr [rsp + 0x30], -1
	jmp	.label_229
.label_231:
	mov	qword ptr [rsp + 0x30], -1
	cmp	r14, rbx
	jb	.label_236
	test	r12, r12
	je	.label_229
.label_236:
	mov	qword ptr [rsp + 0x40], rbx
	mov	rbx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	r15, [rax + rcx]
	cmp	r13d, -1
	mov	eax, r13d
	mov	ebp, dword ptr [rsp + 4]
	cmove	eax, ebp
	cmp	ebp, -1
	cmove	eax, r13d
	mov	dword ptr [rsp + 0x24], eax
	cmove	ebp, r13d
	movabs	rax, 0x8000000000000000
	xor	rax, rcx
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0xc], eax
	mov	dword ptr [rsp + 4], ebp
	nop	word ptr cs:[rax + rax]
.label_237:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x18]
	call	freadptr
	mov	rdi, rbx
	mov	r13, rax
	test	r13, r13
	je	.label_238
	cmp	ebp, -1
	mov	esi, ebp
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_227
	mov	rdi, r13
	mov	edx, dword ptr [rsp + 0x24]
	mov	rcx, rbp
	call	memchr2
	test	rax, rax
	je	.label_227
	mov	ebp, 1
	sub	rbp, r13
	add	rbp, rax
	mov	qword ptr [rsp + 0x18], rbp
	mov	al, 1
	jmp	.label_242
	nop	word ptr cs:[rax + rax]
.label_238:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rdi + 0x10]
	mov	rbx, qword ptr [rsp + 0x40]
	jae	.label_232
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 8], rcx
	movzx	eax, byte ptr [rax]
.label_243:
	mov	dword ptr [rsp + 0xc], eax
	cmp	eax, dword ptr [rsp + 0x24]
	mov	al, 1
	mov	cl, 1
	je	.label_235
	mov	ecx, dword ptr [rsp + 8]
.label_235:
	cmp	dword ptr [rsp + 0xc], ebp
	je	.label_239
	mov	eax, ecx
.label_239:
	mov	qword ptr [rsp + 0x18], 1
	mov	ebp, 1
.label_242:
	mov	dword ptr [rsp + 8], eax
.label_227:
	cmp	r14, rbx
	jae	.label_245
	lea	rax, [rbp + 1]
	cmp	r12, rax
	jae	.label_245
	lea	rcx, [r14 + 0x40]
	lea	rdx, [r14 + r14]
	cmp	r14, 0x40
	cmovb	rdx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	sub	r15, rdi
	mov	rcx, rdx
	sub	rcx, r15
	cmp	rcx, rax
	lea	rax, [r15 + rbp + 1]
	cmovae	rax, rdx
	cmp	rax, rbx
	mov	rbp, rax
	cmova	rbp, rbx
	cmp	r14, rax
	cmovae	rbp, rbx
	cmp	rbp, qword ptr [rsp + 0x28]
	jns	.label_226
	mov	rax, qword ptr [rsp + 0x38]
	cmp	r14, rax
	mov	rbp, rax
	je	.label_234
.label_226:
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_229
	mov	r12, rbp
	sub	r12, r15
	add	r15, rax
	mov	qword ptr [rsp + 0x10], rax
	mov	r14, rbp
.label_245:
	cmp	r12, 2
	jb	.label_244
	lea	rbp, [r12 - 1]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, rbp
	cmovb	rbp, rax
	test	r13, r13
	je	.label_225
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	jmp	.label_230
.label_225:
	mov	eax, dword ptr [rsp + 0xc]
	mov	byte ptr [r15], al
.label_230:
	add	r15, rbp
	sub	r12, rbp
.label_244:
	mov	ebp, dword ptr [rsp + 4]
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_233
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	call	freadseek
	test	eax, eax
	jne	.label_229
.label_233:
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	je	.label_237
	jmp	.label_241
.label_232:
	call	__uflow
	cmp	eax, -1
	jne	.label_243
	cmp	r15, qword ptr [rsp + 0x10]
	je	.label_229
.label_241:
	mov	byte ptr [r15], 0
	mov	rax, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x10]
	sub	r15, rax
	mov	qword ptr [rsp + 0x30], r15
.label_229:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	rcx, 1
	sbb	rax, rax
	or	rax, rcx
.label_228:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_234:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_229
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403250

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	r14
	push	rbx
	movzx	esi, sil
	movzx	r8d, dl
	cmp	esi, r8d
	jne	.label_252
	mov	rdx, rcx
	pop	rbx
	pop	r14
	jmp	memchr
.label_252:
	mov	eax, edi
	and	eax, 7
	test	rcx, rcx
	je	.label_247
	nop	word ptr cs:[rax + rax]
.label_249:
	test	rax, rax
	je	.label_247
	movzx	eax, byte ptr [rdi]
	cmp	eax, esi
	je	.label_248
	cmp	eax, r8d
	je	.label_248
	inc	rdi
	mov	eax, edi
	and	eax, 7
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jne	.label_249
.label_247:
	mov	eax, esi
	shl	eax, 8
	or	eax, esi
	mov	edx, r8d
	shl	edx, 8
	or	edx, r8d
	cmp	rcx, 8
	jb	.label_250
	mov	r10, rax
	shl	r10, 0x10
	or	r10, rax
	mov	rax, rdx
	shl	rax, 0x10
	or	rax, rdx
	mov	r9, r10
	shl	r9, 0x20
	or	r9, r10
	mov	r11, rax
	shl	r11, 0x20
	or	r11, rax
	movabs	r14, 0x8080808080808080
	movabs	r10, 0xfefefefefefefeff
	nop	word ptr cs:[rax + rax]
.label_253:
	mov	rdx, rcx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rcx, rax
	xor	rcx, r9
	xor	rax, r11
	lea	rdi, [rcx + r10]
	xor	rcx, r14
	and	rcx, rdi
	lea	rdi, [rax + r10]
	xor	rax, r14
	and	rax, rdi
	or	rax, rcx
	lea	rdi, [rbx + 8]
	lea	rcx, [rdx - 8]
	and	rax, r14
	cmovne	rdi, rbx
	cmovne	rcx, rdx
	test	rax, rax
	jne	.label_250
	cmp	rcx, 7
	ja	.label_253
.label_250:
	xor	eax, eax
	test	rcx, rcx
	je	.label_254
	xor	eax, eax
.label_251:
	movzx	edx, byte ptr [rdi]
	cmp	edx, esi
	je	.label_248
	cmp	edx, r8d
	je	.label_248
	inc	rdi
	dec	rcx
	jne	.label_251
	jmp	.label_254
.label_248:
	mov	rax, rdi
.label_254:
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403380

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_255
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_257
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_257
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_260
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_260:
	mov	rbx, r14
.label_257:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_255:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_256
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403430
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
	#Procedure 0x403470
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
	#Procedure 0x403480
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
	#Procedure 0x403490
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
	#Procedure 0x4034d0
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
	#Procedure 0x4034f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_261
	test	rdx, rdx
	je	.label_261
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_261:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403520
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
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
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
	#Procedure 0x4035a0

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
	mov	qword ptr [rsp + 0xa8], rax
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
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_289:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_286
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_273]
.label_575:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_299
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_307
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_576:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_315
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_315
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_328:
	cmp	r14, r11
	jae	.label_383
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_383:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_328
.label_315:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_335
.label_568:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_335
.label_571:
	mov	al, 1
.label_569:
	mov	r12b, 1
.label_572:
	test	r12b, 1
	mov	cl, 1
	je	.label_346
	mov	ecx, eax
.label_346:
	mov	al, cl
.label_570:
	test	r12b, 1
	jne	.label_348
	test	r11, r11
	je	.label_274
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_274:
	mov	r14d, 1
	jmp	.label_352
.label_348:
	xor	r14d, r14d
.label_352:
	mov	ecx, OFFSET FLAT:label_307
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_335
.label_573:
	test	r12b, 1
	jne	.label_363
	test	r11, r11
	je	.label_365
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_365:
	mov	r14d, 1
	jmp	.label_366
.label_574:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_368
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_335
.label_363:
	xor	r14d, r14d
.label_366:
	mov	eax, OFFSET FLAT:label_368
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_335:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_262
	nop	dword ptr [rax]
.label_331:
	inc	rsi
.label_262:
	cmp	rbp, -1
	je	.label_311
	cmp	rsi, rbp
	jne	.label_312
	jmp	.label_314
	nop	word ptr cs:[rax + rax]
.label_311:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_319
.label_312:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_323
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_324
	cmp	rbp, -1
	jne	.label_324
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_324:
	cmp	rbx, rbp
	jbe	.label_336
.label_323:
	xor	r8d, r8d
.label_358:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_337
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_341]
.label_613:
	test	rsi, rsi
	jne	.label_304
	jmp	.label_344
	nop	word ptr cs:[rax + rax]
.label_336:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_355
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_358
	jmp	.label_295
.label_355:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_358
.label_617:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_375
	test	rsi, rsi
	jne	.label_376
	cmp	rbp, 1
	je	.label_344
	xor	r13d, r13d
	jmp	.label_320
.label_606:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_382
	cmp	byte ptr [rsp + 6], 0
	jne	.label_379
	cmp	r12d, 2
	jne	.label_267
	mov	eax, r9d
	and	al, 1
	jne	.label_267
	cmp	r14, r11
	jae	.label_270
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_270:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_275
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_275:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_269
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	add	r14, 3
	mov	r9b, 1
.label_267:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_290
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_290:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_296
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_296
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_296
	cmp	r14, r11
	jae	.label_351
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_351:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_313
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_313:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_320
.label_607:
	mov	bl, 0x62
	jmp	.label_303
.label_608:
	mov	cl, 0x74
	jmp	.label_284
.label_609:
	mov	bl, 0x76
	jmp	.label_303
.label_610:
	mov	bl, 0x66
	jmp	.label_303
.label_611:
	mov	cl, 0x72
	jmp	.label_284
.label_614:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_327
	cmp	byte ptr [rsp + 6], 0
	jne	.label_297
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_334
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_334:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_343
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_343:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_347
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_347:
	add	r14, 3
	xor	r9d, r9d
.label_327:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_320
.label_615:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_353
	cmp	r12d, 2
	jne	.label_304
	cmp	byte ptr [rsp + 6], 0
	je	.label_304
	jmp	.label_297
.label_616:
	cmp	r12d, 2
	jne	.label_364
	cmp	byte ptr [rsp + 6], 0
	jne	.label_297
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_285
.label_337:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_371
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
.label_301:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_266
	test	r8b, r8b
	je	.label_266
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_320
.label_375:
	test	rsi, rsi
	jne	.label_292
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_292
.label_344:
	mov	dl, 1
.label_612:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_297
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_320:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_305
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_306
	jmp	.label_310
	nop	word ptr cs:[rax + rax]
.label_305:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_310
.label_306:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_316
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_285
	jmp	.label_326
	nop	dword ptr [rax]
.label_310:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_326
	jmp	.label_285
.label_316:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_326
.label_382:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_331
	xor	r15d, r15d
	jmp	.label_304
.label_364:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_284
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_285
.label_284:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_297
.label_303:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_320
	nop	word ptr cs:[rax + rax]
.label_326:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_379
	cmp	r12d, 2
	jne	.label_350
	mov	eax, r9d
	and	al, 1
	jne	.label_350
	cmp	r14, r11
	jae	.label_300
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_300:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_356
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_356:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_271
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	add	r14, 3
	mov	r9b, 1
.label_350:
	cmp	r14, r11
	jae	.label_329
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_329:
	inc	r14
	jmp	.label_369
.label_371:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_372
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_372:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_330:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_318
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_277
	cmp	rbp, -2
	je	.label_283
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_367
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_362:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_333
	bt	rsi, rdx
	jb	.label_309
.label_333:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_362
.label_367:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_294
	xor	r13d, r13d
.label_294:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_330
	jmp	.label_301
.label_296:
	xor	r13d, r13d
	jmp	.label_320
.label_292:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_320
.label_353:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_304
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_304
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_304
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_373
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_339
	cmp	byte ptr [rsp + 6], 0
	jne	.label_280
	cmp	r14, r11
	jae	.label_359
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_359:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_291
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_291:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_354
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_354:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_338
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_338:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_320
.label_304:
	xor	eax, eax
.label_376:
	xor	r13d, r13d
	jmp	.label_320
.label_266:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_370
	nop	word ptr cs:[rax + rax]
.label_332:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_370:
	test	r8b, r8b
	je	.label_377
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_378
	cmp	r14, r11
	jae	.label_380
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_380:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_378
	nop	dword ptr [rax]
.label_377:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_295
	cmp	r12d, 2
	jne	.label_272
	mov	eax, r9d
	and	al, 1
	jne	.label_272
	cmp	r14, r11
	jae	.label_276
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_276:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_281
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_281:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_287
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_287:
	add	r14, 3
	mov	r9b, 1
.label_272:
	cmp	r14, r11
	jae	.label_288
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_288:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_345
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_345:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_308
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_308:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_378:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_285
	test	r9b, 1
	je	.label_279
	mov	ebx, eax
	and	bl, 1
	jne	.label_279
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_325
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_325:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_293
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_293:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_279:
	cmp	r14, r11
	jae	.label_332
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_332
	nop	word ptr cs:[rax + rax]
.label_285:
	test	r9b, 1
	je	.label_340
	and	al, 1
	jne	.label_340
	cmp	r14, r11
	jae	.label_342
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_342:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_349
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_349:
	add	r14, 2
	xor	r9d, r9d
.label_340:
	mov	ebx, r15d
.label_369:
	cmp	r14, r11
	jae	.label_264
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_264:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_331
.label_277:
	xor	r13d, r13d
.label_318:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_301
.label_283:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_361
	mov	rsi, qword ptr [rsp + 0x58]
.label_263:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_321
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_263
	xor	r13d, r13d
	jmp	.label_301
.label_361:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_301
.label_321:
	xor	r13d, r13d
	jmp	.label_301
.label_373:
	xor	r13d, r13d
	jmp	.label_320
.label_339:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_320
	nop	dword ptr [rax + rax]
.label_314:
	mov	rcx, rsi
.label_319:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_381
	or	al, dl
	je	.label_265
.label_381:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_268
	or	al, dl
	jne	.label_268
	test	r10b, 1
	jne	.label_282
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_268
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_289
.label_268:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_298
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_302
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_302
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_317:
	cmp	r14, r11
	jae	.label_374
	mov	byte ptr [rcx + r14], al
.label_374:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_317
	jmp	.label_302
.label_379:
	mov	qword ptr [rsp + 0x20], rbp
.label_295:
	mov	rdx, rdi
	jmp	.label_322
.label_297:
	mov	qword ptr [rsp + 0x20], rbp
.label_309:
	mov	rdx, rdi
	mov	eax, 2
.label_278:
	mov	qword ptr [rsp + 0x38], rax
.label_322:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
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
.label_357:
	mov	r14, rax
.label_360:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_265:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_322
.label_282:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_357
.label_298:
	mov	rcx, qword ptr [rsp + 8]
.label_302:
	cmp	r14, r11
	jae	.label_360
	mov	byte ptr [rcx + r14], 0
	jmp	.label_360
.label_280:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_278
.label_286:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
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
	#Procedure 0x404480
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
	call	xmalloc
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
	je	.label_384
	mov	qword ptr [rax], rbx
.label_384:
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
	#Procedure 0x404570
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_385
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_387:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_387
.label_385:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_389
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_388], OFFSET FLAT:slot0
.label_389:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_386
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_386:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404610
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404620

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
	js	.label_390
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_393
	cmp	r12d, 0x7fffffff
	je	.label_395
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_391
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_391:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_393:
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
	jbe	.label_396
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_392
.label_396:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_394
	mov	rdi, r14
	call	free
.label_394:
	mov	rdi, r15
	call	xmalloc
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
.label_392:
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
.label_390:
	call	abort
.label_395:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047e0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404810
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_397
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_397:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048a0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_398
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_398:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404910
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_399
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_399:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_400
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_400:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_401]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_402]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_403]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404a60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_401]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_402]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_403]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ad0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_401]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_402]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_403]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_401]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_402]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_403]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b90

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_404
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_404:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_401]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_402]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_403]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_405
	test	rdx, rdx
	je	.label_405
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_405:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ca0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_401]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_402]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_403]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_406
	test	rdx, rdx
	je	.label_406
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_406:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_401]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_402]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_403]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_407
	test	rsi, rsi
	je	.label_407
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_407:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d80
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_401]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_402]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_403]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_408
	test	rsi, rsi
	je	.label_408
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_408:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404df0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e00
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e20
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e60

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_414
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_410
	cmp	ecx, 0x55
	jne	.label_409
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_409
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_409
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_409
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_409
	cmp	byte ptr [rax + 5], 0
	jne	.label_409
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_416
	mov	eax, OFFSET FLAT:label_417
	jmp	.label_413
.label_410:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_409
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_409
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_409
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_409
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_409
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_409
	cmp	byte ptr [rax + 7], 0
	je	.label_415
.label_409:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_368
	mov	eax, OFFSET FLAT:label_307
.label_413:
	cmove	rax, rcx
.label_414:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_415:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_411
	mov	eax, OFFSET FLAT:label_412
	jmp	.label_413
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f30

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
	je	.label_428
	mov	edx, OFFSET FLAT:label_423
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_430
.label_428:
	mov	edx, OFFSET FLAT:label_432
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_430:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_436
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
	mov	esi, OFFSET FLAT:label_433
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_419
	jmp	qword ptr [(r12 * 8) + label_420]
.label_581:
	add	rsp, 8
	jmp	.label_418
.label_419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_427
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
	jmp	.label_418
.label_582:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
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
.label_583:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_431
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
.label_584:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
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
.label_585:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
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
	jmp	.label_418
.label_586:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
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
	jmp	.label_418
.label_587:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
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
	jmp	.label_418
.label_588:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
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
	jmp	.label_418
.label_590:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
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
	jmp	.label_418
.label_589:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
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
.label_418:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405290
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_437:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_437
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_438
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_440
.label_438:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_440:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_441
	cmp	r10d, 0x29
	jae	.label_450
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_439
.label_450:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_439:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_441
	cmp	r10d, 0x29
	jae	.label_448
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_449
.label_448:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_449:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_441
	cmp	r10d, 0x29
	jae	.label_446
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_447
.label_446:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_447:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_441
	cmp	r10d, 0x29
	jae	.label_444
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_445
.label_444:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_445:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_441
	cmp	r10d, 0x29
	jae	.label_442
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_443
.label_442:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_443:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_441
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_441
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_441
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_441
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_441:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_451
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_451:
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
	#Procedure 0x405540
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_453
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_455
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_456
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_457
	test	rax, rax
	je	.label_456
.label_457:
	pop	rbx
	ret	
.label_456:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405600

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_458
	test	rax, rax
	je	.label_459
.label_458:
	pop	rbx
	ret	
.label_459:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405620
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_460
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_461
	test	rbx, rbx
	jne	.label_461
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_461:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_462
	test	rax, rax
	je	.label_460
.label_462:
	pop	rbx
	ret	
.label_460:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405670

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_463
	test	rbx, rbx
	jne	.label_463
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_463:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_465
	test	rax, rax
	je	.label_464
.label_465:
	pop	rbx
	ret	
.label_464:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4056a0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_466
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_469
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_467
.label_466:
	test	rcx, rcx
	jne	.label_472
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_472:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_468
.label_467:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_471
	test	rbx, rbx
	jne	.label_471
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_471:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_470
	test	rax, rax
	je	.label_469
.label_470:
	pop	rbx
	ret	
.label_469:
	call	xalloc_die
.label_468:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_473
	test	rax, rax
	je	.label_474
.label_473:
	pop	rbx
	ret	
.label_474:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405760
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_475
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_478
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_479
	call	free
	xor	eax, eax
	jmp	.label_476
.label_475:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_477
	mov	qword ptr [rsi], rbx
.label_479:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_476
	test	rax, rax
	je	.label_477
.label_476:
	pop	rbx
	ret	
.label_477:
	call	xalloc_die
.label_478:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_481
	test	r14, r14
	je	.label_480
.label_481:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_480:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405810
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_482
	call	rpl_calloc
	test	rax, rax
	je	.label_482
	pop	rcx
	ret	
.label_482:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405840

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_483
	test	r15, r15
	je	.label_484
.label_483:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_484:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405880

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_486
	test	r15, r15
	je	.label_485
.label_486:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_485:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_487
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405900

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_488
	pop	rcx
	ret	
.label_488:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405920

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_489
	test	rsi, rsi
	mov	ecx, 1
	je	.label_490
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_490
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_489:
	mov	ecx, 1
.label_490:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405970

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_491
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_493
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_491
.label_493:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_491
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_492
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_492:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_491:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_494
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_494
	test	byte ptr [rbx + 1], 1
	je	.label_494
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_494:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a30

	.globl freadptr
	.type freadptr, @function
freadptr:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_495
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	eax, eax
	sub	rdx, rcx
	je	.label_495
	mov	qword ptr [rsi], rdx
	mov	rax, rcx
.label_495:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a60

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
	jne	.label_496
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_496
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_497
.label_496:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_497:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_498
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_498:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ad0

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
	je	.label_499
	cmp	r15, -2
	jb	.label_499
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_499
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_499:
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
	#Procedure 0x405b30

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_501
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_500
	test	cl, cl
	jne	.label_500
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_500
.label_501:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_500
	call	__errno_location
	mov	dword ptr [rax], 0
.label_500:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b90

	.globl freadseek
	.type freadseek, @function
freadseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_503
	mov	rdi, r14
	call	freadahead
	mov	rbp, rax
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_507:
	test	rbp, rbp
	je	.label_502
	mov	rdi, r14
	mov	rsi, r12
	call	freadptr
	test	rax, rax
	je	.label_508
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_508
	cmp	rax, rbx
	cmovae	rax, rbx
	add	qword ptr [r14 + 8], rax
	sub	rbx, rax
	je	.label_503
	sub	rbp, rax
	je	.label_502
.label_508:
	mov	rdi, r14
	call	fgetc
	cmp	eax, -1
	je	.label_506
	xor	eax, eax
	mov	rcx, rbx
	dec	rcx
	setne	al
	sub	rbp, rax
	dec	rbx
	jne	.label_507
	jmp	.label_503
.label_502:
	mov	rdi, r14
	call	fileno
	test	eax, eax
	js	.label_504
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	test	rax, rax
	js	.label_504
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	rpl_fseeko
	mov	r15d, eax
	jmp	.label_503
.label_504:
	mov	r12d, 0x1000
	lea	r15, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_505:
	cmp	rbx, 0x1000
	mov	rbp, rbx
	cmova	rbp, r12
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbp
	mov	rcx, r14
	call	fread
	cmp	rax, rbp
	mov	rcx, rbp
	cmovb	rcx, r13
	cmp	rax, rbp
	jb	.label_506
	sub	rbx, rcx
	jne	.label_505
	xor	r15d, r15d
	jmp	.label_503
.label_506:
	mov	rdi, r14
	call	ferror
	neg	eax
	sbb	r15d, r15d
.label_503:
	mov	eax, r15d
	add	rsp, 0x1008
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
	#Procedure 0x405ce0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_510
	cmp	byte ptr [rax], 0x43
	jne	.label_512
	cmp	byte ptr [rax + 1], 0
	je	.label_509
.label_512:
	mov	esi, OFFSET FLAT:label_511
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_510
.label_509:
	xor	ebx, ebx
.label_510:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d20

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_37
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_513
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d50

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_514
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_515
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_515:
	add	rax, rcx
.label_514:
	ret	
	nop	dword ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x405d80

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
