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
	jne	.label_21
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
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
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_15
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_21:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	.align	32
	#Procedure 0x401810

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	r12d, edi
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0x78], rax
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_49
	call	setlocale
	mov	edi, OFFSET FLAT:label_58
	mov	esi, OFFSET FLAT:label_151
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_58
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	xor	r14d, r14d
	xor	eax, eax
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_123:
	mov	al, 1
.label_78:
	mov	qword ptr [rsp + 0x68], rax
	jmp	.label_88
	nop	dword ptr [rax]
.label_91:
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_88
.label_536:
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_91
	nop	dword ptr [rax]
.label_88:
	mov	edx, OFFSET FLAT:label_104
	mov	ecx, OFFSET FLAT:main.long_options
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x40
	jle	.label_106
	add	eax, -0x41
	cmp	eax, 0x35
	ja	.label_31
	jmp	qword ptr [(rax * 8) + label_113]
.label_539:
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_91
.label_540:
	mov	al, 1
	mov	qword ptr [rsp + 0x80], rax
	jmp	.label_88
.label_541:
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_537:
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_88
.label_542:
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_88
	nop	
.label_538:
	mov	r14b, 1
	jmp	.label_123
.label_106:
	cmp	eax, -1
	jne	.label_131
	lea	rdx, [rsp + 0xd8]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	test	eax, eax
	js	.label_137
	mov	rax, qword ptr [rsp + 0x110]
	movabs	r13, 0x2000000000000001
	cmp	rax, r13
	mov	ecx, 0x200
	mov	r15d, 0x200
	cmovb	r15, rax
	test	rax, rax
	cmovle	r15, rcx
	cmp	rax, r13
	mov	ecx, 0x20000
	cmovae	r15, rcx
	test	rax, rax
	cmovle	r15, rcx
	cmp	rax, 0x20000
	cmovl	r15, rcx
	mov	rax, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rax, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp + 0xb0], rax
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0x8c], eax
	mov	rdx, qword ptr [rsp + 0x68]
	test	dl, dl
	sete	al
	mov	qword ptr [rip + infile], OFFSET FLAT:label_141
	mov	rcx, qword ptr [rsp + 0x48]
	mov	ebx, ecx
	mov	rcx, qword ptr [rsp + 0x50]
	or	bl, cl
	mov	rcx, qword ptr [rsp + 0x28]
	or	bl, cl
	mov	rcx, qword ptr [rsp + 0x80]
	or	bl, cl
	or	bl, dl
	mov	byte ptr [rsp + 0x27], bl
	mov	rcx, qword ptr [rsp + 0x78]
	lea	rdx, [rcx - 1]
	mov	qword ptr [rsp + 0xa0], rdx
	lea	rcx, [rcx + r15 + 0x12]
	mov	qword ptr [rsp + 0xa8], rcx
	test	r14b, r14b
	setne	cl
	or	cl, al
	mov	byte ptr [rsp + 0x17], cl
	movsxd	rax, dword ptr [rip + optind]
	movsxd	rcx, r12d
	mov	dl, 1
	mov	qword ptr [rsp + 0x38], rdx
	xor	edx, edx
	mov	qword ptr [rsp + 0x90], rdx
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0xc8], rcx
	nop	word ptr [rax + rax]
.label_146:
	cmp	rax, rcx
	mov	qword ptr [rsp + 0xd0], rax
	jge	.label_173
	mov	rdi, qword ptr [rbp + rax*8]
	mov	qword ptr [rip + infile],  rdi
	jmp	.label_108
	nop	dword ptr [rax + rax]
.label_173:
	mov	rdi, qword ptr [rip + infile]
.label_108:
	cmp	byte ptr [rdi], 0x2d
	jne	.label_149
	cmp	byte ptr [rdi + 1], 0
	je	.label_158
.label_149:
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	dword ptr [rip + input_desc],  eax
	test	eax, eax
	jns	.label_85
	jmp	.label_89
.label_158:
	mov	dword ptr [rip + input_desc],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
