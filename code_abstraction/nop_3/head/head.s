	.section	.text
	.align	32
	#Procedure 0x4015e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
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
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
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
	mov	esi, OFFSET FLAT:.str.31
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
	je	.label_7
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.9
	mov	ecx, OFFSET FLAT:.str.37
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
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
	#Procedure 0x401850

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4168
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	mov	r15b, 1
	xor	r13d, r13d
	mov	r12d, 0xa
	cmp	ebp, 2
	jl	.label_140
	mov	r9, qword ptr [rbx + 8]
	mov	r12d, 0xa
	movzx	eax, byte ptr [r9]
	cmp	eax, 0x2d
	jne	.label_36
	movsx	eax, byte ptr [r9 + 1]
	add	eax, -0x30
	mov	r12d, 0xa
	cmp	eax, 9
	ja	.label_40
	lea	r14, [rbx + 8]
	inc	r9
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_49:
	movsx	ecx, byte ptr [rax + 1]
	inc	rax
	lea	edx, [rcx - 0x30]
	cmp	edx, 0xa
	jb	.label_49
	test	cl, cl
	je	.label_51
	mov	r8, rbx
	xor	esi, esi
	mov	r15b, 1
	mov	rbx, rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_73:
	mov	dl, sil
	movsx	edi, cl
	cmp	edi, 0x70
	jg	.label_55
	add	edi, -0x62
	cmp	edi, 0xb
	ja	.label_58
	xor	r15d, r15d
	xor	esi, esi
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_60]]
.label_524:
	xor	r15d, r15d
	mov	sil, cl
	jmp	.label_64
	nop	dword ptr [rax + rax]
.label_55:
	cmp	edi, 0x71
	je	.label_30
	cmp	edi, 0x76
	je	.label_67
	cmp	edi, 0x7a
	jne	.label_58
	mov	byte ptr [byte ptr [rip + line_end]],  0
	mov	sil, dl
	jmp	.label_64
.label_525:
	mov	r15b, 1
	mov	sil, dl
	jmp	.label_64
.label_30:
	mov	r13d, 2
	mov	sil, dl
	jmp	.label_64
.label_67:
	mov	r13d, 1
	mov	sil, dl
	nop	dword ptr [rax + rax]
.label_64:
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	test	cl, cl
	jne	.label_73
	mov	r12, r9
	mov	byte ptr [rax], sil
	test	sil, sil
	mov	rbx, r8
	je	.label_74
	mov	byte ptr [rax + 1], 0
.label_74:
	test	r15b, 1
	jne	.label_75
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_77
.label_140:
	mov	r14, rbx
	jmp	.label_78
.label_36:
	mov	r14, rbx
	jmp	.label_78
.label_40:
	mov	r14, rbx
	jmp	.label_78
.label_51:
	mov	r12, r9
	mov	byte ptr [rax], 0
	xor	r13d, r13d
	mov	r15b, 1
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
.label_77:
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.38
	xor	r9d, r9d
	mov	rdi, r12
	call	xdectoumax
	mov	r12, rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	dec	ebp
.label_78:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_81
.label_117:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	nop	
.label_81:
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x70
	jle	.label_86
	cmp	ebx, 0x79
	jg	.label_88
	mov	r13d, 2
	cmp	ebx, 0x71
	je	.label_81
	cmp	ebx, 0x76
	jne	.label_94
	mov	r13d, 1
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_86:
	cmp	ebx, 0x62
	jle	.label_32
	cmp	ebx, 0x63
	je	.label_100
	cmp	ebx, 0x6e
	jne	.label_94
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	mov	qword ptr [rsp + 0x70], rax
	jne	.label_102
	inc	rbx
	mov	qword ptr [word ptr [rip + optarg]],  rbx
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.38
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15b, 1
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_88:
	cmp	ebx, 0x7a
	je	.label_117
	cmp	ebx, 0x80
	jne	.label_94
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jmp	.label_81
.label_100:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	mov	qword ptr [rsp + 0x70], rax
	jne	.label_120
	inc	rbx
	mov	qword ptr [word ptr [rip + optarg]],  rbx
.label_120:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.38
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	jmp	.label_81
.label_32:
	cmp	ebx, -1
	jne	.label_134
	cmp	r13d, 1
	je	.label_66
	test	r13d, r13d
	jne	.label_113
	lea	eax, [rbp - 1]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	jge	.label_113
.label_66:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_113:
	and	r15b, 1
	mov	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0xc8], r12
	jne	.label_132
	test	r12, r12
	jns	.label_132
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	jne	.label_141
.label_132:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	lea	rax, [r14 + rax*8]
	mov	ecx, OFFSET FLAT:main.default_file_list
	cmovl	rcx, rax
	mov	qword ptr [rsp + 0x98], rcx
	mov	rbx, qword ptr [rcx]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_142
	mov	qword ptr [rsp + 0xc8], r12
	lea	rax, [r12 + 0x2000]
	mov	qword ptr [rsp + 0x60], rax
	lea	rax, [r12 + r12 + 0x4000]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, r12d
	and	eax, 0x1fff
	mov	qword ptr [rsp + 0x18], rax
	mov	ecx, 0x2000
	sub	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	rax, [rcx + r12]
	shr	rax, 0xd
	mov	qword ptr [rsp + 0x58], rax
	inc	rax
	mov	qword ptr [rsp + 0x68], rax
	cmp	rax, 0x10
	mov	ecx, 0x10
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	shr	rax, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	r14b, 1
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_108:
	mov	qword ptr [rsp + 0xb8], rax
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_27
	cmp	byte ptr [rbx + 1], 0
	je	.label_28
.label_27:
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	r15d, eax
	test	r15d, r15d
	jns	.label_31
	call	__errno_location
	mov	r15, rbx
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	jmp	.label_29
.label_28:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	bpl, 1
.label_31:
	mov	dword ptr [rsp + 0xa4], ebp
	mov	qword ptr [rsp + 0xc0], r15
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_44
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	edx, OFFSET FLAT:.str_1
	mov	eax, OFFSET FLAT:.str.54
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.53
	xor	eax, eax
	mov	rcx, rbx
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
.label_44:
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	je	.label_57
	mov	r13d, ebp
	mov	qword ptr [rsp + 0xa8], rbx
	mov	edi, 1
	mov	esi, r15d
	lea	rdx, [rsp + 0xd0]
	call	__fxstat
	test	eax, eax
	je	.label_68
	mov	byte ptr [rsp + 0xa3], r14b
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
.label_138:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_12:
	mov	ebp, r13d
