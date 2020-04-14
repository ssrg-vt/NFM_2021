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
.label_600:
	cmp	dword ptr [rip + operating_mode],  0
	je	.label_49
	jmp	.label_51
.label_601:
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
.label_602:
	cmp	dword ptr [rip + operating_mode],  0
	jne	.label_51
	mov	dword ptr [rip + operating_mode],  2
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_36
.label_603:
	mov	byte ptr [rip + suppress_non_delimited],  1
	jmp	.label_36
.label_604:
	mov	byte ptr [rip + line_delim],  1
	jmp	.label_36
.label_605:
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
.label_606:
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
	mov	r15, rdi
	xor	r12d, r12d
	mov	dword ptr [rsp + 0x10], esi
	and	esi, 1
	mov	dword ptr [rsp + 0x24], esi
	je	.label_143
	movzx	edx, byte ptr [r15]
	lea	rax, [r15 + 1]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_159
	movzx	ecx, byte ptr [rax]
	neg	ecx
.label_159:
	xor	r12d, r12d
	test	ecx, ecx
	sete	r12b
	cmove	r15, rax
.label_143:
	xor	ebp, ebp
	mov	al, r12b
	mov	dword ptr [rsp + 0x14], eax
	mov	r13b, r12b
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_170
	nop	dword ptr [rax]
.label_167:
	inc	r15
	xor	r12d, r12d
.label_170:
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	mov	byte ptr [rsp + 0xf], al
	jne	.label_182
	mov	r14, rbp
	xor	ebx, ebx
	jmp	.label_190
	nop	dword ptr [rax]
.label_156:
	inc	r15
	mov	bl, 1
	mov	r13b, 1
.label_190:
	movzx	ebp, byte ptr [r15]
	cmp	rbp, 0x2c
	je	.label_197
	cmp	bpl, 0x2d
	je	.label_200
	call	__ctype_b_loc
	test	bpl, bpl
	je	.label_197
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	and	eax, 1
	test	ax, ax
	jne	.label_197
	movsx	eax, bpl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_191
	mov	rbp, qword ptr [rip + set_fields.num_start]
	test	rbp, rbp
	setne	al
	test	bl, al
	jne	.label_216
	mov	qword ptr [rip + set_fields.num_start],  r15
	mov	rbp, r15
.label_216:
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_137
	lea	rax, [r12 + r12*4]
	movsx	rcx, byte ptr [r15]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	cmovae	r12, rax
	jb	.label_137
	cmp	r12, -1
	jne	.label_156
	jmp	.label_137
	nop	dword ptr [rax + rax]
.label_182:
	xor	r14d, r14d
	jmp	.label_165
	nop	word ptr cs:[rax + rax]
.label_194:
	inc	r15
	mov	r14b, 1
	mov	bpl, 1
.label_165:
	movzx	ebx, byte ptr [r15]
	cmp	rbx, 0x2c
	je	.label_172
	cmp	bl, 0x2d
	je	.label_176
	call	__ctype_b_loc
	test	bl, bl
	je	.label_172
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	test	ax, ax
	jne	.label_172
	movsx	eax, bl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_191
	mov	rbp, qword ptr [rip + set_fields.num_start]
	test	rbp, rbp
	setne	al
	test	r14b, al
	jne	.label_196
	mov	qword ptr [rip + set_fields.num_start],  r15
	mov	rbp, r15
.label_196:
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_137
	lea	rax, [r12 + r12*4]
	movsx	rcx, byte ptr [r15]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	cmovae	r12, rax
	jb	.label_137
	cmp	r12, -1
	jne	.label_194
	jmp	.label_137
	nop	
.label_197:
	mov	rbp, r14
.label_172:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_134
	test	r12, r12
	je	.label_136
	mov	rsi, qword ptr [rip + n_frp]
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_141
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_213
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_138
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_162
	nop	word ptr [rax + rax]
.label_134:
	or	r13b, bpl
	and	r13b, 1
	mov	eax, 1
	mov	rcx, qword ptr [rsp + 0x18]
	cmove	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_169
	test	r13b, r13b
	je	.label_180
.label_169:
	test	bpl, 1
	jne	.label_185
	mov	rcx, qword ptr [rip + n_frp]
	cmp	rcx, qword ptr [rip + n_frp_allocated]
	jne	.label_187
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_195
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_138
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_204
.label_141:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_209
.label_185:
	cmp	r12, qword ptr [rsp + 0x18]
	jb	.label_211
	mov	rcx, qword ptr [rip + n_frp]
	cmp	rcx, qword ptr [rip + n_frp_allocated]
	jne	.label_214
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_221
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_138
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_144
.label_200:
	mov	rbp, r14