.label_85:
	mov	edi, 1
	mov	esi, eax
	lea	rdx, [rsp + 0xd8]
	call	__fxstat
	test	eax, eax
	js	.label_105
	mov	rax, qword ptr [rsp + 0x110]
	cmp	rax, r13
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	mov	ecx, 0x200
	cmovle	rdx, rcx
	cmp	rax, r13
	mov	ecx, 0x20000
	cmovae	rdx, rcx
	test	rax, rax
	cmovle	rdx, rcx
	cmp	rax, 0x20000
	cmovl	rdx, rcx
	mov	qword ptr [rsp + 0x58], rdx
	mov	edi, dword ptr [rip + input_desc]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	call	fdadvise
	cmp	dword ptr [rsp + 0x8c], 0x8000
	jne	.label_109
	mov	rax, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0xd8], rax
	jne	.label_109
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	qword ptr [rsp + 0xe0], rax
	jne	.label_109
	mov	edi, dword ptr [rip + input_desc]
	xor	esi, esi
	mov	edx, 1
	call	lseek
	cmp	rax, qword ptr [rsp + 0x108]
	jge	.label_109
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx, qword ptr [rip + infile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_144
	nop	word ptr [rax + rax]
.label_109:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_167
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x58]
	lea	rdi, [rbp + rbx]
	call	xmalloc
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rax + rbp*4]
	call	xmalloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x98], r14
	lea	rsi, [r14 + rbx - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rbx
	sub	rsi, rdx
	mov	qword ptr [rsp + 0xb8], rcx
	lea	rcx, [rcx + rbx - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rbx
	sub	rcx, rdx
	mov	r12d, dword ptr [rip + newlines2]
	lea	r14, [rsi + 1]
	lea	rax, [rcx + r15]
	mov	qword ptr [rsp + 0x70], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	mov	r13, rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x18], rcx
.label_82:
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_67
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_72
	nop	dword ptr [rax + rax]
.label_99:
	cmp	qword ptr [rsp + 0x70], r13
	ja	.label_142
	mov	qword ptr [rsp + 0x40], r12
	mov	r12, rsi
	mov	rbp, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_94:
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_45
	add	rbp, r15
	mov	rbx, r13
	sub	rbx, rbp
	cmp	rbx, r15
	jae	.label_94
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rbp, rdi
	mov	rdx, rbx
	call	memmove
	add	rbx, rbp
	mov	r13, rbx
	mov	rsi, r12
	mov	r12, qword ptr [rsp + 0x40]
.label_142:
	cmp	r14, rsi
	jbe	.label_112
	mov	dword ptr [rsp + 0x10], 0
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_114
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_118
	nop	word ptr [rax + rax]
.label_112:
	test	r12d, r12d
	jle	.label_87
	mov	r12d, 2
	jmp	.label_35
	nop	word ptr cs:[rax + rax]
.label_114:
	mov	edi, dword ptr [rip + input_desc]
	mov	esi, 0x541b
	xor	eax, eax
	lea	rdx, [rsp + 0x10]
	call	ioctl
	test	eax, eax
	jns	.label_40
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [rsp + 0x20], 0
	cmp	rbp, 0x26
	ja	.label_46
	movabs	rax, 0x4002480000
	bt	rax, rbp
	jae	.label_46
.label_40:
	cmp	dword ptr [rsp + 0x10], 0
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_148
.label_118:
	mov	rbx, r13
	sub	rbx, rbp
	je	.label_148
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	r13, rbp
	jne	.label_45
.label_148:
	mov	edi, dword ptr [rip + input_desc]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x58]
	call	safe_read
	cmp	rax, -1
	je	.label_97
	test	rax, rax
	je	.label_37
	mov	rsi, rax
	mov	r14, qword ptr [rsp + 0x30]
	add	rsi, r14
	mov	byte ptr [r14 + rax], 0xa
	jmp	.label_35
.label_87:
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_171
	mov	byte ptr [r13], 0x24
	inc	r13
.label_171:
	inc	r12d
	mov	byte ptr [r13], 0xa
	inc	r13
	nop	
.label_35:
	mov	bl, byte ptr [r14]
	inc	r14
	cmp	bl, 0xa
	je	.label_99
	jmp	.label_39
.label_46:
	cmp	ebp, 0x5f
	je	.label_40
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_67:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_50
	nop	dword ptr [rax + rax]
.label_164:
	cmp	qword ptr [rsp + 0x70], r13
	ja	.label_56
	mov	qword ptr [rsp + 0x40], r12
	mov	r12, rsi
	mov	rbp, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_76:
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_45
	add	rbp, r15
	mov	rbx, r13
	sub	rbx, rbp
	cmp	rbx, r15
	jae	.label_76
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rbp, rdi
	mov	rdx, rbx
	call	memmove
	add	rbx, rbp
	mov	r13, rbx
	mov	rsi, r12
	mov	r12, qword ptr [rsp + 0x40]
.label_56:
	cmp	r14, rsi
	jbe	.label_55
	mov	dword ptr [rsp + 0x10], 0
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_92
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_96
	nop	word ptr [rax + rax]
.label_55:
	lea	eax, [r12 + 1]
	test	r12d, r12d
	mov	r12d, 2
	cmove	r12d, eax
	cmovs	r12d, eax
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_103
	mov	byte ptr [r13], 0x24
	inc	r13
.label_103:
	mov	byte ptr [r13], 0xa
	inc	r13
	jmp	.label_115
	nop	word ptr cs:[rax + rax]
.label_92:
	mov	edi, dword ptr [rip + input_desc]
	mov	esi, 0x541b
	xor	eax, eax
	lea	rdx, [rsp + 0x10]
	call	ioctl
	test	eax, eax
	jns	.label_64
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [rsp + 0x20], 0
	cmp	rbp, 0x26
	ja	.label_135
	movabs	rax, 0x4002480000
	bt	rax, rbp
	jae	.label_135
.label_64:
	cmp	dword ptr [rsp + 0x10], 0
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_57
.label_96:
	mov	rbx, r13
	sub	rbx, rbp
	je	.label_57
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	r13, rbp
	jne	.label_45
.label_57:
	mov	edi, dword ptr [rip + input_desc]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x58]
	call	safe_read
	cmp	rax, -1
	je	.label_97
	test	rax, rax
	je	.label_37
	mov	rsi, rax
	mov	r14, qword ptr [rsp + 0x30]
	add	rsi, r14
	mov	byte ptr [r14 + rax], 0xa
.label_115:
	mov	bl, byte ptr [r14]
	inc	r14
	cmp	bl, 0xa
	je	.label_164
	jmp	.label_39
.label_135:
	cmp	ebp, 0x5f
	je	.label_64
	jmp	.label_43
	nop	
.label_72:
	mov	eax, r12d
	nop	word ptr cs:[rax + rax]
