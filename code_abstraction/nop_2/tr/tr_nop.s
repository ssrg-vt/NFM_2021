	.section	.text
	.align	16
	#Procedure 0x4015f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	ebp, edi
	lea	rdi, [rdi]
	test	ebp, ebp
	nop	
	jne	.label_8
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	rdx, qword ptr [rip + program_name]
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rip + stdout]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + stdout]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	nop	
	mov	edi, 5
	nop	
	xor	esi, esi
	call	setlocale
	mov	rsp, rsp
	test	rax, rax
	je	.label_7
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	strncmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_7
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.9
	mov	ecx, OFFSET FLAT:.str.43
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
.label_8:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rdi, [rdi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x1a8
	mov	rbp, rbp
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	nop	
	call	set_program_name
	mov	edi, 6
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	call	setlocale
	nop	
	mov	edi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.12
	call	bindtextdomain
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.11
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	nop	
	jmp	.label_20
	nop	
.label_144:
	mov	byte ptr [rip + complement],  1
.label_20:
	nop	
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edi, ebp
	mov	rsi, r15
	lea	rdi, [rdi]
	call	getopt_long
	lea	rdi, [rdi]
	cmp	eax, 0x62
	jle	.label_138
	cmp	eax, 0x72
	mov	rbp, rbp
	jg	.label_141
	cmp	eax, 0x63
	mov	rsp, rsp
	je	.label_144
	lea	rdi, [rdi]
	cmp	eax, 0x64
	jne	.label_146
	mov	byte ptr [rip + delete],  1
	mov	rbp, rbp
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_138:
	cmp	eax, 0x40
	jle	.label_92
	lea	rdi, [rdi]
	cmp	eax, 0x41
	nop	
	je	.label_154
	lea	rsi, [rsi]
	cmp	eax, 0x43
	lea	rdi, [rdi]
	je	.label_144
	jmp	.label_146
	nop	
.label_141:
	lea	rdi, [rdi]
	cmp	eax, 0x73
	je	.label_158
	lea	rdi, [rdi]
	cmp	eax, 0x74
	jne	.label_146
	mov	byte ptr [rip + truncate_set1],  1
	mov	rsp, rsp
	jmp	.label_20
.label_154:
	mov	edi, 3
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14
	mov	rsp, rsp
	call	setlocale
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14
	call	setlocale
	mov	rbp, rbp
	jmp	.label_20
.label_158:
	lea	rdi, [rdi]
	mov	byte ptr [rip + squeeze_repeats],  1
	jmp	.label_20
.label_92:
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_170
	mov	rbp, rbp
	mov	eax, dword ptr [rip + optind]
	mov	r12d, ebp
	sub	r12d, eax
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [rip + delete]
	nop	
	and	ebx, 1
	cmp	r12d, 2
	je	.label_9
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_95
.label_9:
	mov	rsp, rsp
	mov	cl, bl
	xor	cl, 1
.label_95:
	nop	
	mov	byte ptr [rip + translating],  cl
	mov	cl, byte ptr [rip + squeeze_repeats]
	lea	rsi, [rsi]
	and	cl, 1
	lea	rdi, [rdi]
	mov	dl, bl
	lea	rdi, [rdi]
	xor	dl, cl
	movzx	edx, dl
	mov	esi, 2
	mov	edi, 2
	lea	rsi, [rsi]
	sub	edi, edx
	mov	rbp, rbp
	xor	ebx, 1
	lea	rsi, [rsi]
	inc	ebx
	nop	
	test	cl, cl
	mov	rsp, rsp
	cmovne	ebx, esi
	nop	
	cmp	r12d, edi
	jl	.label_21
	cmp	ebx, r12d
	lea	rdi, [rdi]
	jl	.label_140
	mov	edi, 0x20
	mov	rbp, rbp
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x178], rax
	mov	qword ptr [rsp + 0x170], rax
	mov	rsp, rsp
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	lea	rsi, [rsp + 0x170]
	call	parse_str
	mov	ebp, 1
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_82
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rbp, rbp
	cmp	r12d, 2
	mov	rsp, rsp
	jne	.label_87
	mov	edi, 0x20
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	nop	
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 8]
	mov	rbp, rbp
	lea	r14, [rsp + 0x18]
	mov	rsi, r14
	call	parse_str
	nop	
	test	al, al
	nop	
	je	.label_82
.label_87:
	lea	rdi, [rsp + 0x170]
	lea	rsi, [rsi]
	call	get_spec_stats
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rip + complement]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_145
	pxor	xmm0, xmm0
	nop	
	movdqa	xmmword ptr [rsp + 0x140], xmm0
	movdqa	xmmword ptr [rsp + 0x130], xmm0
	movdqa	xmmword ptr [rsp + 0x120], xmm0
	movdqa	xmmword ptr [rsp + 0x110], xmm0
	movdqa	xmmword ptr [rsp + 0x100], xmm0
	movdqa	xmmword ptr [rsp + 0xf0], xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], -2
	mov	rbp, rbp
	lea	rdi, [rsp + 0x170]
	lea	rsi, [rsi]
	xor	esi, esi
	call	get_next
	mov	rbp, rbp
	mov	ecx, 0x100
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_19
	lea	rsi, [rsi]
	mov	ebp, 0x100
	lea	rbx, [rsp + 0x170]
	nop	word ptr cs:[rax + rax]
.label_49:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rsp + rax + 0x50]
	mov	rsp, rsp
	xor	ecx, 1
	mov	rsp, rsp
	sub	ebp, ecx
	mov	byte ptr [rsp + rax + 0x50], 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	get_next
	cmp	eax, -1
	jne	.label_49
	lea	rsi, [rsi]
	movsxd	rcx, ebp
.label_19:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x188], rcx
.label_145:
	cmp	qword ptr [rsp + 0x190], 0
	lea	rdi, [rdi]
	jne	.label_70
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_74
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x188]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	get_spec_stats
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	mov	rcx, rbx
	mov	rbp, rbp
	sub	rcx, rdx
	lea	rsi, [rsi]
	jb	.label_81
	mov	rsp, rsp
	cmp	rax, 1
	jne	.label_81
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x18], rcx
	nop	
	mov	qword ptr [r14 + 0x18], rbx
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	rdx, rbx
	jmp	.label_90
.label_81:
	cmp	rax, 2
	jae	.label_130
.label_90:
	mov	rbp, rbp
	cmp	byte ptr [rip + translating],  0
	je	.label_85
	mov	rbp, rbp
	mov	eax, dword ptr [r14 + 0x30]
	nop	
	test	al, al
	mov	rsp, rsp
	jne	.label_133
	test	eax, 0xff0000
	jne	.label_139
	movzx	eax, word ptr [r14 + 0x30]
	nop	
	mov	rdi, qword ptr [rsp + 0x188]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 8]
	movzx	eax, ax
	cmp	eax, 0x100
	jae	.label_143
	lea	rdi, [rdi]
	mov	rcx, rdx
	mov	rax, rdi
	jmp	.label_147
.label_85:
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_74
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.87
	jmp	.label_12
.label_143:
	mov	qword ptr [rsp + 0x158], rdi
	mov	qword ptr [rsp + 0x168], rdx
	nop	
	mov	qword ptr [rsp + 0x150], rsi
	mov	dword ptr [rsp + 0x164], r12d
	mov	rax, qword ptr [rsp + 0x178]
	mov	qword ptr [rsp + 0x10], rax
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	pxor	xmm8, xmm8
	mov	rbp, rbp
	xor	ecx, ecx
	movdqa	xmm9, xmmword ptr [rip + label_163]
	pand	xmm9, xmmword ptr [rip + label_164]
	pxor	xmm1, xmm1
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	pxor	xmm5, xmm5
	mov	rsp, rsp
	pxor	xmm4, xmm4
	nop	word ptr cs:[rax + rax]
.label_11:
	movd	xmm6, dword ptr [rax + rcx*2]
	punpcklwd	xmm6, xmm8
	punpckldq	xmm6, xmm8
	mov	rbp, rbp
	movd	xmm7, dword ptr [rax + rcx*2 + 4]
	punpcklwd	xmm7, xmm8
	lea	rsi, [rsi]
	punpckldq	xmm7, xmm8
	movdqa	xmm2, xmm6
	psrlq	xmm2, 8
	movdqa	xmm3, xmm7
	lea	rsi, [rsi]
	psrlq	xmm3, 8
	pand	xmm2, xmm9
	pand	xmm3, xmm9
	nop	
	paddq	xmm1, xmm2
	lea	rdi, [rdi]
	paddq	xmm0, xmm3
	psrlq	xmm6, 9
	lea	rdi, [rdi]
	psrlq	xmm7, 9
	pand	xmm6, xmm9
	pand	xmm7, xmm9
	paddq	xmm5, xmm6
	paddq	xmm4, xmm7
	mov	rbp, rbp
	add	rcx, 4
	cmp	rcx, 0x100
	lea	rdi, [rdi]
	jne	.label_11
	nop	
	paddq	xmm4, xmm5
	lea	rdi, [rdi]
	pshufd	xmm2, xmm4, 0x4e
	paddq	xmm2, xmm4
	lea	rdi, [rdi]
	movq	r15, xmm2
	paddq	xmm0, xmm1
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	nop	
	movq	r12, xmm1
	mov	qword ptr [rsp + 0x180], -2
	nop	
	mov	qword ptr [r14 + 0x10], -2
	mov	r13b, 1
	nop	
	mov	bl, 1
.label_162:
	nop	
	lea	rdi, [rsp + 0x170]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x50]
	lea	rsi, [rsi]
	call	get_next
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	lea	rsi, [rsp + 0xc]
	lea	rdi, [rdi]
	call	get_next
	mov	ecx, dword ptr [rsp + 0xc]
	lea	rdi, [rdi]
	test	r13b, r13b
	nop	
	je	.label_28
	lea	rdi, [rdi]
	cmp	ecx, 2
	mov	rbp, rbp
	je	.label_28
	nop	
	test	bl, bl
	je	.label_53
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x50], 2
	lea	rdi, [rdi]
	je	.label_53
.label_28:
	lea	rdi, [rdi]
	cmp	ecx, 2
	jne	.label_137
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x180]
	mov	rbp, rbp
	jmp	.label_155
	nop	word ptr cs:[rax + rax]
.label_137:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x178]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x178], rdx
	mov	qword ptr [rsp + 0x180], -1
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 8], rdx
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x10], -1
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x50], 1
	mov	rdx, r12
	mov	rbp, rbp
	je	.label_14
	nop	
	mov	rdx, r15
.label_14:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x188]
	nop	
	inc	rsi
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	qword ptr [rsp + 0x188], rsi
	cmp	ecx, 1
	mov	rcx, r15
	lea	rsi, [rsi]
	cmove	rcx, r12
	mov	edx, 1
	lea	rdi, [rdi]
	sub	rdx, rcx
	add	qword ptr [r14 + 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	rcx, -1
.label_155:
	cmp	rdx, -1
	sete	bl
	cmp	rcx, -1
	sete	r13b
	nop	
	cmp	ebp, -1
	je	.label_10
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_162
.label_10:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x158], rax
	jb	.label_18
	mov	rcx, qword ptr [r14 + 0x18]
	cmp	qword ptr [rsp + 0x168], rcx
	jb	.label_18
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x178], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x150]
	mov	qword ptr [r14 + 8], rsi
	mov	rbp, rbp
	mov	r12d, dword ptr [rsp + 0x164]