.label_176:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_153
	mov	eax, r13d
	and	al, 1
	sete	cl
	test	r12, r12
	jne	.label_158
	test	cl, cl
	je	.label_163
.label_158:
	test	al, al
	mov	eax, 1
	cmove	r12, rax
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	mov	qword ptr [rsp + 0x18], r12
	jmp	.label_167
.label_187:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_175
.label_214:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_178
.label_213:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_183
.label_162:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_209:
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r12
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	jmp	.label_203
.label_195:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_189
.label_204:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
.label_175:
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rcx], rdx
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	jmp	.label_150
.label_221:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_166
.label_144:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
.label_178:
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rcx], rdx
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r12
.label_150:
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	mov	dword ptr [rsp + 0x14], 0
.label_203:
	cmp	byte ptr [r15], 0
	je	.label_202
	xor	ebp, ebp
	xor	r13d, r13d
	jmp	.label_167
.label_202:
	test	rsi, rsi
	je	.label_207
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rdi, rax
	call	qsort
	mov	rax, qword ptr [rip + n_frp]
	xor	ebx, ebx
	test	rax, rax
	je	.label_181
	xor	r15d, r15d
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_145:
	mov	r14, r15
	lea	r15, [r14 + 1]
	jmp	.label_139
	nop	dword ptr [rax]
.label_171:
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
.label_139:
	cmp	r15, rbx
	jae	.label_193
	mov	rax, qword ptr [rip + frp]
	mov	rcx, r15
	shl	rcx, 4
	mov	rsi, r14
	shl	rsi, 4
	mov	rdx, qword ptr [rax + rsi + 8]
	cmp	qword ptr [rax + rcx], rdx
	jbe	.label_171
	cmp	rbx, r15
	ja	.label_145
	jmp	.label_181
	nop	dword ptr [rax]
.label_193:
	cmp	r15, rbx
	jb	.label_145
.label_181:
	mov	eax, dword ptr [rsp + 0x10]
	test	al, 2
	je	.label_192
	mov	r14, qword ptr [rip + frp]
	mov	qword ptr [rip + frp],  0
	mov	qword ptr [rip + n_frp],  0
	mov	qword ptr [rip + n_frp_allocated],  0
	mov	rbp, qword ptr [r14]
	xor	esi, esi
	cmp	rbp, 2
	jb	.label_199
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
	jmp	.label_217
.label_199:
	xor	eax, eax
.label_217:
	cmp	rbx, 2
	jb	.label_151
	lea	rbp, [r14 + 0x10]
	mov	r15d, 1
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	r12, qword ptr [rbp - 8]
	mov	r13, qword ptr [rbp]
	inc	r12
	cmp	r12, r13
	je	.label_206
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_184
	test	rax, rax
	je	.label_173
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_138
	mov	rcx, rsi
	shr	rcx, 1
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_220
.label_173:
	test	rsi, rsi
	mov	ecx, 8
	cmove	rsi, rcx
	movabs	rcx, 0x7ffffffffffffff
	cmp	rsi, rcx
	ja	.label_179
.label_220:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	mov	rdi, rax
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_184:
	dec	r13
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r13
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
.label_206:
	inc	r15
	add	rbp, 0x10
	cmp	r15, rbx
	jb	.label_135
.label_151:
	shl	rbx, 4
	mov	rbx, qword ptr [r14 + rbx - 8]
	cmp	rbx, -1
	je	.label_188
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_198
	test	rax, rax
	je	.label_146
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_138
	mov	rcx, rsi
	shr	rcx, 1
	lea	rcx, [rsi + rcx + 1]
	jmp	.label_157
.label_146:
	test	rsi, rsi
	mov	ecx, 8
	cmovne	rcx, rsi
	movabs	rdx, 0x7ffffffffffffff
	cmp	rcx, rdx
	ja	.label_201
.label_157:
	mov	qword ptr [rip + n_frp_allocated],  rcx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_198:
	inc	rbx
	shl	rsi, 4
	mov	qword ptr [rax + rsi], rbx
	mov	rcx, qword ptr [rip + n_frp]
	mov	rdx, rcx
	shl	rdx, 4
	mov	qword ptr [rax + rdx + 8], -1
	inc	rcx
	mov	qword ptr [rip + n_frp],  rcx
.label_188:
	mov	rdi, r14
	call	free
	mov	rbx, qword ptr [rip + n_frp]
.label_192:
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
.label_137:
	mov	esi, OFFSET FLAT:label_140
	mov	rdi, rbp
	call	strspn
	mov	rdi, rbp
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_149
	mov	esi, OFFSET FLAT:label_154
	jmp	.label_155
.label_191:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_219
	mov	esi, OFFSET FLAT:label_160
	jmp	.label_161
