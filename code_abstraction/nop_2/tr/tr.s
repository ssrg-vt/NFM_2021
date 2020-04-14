	.section	.text
	.align	16
	#Procedure 0x4015f0

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
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
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
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.9
	mov	ecx, OFFSET FLAT:.str.43
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	sub	rsp, 0x1a8
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, OFFSET FLAT:.str.12
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.11
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_71:
	mov	byte ptr [rip + complement],  1
.label_57:
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x62
	jle	.label_68
	cmp	eax, 0x72
	jg	.label_151
	cmp	eax, 0x63
	je	.label_71
	cmp	eax, 0x64
	jne	.label_72
	mov	byte ptr [rip + delete],  1
	jmp	.label_57
	nop	
.label_68:
	cmp	eax, 0x40
	jle	.label_77
	cmp	eax, 0x41
	je	.label_79
	cmp	eax, 0x43
	je	.label_71
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_151:
	cmp	eax, 0x73
	je	.label_86
	cmp	eax, 0x74
	jne	.label_72
	mov	byte ptr [rip + truncate_set1],  1
	jmp	.label_57
.label_79:
	mov	edi, 3
	mov	esi, OFFSET FLAT:.str.14
	call	setlocale
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	call	setlocale
	jmp	.label_57
.label_86:
	mov	byte ptr [rip + squeeze_repeats],  1
	jmp	.label_57
.label_77:
	cmp	eax, -1
	jne	.label_113
	mov	eax, dword ptr [rip + optind]
	mov	r12d, ebp
	sub	r12d, eax
	movzx	ebx, byte ptr [rip + delete]
	and	ebx, 1
	cmp	r12d, 2
	je	.label_115
	xor	ecx, ecx
	jmp	.label_123
.label_115:
	mov	cl, bl
	xor	cl, 1
.label_123:
	mov	byte ptr [rip + translating],  cl
	mov	cl, byte ptr [rip + squeeze_repeats]
	and	cl, 1
	mov	dl, bl
	xor	dl, cl
	movzx	edx, dl
	mov	esi, 2
	mov	edi, 2
	sub	edi, edx
	xor	ebx, 1
	inc	ebx
	test	cl, cl
	cmovne	ebx, esi
	cmp	r12d, edi
	jl	.label_125
	cmp	ebx, r12d
	jl	.label_82
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x70], rax
	mov	qword ptr [rsp + 0x68], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	lea	rsi, [rsp + 0x68]
	call	parse_str
	mov	ebp, 1
	test	al, al
	je	.label_160
	xor	r14d, r14d
	cmp	r12d, 2
	jne	.label_163
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x38], rax
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 8]
	lea	r14, [rsp + 0x30]
	mov	rsi, r14
	call	parse_str
	test	al, al
	je	.label_160
.label_163:
	lea	rdi, [rsp + 0x68]
	call	get_spec_stats
	movzx	eax, byte ptr [rip + complement]
	and	eax, 1
	cmp	eax, 1
	jne	.label_11
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x190], xmm0
	movdqa	xmmword ptr [rsp + 0x180], xmm0
	movdqa	xmmword ptr [rsp + 0x170], xmm0
	movdqa	xmmword ptr [rsp + 0x160], xmm0
	movdqa	xmmword ptr [rsp + 0x150], xmm0
	movdqa	xmmword ptr [rsp + 0x140], xmm0
	movdqa	xmmword ptr [rsp + 0x130], xmm0
	movdqa	xmmword ptr [rsp + 0x120], xmm0
	movdqa	xmmword ptr [rsp + 0x110], xmm0
	movdqa	xmmword ptr [rsp + 0x100], xmm0
	movdqa	xmmword ptr [rsp + 0xf0], xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	mov	qword ptr [rsp + 0x78], -2
	lea	rdi, [rsp + 0x68]
	xor	esi, esi
	call	get_next
	mov	ecx, 0x100
	cmp	eax, -1
	je	.label_80
	mov	ebp, 0x100
	lea	rbx, [rsp + 0x68]
	nop	dword ptr [rax]
.label_92:
	cdqe	
	movzx	ecx, byte ptr [rsp + rax + 0xa0]
	xor	ecx, 1
	sub	ebp, ecx
	mov	byte ptr [rsp + rax + 0xa0], 1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_92
	movsxd	rcx, ebp
.label_80:
	mov	qword ptr [rsp + 0x80], rcx
.label_11:
	cmp	qword ptr [rsp + 0x88], 0
	jne	.label_96
	test	r14, r14
	je	.label_67
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rdi, r14
	call	get_spec_stats
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, rbx
	sub	rcx, rdx
	jb	.label_126
	cmp	rax, 1
	jne	.label_126
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [rax + 0x18], rcx
	mov	qword ptr [r14 + 0x18], rbx
	mov	eax, 1
	mov	rdx, rbx
	jmp	.label_167
.label_126:
	cmp	rax, 2
	jae	.label_149
.label_167:
	cmp	byte ptr [rip + translating],  0
	je	.label_150
	mov	eax, dword ptr [r14 + 0x30]
	test	al, al
	jne	.label_152
	test	eax, 0xff0000
	jne	.label_154
	movzx	eax, word ptr [r14 + 0x30]
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsi, qword ptr [r14 + 8]
	movzx	eax, ax
	cmp	eax, 0x100
	jae	.label_155
	mov	rcx, rdx
	mov	rax, rdi
	jmp	.label_159
.label_150:
	test	rax, rax
	je	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	jmp	.label_18
.label_155:
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	dword ptr [rsp + 0x1c], r12d
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	pxor	xmm8, xmm8
	xor	ecx, ecx
	movdqa	xmm9, xmmword ptr [rip + label_168]
	pand	xmm9, xmmword ptr [rip + label_169]
	pxor	xmm1, xmm1
	pxor	xmm0, xmm0
	pxor	xmm5, xmm5
	pxor	xmm4, xmm4
	nop	dword ptr [rax]
.label_81:
	movd	xmm6, dword ptr [rax + rcx*2]
	punpcklwd	xmm6, xmm8
	punpckldq	xmm6, xmm8
	movd	xmm7, dword ptr [rax + rcx*2 + 4]
	punpcklwd	xmm7, xmm8
	punpckldq	xmm7, xmm8
	movdqa	xmm2, xmm6
	psrlq	xmm2, 8
	movdqa	xmm3, xmm7
	psrlq	xmm3, 8
	pand	xmm2, xmm9
	pand	xmm3, xmm9
	paddq	xmm1, xmm2
	paddq	xmm0, xmm3
	psrlq	xmm6, 9
	psrlq	xmm7, 9
	pand	xmm6, xmm9
	pand	xmm7, xmm9
	paddq	xmm5, xmm6
	paddq	xmm4, xmm7
	add	rcx, 4
	cmp	rcx, 0x100
	jne	.label_81
	paddq	xmm4, xmm5
	pshufd	xmm2, xmm4, 0x4e
	paddq	xmm2, xmm4
	movq	r15, xmm2
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r12, xmm1
	mov	qword ptr [rsp + 0x78], -2
	mov	qword ptr [r14 + 0x10], -2
	mov	r13b, 1
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_60:
	lea	rdi, [rsp + 0x68]
	lea	rsi, [rsp + 0xa0]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	lea	rsi, [rsp + 0x1a4]
	call	get_next
	mov	ecx, dword ptr [rsp + 0x1a4]
	test	r13b, r13b
	je	.label_88
	cmp	ecx, 2
	je	.label_88
	test	bl, bl
	je	.label_58
	cmp	dword ptr [rsp + 0xa0], 2
	je	.label_58
.label_88:
	cmp	ecx, 2
	jne	.label_114
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rsp + 0x78]
	jmp	.label_164
	nop	
.label_114:
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x70], rdx
	mov	qword ptr [rsp + 0x78], -1
	mov	rdx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 8], rdx
	mov	qword ptr [r14 + 0x10], -1
	cmp	dword ptr [rsp + 0xa0], 1
	mov	rdx, r12
	je	.label_121
	mov	rdx, r15
.label_121:
	mov	rsi, qword ptr [rsp + 0x80]
	inc	rsi
	sub	rsi, rdx
	mov	qword ptr [rsp + 0x80], rsi
	cmp	ecx, 1
	mov	rcx, r15
	cmove	rcx, r12
	mov	edx, 1
	sub	rdx, rcx
	add	qword ptr [r14 + 0x18], rdx
	mov	rdx, -1
	mov	rcx, -1
.label_164:
	cmp	rdx, -1
	sete	bl
	cmp	rcx, -1
	sete	r13b
	cmp	ebp, -1
	je	.label_158
	cmp	eax, -1
	jne	.label_60