.label_147:
	mov	rbx, rax
	mov	rbp, rbp
	sub	rbx, rcx
	jbe	.label_48
	nop	
	mov	dl, byte ptr [rip + truncate_set1]
	nop	
	and	dl, 1
	nop	
	jne	.label_48
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_69
	cmp	byte ptr [rip + translating],  0
	mov	rbp, rbp
	je	.label_73
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rax, 4
	mov	rsp, rsp
	ja	.label_76
	nop	
	jmp	qword ptr [(rax * 8) + label_129]
.label_689:
	mov	rbp, rbp
	add	rsi, 0x10
	lea	rdi, [rdi]
	jmp	.label_75
.label_690:
	mov	rsp, rsp
	add	rsi, 0x11
.label_75:
	lea	rdi, [rdi]
	mov	bpl, byte ptr [rsi]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	rbp, rbp
	mov	byte ptr [rax + 0x10], bpl
	nop	
	mov	qword ptr [rax + 0x18], rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_91
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rsp + 0x188]
	mov	qword ptr [r14 + 0x18], rax
	mov	rbp, rbp
	mov	rcx, rax
.label_48:
	nop	
	movzx	edx, byte ptr [rip + complement]
	lea	rdi, [rdi]
	and	edx, 1
	lea	rdi, [rdi]
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_74
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x1a1], 0
	mov	rbp, rbp
	je	.label_74
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jne	.label_148
	mov	qword ptr [r14 + 0x10], -2
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, r14
	call	get_next
	mov	rbp, rbp
	mov	ebx, eax
	lea	rsi, [rsi]
	cmp	ebx, -1
	je	.label_148
	nop	
.label_24:
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	get_next
	nop	
	cmp	eax, -1
	je	.label_74
	cmp	eax, ebx
	je	.label_24
.label_148:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	nop	
	jmp	.label_12
.label_74:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	mov	rsp, rsp
	call	fadvise
	mov	rsp, rsp
	mov	al, byte ptr [rip + squeeze_repeats]
	cmp	r12d, 1
	mov	rsp, rsp
	jne	.label_167
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	je	.label_167
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x180], -2
	lea	rdi, [rsp + 0x170]
	mov	rbp, rbp
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_16
	mov	rbp, rbp
	lea	rbx, [rsp + 0x170]
	nop	dword ptr [rax + rax]
.label_26:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, rbx
	call	get_next
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_26
.label_16:
	lea	rdi, [rdi]
	test	bpl, 1
	lea	rsi, [rsi]
	je	.label_23
	movdqa	xmm0, xmmword ptr [rip + label_29]
	mov	rbp, rbp
	movdqa	xmm1, xmmword ptr [rip + in_squeeze_set]
	mov	rbp, rbp
	pxor	xmm1, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rip + in_squeeze_set],  xmm1
	mov	rbp, rbp
	movdqa	xmm1, xmmword ptr [rip + label_30]
	pxor	xmm1, xmm0
	nop	
	movdqa	xmmword ptr [rip + label_30],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_31]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_31],  xmm1
	lea	rdi, [rdi]
	movdqa	xmm1, xmmword ptr [rip + label_32]
	pxor	xmm1, xmm0
	nop	
	movdqa	xmmword ptr [rip + label_32],  xmm1
	mov	rsp, rsp
	movdqa	xmm1, xmmword ptr [rip + label_33]
	pxor	xmm1, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rip + label_33],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_34]
	mov	rbp, rbp
	pxor	xmm1, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rip + label_34],  xmm1
	mov	rsp, rsp
	movdqa	xmm1, xmmword ptr [rip + label_35]
	mov	rsp, rsp
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_35],  xmm1
	mov	rbp, rbp
	movdqa	xmm1, xmmword ptr [rip + label_36]
	lea	rsi, [rsi]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_36],  xmm1
	lea	rsi, [rsi]
	movdqa	xmm1, xmmword ptr [rip + label_37]
	mov	rbp, rbp
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_37],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_38]
	pxor	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rip + label_38],  xmm1
	mov	rbp, rbp
	movdqa	xmm1, xmmword ptr [rip + label_39]
	lea	rsi, [rsi]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_39],  xmm1
	lea	rsi, [rsi]
	movdqa	xmm1, xmmword ptr [rip + label_40]
	pxor	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rip + label_40],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_41]
	pxor	xmm1, xmm0
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rip + label_41],  xmm1
	mov	rsp, rsp
	movdqa	xmm1, xmmword ptr [rip + label_42]
	pxor	xmm1, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rip + label_42],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_43]
	lea	rsi, [rsi]
	pxor	xmm1, xmm0
	nop	
	movdqa	xmmword ptr [rip + label_43],  xmm1
	mov	rbp, rbp
	pxor	xmm0, xmmword ptr [rip + label_44]
	movdqa	xmmword ptr [rip + label_44],  xmm0
.label_23:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:plain_read
	mov	rsp, rsp
	jmp	.label_131
.label_167:
	mov	cl, byte ptr [rip + delete]
	nop	
	cmp	r12d, 1
	lea	rsi, [rsi]
	jne	.label_13
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	je	.label_13
	mov	bpl, byte ptr [rip + complement]
	nop	
	mov	qword ptr [rsp + 0x180], -2
	lea	rdi, [rsp + 0x170]
	nop	
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_27
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x170]
	nop	dword ptr [rax + rax]
.label_50:
	lea	rdi, [rdi]
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	get_next
	cmp	eax, -1
	jne	.label_50
.label_27:
	mov	rsp, rsp
	test	bpl, 1
	je	.label_45
	mov	rbp, rbp
	movdqa	xmm0, xmmword ptr [rip + label_29]
	nop	
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	nop	
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	lea	rdi, [rdi]
	movdqa	xmm1, xmmword ptr [rip + label_54]
	pxor	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rip + label_54],  xmm1
	nop	
	movdqa	xmm1, xmmword ptr [rip + label_55]
	mov	rbp, rbp
	pxor	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rip + label_55],  xmm1
	nop	
	movdqa	xmm1, xmmword ptr [rip + label_56]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_56],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_57]
	lea	rdi, [rdi]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_57],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_58]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_58],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_59]
	mov	rsp, rsp
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_59],  xmm1
	lea	rsi, [rsi]
	movdqa	xmm1, xmmword ptr [rip + label_60]
	mov	rsp, rsp
	pxor	xmm1, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rip + label_60],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_61]
	lea	rsi, [rsi]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_61],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_62]
	pxor	xmm1, xmm0
	nop	
	movdqa	xmmword ptr [rip + label_62],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_63]
	mov	rbp, rbp
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_63],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_64]
	lea	rdi, [rdi]
	pxor	xmm1, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rip + label_64],  xmm1
	mov	rbp, rbp
	movdqa	xmm1, xmmword ptr [rip + label_65]
	lea	rdi, [rdi]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_65],  xmm1
	nop	
	movdqa	xmm1, xmmword ptr [rip + label_66]
	pxor	xmm1, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rip + label_66],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_67]
	lea	rsi, [rsi]
	pxor	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rip + label_67],  xmm1
	pxor	xmm0, xmmword ptr [rip + label_68]
	nop	
	movdqa	xmmword ptr [rip + label_68],  xmm0
	nop	word ptr cs:[rax + rax]
.label_45:
	mov	edi, OFFSET FLAT:io_buf
	lea	rsi, [rsi]
	mov	esi, 0x2000
	call	read_and_delete
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_22
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbx
	mov	rsp, rsp
	call	fwrite_unlocked
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_45
.label_159:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_0
.label_46:
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	call	error
.label_13:
	lea	rsi, [rsi]
	cmp	r12d, 2
	nop	
	sete	dl
	mov	rsp, rsp
	and	dl, cl
	mov	rsp, rsp
	and	al, dl
	movzx	eax, al
	cmp	eax, 1
	jne	.label_77
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x180], -2
	lea	rdi, [rsp + 0x170]
	lea	rdi, [rdi]
	xor	esi, esi
	call	get_next
	nop	
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_93
	lea	rbx, [rsp + 0x170]
	nop	dword ptr [rax + rax]
.label_134:
	mov	rsp, rsp
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	nop	
	mov	rdi, rbx
	nop	
	call	get_next
	cmp	eax, -1
	jne	.label_134
.label_93:
	nop	
	test	bpl, 1
	nop	
	je	.label_135
	movdqa	xmm0, xmmword ptr [rip + label_29]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	lea	rdi, [rdi]
	pxor	xmm1, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	nop	
	movdqa	xmm1, xmmword ptr [rip + label_54]
	lea	rdi, [rdi]
	pxor	xmm1, xmm0
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rip + label_54],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_55]
	mov	rsp, rsp
	pxor	xmm1, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rip + label_55],  xmm1
	lea	rdi, [rdi]
	movdqa	xmm1, xmmword ptr [rip + label_56]
	pxor	xmm1, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rip + label_56],  xmm1
	mov	rbp, rbp
	movdqa	xmm1, xmmword ptr [rip + label_57]
	pxor	xmm1, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rip + label_57],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_58]
	nop	
	pxor	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rip + label_58],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_59]
	pxor	xmm1, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rip + label_59],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_60]
	nop	
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_60],  xmm1
	lea	rdi, [rdi]
	movdqa	xmm1, xmmword ptr [rip + label_61]
	nop	
	pxor	xmm1, xmm0
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rip + label_61],  xmm1
	movdqa	xmm1, xmmword ptr [rip + label_62]
	lea	rdi, [rdi]
	pxor	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rip + label_62],  xmm1
	lea	rsi, [rsi]
	movdqa	xmm1, xmmword ptr [rip + label_63]
	pxor	xmm1, xmm0
	movdqa	xmmword ptr [rip + label_63],  xmm1
	mov	rbp, rbp
	movdqa	xmm1, xmmword ptr [rip + label_64]
	mov	rsp, rsp
	pxor	xmm1, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rip + label_64],  xmm1
	lea	rsi, [rsi]
	movdqa	xmm1, xmmword ptr [rip + label_65]
	nop	
	pxor	xmm1, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rip + label_65],  xmm1
	lea	rdi, [rdi]
	movdqa	xmm1, xmmword ptr [rip + label_66]
	lea	rdi, [rdi]
	pxor	xmm1, xmm0
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rip + label_66],  xmm1
	lea	rsi, [rsi]
	movdqa	xmm1, xmmword ptr [rip + label_67]
	lea	rsi, [rsi]
	pxor	xmm1, xmm0
	nop	
	movdqa	xmmword ptr [rip + label_67],  xmm1
	pxor	xmm0, xmmword ptr [rip + label_68]
	mov	rbp, rbp
	movdqa	xmmword ptr [rip + label_68],  xmm0