.label_111:
	mov	r14b, byte ptr [rsp + 0xa3]
	jmp	.label_72
	nop	dword ptr [rax + rax]
.label_57:
	mov	qword ptr [rsp + 0xa8], rbx
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	je	.label_54
	mov	dword ptr [rsp + 0xa4], ebp
	mov	r12b, 1
	mov	rax, qword ptr [rsp + 0xc8]
	test	rax, rax
	mov	rbp, rax
	lea	r13, [rsp + 0x160]
	je	.label_62
	nop	dword ptr [rax + rax]
.label_98:
	mov	edx, 0x2000
	mov	edi, r15d
	mov	rsi, r13
	call	safe_read
	cmp	rax, -1
	je	.label_82
	test	rax, rax
	je	.label_62
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_92:
	cmp	rbx, rax
	jae	.label_90
	movsx	edx, byte ptr [rsp + rbx + 0x160]
	inc	rbx
	cmp	edx, ecx
	jne	.label_92
	dec	rbp
	jne	.label_92
	jmp	.label_95
	nop	
.label_90:
	lea	r13, [rsp + 0x160]
	mov	rdi, r13
	mov	rsi, rbx
	call	xwrite_stdout
	test	rbp, rbp
	jne	.label_98
	jmp	.label_62
.label_68:
	mov	byte ptr [rsp + 0xa3], r14b
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	and	al, 1
	mov	rbx, -1
	mov	al, 1
	mov	ebp, r13d
	jne	.label_41
	mov	eax, dword ptr [rsp + 0xe8]
	mov	ecx, 0x2000
	or	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_105
	xor	r12d, r12d
	xor	esi, esi
	mov	edx, 1
	mov	edi, r15d
	mov	rcx, qword ptr [rsp + 0xa8]
	call	elseek
	mov	rbx, rax
	test	rbx, rbx
	js	.label_111
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	jmp	.label_41
.label_54:
	mov	r13, r15
	lea	r15, [rsp + 0x160]
	mov	byte ptr [rsp + 0xa3], r14b
	mov	r12b, 1
	mov	rax, qword ptr [rsp + 0xc8]
	test	rax, rax
	mov	ebx, 0x2000
	mov	r14, rax
	je	.label_116
	nop	word ptr [rax + rax]
.label_129:
	cmp	r14, rbx
	cmovb	rbx, r14
	mov	edi, r13d
	mov	rsi, r15
	mov	rdx, rbx
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_116
	cmp	rbp, -1
	je	.label_126
	mov	rdi, r15
	mov	rsi, rbp
	call	xwrite_stdout
	sub	r14, rbp
	jne	.label_129
	jmp	.label_116
.label_105:
	xor	eax, eax
.label_41:
	mov	r14, qword ptr [rsp + 0x100]
	test	rbx, rbx
	sets	cl
	or	cl, al
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	je	.label_48
	test	cl, 1
	jne	.label_136
	mov	rax, qword ptr [rsp + 0x108]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	r14, rcx
	jle	.label_136
	mov	r12b, 1
	mov	rax, r14
	sub	rax, rbx
	jle	.label_111
	mov	r13d, ebp
	mov	qword ptr [rsp + 0x38], rbx
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	sub	r14, rbx
	xor	r12d, r12d
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0xa8]
	call	elseek
	test	rax, rax
	js	.label_12
	mov	edi, r15d
	lea	rsi, [rsp + 0x2160]
	mov	rdx, rbx
	call	safe_read
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_18
	mov	r12, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0xc8]
	test	rcx, rcx
	je	.label_19
	mov	rsi, rcx
	test	rbp, rbp
	je	.label_23
	lea	rax, [rsp + 0x2160]
	movsx	eax, byte ptr [rbp + rax - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	mov	edx, 0xa
	cmp	eax, ecx
	setne	al
	movzx	eax, al
	mov	rcx, rsi
	mov	rbx, rcx
	sub	rbx, rax
	jmp	.label_26
.label_48:
	mov	r13d, ebp
	test	cl, 1
	jne	.label_34
	mov	rax, qword ptr [rsp + 0x108]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	r14, rcx
	jle	.label_34
	sub	r14, rbx
	mov	ebp, 0
	cmovns	rbp, r14
	mov	r12b, 1
	sub	rbp, qword ptr [rsp + 0xc8]
	jbe	.label_12
	lea	r14, [rsp + 0x160]
	je	.label_12
	nop	word ptr cs:[rax + rax]
.label_69:
	cmp	rbp, 0x2000
	mov	edx, 0x2000
	cmovbe	rdx, rbp
	mov	edi, r15d
	mov	rsi, r14
	call	safe_read
	mov	rbx, rax
	mov	edi, 1
	cmp	rbx, -1
	je	.label_63
	test	rbx, rbx
	jne	.label_61
	mov	edi, 2
	cmp	rbp, rbx
	jne	.label_63
.label_61:
	mov	rdi, r14
	mov	rsi, rbx
	call	xwrite_stdout
	sub	rbp, rbx
	jne	.label_69
	jmp	.label_12
.label_136:
	mov	dword ptr [rsp + 0xa4], ebp
	mov	edi, 0x2018
	call	xmalloc
	mov	rbp, rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + 0x2000], xmm0
	mov	qword ptr [rbp + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	edx, edx
	mov	rcx, rbp
	mov	r12, rbx
	mov	qword ptr [rsp + 0x38], rbx
	jmp	.label_87
.label_34:
	mov	r14, qword ptr [rsp + 0xc8]
	cmp	r14, 0x100000
	ja	.label_107
	mov	qword ptr [rsp + 0x38], rbx
	xor	edx, edx
	movabs	rax, 0x7fffffffffffffff
	mov	rbx, qword ptr [rsp + 0x60]
	div	rbx
	cmp	rax, 1
	jbe	.label_42
	mov	rdi, qword ptr [rsp + 0x28]
	call	xmalloc
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x2160], rax
	mov	rcx, rax
	add	rcx, rbx
	mov	qword ptr [rsp + 0x2168], rcx
	mov	r12b, 1
	xor	r15d, r15d
	mov	rsi, rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x88], rax
	xor	r13d, r13d
	jmp	.label_80
	nop	word ptr [rax + rax]