.label_149:
	mov	esi, OFFSET FLAT:label_164
.label_155:
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
.label_219:
	mov	esi, OFFSET FLAT:label_186
.label_161:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_136:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_218
	mov	esi, OFFSET FLAT:label_205
	jmp	.label_133
.label_180:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	jmp	.label_133
.label_138:
	call	xalloc_die
.label_153:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_210
	mov	esi, OFFSET FLAT:label_212
	jmp	.label_148
.label_163:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_215
	mov	esi, OFFSET FLAT:label_205
	jmp	.label_148
.label_211:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	jmp	.label_133
.label_218:
	mov	esi, OFFSET FLAT:label_152
.label_133:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	jmp	.label_142
.label_210:
	mov	esi, OFFSET FLAT:label_147
	jmp	.label_148
.label_215:
	mov	esi, OFFSET FLAT:label_152
.label_148:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_142:
	call	error
	mov	edi, 1
	call	usage
.label_183:
	call	xalloc_die
.label_189:
	call	xalloc_die
.label_166:
	call	xalloc_die
.label_207:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_168
	mov	esi, OFFSET FLAT:label_174
	jmp	.label_133
.label_179:
	call	xalloc_die
.label_168:
	mov	esi, OFFSET FLAT:label_177
	jmp	.label_133
.label_201:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e90

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
	#Procedure 0x402eb0
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
	#Procedure 0x402ee0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f00

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_227
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_223
	cmp	dword ptr [rbp], 0x20
	jne	.label_223
.label_227:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_225
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_224
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_225:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_224:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_226
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
	#Procedure 0x402fc0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_228
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_228:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0

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
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_265
	mov	r13, qword ptr [r15]
	jmp	.label_234
.label_265:
	cmp	rbp, 0x40
	mov	r13d, 0x40
	cmovb	r13, rbp
	mov	rdi, r13
	mov	r12d, r9d
	call	malloc
	mov	r9d, r12d
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_251
.label_234:
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x48], rbx
	mov	r12, r13
	sub	r12, r14
	mov	qword ptr [rsp + 0x50], r15
	jb	.label_255
	cmp	r13, qword ptr [rsp + 0x28]
	jb	.label_263
	test	r12, r12
	jne	.label_263
.label_255:
	mov	qword ptr [rsp + 0x38], -1
.label_245:
	mov	qword ptr [rsp + 0x10], r13
.label_241:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rcx
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, 1
	sbb	rax, rax
	or	rax, rbx
.label_251:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_263:
	mov	qword ptr [rsp + 0x38], -1
	mov	rbp, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, r14
	lea	r14, [rax + rcx]
	cmp	r9d, -1
	mov	eax, r9d
	mov	edx, dword ptr [rsp + 4]
	cmove	eax, edx
	cmp	edx, -1
	cmove	eax, r9d
	mov	dword ptr [rsp + 0x24], eax
	cmove	edx, r9d
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rsp + 0x40], rcx
	xor	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	ebx, edx
	cmp	edx, -1
	je	.label_247
	mov	dword ptr [rsp + 4], 0
	mov	dword ptr [rsp + 0x34], eax
	nop	dword ptr [rax]
.label_233:
	mov	rdi, rbp
	lea	rsi, [rsp + 8]
	call	freadptr
	mov	r15, rax
	test	r15, r15
	je	.label_246
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r15
	mov	esi, ebx
	mov	edx, dword ptr [rsp + 0x24]
	mov	rcx, rbp
	call	memchr2
	test	rax, rax
	je	.label_257
	mov	ebp, 1
	sub	rbp, r15
	add	rbp, rax
	mov	qword ptr [rsp + 8], rbp
	mov	al, 1
	jmp	.label_259
	nop	word ptr cs:[rax + rax]
.label_246:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_240
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	eax, byte ptr [rax]
.label_250:
	cmp	eax, dword ptr [rsp + 0x24]
	mov	dl, 1
	mov	cl, 1
	je	.label_232
	mov	ecx, dword ptr [rsp + 4]
.label_232:
	mov	dword ptr [rsp + 0x34], eax
	cmp	eax, ebx
	je	.label_237
	mov	edx, ecx
.label_237:
	mov	qword ptr [rsp + 8], 1
	mov	ebp, 1
	mov	al, dl
.label_259:
	mov	dword ptr [rsp + 4], eax