.label_158:
	mov	rax, qword ptr [rsp + 0x80]
	cmp	qword ptr [rsp + 0x28], rax
	jb	.label_156
	mov	rcx, qword ptr [r14 + 0x18]
	cmp	qword ptr [rsp + 0x20], rcx
	jb	.label_156
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x70], rdx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 8], rsi
	mov	r12d, dword ptr [rsp + 0x1c]
.label_159:
	mov	rbx, rax
	sub	rbx, rcx
	jbe	.label_10
	mov	dl, byte ptr [rip + truncate_set1]
	and	dl, 1
	jne	.label_10
	test	rcx, rcx
	je	.label_12
	cmp	byte ptr [rip + translating],  0
	je	.label_15
	mov	eax, dword ptr [rsi]
	cmp	rax, 4
	ja	.label_19
	jmp	qword ptr [(rax * 8) + label_54]
.label_671:
	add	rsi, 0x10
	jmp	.label_56
.label_672:
	add	rsi, 0x11
.label_56:
	mov	bpl, byte ptr [rsi]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], bpl
	mov	qword ptr [rax + 0x18], rbx
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_59
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x18], rax
	mov	rcx, rax
.label_10:
	movzx	edx, byte ptr [rip + complement]
	and	edx, 1
	cmp	edx, 1
	jne	.label_67
	cmp	byte ptr [rsp + 0x99], 0
	je	.label_67
	cmp	rcx, rax
	jne	.label_117
	mov	qword ptr [r14 + 0x10], -2
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_117
	nop	word ptr cs:[rax + rax]
.label_116:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_67
	cmp	eax, ebx
	je	.label_116
.label_117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	jmp	.label_18
.label_67:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	mov	al, byte ptr [rip + squeeze_repeats]
	cmp	r12d, 1
	jne	.label_91
	test	al, 1
	je	.label_91
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x78], -2
	lea	rdi, [rsp + 0x68]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_122
	lea	rbx, [rsp + 0x68]
	nop	
.label_132:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_132
.label_122:
	test	bpl, 1
	je	.label_133
	movdqa	xmm0, xmmword ptr [rip + label_97]
	movdqa	xmm1, xmmword ptr [rip + in_squeeze_set]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + in_squeeze_set],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_134]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_134],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_135]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_135],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_136]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_136],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_137]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_137],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_138]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_138],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_139]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_139],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_140]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_140],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_141]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_141],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_142]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_142],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_143]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_143],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_144]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_144],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_145]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_145],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_146]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_146],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_147]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_147],  xmm1
	pxor	xmm0, xmmword ptr [rip + label_148]
	movdqa	xmmword ptr [rip + label_148],  xmm0
.label_133:
	mov	edi, OFFSET FLAT:plain_read
	jmp	.label_75
.label_91:
	mov	cl, byte ptr [rip + delete]
	cmp	r12d, 1
	jne	.label_16
	test	cl, 1
	je	.label_16
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x78], -2
	lea	rdi, [rsp + 0x68]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_87
	lea	rbx, [rsp + 0x68]
	nop	
.label_166:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_166
.label_87:
	test	bpl, 1
	je	.label_70
	movdqa	xmm0, xmmword ptr [rip + label_97]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_98]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_98],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_99]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_99],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_100]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_100],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_101]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_101],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_102]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_102],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_103]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_103],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_104]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_104],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_105]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_105],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_106]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_106],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_107]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_107],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_108]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_108],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_109]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_109],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_110]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_110],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_111]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_111],  xmm1
	pxor	xmm0, xmmword ptr [rip + label_112]
	movdqa	xmmword ptr [rip + label_112],  xmm0
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	read_and_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_63
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	je	.label_70
.label_161:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
.label_120:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_16:
	cmp	r12d, 2
	sete	dl
	and	dl, cl
	and	al, dl
	movzx	eax, al
	cmp	eax, 1
	jne	.label_74
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x78], -2
	lea	rdi, [rsp + 0x68]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_89
	lea	rbx, [rsp + 0x68]
	nop	word ptr cs:[rax + rax]
.label_118:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_118
.label_89:
	test	bpl, 1
	je	.label_119
	movdqa	xmm0, xmmword ptr [rip + label_97]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_98]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_98],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_99]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_99],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_100]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_100],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_101]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_101],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_102]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_102],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_103]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_103],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_104]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_104],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_105]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_105],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_106]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_106],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_107]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_107],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_108]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_108],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_109]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_109],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_110]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_110],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_111]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_111],  xmm1
	pxor	xmm0, xmmword ptr [rip + label_112]
	movdqa	xmmword ptr [rip + label_112],  xmm0
.label_119:
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_65
.label_69:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_65:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_69
	mov	edi, OFFSET FLAT:read_and_delete
	jmp	.label_75
.label_74:
	cmp	byte ptr [rip + translating],  0
	je	.label_63
	movzx	eax, byte ptr [rip + complement]
	and	eax, 1
	cmp	eax, 1
	jne	.label_76
	mov	qword ptr [rsp + 0x78], -2
	lea	rdi, [rsp + 0x68]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_84
	lea	rbx, [rsp + 0x68]
	nop	word ptr cs:[rax + rax]
.label_93:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_93
.label_84:
	mov	qword ptr [r14 + 0x10], -2
	movaps	xmm0, xmmword ptr [rip + label_22]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_23]
	movaps	xmmword ptr [rip + label_24],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rip + label_26],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rip + label_28],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_29]
	movaps	xmmword ptr [rip + label_30],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rip + label_32],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rip + label_34],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_35]
	movaps	xmmword ptr [rip + label_36],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rip + label_38],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_39]
	movaps	xmmword ptr [rip + label_40],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rip + label_42],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rip + label_44],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rip + label_46],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_47]
	movaps	xmmword ptr [rip + label_48],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rip + label_50],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_51]
	movdqa	xmmword ptr [rip + label_52],  xmm0
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_17:
	cmp	byte ptr [rbx + in_delete_set],  0
	jne	.label_9
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_64
	mov	byte ptr [rbx + xlate],  al
.label_9:
	inc	rbx
	cmp	rbx, 0x100
	jl	.label_17
	jmp	.label_20
.label_76:
	movaps	xmm0, xmmword ptr [rip + label_22]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_23]
	movaps	xmmword ptr [rip + label_24],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rip + label_26],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rip + label_28],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_29]
	movaps	xmmword ptr [rip + label_30],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rip + label_32],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rip + label_34],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_35]
	movaps	xmmword ptr [rip + label_36],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rip + label_38],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_39]
	movaps	xmmword ptr [rip + label_40],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rip + label_42],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rip + label_44],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_45]
	movaps	xmmword ptr [rip + label_46],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_47]
	movaps	xmmword ptr [rip + label_48],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_49]
	movaps	xmmword ptr [rip + label_50],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_51]
	movdqa	xmmword ptr [rip + label_52],  xmm0
	mov	qword ptr [rsp + 0x78], -2
	mov	qword ptr [r14 + 0x10], -2
	lea	r13, [rsp + 0x1a4]
	jmp	.label_53
.label_62:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	qword ptr [rsp + 0x78], -1
	mov	rax, qword ptr [r14 + 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
.label_53:
	lea	rdi, [rsp + 0x68]
	lea	rsi, [rsp + 0xa0]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r13
	call	get_next
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	r12d, dword ptr [rsp + 0x1a4]
	test	ecx, ecx
	jne	.label_153
	cmp	r12d, 1
	jne	.label_153
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	r15d, r15d
	nop	
.label_162:
	test	byte ptr [rbp + r15*2 + 1], 2
	je	.label_157
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r15*4]
	mov	byte ptr [r15 + xlate],  al
.label_157:
	inc	r15
	cmp	r15, 0x100
	jne	.label_162
	jmp	.label_13
	nop	dword ptr [rax]
.label_153:
	cmp	ecx, 1
	jne	.label_165
	test	r12d, r12d
	jne	.label_165
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_55:
	test	byte ptr [rbp + rbx*2 + 1], 1
	je	.label_170
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + rbx*4]
	mov	byte ptr [rbx + xlate],  al
.label_170:
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_55
	jmp	.label_13
	nop	word ptr cs:[rax + rax]
.label_165:
	cmp	ebp, -1
	je	.label_85
	cmp	eax, -1
	je	.label_85
	movsxd	rcx, ebp
	mov	byte ptr [rcx + xlate],  al
.label_13:
	cmp	r12d, 2
	je	.label_53
	jmp	.label_62
.label_85:
	cmp	ebp, -1
	je	.label_20
	mov	al, byte ptr [rip + truncate_set1]
	and	al, 1
	jne	.label_20
	mov	edi, OFFSET FLAT:.str.27
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x762
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_64:
	mov	al, byte ptr [rip + truncate_set1]
	and	al, 1
	je	.label_61