.label_114:
	xor	r13b, 1
	movzx	eax, r13b
	mov	rsi, qword ptr [rsp + rax*8 + 0x2160]
	xor	r12d, r12d
.label_80:
	mov	qword ptr [rsp + 0xb0], rsi
	movzx	r13d, r13b
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rdx, rbp
	call	full_read
	mov	rbx, rax
	cmp	rbx, rbp
	mov	eax, 0
	jae	.label_96
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	r15d, r15d
	jne	.label_99
	mov	rax, r14
	sub	rax, rbx
	mov	ecx, 0
	cmovb	rax, rcx
	test	r12b, r12b
	cmovne	rax, rcx
	mov	r15b, 1
.label_96:
	test	r12b, r12b
	jne	.label_21
	mov	rsi, r14
	sub	rsi, rax
	add	qword ptr [rsp + 0x88], rsi
	mov	rax, r13
	xor	rax, 1
	mov	rdi, qword ptr [rsp + rax*8 + 0x2160]
	add	rdi, 0x2000
	call	xwrite_stdout
.label_21:
	sub	rbx, r14
	jbe	.label_109
	add	qword ptr [rsp + 0x88], rbx
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, rbx
	call	xwrite_stdout
.label_109:
	test	r15b, 1
	je	.label_114
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
	jmp	.label_91
.label_107:
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	mov	qword ptr [rsp + 0x88], rbx
	mov	qword ptr [rsp + 0x38], rbx
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	r13d, 1
	xor	r15d, r15d
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	nop	word ptr cs:[rax + rax]
.label_22:
	cmp	rbx, r15
	jne	.label_143
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0xb0]
	je	.label_127
	cmp	rbx, qword ptr [rsp + 0x30]
	lea	rbp, [rbx + rbx]
	cmova	rbp, qword ptr [rsp + 0x68]
.label_127:
	mov	rax, rbp
	shr	rax, 0x3c
	jne	.label_42
	lea	rsi, [rbp*8]
	call	xrealloc
	mov	r12, rax
	mov	rbx, rbp
	jmp	.label_137
	nop	dword ptr [rax + rax]
.label_143:
	mov	r12, qword ptr [rsp + 0xb0]
.label_137:
	test	r14b, 1
	jne	.label_139
	mov	edi, 0x2000
	call	xmalloc
	mov	rsi, rax
	mov	qword ptr [r12 + r15*8], rsi
	lea	rax, [r15 + 1]
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_104
	nop	word ptr [rax + rax]
.label_139:
	mov	rsi, qword ptr [r12 + r15*8]
.label_104:
	mov	qword ptr [rsp + 0x78], r14
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0xc0]
	call	full_read
	mov	qword ptr [rsp + 0x80], rax
	cmp	rax, 0x1fff
	ja	.label_146
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
	test	ebp, ebp
	jne	.label_9
.label_146:
	mov	qword ptr [rsp + 0xb0], r12
	cmp	r15, qword ptr [rsp + 0x58]
	mov	r14b, 1
	je	.label_39
	mov	rax, qword ptr [rsp + 0x78]
	mov	r14b, al
.label_39:
	mov	r12b, r14b
	and	r12b, 1
	mov	rbp, r13
	je	.label_15
	mov	rsi, qword ptr [rsp + 0x80]
	add	qword ptr [rsp + 0x88], rsi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rdi, qword ptr [rax + rbp*8]
	call	xwrite_stdout
.label_15:
	lea	rax, [rbp + 1]
	xor	edx, edx
	div	qword ptr [rsp + 0x68]
	mov	r13, rdx
	mov	rax, qword ptr [rsp + 0x90]
	test	al, 1
	mov	r15, rbp
	je	.label_22
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r15, qword ptr [rsp + 0xc0]
	mov	r14d, dword ptr [rsp + 0xa4]
	je	.label_124
	test	r12b, r12b
	jne	.label_33
	cmp	rbp, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0xb0]
	jne	.label_35
	mov	rsi, qword ptr [rsp + 0x80]
	sub	rsi, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x88], rsi
	mov	rdi, qword ptr [r12 + r13*8]
	jmp	.label_37
.label_95:
	mov	rbp, rbx
	sub	rbp, rax
	mov	edx, 1
	mov	edi, r15d
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	jns	.label_46
	mov	edi, 1
	mov	esi, r15d
	lea	rdx, [rsp + 0x2160]
	call	__fxstat
	test	eax, eax
	jne	.label_50
	mov	eax, dword ptr [rsp + 0x2178]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_46
.label_50:
	mov	edx, 1
	mov	edi, r15d
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0xa8]
	call	elseek
.label_46:
	lea	rdi, [rsp + 0x160]
	mov	rsi, rbx
	call	xwrite_stdout
	jmp	.label_62
.label_126:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_116:
	mov	r14b, byte ptr [rsp + 0xa3]
	mov	r15, r13
.label_62:
	mov	ebp, dword ptr [rsp + 0xa4]
	jmp	.label_72
.label_82:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_62
.label_99:
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
.label_91:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	r15, qword ptr [rsp + 0xc0]
	mov	ebp, dword ptr [rsp + 0xa4]
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_84
.label_9:
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	r15, qword ptr [rsp + 0xc0]
	mov	r14d, dword ptr [rsp + 0xa4]
	jmp	.label_35
.label_124:
	mov	r12, qword ptr [rsp + 0xb0]
	jmp	.label_35