.label_257:
	cmp	r13, qword ptr [rsp + 0x28]
	jae	.label_252
	lea	rax, [rbp + 1]
	cmp	r12, rax
	jae	.label_252
	lea	rcx, [r13 + 0x40]
	lea	rdx, [r13 + r13]
	cmp	r13, 0x40
	cmovb	rdx, rcx
	mov	r12, qword ptr [rsp + 0x18]
	sub	r14, r12
	mov	rcx, rdx
	sub	rcx, r14
	cmp	rcx, rax
	lea	rax, [r14 + rbp + 1]
	cmovae	rax, rdx
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rax, rcx
	mov	rbp, rax
	cmova	rbp, rcx
	cmp	r13, rax
	cmovae	rbp, rcx
	cmp	rbp, qword ptr [rsp + 0x40]
	jns	.label_248
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, rax
	mov	rbp, rax
	je	.label_241
.label_248:
	mov	rdi, r12
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_235
	mov	r12, rbp
	sub	r12, r14
	add	r14, rax
	mov	qword ptr [rsp + 0x18], rax
	mov	r13, rbp
.label_252:
	cmp	r12, 2
	jb	.label_244
	lea	rbp, [r12 - 1]
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbp
	cmovb	rbp, rax
	test	r15, r15
	je	.label_258
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_242
.label_258:
	mov	eax, dword ptr [rsp + 0x34]
	mov	byte ptr [r14], al
.label_242:
	add	r14, rbp
	sub	r12, rbp
.label_244:
	mov	rbp, qword ptr [rsp + 0x90]
	test	r15, r15
	je	.label_230
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, rbp
	call	freadseek
	test	eax, eax
	jne	.label_245
.label_230:
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	je	.label_233
	jmp	.label_236
.label_240:
	mov	rdi, rbp
	call	__uflow
	cmp	eax, -1
	jne	.label_250
	jmp	.label_254
.label_247:
	mov	dword ptr [rsp + 4], 0
	nop	word ptr cs:[rax + rax]
.label_249:
	mov	rdi, rbp
	lea	rsi, [rsp + 8]
	call	freadptr
	mov	r15, rax
	test	r15, r15
	je	.label_264
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_266
	nop	dword ptr [rax]
.label_264:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_229
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	eax, byte ptr [rax]
.label_256:
	mov	ebx, eax
	cmp	eax, dword ptr [rsp + 0x24]
	mov	cl, 1
	mov	al, 1
	je	.label_238
	mov	eax, dword ptr [rsp + 4]
.label_238:
	cmp	ebx, -1
	je	.label_243
	mov	ecx, eax
.label_243:
	mov	qword ptr [rsp + 8], 1
	mov	eax, 1
	mov	dword ptr [rsp + 4], ecx
.label_266:
	cmp	r13, qword ptr [rsp + 0x28]
	jae	.label_253
	lea	rcx, [rax + 1]
	cmp	r12, rcx
	jae	.label_253
	lea	rdx, [r13 + 0x40]
	lea	rsi, [r13 + r13]
	cmp	r13, 0x40
	cmovb	rsi, rdx
	mov	r12, qword ptr [rsp + 0x18]
	sub	r14, r12
	mov	rdx, rsi
	sub	rdx, r14
	cmp	rdx, rcx
	lea	rax, [r14 + rax + 1]
	cmovae	rax, rsi
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rax, rcx
	mov	rbp, rax
	cmova	rbp, rcx
	cmp	r13, rax
	cmovae	rbp, rcx
	cmp	rbp, qword ptr [rsp + 0x40]
	jns	.label_261
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	r13, rbp
	je	.label_241
.label_261:
	mov	rdi, r12
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_235
	mov	r12, rbp
	sub	r12, r14
	add	r14, rax
	mov	qword ptr [rsp + 0x18], rax
	mov	r13, rbp
	mov	rbp, qword ptr [rsp + 0x90]
.label_253:
	cmp	r12, 2
	jb	.label_262
	lea	rbp, [r12 - 1]
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbp
	cmovb	rbp, rax
	test	r15, r15
	je	.label_260
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_231
.label_260:
	mov	byte ptr [r14], bl
.label_231:
	add	r14, rbp
	sub	r12, rbp
	mov	rbp, qword ptr [rsp + 0x90]
.label_262:
	test	r15, r15
	je	.label_239
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, rbp
	call	freadseek
	test	eax, eax
	jne	.label_245
.label_239:
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	je	.label_249
	jmp	.label_236
.label_229:
	mov	rdi, rbp
	call	__uflow
	cmp	eax, -1
	jne	.label_256
.label_254:
	cmp	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x10], r13
	je	.label_241
.label_236:
	mov	byte ptr [r14], 0
	mov	rbx, qword ptr [rsp + 0x40]
	add	rbx, qword ptr [rsp + 0x18]
	sub	r14, rbx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_245
.label_235:
	mov	qword ptr [rsp + 0x18], r12
	jmp	.label_245
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	r14
	push	rbx
	movzx	esi, sil
	movzx	r8d, dl
	cmp	esi, r8d
	jne	.label_271
	mov	rdx, rcx
	pop	rbx
	pop	r14
	jmp	memchr