.label_81:
	cmp	qword ptr [rsp + 0x70], r13
	ja	.label_29
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, rsi
	mov	rbp, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_48:
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_45
	add	rbp, r15
	mov	rbx, r13
	sub	rbx, rbp
	cmp	rbx, r15
	jae	.label_48
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rbp, rdi
	mov	rdx, rbx
	call	memmove
	add	rbx, rbp
	mov	r13, rbx
	mov	rsi, r12
	mov	rax, qword ptr [rsp + 0x40]
.label_29:
	cmp	r14, rsi
	jbe	.label_65
	mov	r12, rax
	mov	dword ptr [rsp + 0x10], 0
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_77
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_73
	nop	word ptr [rax + rax]
.label_65:
	lea	r12d, [rax + 1]
	test	eax, eax
	js	.label_170
	mov	eax, 2
	cmovne	r12d, eax
	je	.label_80
	mov	r12d, 2
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	edi, dword ptr [rip + input_desc]
	mov	esi, 0x541b
	xor	eax, eax
	lea	rdx, [rsp + 0x10]
	call	ioctl
	test	eax, eax
	jns	.label_117
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [rsp + 0x20], 0
	cmp	rbp, 0x26
	ja	.label_110
	movabs	rax, 0x4002480000
	bt	rax, rbp
	jae	.label_110
.label_117:
	cmp	dword ptr [rsp + 0x10], 0
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_116
.label_73:
	mov	rbx, r13
	sub	rbx, rbp
	je	.label_116
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	r13, rbp
	jne	.label_45
.label_116:
	mov	edi, dword ptr [rip + input_desc]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x58]
	call	safe_read
	test	rax, rax
	je	.label_37
	cmp	rax, -1
	je	.label_97
	mov	rsi, rax
	mov	r14, qword ptr [rsp + 0x30]
	add	rsi, r14
	mov	byte ptr [r14 + rax], 0xa
	jmp	.label_32
.label_80:
	mov	rax, qword ptr [rip + line_num_start]
	mov	ecx, OFFSET FLAT:label_83
	nop	word ptr cs:[rax + rax]
.label_154:
	movzx	ebx, byte ptr [rcx]
	mov	edx, ebx
	inc	dl
	mov	byte ptr [rcx], dl
	cmp	bl, 0x39
	jl	.label_150
	mov	byte ptr [rcx], 0x30
	dec	rcx
	cmp	rcx, rax
	jae	.label_154
	mov	ecx, OFFSET FLAT:line_buf
	mov	rbx, rsi
	cmp	rax, rcx
	jbe	.label_84
	lea	rcx, [rax - 1]
	mov	qword ptr [rip + line_num_start],  rcx
	mov	byte ptr [rax - 1], 0x31
	mov	rax, rcx
	jmp	.label_161
.label_150:
	mov	rbx, rsi
	mov	rsi, qword ptr [rip + line_num_print]
	jmp	.label_127
.label_84:
	mov	byte ptr [rip + line_buf],  0x3e
.label_161:
	mov	rsi, qword ptr [rip + line_num_print]
	cmp	rax, rsi
	jae	.label_127
	dec	rsi
	mov	qword ptr [rip + line_num_print],  rsi
.label_127:
	mov	rdi, r13
	call	stpcpy
	mov	r13, rax
	mov	rsi, rbx
.label_170:
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_30
	mov	byte ptr [r13], 0x24
	inc	r13
.label_30:
	mov	byte ptr [r13], 0xa
	inc	r13
.label_32:
	mov	bl, byte ptr [r14]
	inc	r14
	cmp	bl, 0xa
	mov	eax, r12d
	je	.label_81
	jmp	.label_39
.label_110:
	cmp	ebp, 0x5f
	je	.label_117
	jmp	.label_43
.label_50:
	mov	eax, r12d
	nop	word ptr cs:[rax + rax]
.label_63:
	cmp	qword ptr [rsp + 0x70], r13
	ja	.label_54
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, rsi
	mov	rbp, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_130:
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_45
	add	rbp, r15
	mov	rbx, r13
	sub	rbx, rbp
	cmp	rbx, r15
	jae	.label_130
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rbp, rdi
	mov	rdx, rbx
	call	memmove
	add	rbx, rbp
	mov	r13, rbx
	mov	rsi, r12
	mov	rax, qword ptr [rsp + 0x40]
.label_54:
	cmp	r14, rsi
	jbe	.label_90
	mov	r12, rax
	mov	dword ptr [rsp + 0x10], 0
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_68
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_98
	nop	
.label_90:
	lea	r12d, [rax + 1]
	test	eax, eax
	js	.label_139
	mov	eax, 2
	cmovne	r12d, eax
	mov	rax, qword ptr [rip + line_num_start]
	mov	ecx, OFFSET FLAT:label_83
	nop	word ptr cs:[rax + rax]
.label_124:
	movzx	ebx, byte ptr [rcx]
	mov	edx, ebx
	inc	dl
	mov	byte ptr [rcx], dl
	cmp	bl, 0x39
	jl	.label_119
	mov	byte ptr [rcx], 0x30
	dec	rcx
	cmp	rcx, rax
	jae	.label_124
	mov	ecx, OFFSET FLAT:line_buf
	mov	rbx, rsi
	cmp	rax, rcx
	jbe	.label_126
	lea	rcx, [rax - 1]
	mov	qword ptr [rip + line_num_start],  rcx
	mov	byte ptr [rax - 1], 0x31
	mov	rax, rcx
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_68:
	mov	edi, dword ptr [rip + input_desc]
	mov	esi, 0x541b
	xor	eax, eax
	lea	rdx, [rsp + 0x10]
	call	ioctl
	test	eax, eax
	jns	.label_70
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [rsp + 0x20], 0
	cmp	rbp, 0x26
	ja	.label_71
	movabs	rax, 0x4002480000
	bt	rax, rbp
	jae	.label_71