.label_33:
	mov	esi, 0x2000
	mov	rcx, qword ptr [rsp + 0x80]
	sub	rsi, rcx
	add	qword ptr [rsp + 0x88], rax
	mov	r12, qword ptr [rsp + 0xb0]
	mov	rdi, qword ptr [r12 + rbp*8]
	add	rdi, rcx
	mov	rbp, rax
	sub	rbp, rsi
	jae	.label_106
	mov	rsi, rax
	jmp	.label_37
.label_63:
	mov	rsi, qword ptr [rsp + 0xa8]
	call	diagnose_copy_fd_failure
	xor	r12d, r12d
	jmp	.label_12
.label_106:
	call	xwrite_stdout
	mov	rdi, qword ptr [r12 + r13*8]
	mov	rsi, rbp
.label_37:
	call	xwrite_stdout
.label_35:
	mov	rbp, qword ptr [rsp + 0x48]
	test	rbp, rbp
	mov	rbx, r12
	je	.label_118
	nop	dword ptr [rax + rax]
.label_121:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 8
	dec	rbp
	jne	.label_121
.label_118:
	mov	rdi, r12
	call	free
	mov	rax, qword ptr [rsp + 0x38]
	mov	ebp, r14d
.label_84:
	test	rax, rax
	js	.label_125
	xor	ebx, ebx
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xa8]
	call	elseek
	test	rax, rax
	js	.label_128
	mov	rax, qword ptr [rsp + 0x90]
	mov	bl, al
.label_128:
	mov	r12b, bl
	and	r12b, 1
	mov	r14b, byte ptr [rsp + 0xa3]
	jmp	.label_72
.label_125:
	mov	r12, qword ptr [rsp + 0x90]
	and	r12b, 1
	mov	r14b, byte ptr [rsp + 0xa3]
	jmp	.label_72
.label_18:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	jmp	.label_138
.label_19:
	mov	edx, 0xa
	mov	rbx, rcx
	jmp	.label_26
.label_23:
	mov	edx, 0xa
	mov	rcx, rsi
	mov	rbx, rcx
.label_26:
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	r15d, 0
	cmovne	r15d, edx
	nop	dword ptr [rax + rax]
.label_13:
	test	rbp, rbp
	je	.label_20
	test	rcx, rcx
	je	.label_145
	lea	rdi, [rsp + 0x2160]
	mov	esi, r15d
	mov	rdx, rbp
	mov	rbp, rcx
	call	memrchr
	mov	rcx, rbp
	mov	rbp, rax
	test	rbp, rbp
	je	.label_20
	lea	rax, [rsp + 0x2160]
	sub	rbp, rax
	jmp	.label_10
	nop	dword ptr [rax + rax]
.label_145:
	dec	rbp
.label_10:
	dec	rbx
	cmp	rbx, -1
	jne	.label_13
	jmp	.label_14
.label_20:
	cmp	r14, qword ptr [rsp + 0x38]
	je	.label_16
	add	r14, -0x2000
	xor	r12d, r12d
	xor	edx, edx
	mov	r15, qword ptr [rsp + 0xc0]
	mov	edi, r15d
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0xa8]
	call	elseek
	test	rax, rax
	js	.label_12
	mov	edx, 0x2000
	mov	edi, r15d
	lea	rsi, [rsp + 0x2160]
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	mov	r12b, 1
	je	.label_12
	mov	edx, 0xa
	mov	r12, qword ptr [rsp + 0x50]
	cmp	rbp, -1
	mov	rcx, qword ptr [rsp + 0xc8]
	jne	.label_26
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0xc0]
	jmp	.label_12
.label_14:
	mov	qword ptr [rsp + 0xc8], rcx
	mov	rsi, qword ptr [rsp + 0x38]
	cmp	r14, rsi
	mov	qword ptr [rsp + 0x50], r12
	mov	rbx, qword ptr [rsp + 0xa8]
	jle	.label_47
	xor	r12d, r12d
	xor	edx, edx
	mov	r15, qword ptr [rsp + 0xc0]
	mov	edi, r15d
	mov	rcx, rbx
	call	elseek
	test	rax, rax
	js	.label_12
	lea	r12, [rsp + 0x160]
	mov	r15, r14
	sub	r15, qword ptr [rsp + 0x38]
	je	.label_24
.label_71:
	cmp	r15, 0x2000
	mov	edx, 0x2000
	cmovbe	rdx, r15
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rsi, r12
	call	safe_read
	mov	rbx, rax
	mov	edi, 1
	cmp	rbx, -1
	je	.label_45
	test	rbx, rbx
	jne	.label_70
	mov	edi, 2
	cmp	r15, rbx
	jne	.label_45
.label_70:
	mov	rdi, r12
	mov	rsi, rbx
	call	xwrite_stdout
	sub	r15, rbx
	jne	.label_71
.label_24:
	mov	rbx, qword ptr [rsp + 0xa8]
.label_47:
	mov	qword ptr [rsp + 0xa8], rbx
	lea	rsi, [rbp + 1]
	lea	rdi, [rsp + 0x2160]
	call	xwrite_stdout
	lea	rsi, [r14 + rbp + 1]
	xor	edx, edx
	mov	r15, qword ptr [rsp + 0xc0]
	mov	edi, r15d
	mov	rcx, rbx
	call	elseek
	test	rax, rax
	setns	r12b
	jmp	.label_12
.label_45:
	mov	rsi, qword ptr [rsp + 0xa8]
	call	diagnose_copy_fd_failure
	xor	r12d, r12d
	mov	r15, qword ptr [rsp + 0xc0]
	jmp	.label_12
.label_16:
	mov	qword ptr [rsp + 0xc8], rcx
	mov	qword ptr [rsp + 0x50], r12
	mov	r15, qword ptr [rsp + 0xc0]
	mov	r12b, 1
	jmp	.label_12
.label_11:
	mov	r14, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [r14 + 0x2000]
	add	r12, rsi
	mov	rdi, r14
	call	xwrite_stdout
	mov	rdx, qword ptr [rsp + 0x90]
	sub	rdx, qword ptr [r14 + 0x2008]
	mov	rax, r14
	mov	rcx, qword ptr [r14 + 0x2010]
	mov	r15, qword ptr [rsp + 0xc0]
	nop	dword ptr [rax]