.label_271:
	mov	eax, edi
	and	eax, 7
	test	rcx, rcx
	je	.label_267
	nop	word ptr cs:[rax + rax]
.label_274:
	test	rax, rax
	je	.label_267
	movzx	eax, byte ptr [rdi]
	cmp	eax, esi
	je	.label_268
	cmp	eax, r8d
	je	.label_268
	inc	rdi
	mov	eax, edi
	and	eax, 7
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jne	.label_274
.label_267:
	mov	eax, esi
	shl	eax, 8
	or	eax, esi
	mov	edx, r8d
	shl	edx, 8
	or	edx, r8d
	cmp	rcx, 8
	jb	.label_270
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
.label_272:
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
	jne	.label_270
	cmp	rcx, 7
	ja	.label_272
.label_270:
	xor	eax, eax
	test	rcx, rcx
	je	.label_273
	xor	eax, eax
.label_269:
	movzx	edx, byte ptr [rdi]
	cmp	edx, esi
	je	.label_268
	cmp	edx, r8d
	je	.label_268
	inc	rdi
	dec	rcx
	jne	.label_269
	jmp	.label_273
.label_268:
	mov	rax, rdi
.label_273:
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_275
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_277
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_277
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_280
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_280:
	mov	rbx, r14
.label_277:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_275:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_276
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403670
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
	#Procedure 0x4036b0
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
	#Procedure 0x4036c0
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
	#Procedure 0x4036d0
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
	#Procedure 0x403710
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
	#Procedure 0x403730
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_281
	test	rdx, rdx
	je	.label_281
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_281:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403760
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
	#Procedure 0x4037e0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_301
	nop	
.label_350:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_341
	or	al, dl
	jne	.label_341
	test	dil, 1
	jne	.label_347
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_341
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_301
	jmp	.label_341
.label_594:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_354
	test	rbp, rbp
	je	.label_357
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_357:
	mov	r14d, 1
	jmp	.label_359
.label_595:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_360
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_293
.label_354:
	xor	r14d, r14d
.label_359:
	mov	eax, OFFSET FLAT:label_360
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_389
	nop	
.label_301:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_377
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_344]
.label_596:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_386
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_331
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_597:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_370
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_370
	xor	r14d, r14d
	nop	
.label_288:
	cmp	r14, rbp
	jae	.label_392
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_392:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_288
.label_370:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_293
.label_589:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_293
.label_592:
	mov	al, 1
.label_590:
	mov	r12b, 1
.label_593:
	test	r12b, 1
	mov	cl, 1
	je	.label_313
	mov	ecx, eax
.label_313:
	mov	al, cl
.label_591:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_316
	test	rbp, rbp
	je	.label_322
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_322:
	mov	r14d, 1
	jmp	.label_326
.label_316:
	xor	r14d, r14d
.label_326:
	mov	ecx, OFFSET FLAT:label_331
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_389:
	mov	sil, r12b
.label_293:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_336
	nop	word ptr cs:[rax + rax]
.label_291:
	inc	r12
.label_336:
	cmp	r11, -1
	je	.label_363
	cmp	r12, r11
	jne	.label_367
	jmp	.label_369
	nop	word ptr cs:[rax + rax]
.label_363:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_311
.label_367:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_378
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_325
	cmp	r11, -1
	jne	.label_325
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_325:
	cmp	rbx, r11
	jbe	.label_391
.label_378:
	xor	esi, esi
.label_285:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_393
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_397]
.label_626:
	test	r12, r12
	jne	.label_342
	jmp	.label_402
	nop	word ptr cs:[rax + rax]
.label_391:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_407
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_285
	jmp	.label_323
.label_407:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_285
.label_630:
	xor	eax, eax
	cmp	r11, -1
	je	.label_304
	test	r12, r12
	jne	.label_309
	cmp	r11, 1
	je	.label_402
	xor	r13d, r13d
	jmp	.label_315
.label_619:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_319
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_323
	cmp	r8d, 2
	jne	.label_329
	mov	eax, r9d
	and	al, 1
	jne	.label_329
	cmp	r14, rbp
	jae	.label_332
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_332:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_333
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_333:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_339
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	add	r14, 3
	mov	r9b, 1
.label_329:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_346
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_346:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_349
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_349
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_349
	cmp	r14, rbp
	jae	.label_310
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_310:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_318
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_318:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_315
.label_620:
	mov	bl, 0x62
	jmp	.label_364
.label_621:
	mov	cl, 0x74
	jmp	.label_361
.label_622:
	mov	bl, 0x76
	jmp	.label_364
.label_623:
	mov	bl, 0x66
	jmp	.label_364
.label_624:
	mov	cl, 0x72
	jmp	.label_361