.label_70:
	cmp	dword ptr [rsp + 0x10], 0
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_157
.label_98:
	mov	rbx, r13
	sub	rbx, rbp
	je	.label_157
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	r13, rbp
	jne	.label_45
.label_157:
	mov	edi, dword ptr [rip + input_desc]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x58]
	call	safe_read
	cmp	rax, -1
	je	.label_97
	test	rax, rax
	je	.label_37
	mov	rsi, rax
	mov	r14, qword ptr [rsp + 0x30]
	add	rsi, r14
	mov	byte ptr [r14 + rax], 0xa
	jmp	.label_125
.label_119:
	mov	rbx, rsi
	mov	rsi, qword ptr [rip + line_num_print]
	jmp	.label_41
.label_126:
	mov	byte ptr [rip + line_buf],  0x3e
.label_134:
	mov	rsi, qword ptr [rip + line_num_print]
	cmp	rax, rsi
	jae	.label_41
	dec	rsi
	mov	qword ptr [rip + line_num_print],  rsi
.label_41:
	mov	rdi, r13
	call	stpcpy
	mov	r13, rax
	mov	rsi, rbx
.label_139:
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_52
	mov	byte ptr [r13], 0x24
	inc	r13
.label_52:
	mov	byte ptr [r13], 0xa
	inc	r13
.label_125:
	mov	bl, byte ptr [r14]
	inc	r14
	cmp	bl, 0xa
	mov	eax, r12d
	je	.label_63
	jmp	.label_39
.label_71:
	cmp	ebp, 0x5f
	je	.label_70
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_39:
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_159
	test	r12d, r12d
	js	.label_159
	mov	rdi, qword ptr [rip + line_num_start]
	mov	ecx, OFFSET FLAT:label_83
	nop	word ptr cs:[rax + rax]
.label_129:
	movzx	eax, byte ptr [rcx]
	mov	edx, eax
	inc	dl
	mov	byte ptr [rcx], dl
	cmp	al, 0x39
	jl	.label_74
	mov	byte ptr [rcx], 0x30
	dec	rcx
	cmp	rcx, rdi
	jae	.label_129
	mov	eax, OFFSET FLAT:line_buf
	mov	r12, rsi
	cmp	rdi, rax
	jbe	.label_100
	lea	rax, [rdi - 1]
	mov	qword ptr [rip + line_num_start],  rax
	mov	byte ptr [rdi - 1], 0x31
	mov	rdi, rax
	jmp	.label_140
.label_74:
	mov	r12, rsi
	mov	rsi, qword ptr [rip + line_num_print]
	jmp	.label_79
.label_100:
	mov	byte ptr [rip + line_buf],  0x3e
.label_140:
	mov	rsi, qword ptr [rip + line_num_print]
	cmp	rdi, rsi
	jae	.label_79
	dec	rsi
	mov	qword ptr [rip + line_num_print],  rsi
.label_79:
	mov	rdi, r13
	call	stpcpy
	mov	r13, rax
	mov	rsi, r12
.label_159:
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	je	.label_36
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	jne	.label_133
	jmp	.label_156
	nop	dword ptr [rax + rax]
.label_44:
	movzx	ebx, byte ptr [r14]
	inc	r14
.label_133:
	cmp	bl, 0x1f
	jbe	.label_143
	cmp	bl, 0x7f
	jae	.label_138
	mov	byte ptr [r13], bl
	inc	r13
	jmp	.label_44
	nop	word ptr [rax + rax]
.label_143:
	mov	r12d, 0xffffffff
	cmp	bl, 0xa
	je	.label_82
	mov	byte ptr [r13], 0x5e
	add	bl, 0x40
	mov	byte ptr [r13 + 1], bl
	add	r13, 2
	jmp	.label_44
	nop	word ptr cs:[rax + rax]
.label_138:
	jne	.label_155
	mov	word ptr [r13], 0x3f5e
	add	r13, 2
	jmp	.label_44
.label_155:
	mov	word ptr [r13], 0x2d4d
	cmp	bl, 0x9f
	jbe	.label_160
	cmp	bl, 0xff
	je	.label_162
	xor	bl, 0x80
	mov	byte ptr [r13 + 2], bl
	add	r13, 3
	jmp	.label_44
.label_160:
	mov	byte ptr [r13 + 2], 0x5e
	add	bl, 0xc0
	mov	byte ptr [r13 + 3], bl
	jmp	.label_120
.label_162:
	mov	word ptr [r13 + 2], 0x3f5e
.label_120:
	add	r13, 4
	jmp	.label_44
	nop	dword ptr [rax + rax]
.label_53:
	movzx	ebx, byte ptr [r14]
	inc	r14
.label_156:
	cmp	bl, 0x20
	jb	.label_42
	cmp	bl, 0x7e
	ja	.label_174
	mov	byte ptr [r13], bl
	jmp	.label_86
	nop	word ptr [rax + rax]