.label_87:
	mov	qword ptr [rsp + 0x90], rdx
	mov	qword ptr [rsp + 0x88], rcx
	lea	rcx, [rcx + 0x2008]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rbx, rbp
	jmp	.label_93
.label_144:
	mov	edi, 0x2018
	call	xmalloc
	mov	rbx, rbp
	mov	r15, qword ptr [rsp + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_93:
	mov	qword ptr [rsp + 0x80], rbx
	mov	rbp, rax
	lea	r13, [rbp + 0x2008]
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_112:
	add	r12, r14
	mov	rdi, rbp
	mov	rsi, r14
	call	xwrite_stdout
.label_103:
	mov	edx, 0x2000
	mov	edi, r15d
	mov	rsi, rbp
	call	safe_read
	mov	r14, rax
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_110
	mov	rax, qword ptr [rsp + 0xc8]
	test	rax, rax
	je	.label_112
	mov	qword ptr [rsp + 0xb0], r12
	mov	qword ptr [rbp + 0x2000], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	ebx, 0
	mov	eax, 0xa
	cmovne	ebx, eax
	mov	rdi, rbp
	mov	esi, ebx
	mov	rdx, r14
	call	memchr
	test	rax, rax
	je	.label_123
	lea	r12, [rbp + r14]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_130:
	inc	rax
	inc	r15
	mov	qword ptr [r13], r15
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebx
	call	memchr
	test	rax, rax
	jne	.label_130
	jmp	.label_131
.label_123:
	xor	r15d, r15d
.label_131:
	mov	rcx, qword ptr [rsp + 0x90]
	add	rcx, r15
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rbx + 0x2000]
	mov	rax, r14
	add	rax, rdi
	cmp	rax, 0x1fff
	ja	.label_133
	mov	qword ptr [rsp + 0x90], rcx
	add	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcpy
	movdqu	xmm0, xmmword ptr [rbp + 0x2000]
	movdqu	xmm1, xmmword ptr [rbx + 0x2000]
	paddq	xmm1, xmm0
	movdqu	xmmword ptr [rbx + 0x2000], xmm1
	mov	r15, qword ptr [rsp + 0xc0]
	mov	r12, qword ptr [rsp + 0xb0]
	jmp	.label_103
.label_133:
	mov	qword ptr [rbx + 0x2010], rbp
	mov	rax, rcx
	mov	qword ptr [rsp + 0x90], rcx
	mov	rcx, qword ptr [rsp + 0x78]
	sub	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0xc8]
	mov	r12, qword ptr [rsp + 0xb0]
	jbe	.label_144
	jmp	.label_11
.label_110:
	mov	rdi, rbp
	call	free
	cmp	r14, -1
	je	.label_52
	mov	rax, qword ptr [rbx + 0x2000]
	test	rax, rax
	je	.label_56
	movsx	eax, byte ptr [rax + rbx - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	cmp	eax, ecx
	mov	rdx, qword ptr [rsp + 0x90]
	je	.label_17
	inc	qword ptr [rbx + 0x2008]
	inc	rdx
.label_17:
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	r8, qword ptr [rsp + 0x78]
	jmp	.label_25
.label_52:
	mov	qword ptr [rsp + 0xb0], r12
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_38
.label_56:
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	r8, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x90]
.label_25:
	mov	r14, qword ptr [r8]
	mov	rax, rdx
	sub	rax, r14
	cmp	rax, rcx
	mov	rbp, qword ptr [rsp + 0x88]
	jbe	.label_43
	nop	dword ptr [rax + rax]
.label_53:
	mov	rsi, qword ptr [rbp + 0x2000]
	add	r12, rsi
	mov	rdi, rbp
	mov	rbx, rcx
	mov	r14, r8
	mov	r13, rdx
	call	xwrite_stdout
	mov	rdx, r13
	mov	rcx, rbx
	sub	rdx, qword ptr [r14]
	mov	rbp, qword ptr [rbp + 0x2010]
	lea	r8, [rbp + 0x2008]
	mov	r14, qword ptr [rbp + 0x2008]
	mov	rax, rdx
	sub	rax, r14
	cmp	rax, rcx
	ja	.label_53
.label_43:
	mov	qword ptr [rsp + 0xb0], r12
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
	cmp	rdx, rcx
	jbe	.label_59
	mov	qword ptr [rsp + 0xc0], r15
	mov	ecx, 0xa
	mov	rsi, rbp
	je	.label_65
	mov	r12, qword ptr [rbp + 0x2000]
	add	r12, rbp
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	ebx, 0
	cmovne	ebx, ecx
	inc	r14
	mov	r13, qword ptr [rsp + 0xc8]
	sub	r13, rdx
	mov	rax, rbp
	nop	dword ptr [rax]
.label_76:
	mov	r15, r8
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebx
	call	memchr
	mov	r8, r15
	test	rax, rax
	mov	esi, 0
	je	.label_65
	inc	rax
	mov	qword ptr [r8], r14
	inc	r14
	inc	r13
	mov	rsi, rax
	jne	.label_76
.label_65:
	sub	rsi, rbp
	add	qword ptr [rsp + 0xb0], rsi
	mov	rdi, rbp
	call	xwrite_stdout
	mov	r15, qword ptr [rsp + 0xc0]
	jmp	.label_38
.label_59:
	mov	qword ptr [rsp + 0xc8], rcx
.label_38:
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x88]
	test	rdi, rdi
	je	.label_79
	nop	dword ptr [rax + rax]
.label_101:
	mov	rbp, qword ptr [rdi + 0x2010]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_101
.label_79:
	test	rbx, rbx
	js	.label_83
	xor	ebp, ebp
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0xa8]
	call	elseek
	test	rax, rax
	js	.label_85
	mov	rax, qword ptr [rsp + 0x90]
	mov	bpl, al
.label_85:
	mov	r12b, bpl
	jmp	.label_89
.label_83:
	mov	r12, qword ptr [rsp + 0x90]