.label_20:
	movzx	eax, byte ptr [rip + squeeze_repeats]
	and	eax, 1
	cmp	eax, 1
	jne	.label_14
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_66
	nop	word ptr cs:[rax + rax]
.label_78:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_66:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_78
	mov	edi, OFFSET FLAT:read_and_xlate
.label_75:
	call	squeeze_filter
.label_63:
	xor	ebp, ebp
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_83
.label_160:
	mov	eax, ebp
	add	rsp, 0x1a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:io_buf
	mov	edx, 0x2000
	call	safe_read
	mov	rbx, rax
	test	rbx, rbx
	je	.label_63
	cmp	rbx, -1
	je	.label_127
	lea	rdi, [rbx - 1]
	test	bl, 3
	mov	eax, 0
	je	.label_94
	mov	edx, ebx
	and	edx, 3
	xor	eax, eax
	nop	
.label_95:
	movzx	esi, byte ptr [rax + io_buf]
	mov	cl, byte ptr [rsi + xlate]
	mov	byte ptr [rax + io_buf],  cl
	inc	rax
	cmp	rdx, rax
	jne	.label_95
.label_94:
	cmp	rdi, 3
	jb	.label_124
	nop	word ptr cs:[rax + rax]
.label_131:
	movzx	ecx, byte ptr [rax + io_buf]
	mov	cl, byte ptr [rcx + xlate]
	mov	byte ptr [rax + io_buf],  cl
	movzx	ecx, byte ptr [rax + label_128]
	mov	cl, byte ptr [rcx + xlate]
	mov	byte ptr [rax + label_128],  cl
	movzx	ecx, byte ptr [rax + label_129]
	mov	cl, byte ptr [rcx + xlate]
	mov	byte ptr [rax + label_129],  cl
	movzx	ecx, byte ptr [rax + label_130]
	mov	cl, byte ptr [rcx + xlate]
	mov	byte ptr [rax + label_130],  cl
	add	rax, 4
	cmp	rbx, rax
	jne	.label_131
.label_124:
	test	rbx, rbx
	je	.label_63
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	je	.label_14
	jmp	.label_161
.label_113:
	cmp	eax, 0xffffff7d
	je	.label_90
	cmp	eax, 0xffffff7e
	jne	.label_72
	xor	edi, edi
	call	usage
.label_90:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.16
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_72:
	mov	edi, 1
	call	usage
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	jmp	.label_18
.label_125:
	xor	edi, edi
	cmp	eax, ebp
	jne	.label_21
	mov	esi, OFFSET FLAT:.str.17_0
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
.label_82:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	movsxd	rcx, ebx
	add	rcx, rax
	mov	rdi, qword ptr [r15 + rcx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	cmp	r12d, 2
	jne	.label_73
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.19
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_73:
	mov	edi, 1
	call	usage
.label_21:
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rbx, qword ptr [rip + stderr]
	mov	al, byte ptr [rip + squeeze_repeats]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.20
	mov	esi, OFFSET FLAT:.str.21
	cmovne	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.19
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	jmp	.label_18
.label_83:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	jmp	.label_120
.label_152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	jmp	.label_18
.label_154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	jmp	.label_18
.label_156:
	mov	edi, OFFSET FLAT:.str.91
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x4c5
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_case_classes
	call	__assert_fail
.label_149:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	jmp	.label_18
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	jmp	.label_18
.label_15:
	mov	edi, OFFSET FLAT:.str.92
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x55e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.string2_extend
	call	__assert_fail
.label_59:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_repeated_char
	call	__assert_fail
.label_127:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	jmp	.label_120
.label_19:
	call	abort
.label_673:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
.label_18:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_61:
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x72d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl parse_str
	.type parse_str, @function
parse_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x50], rbx
	call	strlen
	mov	r14, rax
	mov	rdi, r14
	call	xmalloc
	mov	r12, rax
	mov	esi, 1
	mov	rdi, r14
	call	xcalloc
	mov	rdx, rbx
	mov	r9, rax
	mov	qword ptr [rsp + 0x38], r9
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_189
	nop	dword ptr [rax]
.label_187:
	inc	r13d
	inc	ebp
.label_189:
	mov	eax, ebp
	movzx	eax, byte ptr [rdx + rax]
	cmp	eax, 0x5c
	je	.label_193
	test	al, al
	je	.label_196
	mov	ecx, r13d
	mov	byte ptr [r12 + rcx], al
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_193:
	mov	r15, r12
	mov	esi, r13d
	mov	byte ptr [r9 + rsi], 1
	lea	r12d, [rbp + 1]
	mov	bl, byte ptr [rdx + r12]
	movsx	eax, bl
	cmp	eax, 0x5b
	jg	.label_202
	lea	ecx, [rax - 0x30]
	cmp	ecx, 8
	jae	.label_206
	add	bl, 0xd0
	lea	r14d, [rbp + 2]
	movsx	eax, byte ptr [rdx + r14]
	add	eax, -0x30
	cmp	eax, 7
	ja	.label_209
	movzx	ecx, bl
	lea	ebx, [rax + rcx*8]
	add	ebp, 3
	movsx	eax, byte ptr [rdx + rbp]
	add	eax, -0x30
	cmp	eax, 7
	ja	.label_215
	mov	qword ptr [rsp + 0x48], rsi
	movzx	ecx, bl
	lea	eax, [rax + rcx*8]
	cmp	eax, 0xff
	jg	.label_218
	mov	ebp, r14d
	mov	bl, al
	mov	r12, r15
	jmp	.label_178
	nop	dword ptr [rax + rax]
.label_202:
	cmp	eax, 0x65
	mov	r12, r15
	jg	.label_222
	cmp	eax, 0x5c
	je	.label_225
	cmp	eax, 0x61
	je	.label_226
	mov	qword ptr [rsp + 0x48], rsi
	mov	r14, r9
	cmp	eax, 0x62
	jne	.label_182
	mov	bl, 8
	jmp	.label_182
.label_222:
	mov	qword ptr [rsp + 0x48], rsi
	mov	r14, r9
	lea	ecx, [rax - 0x6e]
	cmp	ecx, 8
	ja	.label_230
	jmp	qword ptr [(rcx * 8) + label_234]
.label_676:
	mov	bl, 0xa
	jmp	.label_182
.label_209:
	mov	r12, r15
	jmp	.label_232
.label_215:
	mov	ebp, r12d
	mov	r12, r15
	jmp	.label_232
.label_206:
	mov	qword ptr [rsp + 0x48], rsi
	mov	r14, r9
	test	eax, eax
	mov	r12, r15
	jne	.label_182
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r9, r14
	mov	rsi, qword ptr [rsp + 0x48]
	mov	byte ptr [r9 + rsi], 0
	dec	ebp
	mov	bl, 0x5c
	jmp	.label_232
.label_225:
	mov	bl, 0x5c
	jmp	.label_232
.label_226:
	mov	bl, 7
	jmp	.label_232
.label_218:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 0x50]
	movsx	ecx, byte ptr [rax + r12]
	movsx	r8d, byte ptr [rax + r14]
	movsx	r9d, byte ptr [rax + rbp]
	mov	dword ptr [rsp + 0x10], r9d
	mov	dword ptr [rsp + 8], r8d
	mov	dword ptr [rsp], ecx
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	call	error
	mov	r9, qword ptr [rsp + 0x38]
	mov	ebp, r12d
	mov	r12, r15
	jmp	.label_178
.label_230:
	cmp	eax, 0x66
	jne	.label_182
	mov	bl, 0xc
	jmp	.label_182
.label_677:
	mov	bl, 0xd
	jmp	.label_182
.label_678:
	mov	bl, 9
	jmp	.label_182
.label_679:
	mov	bl, 0xb
.label_182:
	mov	r9, r14
.label_178:
	mov	rsi, qword ptr [rsp + 0x48]
.label_232:
	inc	ebp
	mov	byte ptr [r12 + rsi], bl
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_187
.label_196:
	mov	eax, r13d
	mov	qword ptr [rsp + 0x50], rax
	xor	r14d, r14d
	cmp	r13d, 3
	jb	.label_179
	mov	rax, qword ptr [rsp + 0x50]
	dec	rax
	mov	qword ptr [rsp + 0x48], rax
	xor	r15d, r15d
	mov	ebp, 2
	nop	
.label_177:
	movzx	r13d, byte ptr [r12 + r15]
	cmp	r13, 0x5b
	jne	.label_198
	cmp	byte ptr [r9 + r15], 0
	jne	.label_198
	lea	rdi, [r12 + r15]
	lea	r8, [r15 + 1]
	movzx	ebx, byte ptr [r12 + r15 + 1]
	cmp	ebx, 0x3d
	je	.label_200
	movzx	eax, bl
	cmp	eax, 0x3a
	jne	.label_173