.label_135:
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_84
	nop	word ptr cs:[rax + rax]
.label_128:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_84:
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	lea	rsi, [rsi]
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_128
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:read_and_delete
	jmp	.label_131
.label_77:
	cmp	byte ptr [rip + translating],  0
	lea	rsi, [rsi]
	je	.label_22
	movzx	eax, byte ptr [rip + complement]
	nop	
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_136
	mov	qword ptr [rsp + 0x180], -2
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x170]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	nop	
	je	.label_149
	lea	rbx, [rsp + 0x170]
	nop	word ptr cs:[rax + rax]
.label_161:
	lea	rsi, [rsi]
	cdqe	
	lea	rsi, [rsi]
	mov	byte ptr [rax + in_delete_set],  1
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_161
.label_149:
	mov	qword ptr [r14 + 0x10], -2
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rip + label_96]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rip + xlate],  xmm0
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rip + label_98],  xmm0
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rip + label_99]
	movaps	xmmword ptr [rip + label_100],  xmm0
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rip + label_101]
	movaps	xmmword ptr [rip + label_102],  xmm0
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rip + label_103]
	nop	
	movaps	xmmword ptr [rip + label_104],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_105]
	movaps	xmmword ptr [rip + label_106],  xmm0
	nop	
	movaps	xmm0, xmmword ptr [rip + label_107]
	movaps	xmmword ptr [rip + label_108],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rip + label_110],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_111]
	mov	rbp, rbp
	movaps	xmmword ptr [rip + label_112],  xmm0
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rip + label_113]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rip + label_114],  xmm0
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rip + label_115]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rip + label_116],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_117]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rip + label_118],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_119]
	movaps	xmmword ptr [rip + label_120],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_121]
	mov	rbp, rbp
	movaps	xmmword ptr [rip + label_122],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_123]
	movaps	xmmword ptr [rip + label_124],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_125]
	movdqa	xmmword ptr [rip + label_126],  xmm0
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	rsp, rsp
	cmp	byte ptr [rbx + in_delete_set],  0
	lea	rsi, [rsi]
	jne	.label_80
	mov	rbp, rbp
	xor	esi, esi
	mov	rdi, r14
	nop	
	call	get_next
	cmp	eax, -1
	je	.label_86
	lea	rsi, [rsi]
	mov	byte ptr [rbx + xlate],  al
.label_80:
	inc	rbx
	cmp	rbx, 0x100
	jl	.label_168
	jmp	.label_94
.label_136:
	movaps	xmm0, xmmword ptr [rip + label_96]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rip + label_98],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_99]
	movaps	xmmword ptr [rip + label_100],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_101]
	movaps	xmmword ptr [rip + label_102],  xmm0
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rip + label_103]
	movaps	xmmword ptr [rip + label_104],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_105]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rip + label_106],  xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rip + label_107]
	movaps	xmmword ptr [rip + label_108],  xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rip + label_109]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rip + label_110],  xmm0
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rip + label_111]
	movaps	xmmword ptr [rip + label_112],  xmm0
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rip + label_113]
	movaps	xmmword ptr [rip + label_114],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_115]
	movaps	xmmword ptr [rip + label_116],  xmm0
	nop	
	movaps	xmm0, xmmword ptr [rip + label_117]
	mov	rbp, rbp
	movaps	xmmword ptr [rip + label_118],  xmm0
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rip + label_119]
	movaps	xmmword ptr [rip + label_120],  xmm0
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rip + label_121]
	movaps	xmmword ptr [rip + label_122],  xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rip + label_123]
	movaps	xmmword ptr [rip + label_124],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_125]
	movdqa	xmmword ptr [rip + label_126],  xmm0
	mov	qword ptr [rsp + 0x180], -2
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x10], -2
	lea	r13, [rsp + 0xc]
	jmp	.label_127
	nop	word ptr cs:[rax + rax]
.label_157:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x178]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x178], rax
	mov	qword ptr [rsp + 0x180], -1
	mov	rax, qword ptr [r14 + 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rax
	nop	
	mov	qword ptr [r14 + 0x10], -1
.label_127:
	nop	
	lea	rdi, [rsp + 0x170]
	lea	rsi, [rsp + 0x50]
	lea	rdi, [rdi]
	call	get_next
	mov	ebp, eax
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rbp
	call	get_next
	mov	ecx, dword ptr [rsp + 0x50]
	mov	r12d, dword ptr [rsp + 0xc]
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_72
	lea	rdi, [rdi]
	cmp	r12d, 1
	jne	.label_72
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	r15d, r15d
	nop	
.label_89:
	lea	rdi, [rdi]
	test	byte ptr [rbp + r15*2 + 1], 2
	je	.label_83
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	al, byte ptr [rax + r15*4]
	mov	byte ptr [r15 + xlate],  al
.label_83:
	lea	rsi, [rsi]
	inc	r15
	lea	rdi, [rdi]
	cmp	r15, 0x100
	jne	.label_89
	jmp	.label_47
	nop	
.label_72:
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	rbp, rbp
	jne	.label_142
	mov	rsp, rsp
	test	r12d, r12d
	jne	.label_142
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_165:
	test	byte ptr [rbp + rbx*2 + 1], 1
	mov	rbp, rbp
	je	.label_132
	nop	
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + rbx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rbx + xlate],  al
.label_132:
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, 0x100
	nop	
	jne	.label_165
	lea	rdi, [rdi]
	jmp	.label_47
	nop	word ptr cs:[rax + rax]
.label_142:
	lea	rsi, [rsi]
	cmp	ebp, -1
	mov	rsp, rsp
	je	.label_51
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_51
	lea	rdi, [rdi]
	movsxd	rcx, ebp
	mov	byte ptr [rcx + xlate],  al
.label_47:
	cmp	r12d, 2
	lea	rsi, [rsi]
	je	.label_127
	jmp	.label_157
.label_51:
	cmp	ebp, -1
	je	.label_94
	mov	al, byte ptr [rip + truncate_set1]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_94
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.27
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x762
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	mov	rbp, rbp
	call	__assert_fail
.label_86:
	mov	al, byte ptr [rip + truncate_set1]
	and	al, 1
	je	.label_78
.label_94:
	movzx	eax, byte ptr [rip + squeeze_repeats]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_156
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_169
	nop	dword ptr [rax]
.label_17:
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [rax + in_squeeze_set],  1
.label_169:
	xor	esi, esi
	mov	rdi, r14
	lea	rdi, [rdi]
	call	get_next
	nop	
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_17
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:read_and_xlate
.label_131:
	nop	
	call	squeeze_filter
.label_22:
	xor	ebp, ebp
	mov	rsp, rsp
	xor	edi, edi
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_25
.label_82:
	mov	eax, ebp
	nop	
	add	rsp, 0x1a8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_156:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:io_buf
	mov	edx, 0x2000
	lea	rsi, [rsi]
	call	safe_read
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_22
	lea	rsi, [rsi]
	cmp	rbx, -1
	je	.label_52
	nop	
	lea	rdi, [rbx - 1]
	mov	rbp, rbp
	test	bl, 3
	lea	rdi, [rdi]
	mov	eax, 0
	je	.label_71
	lea	rsi, [rsi]
	mov	edx, ebx
	and	edx, 3
	mov	rsp, rsp
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_166:
	movzx	esi, byte ptr [rax + io_buf]
	mov	cl, byte ptr [rsi + xlate]
	mov	byte ptr [rax + io_buf],  cl
	nop	
	inc	rax
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jne	.label_166
.label_71:
	mov	rsp, rsp
	cmp	rdi, 3
	jb	.label_88
	nop	dword ptr [rax + rax]
.label_153:
	movzx	ecx, byte ptr [rax + io_buf]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rcx + xlate]
	mov	rsp, rsp
	mov	byte ptr [rax + io_buf],  cl
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + label_150]
	mov	cl, byte ptr [rcx + xlate]
	mov	byte ptr [rax + label_150],  cl
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + label_151]
	mov	rbp, rbp
	mov	cl, byte ptr [rcx + xlate]
	mov	rbp, rbp
	mov	byte ptr [rax + label_151],  cl
	movzx	ecx, byte ptr [rax + label_152]
	mov	cl, byte ptr [rcx + xlate]
	mov	byte ptr [rax + label_152],  cl
	mov	rsp, rsp
	add	rax, 4
	lea	rdi, [rdi]
	cmp	rbx, rax
	jne	.label_153
.label_88:
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_22
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	rsp, rsp
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_156
	jmp	.label_159
.label_170:
	nop	
	cmp	eax, 0xffffff7d
	lea	rdi, [rdi]
	je	.label_160
	nop	
	cmp	eax, 0xffffff7e
	lea	rdi, [rdi]
	jne	.label_146
	xor	edi, edi
	call	usage
.label_160:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:.str.9
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.16
	xor	r9d, r9d
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_146:
	nop	
	mov	edi, 1
	call	usage
.label_53:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.90
	jmp	.label_12
.label_21:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	cmp	eax, ebp
	jne	.label_15
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_140:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rip + optind]
	lea	rdi, [rdi]
	movsxd	rcx, ebx
	add	rcx, rax
	nop	
	mov	rdi, qword ptr [r15 + rcx*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
	nop	
	cmp	r12d, 2
	lea	rsi, [rsi]
	jne	.label_79
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.19
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_79:
	nop	
	mov	edi, 1
	call	usage
.label_15:
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	movsxd	rax, ebp
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rip + stderr]
	mov	al, byte ptr [rip + squeeze_repeats]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.20
	mov	esi, OFFSET FLAT:.str.21
	cmovne	rsi, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.19
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	nop	
	mov	edi, 1
	call	usage
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	jmp	.label_12
.label_25:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	jmp	.label_46
.label_133:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.83
	jmp	.label_12
.label_139:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	mov	rsp, rsp
	jmp	.label_12
.label_18:
	mov	edi, OFFSET FLAT:.str.91
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x4c5
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_case_classes
	lea	rsi, [rsi]
	call	__assert_fail
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	jmp	.label_12
.label_69:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	lea	rsi, [rsi]
	jmp	.label_12
.label_73:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.92
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x55e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.string2_extend
	mov	rbp, rbp
	call	__assert_fail
.label_91:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.56
	nop	
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_repeated_char
	mov	rbp, rbp
	call	__assert_fail
.label_52:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.96
	jmp	.label_46
.label_76:
	call	abort
.label_691:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
.label_12:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_78:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x72d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	lea	rsi, [rsi]
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0

	.globl parse_str
	.type parse_str, @function
parse_str:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x48], rbx
	lea	rdi, [rdi]
	call	strlen
	mov	rbp, rbp
	mov	r14, rax
	mov	rdi, r14
	mov	rbp, rbp
	call	xmalloc
	nop	
	mov	r12, rax
	mov	esi, 1
	mov	rdi, r14
	mov	rsp, rsp
	call	xcalloc
	nop	
	mov	rdx, rbx
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	mov	rbp, rbp
	xor	r13d, r13d
	xor	ebp, ebp
	lea	rdi, [rdi]
	jmp	.label_214
	nop	word ptr cs:[rax + rax]