.label_89:
	and	r12b, 1
	mov	ebp, dword ptr [rsp + 0xa4]
	mov	r14b, byte ptr [rsp + 0xa3]
	nop	word ptr cs:[rax + rax]
.label_72:
	test	bpl, bpl
	jne	.label_97
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_97
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
.label_29:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_97:
	and	r14b, r12b
	mov	rax, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbx, qword ptr [rax + rcx*8 + 8]
	mov	rax, rcx
	inc	rax
	test	rbx, rbx
	jne	.label_108
.label_142:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_115
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_119
.label_115:
	movzx	eax, r14b
	xor	eax, 1
	add	rsp, 0x4168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_42:
	call	xalloc_die
.label_134:
	cmp	ebx, 0xffffff7d
	je	.label_122
	cmp	ebx, 0xffffff7e
	jne	.label_94
	xor	edi, edi
	call	usage
.label_122:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_94:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_135
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_135:
	mov	edi, 1
	call	usage
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [rbx]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
	mov	edi, 1
	call	usage
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x2160]
	mov	rdi, r12
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_119:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403060

	.globl elseek
	.type elseek, @function
elseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	r14, rsi
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_147
	call	__errno_location
	mov	r12d, dword ptr [rax]
	test	ebp, ebp
	mov	eax, OFFSET FLAT:.str.55
	mov	esi, OFFSET FLAT:.str.56
	cmove	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	r15, rax
	lea	rsi, [rsp]
	mov	rdi, r14
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_147:
	mov	rax, rbx
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
	.align	32
	#Procedure 0x403100

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_148
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_149
.label_148:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_149:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.59
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	cmp	edi, 2
	je	.label_150
	cmp	edi, 1
	jne	.label_151
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	jmp	.label_152
.label_150:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
.label_152:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	pop	rbx
	pop	r14
	pop	rbp
	jmp	error
.label_151:
	call	abort
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403210
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403220
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403230

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_156
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_155
	cmp	dword ptr [rbp], 0x20
	jne	.label_155
.label_156:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_154
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_153
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_154:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_153:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032f0

	.globl full_read
	.type full_read, @function
full_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_157
	nop	word ptr [rax + rax]
.label_159:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_read
	cmp	rax, -1
	je	.label_157
	test	rax, rax
	je	.label_158
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_159
	jmp	.label_157
.label_158:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_157:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403350

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_160
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_161:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_161
	jmp	.label_163
.label_160:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_162:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_162
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_163:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403410

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_164:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_164
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403460

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_165
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_166
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_166
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_167
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_167:
	mov	rbx, r14
.label_166:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_165:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403510
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
	#Procedure 0x403550
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
	#Procedure 0x403560
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
	#Procedure 0x403570
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
	#Procedure 0x4035b0
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
	#Procedure 0x4035d0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_168
	test	rdx, rdx
	je	.label_168
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_168:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403600
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403680

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
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_191:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_255
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_257]]
.label_441:
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_442:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_277
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_277
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_173:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_276
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_276:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_173
.label_277:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_187
.label_434:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_187
.label_437:
	mov	al, 1
.label_435:
	mov	r12b, 1
.label_438:
	test	r12b, 1
	mov	cl, 1
	je	.label_212
	mov	cl, al
.label_212:
	mov	al, cl
.label_436:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_215
	test	r10, r10
	je	.label_219
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_190
.label_215:
	xor	ecx, ecx
	jmp	.label_190
.label_439:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_226
	test	r10, r10
	je	.label_232
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_234
.label_440:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_187
.label_219:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_190:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_187
.label_226:
	xor	eax, eax
	jmp	.label_234
.label_232:
	mov	eax, 1
.label_234:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_187:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_267
.label_208:
	inc	rdi
.label_267:
	cmp	rbp, -1
	je	.label_179
	cmp	rdi, rbp
	jne	.label_181
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_179:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_189
.label_181:
	test	r12b, r12b
	je	.label_194
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_198
	cmp	rbp, -1
	jne	.label_198
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_198:
	cmp	rbx, rbp
	jbe	.label_222
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_224
	nop	word ptr [rax + rax]
.label_194:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_224
.label_222:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_251
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_224
	jmp	.label_202
.label_251:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_224:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_239
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_272]]
.label_458:
	test	rdi, rdi
	jne	.label_218
	jmp	.label_279
.label_462:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_281
	test	rdi, rdi
	jne	.label_283
	cmp	rbp, 1
	je	.label_279
	xor	r13d, r13d
	jmp	.label_172
.label_451:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_286
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_202
	cmp	r9d, 2
	jne	.label_291
	mov	al, r14b
	and	al, 1
	jne	.label_290
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_171
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_171:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_200
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_200:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_271
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_201
.label_452:
	mov	bl, 0x62
	jmp	.label_210
.label_453:
	mov	cl, 0x74
	jmp	.label_193
.label_454:
	mov	bl, 0x76
	jmp	.label_210
.label_455:
	mov	bl, 0x66
	jmp	.label_210
.label_456:
	mov	cl, 0x72
	jmp	.label_193
.label_459:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_216
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_292
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_225
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_225:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_248
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_248:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_280
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_280:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_216:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_172
.label_460:
	cmp	r9d, 5
	je	.label_258
	cmp	r9d, 2
	jne	.label_218
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_218
	jmp	.label_263
.label_461:
	cmp	r9d, 2
	jne	.label_265
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_268
	jmp	.label_273
.label_239:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_274
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_254:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_170
	test	cl, cl
	je	.label_170
	xor	eax, eax
	jmp	.label_172
.label_281:
	test	rdi, rdi
	jne	.label_176
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_176
.label_279:
	mov	dl, 1
.label_457:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_242
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_172
.label_286:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_208
	jmp	.label_218
.label_265:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_193
.label_268:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_199
.label_193:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_203
.label_210:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_172
	jmp	.label_213
.label_274:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_214
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_214:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_278:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_247
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_250
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_253
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_209
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_264:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_260
	bt	rsi, rdx
	jb	.label_262
.label_260:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_264
.label_209:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_244
	xor	r13d, r13d
.label_244:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_278
	jmp	.label_254