.label_200:
	cmp	byte ptr [r9 + r8], 0
	jne	.label_173
	cmp	qword ptr [rsp + 0x48], rbp
	mov	r14, rbp
	jbe	.label_173
	nop	word ptr cs:[rax + rax]
.label_203:
	movzx	ecx, byte ptr [r12 + r14]
	movzx	eax, bl
	cmp	ecx, eax
	jne	.label_212
	movzx	ecx, byte ptr [r12 + r14 + 1]
	cmp	ecx, 0x5d
	jne	.label_212
	cmp	byte ptr [r9 + r14], 0
	jne	.label_212
	cmp	byte ptr [r9 + r14 + 1], 0
	je	.label_184
	nop	word ptr [rax + rax]
.label_212:
	inc	r14
	cmp	r14, qword ptr [rsp + 0x48]
	jb	.label_203
.label_173:
	lea	rax, [r15 + 2]
	cmp	rax, qword ptr [rsp + 0x50]
	jae	.label_220
	movzx	ecx, byte ptr [r12 + rax]
	cmp	ecx, 0x2a
	jne	.label_198
	cmp	byte ptr [r9 + rax], 0
	jne	.label_198
	lea	rax, [r15 + 3]
	cmp	rax, qword ptr [rsp + 0x50]
	mov	rbp, rax
	jae	.label_198
	nop	dword ptr [rax + rax]
.label_231:
	cmp	byte ptr [r9 + rbp], 0
	jne	.label_198
	movzx	ecx, byte ptr [r12 + rbp]
	cmp	ecx, 0x5d
	je	.label_228
	inc	rbp
	cmp	rbp, qword ptr [rsp + 0x50]
	jb	.label_231
	nop	
.label_198:
	lea	r14, [r15 + 1]
	movzx	eax, byte ptr [r12 + r15 + 1]
	cmp	eax, 0x2d
	jne	.label_233
	cmp	byte ptr [r9 + r14], 0
	je	.label_237
.label_233:
	mov	rbx, r9
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], r13b
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_207
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	mov	r9, rbx
	jmp	.label_224
.label_237:
	mov	bl, byte ptr [r15 + r12 + 2]
	movzx	ebp, bl
	movzx	eax, r13b
	cmp	ebp, eax
	jb	.label_240
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 1
	mov	byte ptr [rax + 0x10], r13b
	mov	byte ptr [rax + 0x11], bl
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_243
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	add	r15, 3
	mov	r14, r15
	mov	r9, qword ptr [rsp + 0x38]
	nop	dword ptr [rax]
.label_224:
	lea	rbp, [r14 + 2]
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	r15, r14
	jb	.label_177
	jmp	.label_179
.label_228:
	mov	r14, rbp
	sub	r14, r8
	add	r14, -2
	je	.label_181
	lea	r13, [r12 + rax]
	movzx	eax, byte ptr [r12 + rax]
	mov	edx, 8
	cmp	eax, 0x30
	je	.label_172
	mov	edx, 0xa
.label_172:
	xor	r8d, r8d
	mov	rdi, r13
	lea	rsi, [rsp + 0x60]
	lea	rcx, [rsp + 0x58]
	call	xstrtoumax
	test	eax, eax
	jne	.label_190
	mov	r15, qword ptr [rsp + 0x58]
	cmp	r15, -1
	je	.label_190
	lea	rax, [r13 + r14]
	cmp	rax, qword ptr [rsp + 0x60]
	je	.label_194
	jmp	.label_190
.label_184:
	lea	rcx, [r14 - 1]
	mov	rdx, rcx
	sub	rdx, rbp
	inc	rdx
	je	.label_199
	add	rdi, 2
	cmp	eax, 0x3a
	jne	.label_204
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x28], r12
	mov	esi, OFFSET FLAT:.str.57
	mov	qword ptr [rsp + 0x30], rdi
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_211
	xor	r12d, r12d
	test	eax, eax
	je	.label_174
.label_211:
	mov	esi, OFFSET FLAT:.str.58
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_216
	mov	r12d, 1
	test	eax, eax
	je	.label_174
.label_216:
	mov	esi, OFFSET FLAT:.str.59
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_221
	mov	r12d, 2
	test	eax, eax
	je	.label_174
.label_221:
	mov	esi, OFFSET FLAT:.str.60
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_227
	mov	r12d, 3
	test	eax, eax
	je	.label_174
.label_227:
	mov	esi, OFFSET FLAT:.str.61
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_235
	mov	r12d, 4
	test	eax, eax
	je	.label_174
.label_235:
	mov	esi, OFFSET FLAT:.str.62
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_238
	mov	r12d, 5
	test	eax, eax
	je	.label_174
.label_238:
	mov	esi, OFFSET FLAT:.str.63
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_241
	mov	r12d, 6
	test	eax, eax
	je	.label_174
.label_241:
	mov	esi, OFFSET FLAT:.str.64
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_191
	mov	r12d, 7
	test	eax, eax
	je	.label_174
.label_191:
	mov	esi, OFFSET FLAT:.str.65
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_219
	mov	r12d, 8
	test	eax, eax
	je	.label_174
.label_219:
	mov	esi, OFFSET FLAT:.str.66
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_185
	mov	r12d, 9
	test	eax, eax
	je	.label_174
.label_185:
	mov	esi, OFFSET FLAT:.str.67
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_208
	mov	r12d, 0xa
	test	eax, eax
	je	.label_174
.label_208:
	mov	esi, OFFSET FLAT:.str.68
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r12, rdx
	call	strncmp
	mov	rsi, r12
	cmp	rsi, 6
	jne	.label_197
	mov	r12d, 0xb
	test	eax, eax
	jne	.label_197
.label_174:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 2
	mov	dword ptr [rax + 0x10], r12d
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_205
	mov	qword ptr [rcx + 8], rax
	mov	r12, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x38]
	jmp	.label_210
.label_204:
	mov	qword ptr [rsp + 0x30], rdi
	cmp	rcx, rbp
	jne	.label_213
	mov	rbx, r9
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 3
	mov	rcx, qword ptr [rsp + 0x30]
	mov	cl, byte ptr [rcx]
	mov	byte ptr [rax + 0x10], cl
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_217
	mov	qword ptr [rcx + 8], rax
	mov	r9, rbx
.label_210:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rdx + 8], rax
	add	r14, 2
	jmp	.label_224
.label_181:
	mov	qword ptr [rsp + 0x58], 0
	xor	r15d, r15d
.label_194:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], bl
	mov	qword ptr [rax + 0x18], r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_229
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	lea	r14, [rbp + 1]
	add	rbp, 3
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	r15, r14
	mov	r9, qword ptr [rsp + 0x38]
	jb	.label_177
	jmp	.label_179
.label_213:
	movzx	eax, byte ptr [r12 + rbp]
	cmp	eax, 0x2a
	mov	rdi, qword ptr [rsp + 0x30]
	jne	.label_175
	cmp	byte ptr [r9 + rbp], 0
	jne	.label_175
	inc	rbp
.label_244:
	mov	rax, rbp
	cmp	rax, qword ptr [rsp + 0x50]
	jae	.label_175
	movzx	ecx, byte ptr [r12 + rax]
	lea	esi, [rcx - 0x30]
	cmp	esi, 9
	ja	.label_242
	lea	rbp, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_244
.label_242:
	movzx	ecx, cl
	cmp	ecx, 0x5d
	jne	.label_175
	cmp	byte ptr [r9 + rax], 0
	je	.label_173
	jmp	.label_175
.label_197:
	mov	r12, qword ptr [rsp + 0x28]
	movzx	eax, byte ptr [r12 + rbp]
	cmp	eax, 0x2a
	mov	r9, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x30]
	jne	.label_188
	cmp	byte ptr [r9 + rbp], 0
	jne	.label_188
	inc	rbp
.label_186:
	mov	rax, rbp
	cmp	rax, qword ptr [rsp + 0x50]
	jae	.label_188
	movzx	ecx, byte ptr [r12 + rax]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_183
	lea	rbp, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_186
.label_183:
	movzx	ecx, cl
	cmp	ecx, 0x5d
	jne	.label_188
	cmp	byte ptr [r9 + rax], 0
	je	.label_173
.label_188:
	call	make_printable_str
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	jmp	.label_176
.label_179:
	mov	qword ptr [rsp + 0x38], r9
	mov	r13b, 1
	cmp	r14, qword ptr [rsp + 0x50]
	jae	.label_171
	mov	rbp, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_214:
	mov	bl, byte ptr [r12 + r14]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], bl
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	je	.label_207
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp + 8], rax
	inc	r14
	cmp	r14, qword ptr [rsp + 0x50]
	jb	.label_214