.label_627:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_290
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_294
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_382
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_382:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_395
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_395:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_399
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_399:
	add	r14, 3
	xor	r9d, r9d
.label_290:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_315
.label_628:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_404
	cmp	r8d, 2
	jne	.label_342
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_342
	jmp	.label_294
.label_629:
	cmp	r8d, 2
	jne	.label_287
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_294
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_297
.label_393:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_300
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_296
.label_304:
	test	r12, r12
	jne	.label_327
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_327
.label_402:
	mov	dl, 1
.label_625:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_294
	xor	eax, eax
	mov	r13b, dl
.label_315:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_337
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_340
	jmp	.label_343
	nop	word ptr cs:[rax + rax]
.label_337:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_343
.label_340:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_373
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_352
	nop	dword ptr [rax]
.label_343:
	test	sil, sil
.label_352:
	mov	ebx, r15d
	je	.label_353
	jmp	.label_356
.label_373:
	mov	ebx, r15d
	jmp	.label_356
.label_319:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_291
	xor	r15d, r15d
	jmp	.label_342
.label_287:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_361
	xor	eax, eax
	mov	r15b, 0x5c
.label_297:
	xor	r13d, r13d
	jmp	.label_353
.label_361:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_294
.label_364:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_315
	nop	
.label_356:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_323
	cmp	r8d, 2
	jne	.label_376
	mov	eax, r9d
	and	al, 1
	jne	.label_376
	cmp	r14, rbp
	jae	.label_380
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_380:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_383
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_383:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_385
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_385:
	add	r14, 3
	mov	r9b, 1
.label_376:
	cmp	r14, rbp
	jae	.label_401
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_401:
	inc	r14
	jmp	.label_299
.label_300:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_398
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_398:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_403
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_348:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_302
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_307
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_328
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_400
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_365:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_396
	bt	rsi, rdx
	jb	.label_294
.label_396:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_365
.label_400:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_345
	xor	r13d, r13d
.label_345:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_348
	jmp	.label_308
.label_349:
	xor	r13d, r13d
	jmp	.label_315
.label_327:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_315
.label_404:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_342
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_342
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_342
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_362
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_375
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_372
	cmp	r14, rbp
	jae	.label_374
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_374:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_379
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_379:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_284
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_284:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_366
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_366:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_375:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_315
.label_342:
	xor	eax, eax
.label_309:
	xor	r13d, r13d
	jmp	.label_315
.label_403:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_303:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_408
	cmp	rbp, -1
	je	.label_286
	cmp	rbp, -2
	je	.label_302
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_295
	xor	r13d, r13d
.label_295:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_303
	jmp	.label_308
.label_302:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_320
	lea	rax, [r10 + r12]
.label_292:
	cmp	byte ptr [rax + rsi], 0
	je	.label_320
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_292
.label_320:
	mov	qword ptr [rsp + 0x40], rsi
.label_307:
	xor	r13d, r13d
	jmp	.label_328
.label_286:
	xor	r13d, r13d
.label_408:
	mov	r10, qword ptr [rsp + 0x28]
.label_328:
	mov	r12, qword ptr [rsp + 0x40]
.label_308:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_296:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_335
	test	al, al
	je	.label_335
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_315
.label_335:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_351
	nop	word ptr [rax + rax]
.label_283:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_351:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_355
	test	sil, 1
	je	.label_289
	cmp	r14, rbp
	jae	.label_358
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_358:
	inc	r14
	xor	esi, esi
	jmp	.label_289
	nop	word ptr cs:[rax + rax]
.label_355:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_323
	cmp	r8d, 2
	jne	.label_368
	mov	eax, r9d
	and	al, 1
	jne	.label_368
	cmp	r14, rbp
	jae	.label_371
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_371:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_312
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_312:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_305
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_305:
	add	r14, 3
	mov	r9b, 1
.label_368:
	cmp	r14, rbp
	jae	.label_384
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_384:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_388
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_388:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_338
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_338:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_289:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_353
	test	r9b, 1
	je	.label_298
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_306
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_406
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_406:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_394
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_394:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_298
	nop	word ptr cs:[rax + rax]
.label_306:
	mov	rbx, rcx
.label_298:
	cmp	r14, rbp
	jae	.label_283
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_283
	nop	
.label_353:
	test	r9b, 1
	je	.label_317
	and	al, 1
	jne	.label_317
	cmp	r14, rbp
	jae	.label_321
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_321:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_314
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_314:
	add	r14, 2
	xor	r9d, r9d
.label_317:
	mov	ebx, r15d
.label_299:
	cmp	r14, rbp
	jae	.label_334
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_334:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_291
.label_362:
	xor	r13d, r13d
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
.label_369:
	mov	rcx, r12