.label_226:
	mov	rbp, rbp
	inc	r13d
	lea	rsi, [rsi]
	inc	ebp
.label_214:
	nop	
	mov	eax, ebp
	nop	
	movzx	eax, byte ptr [rdx + rax]
	cmp	eax, 0x5c
	je	.label_222
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_225
	mov	rsp, rsp
	mov	ecx, r13d
	mov	byte ptr [r12 + rcx], al
	jmp	.label_226
.label_222:
	mov	rsp, rsp
	mov	r15, r12
	mov	esi, r13d
	nop	
	mov	byte ptr [r9 + rsi], 1
	nop	
	lea	r12d, [rbp + 1]
	mov	bl, byte ptr [rdx + r12]
	movsx	eax, bl
	mov	rbp, rbp
	cmp	eax, 0x5b
	mov	rbp, rbp
	jg	.label_228
	lea	ecx, [rax - 0x30]
	cmp	ecx, 8
	lea	rdi, [rdi]
	jae	.label_233
	add	bl, 0xd0
	lea	r14d, [rbp + 2]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rdx + r14]
	add	eax, -0x30
	mov	rsp, rsp
	cmp	eax, 7
	mov	rsp, rsp
	ja	.label_235
	mov	rbp, rbp
	movzx	ecx, bl
	mov	rbp, rbp
	lea	ebx, [rax + rcx*8]
	add	ebp, 3
	movsx	eax, byte ptr [rdx + rbp]
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 7
	ja	.label_240
	mov	qword ptr [rsp + 0x38], rsi
	movzx	ecx, bl
	lea	rdi, [rdi]
	lea	eax, [rax + rcx*8]
	cmp	eax, 0xff
	lea	rdi, [rdi]
	jg	.label_172
	mov	ebp, r14d
	mov	bl, al
	mov	r12, r15
	lea	rdi, [rdi]
	jmp	.label_177
	nop	dword ptr [rax + rax]
.label_228:
	cmp	eax, 0x65
	mov	r12, r15
	nop	
	jg	.label_180
	cmp	eax, 0x5c
	lea	rsi, [rsi]
	je	.label_181
	mov	rbp, rbp
	cmp	eax, 0x61
	mov	rsp, rsp
	je	.label_183
	mov	qword ptr [rsp + 0x38], rsi
	mov	r14, r9
	mov	rbp, rbp
	cmp	eax, 0x62
	jne	.label_185
	mov	bl, 8
	lea	rdi, [rdi]
	jmp	.label_185
.label_180:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rsi
	mov	r14, r9
	lea	ecx, [rax - 0x6e]
	cmp	ecx, 8
	mov	rbp, rbp
	ja	.label_196
	jmp	qword ptr [(rcx * 8) + label_202]
.label_637:
	mov	bl, 0xa
	mov	rbp, rbp
	jmp	.label_185
.label_235:
	mov	rbp, rbp
	mov	r12, r15
	nop	
	jmp	.label_184
.label_240:
	mov	rsp, rsp
	mov	ebp, r12d
	mov	r12, r15
	jmp	.label_184
.label_233:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rsi
	mov	r14, r9
	test	eax, eax
	mov	r12, r15
	mov	rsp, rsp
	jne	.label_185
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.51
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	mov	r9, r14
	mov	rsi, qword ptr [rsp + 0x38]
	mov	byte ptr [r9 + rsi], 0
	dec	ebp
	lea	rsi, [rsi]
	mov	bl, 0x5c
	jmp	.label_184
.label_181:
	mov	rsp, rsp
	mov	bl, 0x5c
	jmp	.label_184
.label_183:
	nop	
	mov	bl, 7
	jmp	.label_184
.label_172:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + r12]
	movsx	r8d, byte ptr [rax + r14]
	movsx	r9d, byte ptr [rax + rbp]
	mov	dword ptr [rsp + 0x10], r9d
	mov	rbp, rbp
	mov	dword ptr [rsp + 8], r8d
	mov	dword ptr [rsp], ecx
	lea	rdi, [rdi]
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	mov	rbp, rbp
	call	error
	mov	r9, qword ptr [rsp + 0x30]
	mov	ebp, r12d
	lea	rsi, [rsi]
	mov	r12, r15
	lea	rdi, [rdi]
	jmp	.label_177
.label_196:
	lea	rsi, [rsi]
	cmp	eax, 0x66
	jne	.label_185
	mov	rbp, rbp
	mov	bl, 0xc
	lea	rdi, [rdi]
	jmp	.label_185
.label_638:
	mov	bl, 0xd
	jmp	.label_185
.label_639:
	mov	rbp, rbp
	mov	bl, 9
	nop	
	jmp	.label_185
.label_640:
	mov	rbp, rbp
	mov	bl, 0xb
.label_185:
	mov	rsp, rsp
	mov	r9, r14
.label_177:
	mov	rsi, qword ptr [rsp + 0x38]
.label_184:
	inc	ebp
	mov	rbp, rbp
	mov	byte ptr [r12 + rsi], bl
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_226
.label_225:
	mov	eax, r13d
	mov	qword ptr [rsp + 0x48], rax
	nop	
	xor	r14d, r14d
	mov	rbp, rbp
	cmp	r13d, 3
	jb	.label_175
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	dec	rax
	nop	
	mov	qword ptr [rsp + 0x38], rax
	xor	r15d, r15d
	mov	ebp, 2
	nop	word ptr cs:[rax + rax]
.label_206:
	movzx	r13d, byte ptr [r12 + r15]
	cmp	r13, 0x5b
	lea	rsi, [rsi]
	jne	.label_182
	cmp	byte ptr [r9 + r15], 0
	jne	.label_182
	lea	rdi, [r12 + r15]
	lea	r8, [r15 + 1]
	movzx	ebx, byte ptr [r12 + r15 + 1]
	cmp	ebx, 0x3d
	lea	rsi, [rsi]
	je	.label_186
	mov	rsp, rsp
	movzx	eax, bl
	cmp	eax, 0x3a
	jne	.label_193
.label_186:
	cmp	byte ptr [r9 + r8], 0
	jne	.label_193
	cmp	qword ptr [rsp + 0x38], rbp
	lea	rsi, [rsi]
	mov	r14, rbp
	jbe	.label_193
	nop	word ptr cs:[rax + rax]
.label_244:
	movzx	ecx, byte ptr [r12 + r14]
	movzx	eax, bl
	cmp	ecx, eax
	jne	.label_203
	movzx	ecx, byte ptr [r12 + r14 + 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x5d
	mov	rbp, rbp
	jne	.label_203
	cmp	byte ptr [r9 + r14], 0
	nop	
	jne	.label_203
	cmp	byte ptr [r9 + r14 + 1], 0
	lea	rdi, [rdi]
	je	.label_205
	nop	word ptr cs:[rax + rax]
.label_203:
	mov	rsp, rsp
	inc	r14
	nop	
	cmp	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	jb	.label_244
.label_193:
	lea	rax, [r15 + 2]
	cmp	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	jae	.label_243
	movzx	ecx, byte ptr [r12 + rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2a
	mov	rsp, rsp
	jne	.label_182
	cmp	byte ptr [r9 + rax], 0
	jne	.label_182
	lea	rax, [r15 + 3]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x48]
	mov	rbp, rax
	jae	.label_182
	nop	dword ptr [rax + rax]
.label_220:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rbp], 0
	jne	.label_182
	nop	
	movzx	ecx, byte ptr [r12 + rbp]
	mov	rsp, rsp
	cmp	ecx, 0x5d
	je	.label_216
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, qword ptr [rsp + 0x48]
	nop	
	jb	.label_220
	nop	word ptr [rax + rax]
.label_182:
	lea	r14, [r15 + 1]
	movzx	eax, byte ptr [r12 + r15 + 1]
	cmp	eax, 0x2d
	jne	.label_238
	cmp	byte ptr [r9 + r14], 0
	je	.label_223
.label_238:
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x20
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	byte ptr [rax + 0x10], r13b
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_192
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	mov	rsp, rsp
	mov	r9, rbx
	nop	
	jmp	.label_189
.label_223:
	mov	rbp, rbp
	mov	bl, byte ptr [r15 + r12 + 2]
	movzx	ebp, bl
	movzx	eax, r13b
	lea	rdi, [rdi]
	cmp	ebp, eax
	jb	.label_236
	mov	edi, 0x20
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 1
	mov	byte ptr [rax + 0x10], r13b
	mov	rbp, rbp
	mov	byte ptr [rax + 0x11], bl
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_242
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rdx + 8], rax
	add	r15, 3
	mov	r14, r15
	mov	r9, qword ptr [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_189:
	lea	rsi, [rsi]
	lea	rbp, [r14 + 2]
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rsp + 0x48]
	mov	r15, r14
	lea	rsi, [rsi]
	jb	.label_206
	jmp	.label_175
.label_216:
	mov	r14, rbp
	mov	rsp, rsp
	sub	r14, r8
	lea	rdi, [rdi]
	add	r14, -2
	mov	rbp, rbp
	je	.label_187
	lea	r13, [r12 + rax]
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + rax]
	mov	edx, 8
	mov	rsp, rsp
	cmp	eax, 0x30
	je	.label_194
	mov	edx, 0xa
.label_194:
	mov	rbp, rbp
	xor	r8d, r8d
	nop	
	mov	rdi, r13
	mov	rbp, rbp
	lea	rsi, [rsp + 0x28]
	mov	rsp, rsp
	lea	rcx, [rsp + 0x50]
	lea	rdi, [rdi]
	call	xstrtoumax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_204
	mov	r15, qword ptr [rsp + 0x50]
	nop	
	cmp	r15, -1
	je	.label_204
	mov	rbp, rbp
	lea	rax, [r13 + r14]
	cmp	rax, qword ptr [rsp + 0x28]
	je	.label_210
	jmp	.label_204
.label_205:
	lea	rcx, [r14 - 1]
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	sub	rdx, rbp
	inc	rdx
	lea	rdi, [rdi]
	je	.label_227
	lea	rsi, [rsi]
	add	rdi, 2
	lea	rsi, [rsi]
	cmp	eax, 0x3a
	jne	.label_212
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r12
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57
	mov	qword ptr [rsp + 0x58], rdi
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	rsp, rsp
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_217
	lea	rsi, [rsi]
	xor	r12d, r12d
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_199
.label_217:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.58
	mov	rdi, qword ptr [rsp + 0x58]
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_224
	lea	rsi, [rsi]
	mov	r12d, 1
	nop	
	test	eax, eax
	je	.label_199