.label_171:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	al, r13b
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_240:
	mov	edi, 5
	call	xmalloc
	mov	r14, rax
	call	__ctype_b_loc
	mov	r15, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + r13*2 + 1], 0x40
	jne	.label_223
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.77
	xor	eax, eax
	mov	rdi, r14
	mov	qword ptr [rsp + 0x50], r14
	mov	r8d, r13d
	call	__sprintf_chk
	jmp	.label_201
.label_223:
	mov	byte ptr [r14], r13b
	mov	byte ptr [r14 + 1], 0
	mov	qword ptr [rsp + 0x50], r14
.label_201:
	mov	edi, 5
	call	xmalloc
	mov	r14, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_236
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.77
	xor	eax, eax
	mov	rdi, r14
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_239
.label_236:
	mov	byte ptr [r14], bl
	mov	byte ptr [r14 + 1], 0
.label_239:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rbx, qword ptr [rsp + 0x50]
	mov	rcx, rbx
	mov	r8, r14
	call	error
	mov	rdi, rbx
	call	free
	mov	rdi, r14
	call	free
	jmp	.label_171
.label_175:
	mov	qword ptr [rsp + 0x38], r9
	mov	rsi, rdx
	call	make_printable_str
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
.label_176:
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_180
.label_190:
	mov	rdi, r13
	mov	rsi, r14
	call	make_printable_str
	mov	r15, rax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rdi, r15
	call	free
	jmp	.label_171
.label_199:
	mov	qword ptr [rsp + 0x38], r9
	xor	edi, edi
	cmp	eax, 0x3a
	jne	.label_192
	mov	esi, OFFSET FLAT:.str.52
	jmp	.label_195
.label_192:
	mov	esi, OFFSET FLAT:.str.53
.label_195:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_180:
	xor	r13d, r13d
	jmp	.label_171
.label_207:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x287
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_normal_char
	call	__assert_fail
.label_220:
	mov	edi, OFFSET FLAT:.str.78
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x30e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.find_bracketed_repeat
	call	__assert_fail
.label_243:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x2a5
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_range
	call	__assert_fail
.label_229:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_repeated_char
	call	__assert_fail
.label_205:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x2bb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_char_class
	call	__assert_fail
.label_217:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x2e5
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_equiv_class
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl squeeze_filter
	.type squeeze_filter, @function
squeeze_filter:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15d, 0x7fffffff
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_250
.label_246:
	mov	r15d, 0x7fffffff
	nop	
.label_250:
	cmp	rbx, r12
	mov	rax, rbx
	jb	.label_252
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	r14
	mov	r12, rax
	test	r12, r12
	mov	eax, 0
	je	.label_257
.label_252:
	cmp	r15d, 0x7fffffff
	jne	.label_260
	mov	r15, r12
	sub	r15, rax
	mov	rbx, rax
	jbe	.label_247
	nop	
.label_254:
	movzx	ecx, byte ptr [rbx + io_buf]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	jne	.label_247
	add	rbx, 2
	cmp	rbx, r12
	jb	.label_254
.label_247:
	cmp	rbx, r12
	jne	.label_258
	movzx	ecx, byte ptr [r12 + label_255]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	mov	rbx, r12
	je	.label_258
	lea	rbx, [r12 - 1]
.label_258:
	cmp	rbx, r12
	jae	.label_248
	movsx	ebp, byte ptr [rbx + io_buf]
	mov	rcx, rbx
	sub	rcx, rax
	lea	r15, [rcx + 1]
	test	rbx, rbx
	je	.label_251
	movzx	edx, byte ptr [rbx + label_255]
	movzx	esi, bpl
	cmp	edx, esi
	je	.label_256
	mov	rcx, r15
.label_256:
	mov	r15, rcx
.label_251:
	inc	rbx
	jmp	.label_261
	nop	dword ptr [rax]
.label_260:
	mov	ebp, r15d
	mov	rbx, rax
	jmp	.label_245
	nop	dword ptr [rax + rax]
.label_248:
	mov	ebp, 0x7fffffff
.label_261:
	test	r15, r15
	je	.label_253
	lea	rdi, qword ptr [rax + io_buf]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, r15
	call	fwrite_unlocked
	cmp	rax, r15
	jne	.label_249
.label_253:
	cmp	ebp, 0x7fffffff
	mov	r15d, 0x7fffffff
	je	.label_250
.label_245:
	cmp	rbx, r12
	mov	r15d, ebp
	jae	.label_250
	nop	dword ptr [rax + rax]
.label_259:
	movsx	eax, byte ptr [rbx + io_buf]
	cmp	eax, ebp
	jne	.label_246
	inc	rbx
	cmp	rbx, r12
	jb	.label_259
	mov	r15d, ebp
	jmp	.label_250
.label_257:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_249:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403900

	.globl plain_read
	.type plain_read, @function
plain_read:
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	call	safe_read
	cmp	rax, -1
	je	.label_262
	pop	rbx
	ret	
.label_262:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403950

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
.label_264:
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	call	safe_read
	mov	rcx, rax
	test	rcx, rcx
	je	.label_265
	cmp	rcx, -1
	mov	eax, 0
	je	.label_271
	nop	word ptr [rax + rax]
.label_270:
	movzx	edx, byte ptr [rbx + rax]
	cmp	byte ptr [rdx + in_delete_set],  0
	jne	.label_263
	inc	rax
	cmp	rax, rcx
	mov	rdx, rax
	jb	.label_270
	jmp	.label_268
	nop	word ptr [rax + rax]
.label_263:
	mov	rdx, rax
	mov	rsi, rdx
	nop	word ptr cs:[rax + rax]
.label_269:
	lea	rdx, [rsi + 1]
	cmp	rdx, rcx
	jae	.label_267
	movzx	edi, byte ptr [rbx + rsi + 1]
	cmp	byte ptr [rdi + in_delete_set],  0
	mov	rsi, rdx
	jne	.label_269
	mov	byte ptr [rbx + rax], dil
	inc	rax
.label_268:
	mov	rsi, rdx
	jmp	.label_269
	nop	word ptr cs:[rax + rax]
.label_267:
	test	rax, rax
	je	.label_264
	jmp	.label_266
.label_265:
	xor	eax, eax
.label_266:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_271:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a30

	.globl get_next
	.type get_next, @function
get_next:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	jmp	.label_278
.label_279:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
	nop	dword ptr [rax]
.label_278:
	test	rsi, rsi
	je	.label_288
	mov	dword ptr [rsi], 2
.label_288:
	mov	rax, qword ptr [r14 + 0x10]
	cmp	rax, -2
	jne	.label_285
	mov	rax, qword ptr [r14]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], r15
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	jmp	.label_289
	nop	word ptr cs:[rax + rax]
.label_285:
	mov	r15, qword ptr [r14 + 8]
.label_289:
	mov	ebx, 0xffffffff
	test	r15, r15
	je	.label_274
	mov	ecx, dword ptr [r15]
	cmp	rcx, 4
	ja	.label_283
	jmp	qword ptr [(rcx * 8) + label_277]
.label_688:
	mov	rcx, qword ptr [r15 + 0x18]
	test	rcx, rcx
	je	.label_279
	cmp	rax, -1
	jne	.label_282
	mov	qword ptr [r14 + 0x10], 0
	xor	eax, eax
.label_282:
	inc	rax
	mov	qword ptr [r14 + 0x10], rax
	movzx	ebx, byte ptr [r15 + 0x10]
	cmp	rax, rcx
	je	.label_281
	jmp	.label_274
.label_685:
	movzx	ebx, byte ptr [r15 + 0x10]
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	jmp	.label_274
.label_686:
	cmp	rax, -1
	je	.label_272
	inc	rax
	mov	cl, byte ptr [r15 + 0x11]
	mov	rbx, rax
	jmp	.label_273
.label_687:
	test	rsi, rsi
	je	.label_275
	mov	eax, dword ptr [r15 + 0x10]
	cmp	eax, 0xa
	je	.label_276
	cmp	eax, 6
	jne	.label_275
	mov	dword ptr [rsi], 0
	jmp	.label_275
.label_272:
	movzx	ecx, word ptr [r15 + 0x10]
	movzx	ebx, cl
	shr	ecx, 8
.label_273:
	mov	qword ptr [r14 + 0x10], rbx
	movzx	eax, cl
	cmp	rbx, rax
	jne	.label_274
	jmp	.label_281
.label_276:
	mov	dword ptr [rsi], 1
.label_275:
	mov	rbx, qword ptr [r14 + 0x10]
	cmp	rbx, -1
	jne	.label_284
	mov	ebx, dword ptr [r15 + 0x10]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_291:
	movzx	esi, bpl
	mov	edi, ebx
	call	is_char_class_member
	test	al, al
	jne	.label_290
	inc	ebp
	cmp	ebp, 0x100
	jl	.label_291
	mov	edi, OFFSET FLAT:.str.97
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x434
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_next
	call	__assert_fail