.label_311:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_350
	or	al, dl
	jne	.label_350
	mov	r11, rcx
	jmp	.label_323
.label_294:
	mov	eax, 2
.label_282:
	mov	qword ptr [rsp + 0x38], rax
.label_323:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_324:
	mov	r14, rax
.label_405:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_341:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_330
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_381
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_381
	inc	rdx
	nop	dword ptr [rax + rax]
.label_390:
	cmp	r14, rbp
	jae	.label_387
	mov	byte ptr [rcx + r14], al
.label_387:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_390
	jmp	.label_381
.label_347:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_324
.label_330:
	mov	rcx, qword ptr [rsp + 0x10]
.label_381:
	cmp	r14, rbp
	jae	.label_405
	mov	byte ptr [rcx + r14], 0
	jmp	.label_405
.label_372:
	mov	eax, 5
	jmp	.label_282
.label_377:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404610
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
	#Procedure 0x4046e0
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
	je	.label_409
	mov	qword ptr [rax], rbx
.label_409:
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
	#Procedure 0x4047d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_410
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_412:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_412
.label_410:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_414
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_413], OFFSET FLAT:slot0
.label_414:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_411
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_411:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404870
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404880

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
	js	.label_415
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_418
	cmp	r12d, 0x7fffffff
	je	.label_420
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
	jne	.label_416
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_416:
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
.label_418:
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
	jbe	.label_421
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_417
.label_421:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_419
	mov	rdi, r14
	call	free
.label_419:
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
.label_417:
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
.label_415:
	call	abort
.label_420:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a40
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a50
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
	#Procedure 0x404a70
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
	#Procedure 0x404a90
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
	je	.label_422
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
.label_422:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b00
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
	je	.label_423
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
.label_423:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b70
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
	je	.label_424
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
.label_424:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404be0
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
	je	.label_425
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
.label_425:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_426]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_427]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_428]
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
	#Procedure 0x404cc0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_426]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_427]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_428]
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
	#Procedure 0x404d30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_426]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_427]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_428]
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
	#Procedure 0x404d90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_426]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_427]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_428]
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
	#Procedure 0x404df0

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
	je	.label_429
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
.label_429:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e90
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_426]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_427]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_428]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_430
	test	rdx, rdx
	je	.label_430
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_430:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f00
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_426]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_427]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_428]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_431
	test	rdx, rdx
	je	.label_431
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_431:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_426]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_427]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_428]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_432
	test	rsi, rsi
	je	.label_432
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_432:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404fe0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_426]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_427]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_428]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_433
	test	rsi, rsi
	je	.label_433
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
.label_433:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405050
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405060
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
	#Procedure 0x405080
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0

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
	#Procedure 0x4050c0

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
	jne	.label_435
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_440
	cmp	ecx, 0x55
	jne	.label_434
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_434
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_434
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_434
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_434
	cmp	byte ptr [rax + 5], 0
	jne	.label_434
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_437
	mov	eax, OFFSET FLAT:label_438
	jmp	.label_439
.label_440:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_434
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_434
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_434
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_434
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_434
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_434
	cmp	byte ptr [rax + 7], 0
	je	.label_436
.label_434:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_360
	mov	eax, OFFSET FLAT:label_331
.label_439:
	cmove	rax, rcx
.label_435:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_436:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_441
	mov	eax, OFFSET FLAT:label_442
	jmp	.label_439
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190

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
	je	.label_449
	mov	edx, OFFSET FLAT:label_458
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_445
.label_449:
	mov	edx, OFFSET FLAT:label_447
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
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
	mov	esi, OFFSET FLAT:label_448
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_454
	jmp	qword ptr [(r12 * 8) + label_455]
.label_549:
	add	rsp, 8
	jmp	.label_446
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
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
	jmp	.label_446
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_453
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
.label_551:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
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
.label_552:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
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
.label_553:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
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
	jmp	.label_446
.label_554:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_451
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
	jmp	.label_446
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
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
	jmp	.label_446
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
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
	jmp	.label_446
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
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
	jmp	.label_446
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
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
.label_446:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_462:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_462
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_473
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_475
.label_473:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_475:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_472
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_474
.label_472:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_474:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_470
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_471
.label_470:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_471:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_468
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_469
.label_468:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_469:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_466
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_467
.label_466:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_467:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_463
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_465
.label_463:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_465:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_464
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_464
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_464
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_464
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_464:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405710

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_476
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_476:
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
	#Procedure 0x4057a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_477
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_478
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_480
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_479
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405820
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_481
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_482
	test	rax, rax
	je	.label_481
.label_482:
	pop	rbx
	ret	
.label_481:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405860

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_483
	test	rax, rax
	je	.label_484