.label_176:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_172
.label_258:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_218
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_218
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_218
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_293
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_174
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_178
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_183
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_183:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_192
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_192:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_205
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_205:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_197
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_197:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_172
.label_218:
	xor	eax, eax
	xor	r13d, r13d
.label_172:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_229
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_231
	jmp	.label_235
	nop	word ptr [rax + rax]
.label_229:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_235
.label_231:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_241
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_249
	nop	word ptr cs:[rax + rax]
.label_235:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_249:
	mov	bl, r15b
	je	.label_199
	jmp	.label_213
.label_241:
	mov	bl, r15b
.label_213:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_202
	cmp	r9d, 2
	jne	.label_256
	mov	al, r14b
	and	al, 1
	jne	.label_256
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_289
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_289:
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
	jae	.label_270
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_270:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_256:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_282
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_282:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_243
.label_283:
	xor	r13d, r13d
	jmp	.label_172
.label_170:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_288
	nop	word ptr [rax + rax]
.label_284:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_288:
	test	cl, cl
	je	.label_175
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_177
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_180
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_180:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_177
	nop	word ptr [rax + rax]
.label_175:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_202
	cmp	r9d, 2
	jne	.label_207
	mov	al, r14b
	and	al, 1
	jne	.label_207
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_211
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_211:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_186
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_186:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_223
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_223:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_207:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_238
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_238:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_246
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_246:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_287
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_287:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_177:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_199
	test	r14b, 1
	je	.label_240
	mov	bl, al
	and	bl, 1
	jne	.label_240
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_206
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_206:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_275
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_275:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_240:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_284
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_284
	nop	dword ptr [rax]
.label_199:
	test	r14b, 1
	je	.label_169
	and	al, 1
	jne	.label_169
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_188
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_188:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_236:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_169:
	mov	bl, r15b
.label_243:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_195
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_195:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_208
.label_291:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_201
.label_290:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_201:
	cmp	rcx, r10
	jae	.label_217
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_217:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_221
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_230
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_233
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_237
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_237:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_245
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_245:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_172
.label_221:
	xor	r13d, r13d
	jmp	.label_172
.label_230:
	xor	r13d, r13d
	jmp	.label_172
.label_233:
	xor	r13d, r13d
	jmp	.label_172
.label_250:
	xor	r13d, r13d
.label_247:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_254
.label_253:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_259
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_252:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_266
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_252
	xor	r13d, r13d
	jmp	.label_254
.label_259:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_254
.label_266:
	xor	r13d, r13d
	jmp	.label_254
.label_293:
	xor	r13d, r13d
	jmp	.label_172
.label_174:
	xor	r13d, r13d
	jmp	.label_172
	nop	dword ptr [rax]
.label_182:
	mov	r13, rdi
.label_189:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_285
	or	al, dl
	je	.label_196
.label_285:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_184
	or	al, dl
	jne	.label_184
	test	r8b, 1
	jne	.label_185
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_184
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_191
.label_184:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_204
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_204
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_204
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_220:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_261
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_261:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_220
.label_204:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_227
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_227
.label_242:
	mov	r9d, 2
	jmp	.label_202
.label_262:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_202
.label_196:
	mov	rbp, r13
	jmp	.label_202
.label_203:
	mov	r9d, 2
.label_202:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_269:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_227:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_185:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_269
.label_292:
	mov	r9d, 2
	jmp	.label_202
.label_273:
	mov	r9d, 2
	jmp	.label_202
.label_263:
	mov	r9d, 2
	jmp	.label_202
.label_178:
	mov	r9d, 5
	jmp	.label_202
.label_255:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404810
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x4048e0
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
	call	xmalloc
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
	je	.label_294
	mov	qword ptr [rax], rbx
.label_294:
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
	#Procedure 0x4049e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_295
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_297:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_297
.label_295:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_299
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_298]], OFFSET FLAT:slot0
.label_299:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_296
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_296:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
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
	js	.label_300
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_305
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_301
.label_305:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_304
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
	jne	.label_303
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_303:
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
.label_301:
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
	ja	.label_306
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_302
	mov	rdi, rbx
	call	free
.label_302:
	mov	rdi, r14
	call	xmalloc
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
.label_306:
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
.label_300:
	call	abort
.label_304:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c60
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c70
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
	.align	32
	#Procedure 0x404c90
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
	.align	32
	#Procedure 0x404cb0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_307
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_307:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d20
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_308
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_308:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_309
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_309:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_310
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_310:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e70
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	.align	32
	#Procedure 0x404ee0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	.align	32
	#Procedure 0x404f50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x404fb0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x405010

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_314
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_314:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_315
	test	rdx, rdx
	je	.label_315
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_315:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405130
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_316
	test	rdx, rdx
	je	.label_316
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_316:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_317
	test	rsi, rsi
	je	.label_317
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_317:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405210
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_311]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_318
	test	rsi, rsi
	je	.label_318
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
.label_318:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405280
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405290
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
	.align	32
	#Procedure 0x4052b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

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
	.align	32
	#Procedure 0x4052f0

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
	jne	.label_320
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_321
	cmp	ecx, 0x55
	jne	.label_319
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_319
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_319
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_319
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_319
	cmp	byte ptr [rax + 5], 0
	jne	.label_319
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_320
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_320
.label_321:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_319
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_319
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_319
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_319
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_319
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_319
	cmp	byte ptr [rax + 7], 0
	je	.label_322
.label_319:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_320:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_322:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_320
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_320
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_324:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_323
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_324
	cmp	rbx, 0x7ff00001
	jb	.label_323
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_324
.label_323:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405440

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
	je	.label_325
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_334
.label_325:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_334:
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
	ja	.label_328
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_330]]
.label_499:
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
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_327
.label_500:
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
.label_501:
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
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_331
.label_503:
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
	jmp	.label_326
.label_504:
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
	jmp	.label_333
.label_505:
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
.label_333:
	mov	qword ptr [rsp + 0x10], rdi
.label_326:
	mov	qword ptr [rsp + 8], rsi
.label_331:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_329
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_327:
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
	jmp	.label_332