.label_290:
	movsxd	rbx, ebp
	mov	qword ptr [r14 + 0x10], rbx
.label_284:
	mov	r12d, dword ptr [r15 + 0x10]
	movzx	esi, bl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	je	.label_280
	lea	ebp, [rbx + 1]
	cmp	ebp, 0xff
	jg	.label_281
	nop	word ptr [rax + rax]
.label_287:
	movzx	esi, bpl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	jne	.label_286
	inc	ebp
	cmp	ebp, 0x100
	jl	.label_287
.label_281:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
	jmp	.label_274
.label_286:
	movsxd	rax, ebp
	mov	qword ptr [r14 + 0x10], rax
.label_274:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_283:
	call	abort
.label_280:
	mov	edi, OFFSET FLAT:.str.98
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x437
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_next
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c30

	.globl read_and_xlate
	.type read_and_xlate, @function
read_and_xlate:
	push	rbx
	mov	rax, rsi
	mov	rbx, rdi
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, rax
	call	safe_read
	test	rax, rax
	je	.label_293
	cmp	rax, -1
	je	.label_295
	lea	r8, [rax - 1]
	xor	edx, edx
	test	al, 3
	je	.label_296
	mov	esi, eax
	and	esi, 3
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_294:
	movzx	edi, byte ptr [rbx + rdx]
	mov	cl, byte ptr [rdi + xlate]
	mov	byte ptr [rbx + rdx], cl
	inc	rdx
	cmp	rsi, rdx
	jne	.label_294
.label_296:
	cmp	r8, 3
	jb	.label_293
	mov	rcx, rax
	sub	rcx, rdx
	lea	rdx, [rdx + rbx + 3]
	nop	word ptr cs:[rax + rax]
.label_292:
	movzx	esi, byte ptr [rdx - 3]
	mov	bl, byte ptr [rsi + xlate]
	mov	byte ptr [rdx - 3], bl
	movzx	esi, byte ptr [rdx - 2]
	mov	bl, byte ptr [rsi + xlate]
	mov	byte ptr [rdx - 2], bl
	movzx	esi, byte ptr [rdx - 1]
	mov	bl, byte ptr [rsi + xlate]
	mov	byte ptr [rdx - 1], bl
	movzx	esi, byte ptr [rdx]
	mov	bl, byte ptr [rsi + xlate]
	mov	byte ptr [rdx], bl
	add	rdx, 4
	add	rcx, -4
	jne	.label_292
.label_293:
	pop	rbx
	ret	
.label_295:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d10

	.globl make_printable_str
	.type make_printable_str, @function
make_printable_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [r14 + 1]
	mov	rax, rdi
	shr	rax, 0x3d
	jne	.label_299
	shl	rdi, 2
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	test	r14, r14
	je	.label_302
	lea	r15, [rsp + 0x13]
	mov	r13, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_303:
	mov	r12b, byte ptr [rbx]
	movzx	ebp, r12b
	lea	eax, [rbp - 7]
	cmp	eax, 6
	ja	.label_300
	jmp	qword ptr [(rax * 8) + label_301]
.label_638:
	mov	esi, OFFSET FLAT:.str.70
	jmp	.label_297
	nop	dword ptr [rax]
.label_300:
	cmp	ebp, 0x5c
	mov	esi, OFFSET FLAT:.str.69
	je	.label_297
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_298
	mov	esi, 1
	mov	edx, 5
	mov	ecx, OFFSET FLAT:.str.77
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_304
.label_639:
	mov	esi, OFFSET FLAT:.str.71
	jmp	.label_297
.label_640:
	mov	esi, OFFSET FLAT:.str.75
	jmp	.label_297
.label_641:
	mov	esi, OFFSET FLAT:.str.73
	jmp	.label_297
.label_642:
	mov	esi, OFFSET FLAT:.str.76
	jmp	.label_297
.label_643:
	mov	esi, OFFSET FLAT:.str.72
	jmp	.label_297
.label_644:
	mov	esi, OFFSET FLAT:.str.74
	jmp	.label_297
.label_298:
	mov	byte ptr [rsp + 0x13], r12b
	mov	byte ptr [rsp + 0x14], 0
.label_304:
	mov	rsi, r15
	nop	
.label_297:
	mov	rdi, r13
	call	stpcpy
	mov	r13, rax
	inc	rbx
	dec	r14
	jne	.label_303
.label_302:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_299:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e20

	.globl get_spec_stats
	.type get_spec_stats, @function
get_spec_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rdi + 0x20], 0
	mov	byte ptr [rdi + 0x32], 0
	mov	word ptr [rdi + 0x30], 0
	mov	rbx, qword ptr [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	r12d, 1
	movdqa	xmm8, xmmword ptr [rip + label_307]
	movdqa	xmm9, xmmword ptr [rip + label_308]
	movdqa	xmm10, xmmword ptr [rip + label_169]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_315:
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_305
	mov	r13d, 1
	mov	eax, dword ptr [rbx]
	cmp	rax, 4
	ja	.label_310
	jmp	qword ptr [(rax * 8) + label_316]
.label_705:
	movzx	eax, byte ptr [rbx + 0x11]
	movzx	ecx, byte ptr [rbx + 0x10]
	cmp	eax, ecx
	jb	.label_314
	lea	r13, [rax + 1]
	sub	r13, rcx
	jmp	.label_309
.label_706:
	mov	byte ptr [rdi + 0x31], 1
	mov	ebp, dword ptr [rbx + 0x10]
	xor	r14d, r14d
	xor	r13d, r13d
	nop	
.label_313:
	movzx	esi, r14b
	mov	edi, ebp
	call	is_char_class_member
	movzx	eax, al
	add	r13, rax
	inc	r14d
	cmp	r14d, 0x100
	jne	.label_313
	cmp	ebp, 6
	je	.label_311
	cmp	ebp, 0xa
	mov	rdi, qword ptr [rsp + 0x10]
	movdqa	xmm8, xmmword ptr [rip + label_307]
	movdqa	xmm9, xmmword ptr [rip + label_308]
	movdqa	xmm10, xmmword ptr [rip + label_169]
	je	.label_309
	mov	byte ptr [rdi + 0x32], 1
	jmp	.label_309
.label_707:
	movd	xmm0, dword ptr [rbx + 0x10]
	pshufd	xmm0, xmm0, 0x44
	pxor	xmm5, xmm5
	xor	eax, eax
	pxor	xmm1, xmm1
	nop	dword ptr [rax]
.label_312:
	movd	xmm2, eax
	pshufd	xmm2, xmm2, 0x44
	movq	xmm3, r12
	pslldq	xmm3, 8
	movdqa	xmm4, xmm2
	paddq	xmm4, xmm3
	pand	xmm4, xmm8
	paddq	xmm2, xmm9
	pand	xmm2, xmm8
	movdqa	xmm6, xmm0
	pand	xmm6, xmm8
	pcmpeqd	xmm4, xmm6
	pshufd	xmm7, xmm4, 0xb1
	pand	xmm4, xmm10
	pand	xmm4, xmm7
	pcmpeqd	xmm2, xmm6
	pshufd	xmm7, xmm2, 0xb1
	pand	xmm2, xmm10
	pand	xmm2, xmm7
	paddq	xmm4, xmm5
	paddq	xmm2, xmm1
	mov	ecx, eax
	or	ecx, 4
	movd	xmm1, ecx
	pshufd	xmm1, xmm1, 0x44
	paddq	xmm3, xmm1
	pand	xmm3, xmm8
	paddq	xmm1, xmm9
	pand	xmm1, xmm8
	pcmpeqd	xmm3, xmm6
	pshufd	xmm5, xmm3, 0xb1
	pand	xmm3, xmm10
	pand	xmm3, xmm5
	pcmpeqd	xmm1, xmm6
	pshufd	xmm5, xmm1, 0xb1
	pand	xmm1, xmm10
	pand	xmm1, xmm5
	movdqa	xmm5, xmm3
	paddq	xmm5, xmm4
	paddq	xmm1, xmm2
	add	eax, 8
	cmp	eax, 0x100
	jne	.label_312
	paddq	xmm1, xmm5
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r13, xmm0
	mov	byte ptr [rdi + 0x30], 1
	jmp	.label_309
.label_708:
	mov	r13, qword ptr [rbx + 0x18]
	test	r13, r13
	jne	.label_309
	mov	qword ptr [rdi + 0x28], rbx
	mov	rax, qword ptr [rsp + 8]
	inc	rax
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rdi + 0x20], rax
	xor	r13d, r13d
	jmp	.label_309
.label_311:
	mov	rdi, qword ptr [rsp + 0x10]
	movdqa	xmm8, xmmword ptr [rip + label_307]
	movdqa	xmm9, xmmword ptr [rip + label_308]
	movdqa	xmm10, xmmword ptr [rip + label_169]
	nop	dword ptr [rax]