.label_483:
	pop	rbx
	ret	
.label_484:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405880
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_485
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_486
	test	rbx, rbx
	jne	.label_486
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_486:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_487
	test	rax, rax
	je	.label_485
.label_487:
	pop	rbx
	ret	
.label_485:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_488
	test	rbx, rbx
	jne	.label_488
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_488:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_490
	test	rax, rax
	je	.label_489
.label_490:
	pop	rbx
	ret	
.label_489:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405900
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_491
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_494
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_492
.label_491:
	test	rcx, rcx
	jne	.label_497
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_497:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_493
.label_492:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_496
	test	rbx, rbx
	jne	.label_496
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_496:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_495
	test	rax, rax
	je	.label_494
.label_495:
	pop	rbx
	ret	
.label_494:
	call	xalloc_die
.label_493:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059a0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_498
	test	rax, rax
	je	.label_499
.label_498:
	pop	rbx
	ret	
.label_499:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_500
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_503
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_504
	call	free
	xor	eax, eax
	jmp	.label_501
.label_500:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_502
	mov	qword ptr [rsi], rbx
.label_504:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_501
	test	rax, rax
	je	.label_502
.label_501:
	pop	rbx
	ret	
.label_502:
	call	xalloc_die
.label_503:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a30
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
	je	.label_506
	test	r14, r14
	je	.label_505
.label_506:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_505:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a70
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_507
	call	rpl_calloc
	test	rax, rax
	je	.label_507
	pop	rcx
	ret	
.label_507:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405aa0

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
	je	.label_508
	test	r15, r15
	je	.label_509
.label_508:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_509:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ae0

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
	je	.label_511
	test	r15, r15
	je	.label_510
.label_511:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_510:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
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
	#Procedure 0x405b60

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_513
	pop	rcx
	ret	
.label_513:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_514
	test	rsi, rsi
	mov	ecx, 1
	je	.label_515
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_515
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_514:
	mov	ecx, 1
.label_515:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bd0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_516
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_518
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_516
.label_518:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_516
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_517
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_517:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_516:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_519
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_519
	test	byte ptr [rbx + 1], 1
	je	.label_519
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_519:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90

	.globl freadptr
	.type freadptr, @function
freadptr:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_520
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	eax, eax
	sub	rdx, rcx
	je	.label_520
	mov	qword ptr [rsi], rdx
	mov	rax, rcx
.label_520:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0

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
	jne	.label_521
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_521
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_522
.label_521:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_522:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_523
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_523:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405d30

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
	je	.label_524
	cmp	r15, -2
	jb	.label_524
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_524
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_524:
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
	#Procedure 0x405d90

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
	jne	.label_526
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_525
	test	cl, cl
	jne	.label_525
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_525
.label_526:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_525
	call	__errno_location
	mov	dword ptr [rax], 0
.label_525:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405df0

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
	je	.label_529
	mov	rdi, r14
	call	freadahead
	mov	rbp, rax
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_533:
	test	rbp, rbp
	je	.label_532
	mov	rdi, r14
	mov	rsi, r12
	call	freadptr
	test	rax, rax
	je	.label_527
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_527
	cmp	rax, rbx
	cmovae	rax, rbx
	add	qword ptr [r14 + 8], rax
	sub	rbx, rax
	je	.label_529
	sub	rbp, rax
	je	.label_532
.label_527:
	mov	rdi, r14
	call	fgetc
	cmp	eax, -1
	je	.label_528
	xor	eax, eax
	mov	rcx, rbx
	dec	rcx
	setne	al
	sub	rbp, rax
	dec	rbx
	jne	.label_533
	jmp	.label_529
.label_532:
	mov	rdi, r14
	call	fileno
	test	eax, eax
	js	.label_530
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	test	rax, rax
	js	.label_530
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	rpl_fseeko
	mov	r15d, eax
	jmp	.label_529
.label_530:
	mov	r12d, 0x1000
	lea	r15, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_531:
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
	jb	.label_528
	sub	rbx, rcx
	jne	.label_531
	xor	r15d, r15d
	jmp	.label_529
.label_528:
	mov	rdi, r14
	call	ferror
	neg	eax
	sbb	r15d, r15d
.label_529:
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
	#Procedure 0x405f40

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_535
	cmp	byte ptr [rax], 0x43
	jne	.label_537
	cmp	byte ptr [rax + 1], 0
	je	.label_534
.label_537:
	mov	esi, OFFSET FLAT:label_536
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_535
.label_534:
	xor	ebx, ebx
.label_535:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f80

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
	mov	eax, OFFSET FLAT:label_538
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fb0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_539
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_540
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_540:
	add	rax, rcx
.label_539:
	ret	
	nop	dword ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x405fe0

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