.label_42:
	cmp	bl, 9
	je	.label_166
	mov	r12d, 0xffffffff
	cmp	bl, 0xa
	je	.label_82
	mov	byte ptr [r13], 0x5e
	add	bl, 0x40
	mov	byte ptr [r13 + 1], bl
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_174:
	cmp	bl, 0x7f
	jne	.label_47
	mov	word ptr [r13], 0x3f5e
.label_145:
	add	r13, 2
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	byte ptr [r13], 9
.label_86:
	inc	r13
	jmp	.label_53
.label_47:
	mov	word ptr [r13], 0x2d4d
	cmp	bl, 0xa0
	jb	.label_66
	cmp	bl, 0xff
	je	.label_93
	xor	bl, 0x80
	mov	byte ptr [r13 + 2], bl
	add	r13, 3
	jmp	.label_53
.label_66:
	mov	byte ptr [r13 + 2], 0x5e
	add	bl, 0xc0
	mov	byte ptr [r13 + 3], bl
	add	r13, 4
	jmp	.label_53
.label_93:
	mov	word ptr [r13 + 2], 0x3f5e
	add	r13, 4
	jmp	.label_53
.label_36:
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	jne	.label_121
	mov	r12d, 0xffffffff
	jmp	.label_107
	nop	word ptr cs:[rax + rax]
.label_95:
	movzx	ebx, byte ptr [r14]
	inc	r14
.label_121:
	cmp	bl, 9
	je	.label_132
	mov	r12d, 0xffffffff
	cmp	bl, 0xa
	je	.label_82
	mov	byte ptr [r13], bl
	inc	r13
	jmp	.label_95
	nop	word ptr cs:[rax + rax]
.label_132:
	mov	word ptr [r13], 0x495e
	add	r13, 2
	jmp	.label_95
	nop	dword ptr [rax]
.label_122:
	mov	byte ptr [r13], bl
	inc	r13
	movzx	ebx, byte ptr [r14]
	inc	r14
.label_107:
	cmp	bl, 0xa
	jne	.label_122
	jmp	.label_82
	nop	dword ptr [rax + rax]
.label_105:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_144
.label_167:
	mov	rcx, qword ptr [rsp + 0x58]
	cmp	rcx, r15
	cmovbe	rcx, r15
	mov	rax, qword ptr [rsp + 0xa0]
	mov	r12, rcx
	lea	rdi, [rax + rcx]
	call	xmalloc
	mov	rcx, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x98], rax
	lea	r14, [rax + rcx - 1]
	xor	edx, edx
	mov	rax, r14
	div	rcx
	sub	r14, rdx
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	edi, dword ptr [rip + input_desc]
	mov	rsi, r14
	mov	rdx, r12
	call	safe_read
	mov	rbp, rax
	mov	bl, 1
	test	rbp, rbp
	je	.label_75
	cmp	rbp, -1
	je	.label_163
	mov	edi, 1
	mov	rsi, r14
	mov	rdx, rbp
	call	full_write
	cmp	rax, rbp
	je	.label_168
	jmp	.label_45
.label_163:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_75:
	mov	rbp, qword ptr [rsp + 0x60]
	jmp	.label_38
.label_37:
	sub	r13, rbp
	je	.label_101
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	jne	.label_45
.label_101:
	mov	dword ptr [rip + newlines2],  r12d
	mov	bl, 1
	jmp	.label_51
.label_97:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdx, qword ptr [rip + infile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	rsi, qword ptr [rsp + 0x18]
	sub	r13, rsi
	je	.label_147
	mov	edi, 1
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	jne	.label_111
.label_147:
	mov	dword ptr [rip + newlines2],  r12d
	xor	ebx, ebx
	jmp	.label_51
.label_43:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rip + infile]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	mov	dword ptr [rip + newlines2],  r12d
	nop	word ptr [rax + rax]
.label_51:
	mov	rbp, qword ptr [rsp + 0x60]
	movabs	r13, 0x2000000000000001
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
.label_38:
	mov	rax, qword ptr [rsp + 0x38]
	and	bl, al
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	qword ptr [rsp + 0x38], rbx
.label_144:
	mov	rax, qword ptr [rip + infile]
	cmp	byte ptr [rax], 0x2d
	jne	.label_102
	cmp	byte ptr [rax + 1], 0
	je	.label_128
.label_102:
	mov	edi, dword ptr [rip + input_desc]
	call	close
	test	eax, eax
	jns	.label_128
.label_89:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_128:
	mov	rax, qword ptr [rsp + 0xd0]
	inc	rax
	mov	rcx, qword ptr [rsp + 0xc8]
	cmp	rax, rcx
	jl	.label_146
	mov	rax, qword ptr [rsp + 0x90]
	test	al, 1
	je	.label_153
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_172
.label_153:
	mov	rax, qword ptr [rsp + 0x38]
	not	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_45:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
.label_60:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_131:
	cmp	eax, 0xffffff7d
	je	.label_169
	cmp	eax, 0xffffff7e
	jne	.label_31
	xor	edi, edi
	call	usage
.label_169:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_16
	mov	r8d, OFFSET FLAT:label_61
	mov	r9d, OFFSET FLAT:label_62
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_31:
	mov	edi, 1
	call	usage
.label_111:
	mov	ebx, dword ptr [rbx]
	jmp	.label_33
.label_137:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	jmp	.label_60
.label_172:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	jmp	.label_60
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ab0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_179
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_177
	cmp	dword ptr [rbp], 0x20
	jne	.label_177