.label_224:
	mov	esi, OFFSET FLAT:.str.59
	mov	rdi, qword ptr [rsp + 0x58]
	mov	r12, rdx
	lea	rdi, [rdi]
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	mov	rsp, rsp
	jne	.label_231
	mov	r12d, 2
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_199
.label_231:
	mov	esi, OFFSET FLAT:.str.60
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	r12, rdx
	lea	rsi, [rsi]
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	nop	
	jne	.label_237
	mov	rbp, rbp
	mov	r12d, 3
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_199
.label_237:
	mov	esi, OFFSET FLAT:.str.61
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	r12, rdx
	nop	
	call	strncmp
	mov	rsp, rsp
	mov	rdx, r12
	cmp	rdx, 5
	nop	
	jne	.label_174
	mov	r12d, 4
	test	eax, eax
	je	.label_199
.label_174:
	mov	esi, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	r12, rdx
	call	strncmp
	mov	rdx, r12
	lea	rsi, [rsi]
	cmp	rdx, 5
	jne	.label_191
	lea	rsi, [rsi]
	mov	r12d, 5
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_199
.label_191:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.63
	mov	rdi, qword ptr [rsp + 0x58]
	mov	r12, rdx
	call	strncmp
	mov	rsp, rsp
	mov	rdx, r12
	cmp	rdx, 5
	lea	rsi, [rsi]
	jne	.label_195
	mov	r12d, 6
	test	eax, eax
	mov	rsp, rsp
	je	.label_199
.label_195:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.64
	mov	rdi, qword ptr [rsp + 0x58]
	mov	r12, rdx
	mov	rsp, rsp
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_234
	mov	r12d, 7
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_199
.label_234:
	mov	esi, OFFSET FLAT:.str.65
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x58]
	mov	r12, rdx
	mov	rsp, rsp
	call	strncmp
	mov	rdx, r12
	cmp	rdx, 5
	jne	.label_209
	mov	r12d, 8
	test	eax, eax
	mov	rsp, rsp
	je	.label_199
.label_209:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	r12, rdx
	call	strncmp
	nop	
	mov	rdx, r12
	nop	
	cmp	rdx, 5
	lea	rdi, [rdi]
	jne	.label_213
	nop	
	mov	r12d, 9
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_199
.label_213:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.67
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	r12, rdx
	lea	rdi, [rdi]
	call	strncmp
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rbp
	cmp	rdx, 5
	mov	rsp, rsp
	jne	.label_197
	mov	r12d, 0xa
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_199
.label_197:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.68
	mov	rdi, qword ptr [rsp + 0x58]
	mov	r12, rdx
	mov	rbp, rbp
	call	strncmp
	mov	rsi, r12
	lea	rsi, [rsi]
	cmp	rsi, 6
	jne	.label_230
	mov	rsp, rsp
	mov	r12d, 0xb
	nop	
	test	eax, eax
	jne	.label_230
.label_199:
	lea	rdi, [rdi]
	mov	edi, 0x20
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 2
	nop	
	mov	dword ptr [rax + 0x10], r12d
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_200
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x30]
	nop	
	jmp	.label_241
.label_212:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rdi
	mov	rbp, rbp
	cmp	rcx, rbp
	jne	.label_171
	lea	rsi, [rsi]
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	nop	
	mov	dword ptr [rax], 3
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	nop	
	mov	cl, byte ptr [rcx]
	mov	byte ptr [rax + 0x10], cl
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_176
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	r9, rbx
.label_241:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbp, rbp
	mov	qword ptr [rdx + 8], rax
	add	r14, 2
	jmp	.label_189
.label_187:
	mov	qword ptr [rsp + 0x50], 0
	mov	rsp, rsp
	xor	r15d, r15d
.label_210:
	mov	edi, 0x20
	lea	rdi, [rdi]
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], bl
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_229
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	lea	r14, [rbp + 1]
	add	rbp, 3
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [rsp + 0x48]
	mov	r15, r14
	mov	r9, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	jb	.label_206
	mov	rsp, rsp
	jmp	.label_175
.label_171:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + rbp]
	lea	rsi, [rsi]
	cmp	eax, 0x2a
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	jne	.label_188
	cmp	byte ptr [r9 + rbp], 0
	jne	.label_188
	mov	rsp, rsp
	inc	rbp
.label_219:
	mov	rax, rbp
	cmp	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	jae	.label_188
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r12 + rax]
	lea	esi, [rcx - 0x30]
	mov	rsp, rsp
	cmp	esi, 9
	ja	.label_215
	lea	rdi, [rdi]
	lea	rbp, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_219
.label_215:
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x5d
	jne	.label_188
	mov	rbp, rbp
	cmp	byte ptr [r9 + rax], 0
	je	.label_193
	jmp	.label_188
.label_230:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x60]
	nop	
	movzx	eax, byte ptr [r12 + rbp]
	cmp	eax, 0x2a
	mov	r9, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jne	.label_179
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rbp], 0
	mov	rsp, rsp
	jne	.label_179
	inc	rbp
.label_211:
	lea	rsi, [rsi]
	mov	rax, rbp
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x48]
	jae	.label_179
	movzx	ecx, byte ptr [r12 + rax]
	mov	rbp, rbp
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_198
	lea	rbp, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_211
.label_198:
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 0x5d
	jne	.label_179
	mov	rbp, rbp
	cmp	byte ptr [r9 + rax], 0
	lea	rsi, [rsi]
	je	.label_193
.label_179:
	lea	rsi, [rsi]
	call	make_printable_str
	nop	
	mov	rbp, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	jmp	.label_178
.label_175:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	mov	rsp, rsp
	mov	r13b, 1
	cmp	r14, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	jae	.label_173
	mov	rbp, qword ptr [rsp + 0x40]
.label_201:
	mov	bl, byte ptr [r12 + r14]
	mov	rbp, rbp
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x10], bl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_192
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp + 8], rax
	inc	r14
	mov	rsp, rsp
	cmp	r14, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	jb	.label_201
.label_173:
	nop	
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	al, r13b
	mov	rsp, rsp
	add	rsp, 0x68
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_236:
	mov	edi, 5
	call	xmalloc
	mov	rbp, rbp
	mov	r14, rax
	call	__ctype_b_loc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + r13*2 + 1], 0x40
	lea	rsi, [rsi]
	jne	.label_239
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.77
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], r14
	lea	rdi, [rdi]
	mov	r8d, r13d
	lea	rdi, [rdi]
	call	__sprintf_chk
	mov	rsp, rsp
	jmp	.label_218
.label_239:
	mov	byte ptr [r14], r13b
	nop	
	mov	byte ptr [r14 + 1], 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], r14
.label_218:
	mov	edi, 5
	lea	rsi, [rsi]
	call	xmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	nop	
	jne	.label_221
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.77
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	r8d, ebp
	lea	rdi, [rdi]
	call	__sprintf_chk
	jmp	.label_232
.label_221:
	nop	
	mov	byte ptr [r14], bl
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 1], 0
.label_232:
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.80
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	r8, r14
	mov	rbp, rbp
	call	error
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rdi, r14
	nop	
	call	free
	nop	
	jmp	.label_173
.label_188:
	mov	qword ptr [rsp + 0x30], r9
	lea	rsi, [rsi]
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	make_printable_str
	mov	rbp, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
.label_178:
	nop	
	call	error
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	jmp	.label_190
.label_204:
	mov	rdi, r13
	mov	rsi, r14
	mov	rbp, rbp
	call	make_printable_str
	mov	rbp, rbp
	mov	r15, rax
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	mov	rsp, rsp
	call	quote
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	mov	rdi, r15
	call	free
	jmp	.label_173
.label_227:
	nop	
	mov	qword ptr [rsp + 0x30], r9
	nop	
	xor	edi, edi
	cmp	eax, 0x3a
	mov	rsp, rsp
	jne	.label_207
	mov	esi, OFFSET FLAT:.str.52
	jmp	.label_208
.label_207:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.53
.label_208:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_190:
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_173
.label_192:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x287
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_normal_char
	call	__assert_fail
.label_243:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.78
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x30e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.find_bracketed_repeat
	call	__assert_fail
.label_242:
	mov	edi, OFFSET FLAT:.str.56
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	edx, 0x2a5
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_range
	call	__assert_fail
.label_229:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.56
	nop	
	mov	esi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	edx, 0x2cf
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_repeated_char
	call	__assert_fail
.label_200:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x2bb
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_char_class
	call	__assert_fail
.label_176:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.26
	nop	
	mov	edx, 0x2e5
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.append_equiv_class
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041e0

	.globl squeeze_filter
	.type squeeze_filter, @function
squeeze_filter:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	mov	r14, rdi
	mov	rbp, rbp
	mov	r15d, 0x7fffffff
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rbp, rbp
	jmp	.label_248
.label_245:
	mov	rbp, rbp
	mov	r15d, 0x7fffffff
	nop	word ptr cs:[rax + rax]
.label_248:
	cmp	rbx, r12
	mov	rax, rbx
	jb	.label_246
	mov	edi, OFFSET FLAT:io_buf
	mov	rbp, rbp
	mov	esi, 0x2000
	call	r14
	mov	r12, rax
	test	r12, r12
	mov	rsp, rsp
	mov	eax, 0
	nop	
	je	.label_259
.label_246:
	cmp	r15d, 0x7fffffff
	jne	.label_250
	mov	r15, r12
	lea	rdi, [rdi]
	sub	r15, rax
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsp, rsp
	jbe	.label_254
	nop	
.label_249:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbx + io_buf]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	lea	rsi, [rsi]
	jne	.label_254
	add	rbx, 2
	cmp	rbx, r12
	lea	rsi, [rsi]
	jb	.label_249
.label_254:
	lea	rdi, [rdi]
	cmp	rbx, r12
	mov	rsp, rsp
	jne	.label_253
	movzx	ecx, byte ptr [r12 + label_255]
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	mov	rbx, r12
	nop	
	je	.label_253
	lea	rbx, [r12 - 1]
.label_253:
	cmp	rbx, r12
	jae	.label_260
	lea	rdi, [rdi]
	movsx	ebp, byte ptr [rbx + io_buf]
	mov	rcx, rbx
	sub	rcx, rax
	lea	r15, [rcx + 1]
	test	rbx, rbx
	nop	
	je	.label_247
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbx + label_255]
	lea	rsi, [rsi]
	movzx	esi, bpl
	lea	rdi, [rdi]
	cmp	edx, esi
	mov	rbp, rbp
	je	.label_256
	nop	
	mov	rcx, r15
.label_256:
	mov	r15, rcx
.label_247:
	lea	rsi, [rsi]
	inc	rbx
	jmp	.label_261
	nop	word ptr [rax + rax]
.label_250:
	mov	ebp, r15d
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_251
	nop	
.label_260:
	mov	ebp, 0x7fffffff
.label_261:
	mov	rbp, rbp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_257
	mov	rbp, rbp
	lea	rdi, qword ptr [rax + io_buf]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, r15
	lea	rsi, [rsi]
	call	fwrite_unlocked
	cmp	rax, r15
	lea	rdi, [rdi]
	jne	.label_258
.label_257:
	cmp	ebp, 0x7fffffff
	mov	r15d, 0x7fffffff
	je	.label_248