.label_506:
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
.label_332:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_329:
	call	__fprintf_chk
.label_498:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405730
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_335:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_335
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405760
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_338:
	cmp	r10d, 0x28
	ja	.label_336
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_337
	nop	word ptr cs:[rax + rax]
.label_336:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_337:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_339
	inc	r9
	cmp	r9, 0xa
	jb	.label_338
.label_339:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4057c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_340
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_340:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_342:
	cmp	r8d, 0x28
	ja	.label_341
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_344
	nop	
.label_341:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_344:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_343
	inc	r9
	cmp	r9, 0xa
	jb	.label_342
.label_343:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c0
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
	mov	esi, OFFSET FLAT:.str.19
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
	#Procedure 0x405940
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_345
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_346
	test	rax, rax
	je	.label_345
.label_346:
	pop	rbx
	ret	
.label_345:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405980

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_347
	test	rax, rax
	je	.label_348
.label_347:
	pop	rbx
	ret	
.label_348:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_349
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_350
	test	rbx, rbx
	jne	.label_350
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_350:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_351
	test	rax, rax
	je	.label_349
.label_351:
	pop	rbx
	ret	
.label_349:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_352
	test	rbx, rbx
	jne	.label_352
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_352:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_354
	test	rax, rax
	je	.label_353
.label_354:
	pop	rbx
	ret	
.label_353:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405a20
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_355
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_359
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_356
.label_355:
	test	rcx, rcx
	jne	.label_360
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_360:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_358
.label_356:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_357
	test	rbx, rbx
	jne	.label_357
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_357:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_361
	test	rax, rax
	je	.label_359
.label_361:
	pop	rbx
	ret	
.label_359:
	call	xalloc_die
.label_358:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ac0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_362
	test	rax, rax
	je	.label_363
.label_362:
	pop	rbx
	ret	
.label_363:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ae0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_364
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_367
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_368
	call	free
	xor	eax, eax
	jmp	.label_365
.label_364:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_366
	mov	qword ptr [rsi], rbx
.label_368:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	je	.label_366
.label_365:
	pop	rbx
	ret	
.label_366:
	call	xalloc_die
.label_367:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b50
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
	je	.label_370
	test	r14, r14
	je	.label_369
.label_370:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_369:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_371
	call	rpl_calloc
	test	rax, rax
	je	.label_371
	pop	rcx
	ret	
.label_371:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0

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
	je	.label_372
	test	r15, r15
	je	.label_373
.label_372:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_373:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c00
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
	je	.label_375
	test	r15, r15
	je	.label_374
.label_375:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_374:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c50

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405c80

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
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_377
	cmp	eax, 1
	je	.label_379
	cmp	eax, 3
	jne	.label_381
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_376
.label_379:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_376
.label_377:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_380
	cmp	rbx, r15
	jbe	.label_382
.label_380:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_378
	mov	dword ptr [rax], 0x4b
	jmp	.label_376
.label_381:
	call	__errno_location
	jmp	.label_376
.label_378:
	mov	dword ptr [rax], 0x22
.label_376:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_382:
	mov	rax, rbx
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
	.align	32
	#Procedure 0x405d50

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
	.align	32
	#Procedure 0x405d80

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_383
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_404:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_404
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_396
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_390
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_395
	cmp	eax, 0x22
	jne	.label_396
	mov	dword ptr [rsp + 4], 1
.label_395:
	test	r14, r14
	jne	.label_398
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_396
.label_390:
	test	r14, r14
	je	.label_396
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_396
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_396
.label_398:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_386
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_392
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_388
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_388
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_388
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_385
	cmp	eax, 0x44
	je	.label_385
	cmp	eax, 0x69
	jne	.label_388
	movzx	eax, byte ptr [r12 + 2]
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_400
	mov	ecx, 1
.label_400:
	mov	esi, 0x400
	jmp	.label_388
.label_386:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_397
.label_385:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_388:
	cmp	r13d, 0x59
	jg	.label_394
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_403
	jmp	qword ptr [word ptr [+ (rax * 8) + label_407]]
.label_479:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_405
.label_394:
	cmp	r13d, 0x73
	jg	.label_406
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_408
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_384]]
.label_445:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_405:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_393
.label_403:
	cmp	r13d, 0x54
	je	.label_387
	cmp	r13d, 0x59
	jne	.label_392
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_401
.label_406:
	cmp	r13d, 0x74
	je	.label_387
	cmp	r13d, 0x77
	jne	.label_392
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_393
.label_446:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_402
.label_447:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_391
.label_448:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_399
.label_387:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_409
.label_408:
	cmp	r13d, 0x5a
	jne	.label_392
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_401:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_391
.label_392:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_396
.label_480:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_399
.label_481:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_409:
	or	dl, r10b
.label_402:
	or	dl, bl
.label_399:
	and	dl, 1
	movzx	eax, dl
.label_391:
	mov	rbp, rsi
.label_393:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_389
	or	eax, 2
.label_389:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_397:
	mov	qword ptr [rax], rbp
.label_396:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_383:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406430

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_410
	test	rsi, rsi
	mov	ecx, 1
	je	.label_411
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_411
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_410:
	mov	ecx, 1
.label_411:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406480

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
	je	.label_412
	cmp	r15, -2
	jb	.label_412
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_412
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_412:
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
	#Procedure 0x4064e0

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
	jne	.label_414
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_413
	test	cl, cl
	jne	.label_413
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_413
.label_414:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_413
	call	__errno_location
	mov	dword ptr [rax], 0
.label_413:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406540

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_416
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_417
	cmp	byte ptr [rax + 1], 0
	je	.label_415
.label_417:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_416
.label_415:
	xor	ebx, ebx
.label_416:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406580

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_1
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_418
	mov	rax, rcx
.label_418:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_419
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_421
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_419
.label_421:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_419
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_420
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_420:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_419:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406630

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_422
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_422
	test	byte ptr [rbx + 1], 1
	je	.label_422
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_422:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406670

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
	jne	.label_423
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_423
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_424
.label_423:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_424:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_425
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_425:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x4066e0

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