.label_179:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_176
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_175
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_176:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_175:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_178
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b70

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b80
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_180
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_180:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ba0

	.globl full_write
	.type full_write, @function
full_write:
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
	je	.label_181
	nop	word ptr [rax + rax]
.label_183:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_181
	test	rax, rax
	je	.label_182
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_183
	jmp	.label_181
.label_182:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_181:
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
	#Procedure 0x402c00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_184
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_186
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_186
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_189
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_189:
	mov	rbx, r14
.label_186:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_184:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_185
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cb0
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
	#Procedure 0x402cf0
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
	#Procedure 0x402d00
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
	#Procedure 0x402d10
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
	.align	32
	#Procedure 0x402d50
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
	#Procedure 0x402d70
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_190
	test	rdx, rdx
	je	.label_190
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_190:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402da0
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
	.align	32
	#Procedure 0x402e20

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
	jmp	.label_222
	nop	
.label_264:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_254
	or	al, dl
	jne	.label_254
	test	dil, 1
	jne	.label_262
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_254
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_222
	jmp	.label_254
.label_492:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_270
	test	rbp, rbp
	je	.label_273
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_273:
	mov	r14d, 1
	jmp	.label_275
.label_493:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_251
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_217
.label_270:
	xor	r14d, r14d
.label_275:
	mov	eax, OFFSET FLAT:label_251
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_252
	nop	
.label_222:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_292
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_298]
.label_494:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_305
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_246
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_495:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_191
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_191
	xor	r14d, r14d
	nop	
.label_280:
	cmp	r14, rbp
	jae	.label_203
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_203:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_280
.label_191:
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
	jmp	.label_217
.label_487:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_217
.label_490:
	mov	al, 1
.label_488:
	mov	r12b, 1
.label_491:
	test	r12b, 1
	mov	cl, 1
	je	.label_232
	mov	ecx, eax
.label_232:
	mov	al, cl
.label_489:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_234
	test	rbp, rbp
	je	.label_240
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_240:
	mov	r14d, 1
	jmp	.label_214
.label_234:
	xor	r14d, r14d
.label_214:
	mov	ecx, OFFSET FLAT:label_246
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_252:
	mov	sil, r12b
.label_217:
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
	jmp	.label_268
	nop	word ptr cs:[rax + rax]
.label_255:
	inc	r12
.label_268:
	cmp	r11, -1
	je	.label_279
	cmp	r12, r11
	jne	.label_281
	jmp	.label_283
	nop	word ptr cs:[rax + rax]
.label_279:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_288
.label_281:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_293
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_301
	cmp	r11, -1
	jne	.label_301
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_301:
	cmp	rbx, r11
	jbe	.label_309
.label_293:
	xor	esi, esi
.label_209:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_312
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_315]
.label_471:
	test	r12, r12
	jne	.label_192
	jmp	.label_194
	nop	word ptr cs:[rax + rax]
.label_309:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_206
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_209
	jmp	.label_231
.label_206:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_209
.label_475:
	xor	eax, eax
	cmp	r11, -1
	je	.label_225
	test	r12, r12
	jne	.label_229
	cmp	r11, 1
	je	.label_194
	xor	r13d, r13d
	jmp	.label_196
.label_464:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_236
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_231
	cmp	r8d, 2
	jne	.label_242
	mov	eax, r9d
	and	al, 1
	jne	.label_242
	cmp	r14, rbp
	jae	.label_247
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_247:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_248
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_248:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_256
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	add	r14, 3
	mov	r9b, 1
.label_242:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_261
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_261:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_220
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_220
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_220
	cmp	r14, rbp
	jae	.label_285
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_285:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_310
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_310:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_196
.label_465:
	mov	bl, 0x62
	jmp	.label_245
.label_466:
	mov	cl, 0x74
	jmp	.label_258
.label_467:
	mov	bl, 0x76
	jmp	.label_245
.label_468:
	mov	bl, 0x66
	jmp	.label_245
.label_469:
	mov	cl, 0x72
	jmp	.label_258
.label_472:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_290
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_215
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
	jae	.label_299
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_299:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_313
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_317
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_317:
	add	r14, 3
	xor	r9d, r9d
.label_290:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_196
.label_473:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_199
	cmp	r8d, 2
	jne	.label_192
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_192
	jmp	.label_215
.label_474:
	cmp	r8d, 2
	jne	.label_211
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_215
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_219
.label_312:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_221
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_233
.label_225:
	test	r12, r12
	jne	.label_243
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_243
.label_194:
	mov	dl, 1
.label_470:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_215
	xor	eax, eax
	mov	r13b, dl
.label_196:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_253
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_257
	jmp	.label_259
	nop	word ptr cs:[rax + rax]
.label_253:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_259
.label_257:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_263
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_267
	nop	dword ptr [rax]
.label_259:
	test	sil, sil
.label_267:
	mov	ebx, r15d
	je	.label_198
	jmp	.label_272
.label_263:
	mov	ebx, r15d
	jmp	.label_272
.label_236:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_255
	xor	r15d, r15d
	jmp	.label_192
.label_211:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_258
	xor	eax, eax
	mov	r15b, 0x5c
.label_219:
	xor	r13d, r13d
	jmp	.label_198
.label_258:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_215
.label_245:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_196
	nop	