.label_251:
	nop	
	cmp	rbx, r12
	mov	rbp, rbp
	mov	r15d, ebp
	jae	.label_248
	nop	dword ptr [rax + rax]
.label_252:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbx + io_buf]
	cmp	eax, ebp
	nop	
	jne	.label_245
	lea	rdi, [rdi]
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, r12
	jb	.label_252
	mov	r15d, ebp
	jmp	.label_248
.label_259:
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_258:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404400

	.globl plain_read
	.type plain_read, @function
plain_read:
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rsp, rsp
	mov	rcx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rcx
	mov	rbp, rbp
	mov	rdx, rax
	call	safe_read
	mov	rbp, rbp
	cmp	rax, -1
	je	.label_262
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_262:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.96
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
.label_264:
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, r14
	lea	rsi, [rsi]
	call	safe_read
	mov	rsp, rsp
	mov	rcx, rax
	test	rcx, rcx
	nop	
	je	.label_265
	cmp	rcx, -1
	lea	rdi, [rdi]
	mov	eax, 0
	lea	rsi, [rsi]
	je	.label_268
	nop	dword ptr [rax + rax]
.label_266:
	movzx	edx, byte ptr [rbx + rax]
	mov	rbp, rbp
	cmp	byte ptr [rdx + in_delete_set],  0
	lea	rdi, [rdi]
	jne	.label_263
	inc	rax
	cmp	rax, rcx
	mov	rdx, rax
	mov	rbp, rbp
	jb	.label_266
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
.label_263:
	mov	rdx, rax
	mov	rsp, rsp
	mov	rsi, rdx
	nop	dword ptr [rax]
.label_269:
	lea	rdx, [rsi + 1]
	cmp	rdx, rcx
	jae	.label_270
	movzx	edi, byte ptr [rbx + rsi + 1]
	cmp	byte ptr [rdi + in_delete_set],  0
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rsp, rsp
	jne	.label_269
	mov	byte ptr [rbx + rax], dil
	inc	rax
.label_267:
	mov	rsi, rdx
	nop	
	jmp	.label_269
	nop	dword ptr [rax]
.label_270:
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_264
	nop	
	jmp	.label_271
.label_265:
	xor	eax, eax
.label_271:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_268:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045a0

	.globl get_next
	.type get_next, @function
get_next:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14, rdi
	mov	rsp, rsp
	jmp	.label_275
.label_281:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], -1
.label_275:
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_285
	mov	dword ptr [rsi], 2
.label_285:
	mov	rax, qword ptr [r14 + 0x10]
	cmp	rax, -2
	lea	rdi, [rdi]
	jne	.label_289
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + 8]
	nop	
	mov	qword ptr [r14 + 8], r15
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	jmp	.label_290
	nop	
.label_289:
	mov	rsp, rsp
	mov	r15, qword ptr [r14 + 8]
.label_290:
	mov	ebx, 0xffffffff
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_272
	mov	ecx, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	rcx, 4
	ja	.label_276
	mov	rbp, rbp
	jmp	qword ptr [(rcx * 8) + label_279]
.label_655:
	mov	rcx, qword ptr [r15 + 0x18]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_281
	cmp	rax, -1
	nop	
	jne	.label_286
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_286:
	mov	rbp, rbp
	inc	rax
	mov	qword ptr [r14 + 0x10], rax
	mov	rbp, rbp
	movzx	ebx, byte ptr [r15 + 0x10]
	mov	rsp, rsp
	cmp	rax, rcx
	je	.label_273
	jmp	.label_272
.label_652:
	movzx	ebx, byte ptr [r15 + 0x10]
	mov	qword ptr [r14 + 0x10], -1
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	nop	
	mov	qword ptr [r14 + 8], rax
	jmp	.label_272
.label_653:
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_277
	nop	
	inc	rax
	mov	cl, byte ptr [r15 + 0x11]
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rsi, [rsi]
	jmp	.label_278
.label_654:
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_282
	mov	rsp, rsp
	mov	eax, dword ptr [r15 + 0x10]
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_283
	nop	
	cmp	eax, 6
	jne	.label_282
	mov	dword ptr [rsi], 0
	nop	
	jmp	.label_282
.label_277:
	mov	rsp, rsp
	movzx	ecx, word ptr [r15 + 0x10]
	movzx	ebx, cl
	shr	ecx, 8
.label_278:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rbx
	nop	
	movzx	eax, cl
	cmp	rbx, rax
	jne	.label_272
	mov	rsp, rsp
	jmp	.label_273
.label_283:
	lea	rdi, [rdi]
	mov	dword ptr [rsi], 1
.label_282:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	cmp	rbx, -1
	jne	.label_274
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r15 + 0x10]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_287:
	nop	
	movzx	esi, bpl
	lea	rdi, [rdi]
	mov	edi, ebx
	call	is_char_class_member
	test	al, al
	jne	.label_284
	mov	rbp, rbp
	inc	ebp
	cmp	ebp, 0x100
	jl	.label_287
	mov	edi, OFFSET FLAT:.str.97
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x434
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_next
	nop	
	call	__assert_fail
.label_284:
	movsxd	rbx, ebp
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x10], rbx
.label_274:
	mov	rbp, rbp
	mov	r12d, dword ptr [r15 + 0x10]
	mov	rsp, rsp
	movzx	esi, bl
	mov	edi, r12d
	lea	rsi, [rsi]
	call	is_char_class_member
	test	al, al
	je	.label_280
	nop	
	lea	ebp, [rbx + 1]
	mov	rbp, rbp
	cmp	ebp, 0xff
	jg	.label_273
	nop	word ptr cs:[rax + rax]
.label_288:
	movzx	esi, bpl
	lea	rdi, [rdi]
	mov	edi, r12d
	mov	rbp, rbp
	call	is_char_class_member
	nop	
	test	al, al
	jne	.label_291
	inc	ebp
	nop	
	cmp	ebp, 0x100
	lea	rsi, [rsi]
	jl	.label_288
.label_273:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
	jmp	.label_272
.label_291:
	lea	rdi, [rdi]
	movsxd	rax, ebp
	mov	qword ptr [r14 + 0x10], rax
.label_272:
	mov	rbp, rbp
	mov	eax, ebx
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_276:
	mov	rbp, rbp
	call	abort
.label_280:
	mov	edi, OFFSET FLAT:.str.98
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x437
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_next
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x404840

	.globl read_and_xlate
	.type read_and_xlate, @function
read_and_xlate:
	mov	rbp, rbp
	push	rbx
	mov	rax, rsi
	mov	rbx, rdi
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, rax
	mov	rsp, rsp
	call	safe_read
	mov	rsp, rsp
	test	rax, rax
	je	.label_296
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_293
	mov	rbp, rbp
	lea	r8, [rax - 1]
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	test	al, 3
	je	.label_295
	mov	esi, eax
	mov	rsp, rsp
	and	esi, 3
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_292:
	movzx	edi, byte ptr [rbx + rdx]
	mov	cl, byte ptr [rdi + xlate]
	mov	rbp, rbp
	mov	byte ptr [rbx + rdx], cl
	mov	rbp, rbp
	inc	rdx
	mov	rsp, rsp
	cmp	rsi, rdx
	jne	.label_292
.label_295:
	cmp	r8, 3
	mov	rsp, rsp
	jb	.label_296
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	sub	rcx, rdx
	lea	rdx, [rdx + rbx + 3]
	nop	dword ptr [rax + rax]
.label_294:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rdx - 3]
	lea	rdi, [rdi]
	mov	bl, byte ptr [rsi + xlate]
	mov	byte ptr [rdx - 3], bl
	nop	
	movzx	esi, byte ptr [rdx - 2]
	mov	rsp, rsp
	mov	bl, byte ptr [rsi + xlate]
	mov	byte ptr [rdx - 2], bl
	mov	rsp, rsp
	movzx	esi, byte ptr [rdx - 1]
	mov	bl, byte ptr [rsi + xlate]
	mov	byte ptr [rdx - 1], bl
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rdx]
	mov	rsp, rsp
	mov	bl, byte ptr [rsi + xlate]
	mov	rsp, rsp
	mov	byte ptr [rdx], bl
	mov	rbp, rbp
	add	rdx, 4
	add	rcx, -4
	jne	.label_294
.label_296:
	lea	rdi, [rdi]
	pop	rbx
	ret	
.label_293:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980

	.globl make_printable_str
	.type make_printable_str, @function
make_printable_str:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	lea	rdi, [r14 + 1]
	mov	rax, rdi
	nop	
	shr	rax, 0x3d
	mov	rbp, rbp
	jne	.label_297
	shl	rdi, 2
	mov	rsp, rsp
	call	xmalloc
	nop	
	mov	qword ptr [rsp + 0x10], rax
	nop	
	test	r14, r14
	je	.label_298
	mov	rsp, rsp
	lea	r15, [rsp + 0xb]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	rbp, rbp
	mov	r12b, byte ptr [rbx]
	movzx	ebp, r12b
	nop	
	lea	eax, [rbp - 7]
	mov	rsp, rsp
	cmp	eax, 6
	nop	
	ja	.label_303
	lea	rsi, [rsi]
	jmp	qword ptr [(rax * 8) + label_299]
.label_645:
	mov	esi, OFFSET FLAT:.str.70
	nop	
	jmp	.label_301
	nop	dword ptr [rax]
.label_303:
	nop	
	cmp	ebp, 0x5c
	mov	esi, OFFSET FLAT:.str.69
	je	.label_301
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	test	byte ptr [rax + rbp*2 + 1], 0x40
	nop	
	jne	.label_304
	nop	
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, 5
	mov	ecx, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	r8d, ebp
	mov	rsp, rsp
	call	__sprintf_chk
	lea	rdi, [rdi]
	jmp	.label_302
.label_646:
	mov	esi, OFFSET FLAT:.str.71
	lea	rsi, [rsi]
	jmp	.label_301
.label_647:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.75
	nop	
	jmp	.label_301
.label_648:
	mov	esi, OFFSET FLAT:.str.73
	jmp	.label_301
.label_649:
	nop	
	mov	esi, OFFSET FLAT:.str.76
	jmp	.label_301
.label_650:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.72
	mov	rbp, rbp
	jmp	.label_301
.label_651:
	mov	esi, OFFSET FLAT:.str.74
	jmp	.label_301
.label_304:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xb], r12b
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xc], 0
.label_302:
	lea	rdi, [rdi]
	mov	rsi, r15
.label_301:
	mov	rdi, r13
	call	stpcpy
	mov	r13, rax
	mov	rsp, rsp
	inc	rbx
	dec	r14
	jne	.label_300
.label_298:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_297:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404b00

	.globl get_spec_stats
	.type get_spec_stats, @function
get_spec_stats:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdi
	nop	
	mov	qword ptr [rdi + 0x20], 0
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x32], 0
	mov	word ptr [rdi + 0x30], 0
	mov	rbx, qword ptr [rdi]
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r12d, 1
	mov	rbp, rbp
	movdqa	xmm8, xmmword ptr [rip + label_305]
	movdqa	xmm9, xmmword ptr [rip + label_306]
	movdqa	xmm10, xmmword ptr [rip + label_164]
	nop	
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_308:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	nop	
	je	.label_315
	mov	r13d, 1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx]
	mov	rbp, rbp
	cmp	rax, 4
	lea	rsi, [rsi]
	ja	.label_307
	jmp	qword ptr [(rax * 8) + label_311]