.label_309:
	add	r13, r15
	cmp	r15, r13
	ja	.label_306
	cmp	r13, -1
	mov	r15, r13
	jne	.label_315
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.89
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_305:
	mov	qword ptr [rdi + 0x18], r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_310:
	call	abort
.label_314:
	mov	edi, OFFSET FLAT:.str.88
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x4ee
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_spec_stats
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl is_char_class_member
	.type is_char_class_member, @function
is_char_class_member:
	push	rbx
	mov	eax, edi
	cmp	edi, 0xb
	ja	.label_319
	jmp	qword ptr [(rax * 8) + label_318]
.label_625:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 8
	jmp	.label_317
.label_627:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	jmp	.label_317
.label_628:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 2
	jmp	.label_317
.label_629:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x800
	jmp	.label_317
.label_634:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x2000
	jmp	.label_317
.label_636:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x1000
	jmp	.label_317
.label_626:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x400
	jmp	.label_317
.label_630:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x8000
	jmp	.label_317
.label_631:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x200
	jmp	.label_317
.label_632:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x4000
	jmp	.label_317
.label_633:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 4
	jmp	.label_317
.label_635:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x100
.label_317:
	test	eax, eax
	setne	al
	pop	rbx
	ret	
.label_319:
	call	abort
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404210
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404220
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404230

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_323
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_322
	cmp	dword ptr [rbp], 0x20
	jne	.label_322
.label_323:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_321
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_322:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_320
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_321:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_320:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
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
	#Procedure 0x4042f0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_324
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_324:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404320

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_325
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_326
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_326
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_327
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_327:
	mov	rbx, r14
.label_326:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_325:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0
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
	#Procedure 0x404410
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
	#Procedure 0x404420
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
	#Procedure 0x404430
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
	#Procedure 0x404470
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
	#Procedure 0x404490
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_328
	test	rdx, rdx
	je	.label_328
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_328:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0
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
	.align	16
	#Procedure 0x404540

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
.label_398:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_453
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_335]
.label_702:
	mov	edi, OFFSET FLAT:.str.11_0
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
.label_703:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_360
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_360
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_383:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_342
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_342:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_383
.label_360:
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
	jmp	.label_375
.label_695:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_375
.label_698:
	mov	al, 1
.label_696:
	mov	r12b, 1
.label_699:
	test	r12b, 1
	mov	cl, 1
	je	.label_412
	mov	cl, al
.label_412:
	mov	al, cl
.label_697:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_416
	test	r10, r10
	je	.label_419
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_382
.label_416:
	xor	ecx, ecx
	jmp	.label_382
.label_700:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_428
	test	r10, r10
	je	.label_433
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_333
.label_701:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_375
.label_419:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_382:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_375
.label_428:
	xor	eax, eax
	jmp	.label_333
.label_433:
	mov	eax, 1
.label_333:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_375:
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
	jmp	.label_348
.label_329:
	inc	rdi
.label_348:
	cmp	rbp, -1
	je	.label_389
	cmp	rdi, rbp
	jne	.label_393
	jmp	.label_394
	nop	word ptr cs:[rax + rax]
.label_389:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_397
.label_393:
	test	r12b, r12b
	je	.label_399
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_402
	cmp	rbp, -1
	jne	.label_402
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
.label_402:
	cmp	rbx, rbp
	jbe	.label_424
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_427
	nop	word ptr [rax + rax]
.label_399:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_427
.label_424:
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
	jne	.label_451
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_427
	jmp	.label_334
.label_451:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_427:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_396
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_353]
.label_617:
	test	rdi, rdi
	jne	.label_339
	jmp	.label_363
.label_621:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_365
	test	rdi, rdi
	jne	.label_367
	cmp	rbp, 1
	je	.label_363
	xor	r13d, r13d
	jmp	.label_332
.label_610:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_371
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_334
	cmp	r9d, 2
	jne	.label_376
	mov	al, r14b
	and	al, 1
	jne	.label_378
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_381
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_381:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_391
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_391:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_372
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_372:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_403
.label_611:
	mov	bl, 0x62
	jmp	.label_409
.label_612:
	mov	cl, 0x74
	jmp	.label_359
.label_613:
	mov	bl, 0x76
	jmp	.label_409
.label_614:
	mov	bl, 0x66
	jmp	.label_409
.label_615:
	mov	cl, 0x72
	jmp	.label_359
.label_618:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_417
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_421
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
	jae	.label_386
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_386:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_445
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_445:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_411
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_411:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_417:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_332
.label_619:
	cmp	r9d, 5
	je	.label_336
	cmp	r9d, 2
	jne	.label_339
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_339
	jmp	.label_345
.label_620:
	cmp	r9d, 2
	jne	.label_347
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_349
	jmp	.label_354
.label_396:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_355
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
.label_356:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_373
	test	cl, cl
	je	.label_373
	xor	eax, eax
	jmp	.label_332
.label_365:
	test	rdi, rdi
	jne	.label_388
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_388
.label_363:
	mov	dl, 1
.label_616:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_392
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_332
.label_371:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_329
	jmp	.label_339
.label_347:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_359
.label_349:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_338
.label_359:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_405
.label_409:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_332
	jmp	.label_413
.label_355:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_414
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_414:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_362:
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
	je	.label_444
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_449
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_452
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_448
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_346:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_341
	bt	rsi, rdx
	jb	.label_343
.label_341:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_346
.label_448:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_443
	xor	r13d, r13d
.label_443:
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
	je	.label_362
	jmp	.label_356
.label_388:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_332
.label_336:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_339
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_339
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_339
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_379
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_384
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_415
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_395
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_395:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_357
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_357:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_407
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_407:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_440
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_440:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_332
.label_339:
	xor	eax, eax
	xor	r13d, r13d
.label_332:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_430
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_432
	jmp	.label_435
	nop	word ptr [rax + rax]
.label_430:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_435
.label_432:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_439
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_446
	nop	word ptr cs:[rax + rax]
.label_435:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_446:
	mov	bl, r15b
	je	.label_338
	jmp	.label_413
.label_439:
	mov	bl, r15b
.label_413:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_334
	cmp	r9d, 2
	jne	.label_330
	mov	al, r14b
	and	al, 1
	jne	.label_330
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_364
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_364:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_404
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_404:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_352
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_352:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_330:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_366
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_366:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_425
.label_367:
	xor	r13d, r13d
	jmp	.label_332
.label_373:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_374
	nop	word ptr [rax + rax]
.label_368:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_374:
	test	cl, cl
	je	.label_385
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_331
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_390
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_390:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_331
	nop	word ptr [rax + rax]
.label_385:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_334
	cmp	r9d, 2
	jne	.label_408
	mov	al, r14b
	and	al, 1
	jne	.label_408
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_410
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_410:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_337
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_337:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_426
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_426:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_408:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_438
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_438:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_442
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_442:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_387
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_387:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_331:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_338
	test	r14b, 1
	je	.label_344
	mov	bl, al
	and	bl, 1
	jne	.label_344
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_420
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_420:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_358
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_358:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_344:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_368
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_368
	nop	dword ptr [rax]
.label_338:
	test	r14b, 1
	je	.label_380
	and	al, 1
	jne	.label_380
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_350
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_350:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_401
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_401:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_380:
	mov	bl, r15b
.label_425:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_400
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_400:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_329
.label_376:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_403
.label_378:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_403:
	cmp	rcx, r10
	jae	.label_418
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_418:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_423
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_431
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_434
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_437
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_437:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_441
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_441:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_332
.label_423:
	xor	r13d, r13d
	jmp	.label_332
.label_431:
	xor	r13d, r13d
	jmp	.label_332
.label_434:
	xor	r13d, r13d
	jmp	.label_332
.label_449:
	xor	r13d, r13d
.label_444:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_356
.label_452:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_340
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_436:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_447
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_436
	xor	r13d, r13d
	jmp	.label_356
.label_340:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_356
.label_447:
	xor	r13d, r13d
	jmp	.label_356
.label_379:
	xor	r13d, r13d
	jmp	.label_332
.label_384:
	xor	r13d, r13d
	jmp	.label_332
	nop	dword ptr [rax]
.label_394:
	mov	r13, rdi
.label_397:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_370
	or	al, dl
	je	.label_369
.label_370:
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
	je	.label_377
	or	al, dl
	jne	.label_377
	test	r8b, 1
	jne	.label_450
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_377
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_398
.label_377:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_406
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_406
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_406
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_422:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_361
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_361:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_422
.label_406:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_429
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_429
.label_392:
	mov	r9d, 2
	jmp	.label_334
.label_343:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_334
.label_369:
	mov	rbp, r13
	jmp	.label_334
.label_405:
	mov	r9d, 2