.label_272:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_231
	cmp	r8d, 2
	jne	.label_291
	mov	eax, r9d
	and	al, 1
	jne	.label_291
	cmp	r14, rbp
	jae	.label_296
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_296:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_300
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_300:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_303
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_303:
	add	r14, 3
	mov	r9b, 1
.label_291:
	cmp	r14, rbp
	jae	.label_311
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_311:
	inc	r14
	jmp	.label_304
.label_221:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_316
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_316:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_230
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_223:
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
	je	.label_212
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_226
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_244
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_238
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_241:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_197
	bt	rsi, rdx
	jb	.label_215
.label_197:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_241
.label_238:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_260
	xor	r13d, r13d
.label_260:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_223
	jmp	.label_228
.label_220:
	xor	r13d, r13d
	jmp	.label_196
.label_243:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_196
.label_199:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_192
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_192
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_192
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_278
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_250
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_287
	cmp	r14, rbp
	jae	.label_284
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_294
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_294:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_269
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_269:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_276
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_276:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_250:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_196
.label_192:
	xor	eax, eax
.label_229:
	xor	r13d, r13d
	jmp	.label_196
.label_230:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_224:
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
	je	.label_207
	cmp	rbp, -1
	je	.label_210
	cmp	rbp, -2
	je	.label_212
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_218
	xor	r13d, r13d
.label_218:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_224
	jmp	.label_228
.label_212:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_237
	lea	rax, [r10 + r12]
.label_193:
	cmp	byte ptr [rax + rsi], 0
	je	.label_237
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_193
.label_237:
	mov	qword ptr [rsp + 0x40], rsi
.label_226:
	xor	r13d, r13d
	jmp	.label_244
.label_210:
	xor	r13d, r13d
.label_207:
	mov	r10, qword ptr [rsp + 0x28]
.label_244:
	mov	r12, qword ptr [rsp + 0x40]
.label_228:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_233:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_201
	test	al, al
	je	.label_201
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_196
.label_201:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_266
	nop	word ptr [rax + rax]
.label_227:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_266:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_271
	test	sil, 1
	je	.label_277
	cmp	r14, rbp
	jae	.label_274
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_274:
	inc	r14
	xor	esi, esi
	jmp	.label_277
	nop	word ptr cs:[rax + rax]
.label_271:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_231
	cmp	r8d, 2
	jne	.label_282
	mov	eax, r9d
	and	al, 1
	jne	.label_282
	cmp	r14, rbp
	jae	.label_286
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_286:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_289
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_289:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_205
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_205:
	add	r14, 3
	mov	r9b, 1
.label_282:
	cmp	r14, rbp
	jae	.label_302
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_302:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_307
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_307:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_314
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_314:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_277:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_198
	test	r9b, 1
	je	.label_200
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_265
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_195
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_195:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_213
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_213:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_265:
	mov	rbx, rcx
.label_200:
	cmp	r14, rbp
	jae	.label_227
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_227
	nop	
.label_198:
	test	r9b, 1
	je	.label_235
	and	al, 1
	jne	.label_235
	cmp	r14, rbp
	jae	.label_239
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_239:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_216
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_216:
	add	r14, 2
	xor	r9d, r9d
.label_235:
	mov	ebx, r15d
.label_304:
	cmp	r14, rbp
	jae	.label_249
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_249:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_255
.label_278:
	xor	r13d, r13d
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
.label_283:
	mov	rcx, r12
.label_288:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_264
	or	al, dl
	jne	.label_264
	mov	r11, rcx
	jmp	.label_231
.label_215:
	mov	eax, 2
.label_208:
	mov	qword ptr [rsp + 0x38], rax
.label_231:
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
.label_295:
	mov	r14, rax
.label_202:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_254:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_297
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_204
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_204
	inc	rdx
	nop	dword ptr [rax + rax]
.label_308:
	cmp	r14, rbp
	jae	.label_306
	mov	byte ptr [rcx + r14], al
.label_306:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_308
	jmp	.label_204
.label_262:
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
	jmp	.label_295
.label_297:
	mov	rcx, qword ptr [rsp + 0x10]
.label_204:
	cmp	r14, rbp
	jae	.label_202
	mov	byte ptr [rcx + r14], 0
	jmp	.label_202
.label_287:
	mov	eax, 5
	jmp	.label_208
.label_292:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403c50
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
	.align	32
	#Procedure 0x403d20
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
	je	.label_318
	mov	qword ptr [rax], rbx
.label_318:
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
	.align	32
	#Procedure 0x403e10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_319
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_321:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_321
.label_319:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_322
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_323], OFFSET FLAT:slot0
.label_322:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_320
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_320:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403eb0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403ec0

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
	js	.label_324
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_327
	cmp	r12d, 0x7fffffff
	je	.label_329
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
	jne	.label_325
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_325:
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
.label_327:
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
	jbe	.label_330
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_326
.label_330:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_328
	mov	rdi, r14
	call	free
.label_328:
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
.label_326:
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
.label_324:
	call	abort