.label_695:
	movzx	eax, byte ptr [rbx + 0x11]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbx + 0x10]
	cmp	eax, ecx
	jb	.label_313
	lea	r13, [rax + 1]
	sub	r13, rcx
	lea	rsi, [rsi]
	jmp	.label_310
.label_696:
	mov	byte ptr [rdi + 0x31], 1
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rbx + 0x10]
	xor	r14d, r14d
	mov	rsp, rsp
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_316:
	mov	rsp, rsp
	movzx	esi, r14b
	nop	
	mov	edi, ebp
	mov	rbp, rbp
	call	is_char_class_member
	movzx	eax, al
	lea	rsi, [rsi]
	add	r13, rax
	mov	rbp, rbp
	inc	r14d
	lea	rsi, [rsi]
	cmp	r14d, 0x100
	lea	rdi, [rdi]
	jne	.label_316
	cmp	ebp, 6
	lea	rdi, [rdi]
	je	.label_309
	mov	rbp, rbp
	cmp	ebp, 0xa
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	movdqa	xmm8, xmmword ptr [rip + label_305]
	nop	
	movdqa	xmm9, xmmword ptr [rip + label_306]
	lea	rsi, [rsi]
	movdqa	xmm10, xmmword ptr [rip + label_164]
	mov	rsp, rsp
	je	.label_310
	mov	byte ptr [rdi + 0x32], 1
	jmp	.label_310
.label_697:
	movd	xmm0, dword ptr [rbx + 0x10]
	pshufd	xmm0, xmm0, 0x44
	pxor	xmm5, xmm5
	xor	eax, eax
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	word ptr cs:[rax + rax]
.label_314:
	lea	rsi, [rsi]
	movd	xmm2, eax
	mov	rbp, rbp
	pshufd	xmm2, xmm2, 0x44
	mov	rsp, rsp
	movq	xmm3, r12
	pslldq	xmm3, 8
	movdqa	xmm4, xmm2
	lea	rdi, [rdi]
	paddq	xmm4, xmm3
	pand	xmm4, xmm8
	paddq	xmm2, xmm9
	lea	rsi, [rsi]
	pand	xmm2, xmm8
	movdqa	xmm6, xmm0
	mov	rbp, rbp
	pand	xmm6, xmm8
	pcmpeqd	xmm4, xmm6
	pshufd	xmm7, xmm4, 0xb1
	lea	rdi, [rdi]
	pand	xmm4, xmm10
	lea	rsi, [rsi]
	pand	xmm4, xmm7
	mov	rsp, rsp
	pcmpeqd	xmm2, xmm6
	nop	
	pshufd	xmm7, xmm2, 0xb1
	pand	xmm2, xmm10
	pand	xmm2, xmm7
	paddq	xmm4, xmm5
	mov	rbp, rbp
	paddq	xmm2, xmm1
	lea	rsi, [rsi]
	mov	ecx, eax
	or	ecx, 4
	mov	rbp, rbp
	movd	xmm1, ecx
	pshufd	xmm1, xmm1, 0x44
	paddq	xmm3, xmm1
	pand	xmm3, xmm8
	mov	rsp, rsp
	paddq	xmm1, xmm9
	pand	xmm1, xmm8
	mov	rbp, rbp
	pcmpeqd	xmm3, xmm6
	lea	rsi, [rsi]
	pshufd	xmm5, xmm3, 0xb1
	mov	rsp, rsp
	pand	xmm3, xmm10
	mov	rsp, rsp
	pand	xmm3, xmm5
	mov	rbp, rbp
	pcmpeqd	xmm1, xmm6
	nop	
	pshufd	xmm5, xmm1, 0xb1
	lea	rdi, [rdi]
	pand	xmm1, xmm10
	mov	rsp, rsp
	pand	xmm1, xmm5
	movdqa	xmm5, xmm3
	paddq	xmm5, xmm4
	lea	rdi, [rdi]
	paddq	xmm1, xmm2
	add	eax, 8
	cmp	eax, 0x100
	jne	.label_314
	paddq	xmm1, xmm5
	mov	rsp, rsp
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	lea	rdi, [rdi]
	movq	r13, xmm0
	mov	byte ptr [rdi + 0x30], 1
	lea	rdi, [rdi]
	jmp	.label_310
.label_698:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x18]
	test	r13, r13
	jne	.label_310
	mov	qword ptr [rdi + 0x28], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	inc	rax
	nop	
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	qword ptr [rdi + 0x20], rax
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_310
.label_309:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	movdqa	xmm8, xmmword ptr [rip + label_305]
	movdqa	xmm9, xmmword ptr [rip + label_306]
	movdqa	xmm10, xmmword ptr [rip + label_164]
	nop	word ptr cs:[rax + rax]
.label_310:
	lea	rdi, [rdi]
	add	r13, r15
	cmp	r15, r13
	ja	.label_312
	lea	rsi, [rsi]
	cmp	r13, -1
	mov	r15, r13
	lea	rdi, [rdi]
	jne	.label_308
.label_312:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.89
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_315:
	mov	qword ptr [rdi + 0x18], r15
	mov	rbp, rbp
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_307:
	mov	rbp, rbp
	call	abort
.label_313:
	mov	edi, OFFSET FLAT:.str.88
	nop	
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 0x4ee
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_spec_stats
	nop	
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ea0

	.globl is_char_class_member
	.type is_char_class_member, @function
is_char_class_member:
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	mov	eax, edi
	cmp	edi, 0xb
	ja	.label_318
	jmp	qword ptr [(rax * 8) + label_319]
.label_661:
	lea	rsi, [rsi]
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 8
	jmp	.label_317
.label_663:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movzx	eax, word ptr [rax + rbx*2]
	mov	rbp, rbp
	and	eax, 1
	jmp	.label_317
.label_664:
	movzx	ebx, sil
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rax + rbx*2]
	lea	rdi, [rdi]
	and	eax, 2
	lea	rdi, [rdi]
	jmp	.label_317
.label_665:
	movzx	ebx, sil
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x800
	lea	rdi, [rdi]
	jmp	.label_317
.label_670:
	movzx	ebx, sil
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movzx	eax, word ptr [rax + rbx*2]
	nop	
	and	eax, 0x2000
	jmp	.label_317
.label_672:
	lea	rsi, [rsi]
	movzx	ebx, sil
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movzx	eax, word ptr [rax + rbx*2]
	mov	rbp, rbp
	and	eax, 0x1000
	jmp	.label_317
.label_662:
	movzx	ebx, sil
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x400
	lea	rsi, [rsi]
	jmp	.label_317
.label_666:
	mov	rsp, rsp
	movzx	ebx, sil
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rax + rbx*2]
	lea	rdi, [rdi]
	and	eax, 0x8000
	jmp	.label_317
.label_667:
	lea	rsi, [rsi]
	movzx	ebx, sil
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	mov	rbp, rbp
	and	eax, 0x200
	jmp	.label_317
.label_668:
	lea	rdi, [rdi]
	movzx	ebx, sil
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x4000
	nop	
	jmp	.label_317
.label_669:
	mov	rsp, rsp
	movzx	ebx, sil
	lea	rsi, [rsi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movzx	eax, word ptr [rax + rbx*2]
	mov	rsp, rsp
	and	eax, 4
	mov	rbp, rbp
	jmp	.label_317
.label_671:
	lea	rdi, [rdi]
	movzx	ebx, sil
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movzx	eax, word ptr [rax + rbx*2]
	mov	rsp, rsp
	and	eax, 0x100
.label_317:
	nop	
	test	eax, eax
	setne	al
	mov	rbp, rbp
	pop	rbx
	ret	
.label_318:
	call	abort
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [rip + file_name],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405080
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stdout]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_321
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_320
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_320
.label_321:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_323
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_320:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_322
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
	mov	edi, dword ptr [rip + exit_failure]
	mov	rsp, rsp
	call	_exit
.label_323:
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
.label_322:
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
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405190
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_324
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_324:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0

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
	je	.label_325
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
	jl	.label_327
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_327
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
	jne	.label_326
	nop	
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_326:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_327:
	mov	rsp, rsp
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_325:
	mov	rcx, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
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
	#Procedure 0x4052c0
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
	#Procedure 0x405310
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
	#Procedure 0x405330
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
	#Procedure 0x405350
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
	#Procedure 0x4053c0
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
	#Procedure 0x4053e0
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
	je	.label_328
	test	rdx, rdx
	nop	
	je	.label_328
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_328:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405420
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
	#Procedure 0x4054d0

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
.label_339:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_439
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_445]
.label_612:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
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
.label_613:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_347
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_347
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_372:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_363
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_363:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_372
.label_347:
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
	jmp	.label_329
.label_605:
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
	jmp	.label_329
.label_608:
	lea	rsi, [rsi]
	mov	al, 1
.label_606:
	mov	rbp, rbp
	mov	r12b, 1
.label_609:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_405
	lea	rsi, [rsi]
	mov	cl, al
.label_405:
	mov	rsp, rsp
	mov	al, cl
.label_607:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_409
	test	r10, r10
	je	.label_416
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_418
.label_409:
	xor	ecx, ecx
	jmp	.label_418
.label_610:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_428
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_432
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_342
.label_611:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_329
.label_416:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_418:
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
	jmp	.label_329
.label_428:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_342
.label_432:
	lea	rdi, [rdi]
	mov	eax, 1
.label_342:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10
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
.label_329:
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
	jmp	.label_374
	nop	word ptr cs:[rax + rax]
.label_356:
	nop	
	inc	rdi
.label_374:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_406
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_444
	jmp	.label_411
	nop	dword ptr [rax + rax]
.label_406:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_415
.label_444:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_423
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_425
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_425
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
.label_425:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_453
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_331
	nop	dword ptr [rax + rax]
.label_423:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_331
	nop	word ptr cs:[rax + rax]
.label_453:
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
	jne	.label_365
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
	je	.label_331
	jmp	.label_330
.label_365:
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
.label_331:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_384
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_394]
.label_622:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_369
	mov	rbp, rbp
	jmp	.label_402
.label_626:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_404
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_407
	nop	
	cmp	rbp, 1
	je	.label_402
	xor	r13d, r13d
	jmp	.label_340
.label_615:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_419
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_330
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_429
	mov	al, r14b
	and	al, 1
	jne	.label_431
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_447
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_447:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_335
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_335:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_448
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_448:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_336
.label_616:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_338
.label_617:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_344
.label_618:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_338
.label_619:
	mov	bl, 0x66
	jmp	.label_338
.label_620:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_344
.label_623:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_354
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_355
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
	jae	.label_361
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_361:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_383
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_383:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_390
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_390:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_354:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_340
.label_624:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_401
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_369
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_369
	mov	rbp, rbp
	jmp	.label_410