.label_334:
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
.label_351:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_429:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_450:
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
	jmp	.label_351
.label_421:
	mov	r9d, 2
	jmp	.label_334
.label_354:
	mov	r9d, 2
	jmp	.label_334
.label_345:
	mov	r9d, 2
	jmp	.label_334
.label_415:
	mov	r9d, 5
	jmp	.label_334
.label_453:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056d0
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
	.align	16
	#Procedure 0x4057a0
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
	je	.label_454
	mov	qword ptr [rax], rbx
.label_454:
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
	#Procedure 0x4058a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_455
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_457:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_457
.label_455:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_458
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_459], OFFSET FLAT:slot0
.label_458:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_456
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_456:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405940
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405950

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
	js	.label_460
	mov	ecx, dword ptr [rax]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_465
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_461
.label_465:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_464
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_463
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_463:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_461:
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
	ja	.label_466
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_462
	mov	rdi, rbx
	call	free
.label_462:
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
.label_466:
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
.label_460:
	call	abort
.label_464:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b20
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b30
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
	#Procedure 0x405b50
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
	#Procedure 0x405b70
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
	je	.label_467
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
.label_467:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405be0
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
	je	.label_468
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
.label_468:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c50
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
	je	.label_469
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
.label_469:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0
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
	je	.label_470
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
.label_470:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d30
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	16
	#Procedure 0x405da0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	16
	#Procedure 0x405e10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
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
	#Procedure 0x405e70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
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
	#Procedure 0x405ed0
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
	je	.label_474
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
.label_474:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405f80
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_475
	test	rdx, rdx
	je	.label_475
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_475:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ff0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_476
	test	rdx, rdx
	je	.label_476
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_476:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406060
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_477
	test	rsi, rsi
	je	.label_477
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_477:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4060d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_478
	test	rsi, rsi
	je	.label_478
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
.label_478:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406140
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150
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
	#Procedure 0x406170
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406190

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
	#Procedure 0x4061b0

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
	jne	.label_480
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_481
	cmp	ecx, 0x55
	jne	.label_479
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_479
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_479
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_479
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_479
	cmp	byte ptr [rax + 5], 0
	jne	.label_479
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_480
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_480
.label_481:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_479
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_479
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_479
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_479
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_479
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_479
	cmp	byte ptr [rax + 7], 0
	je	.label_482
.label_479:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_480:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_482:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_480
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_480
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062a0

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
.label_484:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_483
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_484
	cmp	rbx, 0x7ff00001
	jb	.label_483
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_484
.label_483:
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
	.align	16
	#Procedure 0x406300

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
	je	.label_485
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_493
.label_485:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_493:
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
	ja	.label_488
	jmp	qword ptr [(r12 * 8) + label_490]
.label_601:
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
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_487
.label_602:
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
.label_603:
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
.label_604:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_494
.label_605:
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
	jmp	.label_486
.label_606:
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
	jmp	.label_492
.label_607:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
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
.label_492:
	mov	qword ptr [rsp + 0x10], rdi
.label_486:
	mov	qword ptr [rsp + 8], rsi
.label_494:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_489
.label_609:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_487:
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
	jmp	.label_491
.label_608:
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
.label_491:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_489:
	call	__fprintf_chk
.label_600:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_495:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_495
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406620
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_498:
	cmp	r10d, 0x28
	ja	.label_496
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_497
	nop	word ptr cs:[rax + rax]
.label_496:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_497:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_499
	inc	r9
	cmp	r9, 0xa
	jb	.label_498
.label_499:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406680

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_500
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_500:
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
.label_504:
	cmp	r8d, 0x28
	ja	.label_501
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_503
	nop	
.label_501:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_503:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_502
	inc	r9
	cmp	r9, 0xa
	jb	.label_504
.label_502:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406780
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406800
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_505
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_506
	test	rax, rax
	je	.label_505
.label_506:
	pop	rbx
	ret	
.label_505:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406840

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_507
	test	rax, rax
	je	.label_508
.label_507:
	pop	rbx
	ret	
.label_508:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406860
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_509
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_510
	test	rbx, rbx
	jne	.label_510
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_510:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_511
	test	rax, rax
	je	.label_509
.label_511:
	pop	rbx
	ret	
.label_509:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_512
	test	rbx, rbx
	jne	.label_512
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_512:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_514
	test	rax, rax
	je	.label_513
.label_514:
	pop	rbx
	ret	
.label_513:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4068e0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_515
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_517
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_516
.label_515:
	test	rcx, rcx
	jne	.label_520
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_520:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_519
.label_516:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_518
	test	rbx, rbx
	jne	.label_518
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_518:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_521
	test	rax, rax
	je	.label_517
.label_521:
	pop	rbx
	ret	
.label_517:
	call	xalloc_die
.label_519:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406980
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_522
	test	rax, rax
	je	.label_523
.label_522:
	pop	rbx
	ret	
.label_523:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_524
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_527
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_528
	call	free
	xor	eax, eax
	jmp	.label_525
.label_524:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_526
	mov	qword ptr [rsi], rbx
.label_528:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_525
	test	rax, rax
	je	.label_526
.label_525:
	pop	rbx
	ret	
.label_526:
	call	xalloc_die
.label_527:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a10
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
	je	.label_530
	test	r14, r14
	je	.label_529
.label_530:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_529:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a50

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_531
	call	rpl_calloc
	test	rax, rax
	je	.label_531
	pop	rcx
	ret	
.label_531:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a80

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
	je	.label_532
	test	r15, r15
	je	.label_533
.label_532:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_533:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ac0
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
	je	.label_535
	test	r15, r15
	je	.label_534
.label_535:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_534:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b10

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
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
	.align	16
	#Procedure 0x406b40

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
	jae	.label_549
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_541:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_541
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_543
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
	je	.label_555
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_551
	cmp	eax, 0x22
	jne	.label_543
	mov	dword ptr [rsp + 4], 1
.label_551:
	test	r14, r14
	jne	.label_561
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_543
.label_555:
	test	r14, r14
	je	.label_543
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_543
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_543
.label_561:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_552
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_536
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_538
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_538
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_538
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_546
	cmp	eax, 0x44
	je	.label_546
	cmp	eax, 0x69
	jne	.label_538
	movzx	eax, byte ptr [r12 + 2]
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_557
	mov	ecx, 1
.label_557:
	mov	esi, 0x400
	jmp	.label_538
.label_552:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_559
.label_546:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_538:
	cmp	r13d, 0x59
	jg	.label_558
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_540
	jmp	qword ptr [(rax * 8) + label_560]
.label_647:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_544
.label_558:
	cmp	r13d, 0x73
	jg	.label_545
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_547
	xor	eax, eax
	jmp	qword ptr [(rdx * 8) + label_550]
.label_595:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_544:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_554
.label_540:
	cmp	r13d, 0x54
	je	.label_553
	cmp	r13d, 0x59
	jne	.label_536
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
	jmp	.label_539
.label_545:
	cmp	r13d, 0x74
	je	.label_553
	cmp	r13d, 0x77
	jne	.label_536
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_554
.label_596:
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
	jmp	.label_537
.label_597:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_556
.label_598:
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
	jmp	.label_562
.label_553:
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
	jmp	.label_548
.label_547:
	cmp	r13d, 0x5a
	jne	.label_536
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
.label_539:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_556
.label_536:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_543
.label_648:
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
	jmp	.label_562
.label_649:
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
.label_548:
	or	dl, r10b
.label_537:
	or	dl, bl
.label_562:
	and	dl, 1
	movzx	eax, dl
.label_556:
	mov	rbp, rsi
.label_554:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_542
	or	eax, 2
.label_542:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_559:
	mov	qword ptr [rax], rbp
.label_543:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_549:
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4071f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_563
	test	rsi, rsi
	mov	ecx, 1
	je	.label_564
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_564
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_563:
	mov	ecx, 1
.label_564:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407240

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
	je	.label_565
	cmp	r15, -2
	jb	.label_565
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_565
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_565:
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
	#Procedure 0x4072a0

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
	jne	.label_567
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_566
	test	cl, cl
	jne	.label_566
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_566
.label_567:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_566
	call	__errno_location
	mov	dword ptr [rax], 0
.label_566:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407300

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_569
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_570
	cmp	byte ptr [rax + 1], 0
	je	.label_568
.label_570:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_569
.label_568:
	xor	ebx, ebx
.label_569:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x407340

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_571
	mov	rax, rcx
.label_571:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407370

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_572
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_574
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_572
.label_574:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_572
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_573
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_573:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_572:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4073f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_575
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_575
	test	byte ptr [rbx + 1], 1
	je	.label_575
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_575:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407430

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
	jne	.label_576
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_576
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_577
.label_576:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_577:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_578
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_578:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x4074a0

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