.label_329:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404080
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404090
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
	#Procedure 0x4040b0
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
	#Procedure 0x4040d0
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
	je	.label_331
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
.label_331:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404140
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
	je	.label_332
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
.label_332:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041b0

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
	je	.label_333
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
.label_333:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404220
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
	je	.label_334
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
.label_334:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404290
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
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
	.align	32
	#Procedure 0x404300
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
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
	.align	32
	#Procedure 0x404370

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
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
	.align	32
	#Procedure 0x4043d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
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
	.align	32
	#Procedure 0x404430

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
	je	.label_338
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
.label_338:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044d0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_339
	test	rdx, rdx
	je	.label_339
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_339:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404540
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_340
	test	rdx, rdx
	je	.label_340
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_340:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_341
	test	rsi, rsi
	je	.label_341
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_341:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404620
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_335]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_336]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_337]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_342
	test	rsi, rsi
	je	.label_342
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
.label_342:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404690
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0
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
	#Procedure 0x4046c0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046e0
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
	#Procedure 0x404700

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
	jne	.label_344
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_349
	cmp	ecx, 0x55
	jne	.label_343
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_343
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_343
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_343
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_343
	cmp	byte ptr [rax + 5], 0
	jne	.label_343
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_346
	mov	eax, OFFSET FLAT:label_347
	jmp	.label_348
.label_349:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_343
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_343
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_343
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_343
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_343
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_343
	cmp	byte ptr [rax + 7], 0
	je	.label_345
.label_343:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_251
	mov	eax, OFFSET FLAT:label_246
.label_348:
	cmove	rax, rcx
.label_344:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_345:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_350
	mov	eax, OFFSET FLAT:label_351
	jmp	.label_348
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047d0

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
.label_353:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_352
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_353
	cmp	rbx, 0x7ff00001
	jb	.label_352
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_353
.label_352:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404830

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_355:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_354
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_355
	cmp	rbx, 0x7ff00001
	jb	.label_354
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_355
.label_354:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890

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
	je	.label_362
	mov	edx, OFFSET FLAT:label_371
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_359
.label_362:
	mov	edx, OFFSET FLAT:label_360
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
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
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_366
	jmp	qword ptr [(r12 * 8) + label_367]
.label_552:
	add	rsp, 8
	jmp	.label_358
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
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
	jmp	.label_358
.label_553:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
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
.label_554:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
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
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
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
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
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
	jmp	.label_358
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
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
	jmp	.label_358
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
	jmp	.label_358
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
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
	jmp	.label_358
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
	jmp	.label_358
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
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
.label_358:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_375:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_375
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_386
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_388
.label_386:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_388:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_385
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_387
.label_385:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_387:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_383
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_384
.label_383:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_384:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_381
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_382
.label_381:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_382:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_379
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_380
.label_379:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_380:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_376
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_378
.label_376:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_378:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_377
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_377
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_377
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_377
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_377:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e10

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_389
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_389:
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
	.align	32
	#Procedure 0x404ea0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_391
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_394
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_395
	test	rax, rax
	je	.label_394
.label_395:
	pop	rbx
	ret	
.label_394:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_396
	test	rax, rax
	je	.label_397
.label_396:
	pop	rbx
	ret	
.label_397:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f80
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_398
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_399
	test	rbx, rbx
	jne	.label_399
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_399:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_400
	test	rax, rax
	je	.label_398
.label_400:
	pop	rbx
	ret	
.label_398:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_401
	test	rbx, rbx
	jne	.label_401
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_401:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_403
	test	rax, rax
	je	.label_402
.label_403:
	pop	rbx
	ret	
.label_402:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405000
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_404
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_407
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_405
.label_404:
	test	rcx, rcx
	jne	.label_410
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_410:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_406
.label_405:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_409
	test	rbx, rbx
	jne	.label_409
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_409:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_408
	test	rax, rax
	je	.label_407
.label_408:
	pop	rbx
	ret	
.label_407:
	call	xalloc_die
.label_406:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050a0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_411
	test	rax, rax
	je	.label_412
.label_411:
	pop	rbx
	ret	
.label_412:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_413
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_416
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_417
	call	free
	xor	eax, eax
	jmp	.label_414
.label_413:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_415
	mov	qword ptr [rsi], rbx
.label_417:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_414
	test	rax, rax
	je	.label_415
.label_414:
	pop	rbx
	ret	
.label_415:
	call	xalloc_die
.label_416:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130
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
	je	.label_419
	test	r14, r14
	je	.label_418
.label_419:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_418:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405170
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_420
	call	rpl_calloc
	test	rax, rax
	je	.label_420
	pop	rcx
	ret	
.label_420:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0

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
	je	.label_421
	test	r15, r15
	je	.label_422
.label_421:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_422:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051e0
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
	je	.label_424
	test	r15, r15
	je	.label_423
.label_424:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_423:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405230

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405260

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_426
	test	rsi, rsi
	mov	ecx, 1
	je	.label_427
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_427
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_426:
	mov	ecx, 1
.label_427:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052b0

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
	je	.label_428
	cmp	r15, -2
	jb	.label_428
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_428
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_428:
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
	#Procedure 0x405310

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
	jne	.label_430
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_429
	test	cl, cl
	jne	.label_429
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_429
.label_430:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_429
	call	__errno_location
	mov	dword ptr [rax], 0
.label_429:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405370

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_432
	cmp	byte ptr [rax], 0x43
	jne	.label_434
	cmp	byte ptr [rax + 1], 0
	je	.label_431
.label_434:
	mov	esi, OFFSET FLAT:label_433
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_432
.label_431:
	xor	ebx, ebx
.label_432:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_49
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_435
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_436
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_437
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_436
.label_437:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_436
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_438
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_438:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_436:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405460

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_439
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_439
	test	byte ptr [rbx + 1], 1
	je	.label_439
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_439:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0

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
	jne	.label_440
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_440
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_441
.label_440:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_441:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_442
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_442:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x405510

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