.label_625:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_412
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_420
	lea	rdi, [rdi]
	jmp	.label_424
.label_384:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_427
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
.label_373:
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
	ja	.label_337
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_337
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_340
.label_404:
	test	rdi, rdi
	jne	.label_346
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_346
.label_402:
	mov	dl, 1
.label_621:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_352
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_340
.label_419:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_356
	jmp	.label_369
.label_412:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_344
.label_420:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_364
.label_344:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_367
.label_338:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_340
	lea	rsi, [rsi]
	jmp	.label_343
.label_427:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_382
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
.label_382:
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
.label_376:
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
	je	.label_414
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_422
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_430
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_435
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_452:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_446
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_392
.label_446:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_452
.label_435:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_333
	xor	r13d, r13d
.label_333:
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
	je	.label_376
	mov	rsp, rsp
	jmp	.label_373
.label_346:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_340
.label_401:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_369
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_369
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_369
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_381
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_403
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_388
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_391
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_391:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_398
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_398:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_417
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_417:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_341
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_341:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_340
.label_369:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_340:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_442
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_438
	lea	rsi, [rsi]
	jmp	.label_441
.label_442:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_441
.label_438:
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
	jne	.label_443
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_449
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_449:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_364
	mov	rsp, rsp
	jmp	.label_343
.label_443:
	mov	bl, r15b
.label_343:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_330
	nop	
	cmp	r9d, 2
	jne	.label_351
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_351
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_332
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_332:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_362
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_362:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_349
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_349:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_351:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_379
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_379:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_375
.label_407:
	xor	r13d, r13d
	nop	
	jmp	.label_340
.label_337:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_387
	nop	dword ptr [rax + rax]
.label_370:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_387:
	test	cl, cl
	je	.label_393
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_395
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_366
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_366:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_395
	nop	dword ptr [rax]
.label_393:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_330
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_421
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_421
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_371
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_371:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_433
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_433:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_440
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_440:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_421:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_450
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_450:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_358
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_358:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_350
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
.label_350:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_395:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_364
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_378
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_378
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_380
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_380:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_385
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_385:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_378:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_370
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_370
	nop	word ptr cs:[rax + rax]
.label_364:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_408
	mov	rsp, rsp
	and	al, 1
	jne	.label_408
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_360
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_360:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_386
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_386:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_408:
	mov	rsp, rsp
	mov	bl, r15b
.label_375:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_437
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_437:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_356
.label_429:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_336
.label_431:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_336:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_451
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_451:
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
	je	.label_396
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_400
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_413
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_353
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_353:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_357
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_357:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_340
.label_396:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_340
.label_400:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_340
.label_413:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_340
.label_422:
	xor	r13d, r13d
.label_414:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_373
.label_430:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_389
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_399:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_397
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_399
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_373
.label_389:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_373
.label_397:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_373
.label_381:
	xor	r13d, r13d
	jmp	.label_340
.label_403:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_340
.label_411:
	nop	
	mov	r13, rdi
.label_415:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_426
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_436
.label_426:
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
	je	.label_334
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_334
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_345
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_334
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_339
.label_334:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_348
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_348
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_348
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_368:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_359
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_359:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_368
.label_348:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_377
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_377
.label_352:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_330
.label_392:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_330
.label_436:
	nop	
	mov	rbp, r13
	jmp	.label_330
.label_367:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_330:
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
.label_434:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_377:
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
.label_345:
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
	jmp	.label_434
.label_355:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_330
.label_424:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_330
.label_410:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_330
.label_388:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_330
.label_439:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a50
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
	#Procedure 0x406b90
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
	je	.label_454
	mov	qword ptr [rax], rbx
.label_454:
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
	#Procedure 0x406ce0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_455
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_459:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rip + nslots]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_459
.label_455:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_458
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rip + slotvec0],  0x100
	mov	rsp, rsp
	mov	qword ptr [rip + label_456], OFFSET FLAT:slot0
.label_458:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_457
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_457:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406da0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x406db0

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
	js	.label_466
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_462
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_464
.label_462:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_460
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_465
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_465:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rip + nslots]
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
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_464:
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
	ja	.label_463
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
	je	.label_461
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_461:
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
.label_463:
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
.label_466:
	lea	rdi, [rdi]
	call	abort
.label_460:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407020
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407030
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
	#Procedure 0x407060
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
	#Procedure 0x407090
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
	je	.label_467
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
.label_467:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407120
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
	je	.label_468
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
.label_468:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071c0
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
	je	.label_469
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
.label_469:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407250
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
	je	.label_470
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
.label_470:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4072c0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_471]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407360
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407400

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rip + label_471]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407470
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_473]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x4074e0
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
	je	.label_474
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
.label_474:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4075c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax, qword ptr [rip + label_471]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_472]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_473]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_475
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_475
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
.label_475:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407650
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + label_471]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_472]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_473]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_476
	test	rdx, rdx
	je	.label_476
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
.label_476:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076e0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_471]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_472]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_473]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_477
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_477
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
.label_477:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407780
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_471]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_472]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_473]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_478
	test	rsi, rsi
	je	.label_478
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
.label_478:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407820
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407830
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
	#Procedure 0x407850
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
	#Procedure 0x407870

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
	#Procedure 0x4078a0

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
	jne	.label_480
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_482
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_481
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_481
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_481
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_481
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_481
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_481
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_480
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_480
.label_482:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_481
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_481
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_481
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_481
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_481
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_481
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_479
.label_481:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_480:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_479:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_480
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_480
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407a10

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	rbx, rdx
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	nop	word ptr [rax + rax]
.label_484:
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	read
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jns	.label_483
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_484
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	jb	.label_483
	lea	rdi, [rdi]
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	lea	rsi, [rsi]
	je	.label_484
.label_483:
	nop	
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407aa0

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
	je	.label_489
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_4
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_491
.label_489:
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
.label_491:
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
	ja	.label_493
	lea	rsi, [rsi]
	jmp	qword ptr [(r12 * 8) + label_485]
.label_583:
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
.label_493:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_487
.label_584:
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
.label_585:
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
.label_586:
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
	jmp	.label_492
.label_587:
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
	jmp	.label_486
.label_588:
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
	jmp	.label_488
.label_589:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
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
.label_488:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_486:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_492:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_494
.label_591:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_487:
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
	jmp	.label_490
.label_590:
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
.label_490:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_494:
	mov	rbp, rbp
	call	__fprintf_chk
.label_582:
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
	#Procedure 0x407e90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_495:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_495
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ec0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_497:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_496
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_498
	nop	word ptr cs:[rax + rax]
.label_496:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_498:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_499
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_497
.label_499:
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
	#Procedure 0x407f50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_500
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
.label_500:
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
.label_502:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_501
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_503
	nop	dword ptr [rax + rax]
.label_501:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_503:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_504
	inc	r9
	cmp	r9, 0xa
	jb	.label_502
.label_504:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408090
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x408120
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
	jb	.label_505
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_506
	test	rax, rax
	je	.label_505
.label_506:
	nop	
	pop	rbx
	ret	
.label_505:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408170

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_507
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_508
.label_507:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_508:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081a0
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
	jb	.label_510
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_509
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_509
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_509:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_511
	test	rax, rax
	je	.label_510
.label_511:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_510:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408220

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_512
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_512
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_512:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_513
	test	rax, rax
	nop	
	je	.label_514
.label_513:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_514:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408270
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_519
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_515
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_521
.label_519:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_518
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_518:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_520
.label_521:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_517
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_517
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_517:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_516
	test	rax, rax
	mov	rbp, rbp
	je	.label_515
.label_516:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_515:
	call	xalloc_die
.label_520:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408350
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_523
	test	rax, rax
	mov	rbp, rbp
	je	.label_522
.label_523:
	pop	rbx
	ret	
.label_522:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408370
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_527
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_528
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_526
	call	free
	xor	eax, eax
	jmp	.label_524
.label_527:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_525
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_526:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_524
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_525
.label_524:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_525:
	mov	rbp, rbp
	call	xalloc_die
.label_528:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408400
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
	je	.label_529
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_530
.label_529:
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
.label_530:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408460

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
	jb	.label_531
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_531
	pop	rcx
	ret	
.label_531:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x408490

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
	je	.label_533
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_532
.label_533:
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
.label_532:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4084f0
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
	je	.label_534
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_535
.label_534:
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
.label_535:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x408550

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
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
	#Procedure 0x4085a0

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
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_547
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_536:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_536
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_544
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_556
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_558
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_544
	mov	dword ptr [rsp + 4], 1
.label_558:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_540
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_544
.label_556:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_544
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_544
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_544
.label_540:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_560
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_539
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_543
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_543
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_543
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_549
	cmp	eax, 0x44
	nop	
	je	.label_549
	cmp	eax, 0x69
	jne	.label_543
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_548
	lea	rdi, [rdi]
	mov	ecx, 1
.label_548:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_543
.label_560:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_555
.label_549:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_543:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_559
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_561
	jmp	qword ptr [(rax * 8) + label_537]
.label_634:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_542
.label_559:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_546
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_550
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [(rdx * 8) + label_552]
.label_630:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_542:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_554
.label_561:
	cmp	r13d, 0x54
	nop	
	je	.label_551
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_539
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_538
.label_546:
	cmp	r13d, 0x74
	je	.label_551
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_539
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_554
.label_631:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_562
.label_632:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_553
.label_633:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_545
.label_551:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_557
.label_550:
	cmp	r13d, 0x5a
	jne	.label_539
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
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
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_538:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_553
.label_539:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_544
.label_635:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
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
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_545
.label_636:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_557:
	or	dl, r10b
.label_562:
	lea	rsi, [rsi]
	or	dl, bl
.label_545:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_553:
	mov	rsp, rsp
	mov	rbp, rsi
.label_554:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_541
	or	eax, 2
.label_541:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_555:
	mov	qword ptr [rax], rbp
.label_544:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_547:
	mov	edi, OFFSET FLAT:.str_5
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e60

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_563
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_564
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
	je	.label_564
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
.label_563:
	mov	ecx, 1
.label_564:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ed0

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
	je	.label_565
	nop	
	cmp	r15, -2
	jb	.label_565
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_565
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_565:
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
	#Procedure 0x408f60

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
	jne	.label_566
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_567
	test	cl, cl
	mov	rsp, rsp
	jne	.label_567
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_567
.label_566:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_567
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_567:
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
	#Procedure 0x408ff0

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
	je	.label_569
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_568
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_570
.label_568:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_569
.label_570:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_569:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409040

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
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_571
	nop	
	mov	rax, rcx
.label_571:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409080

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
	js	.label_572
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_574
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
	je	.label_572
.label_574:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_572
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_573
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_573:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_572:
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
	#Procedure 0x409130

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_575
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_575
	test	byte ptr [rbx + 1], 1
	je	.label_575
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_575:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409170

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
	jne	.label_576
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_576
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_577
.label_576:
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
.label_577:
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
	je	.label_578
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_578:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x409220

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