	.section	.text
	.align	32
	#Procedure 0x4016a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_19
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
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_10
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_19:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	#Procedure 0x4018c0

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
	mov	esi, OFFSET FLAT:label_138
	call	setlocale
	mov	edi, OFFSET FLAT:label_191
	mov	esi, OFFSET FLAT:label_192
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_191
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_126
	nop	word ptr cs:[rax + rax]
.label_763:
	mov	byte ptr [rip + complement],  1
.label_126:
	mov	edx, OFFSET FLAT:label_133
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x40
	jle	.label_140
	add	eax, -0x41
	cmp	eax, 0x33
	ja	.label_157
	jmp	qword ptr [(rax * 8) + label_159]
.label_762:
	mov	edi, 3
	mov	esi, OFFSET FLAT:label_160
	call	setlocale
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	call	setlocale
	jmp	.label_126
.label_764:
	mov	byte ptr [rip + delete],  1
	jmp	.label_126
.label_765:
	mov	byte ptr [rip + squeeze_repeats],  1
	jmp	.label_126
.label_766:
	mov	byte ptr [rip + truncate_set1],  1
	jmp	.label_126
.label_140:
	cmp	eax, -1
	jne	.label_190
	mov	r12d, ebp
	sub	r12d, dword ptr [rip + optind]
	movzx	ebx, byte ptr [rip + delete]
	cmp	r12d, 2
	je	.label_195
	xor	eax, eax
	jmp	.label_200
.label_195:
	mov	al, bl
	xor	al, 1
.label_200:
	mov	byte ptr [rip + translating],  al
	mov	al, byte ptr [rip + squeeze_repeats]
	mov	ecx, ebx
	xor	cl, al
	movzx	ecx, cl
	mov	edx, 2
	mov	esi, 2
	sub	esi, ecx
	xor	ebx, 1
	inc	ebx
	test	al, al
	cmovne	ebx, edx
	cmp	r12d, esi
	jl	.label_204
	cmp	ebx, r12d
	jl	.label_216
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	lea	rsi, [rsp + 0x10]
	call	parse_str
	mov	ebp, 1
	test	al, al
	je	.label_37
	xor	r14d, r14d
	cmp	r12d, 2
	jne	.label_39
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rsp + 0x178], rax
	mov	qword ptr [rsp + 0x170], rax
	mov	qword ptr [rax + 8], 0
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 8]
	lea	r14, [rsp + 0x170]
	mov	rsi, r14
	call	parse_str
	test	al, al
	je	.label_37
.label_39:
	lea	rdi, [rsp + 0x10]
	call	get_spec_stats
	cmp	byte ptr [rip + complement],  1
	jne	.label_136
	pxor	xmm0, xmm0
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
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	mov	ecx, 0x100
	cmp	eax, -1
	je	.label_139
	mov	ebp, 0x100
	lea	rbx, [rsp + 0x10]
	nop	
.label_164:
	cdqe	
	movzx	ecx, byte ptr [rsp + rax + 0x70]
	xor	ecx, 1
	sub	ebp, ecx
	mov	byte ptr [rsp + rax + 0x70], 1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_164
	movsxd	rcx, ebp
.label_139:
	mov	qword ptr [rsp + 0x28], rcx
.label_136:
	cmp	qword ptr [rsp + 0x30], 0
	jne	.label_183
	test	r14, r14
	je	.label_48
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	call	get_spec_stats
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, rbx
	sub	rcx, rdx
	jb	.label_198
	cmp	rax, 1
	jne	.label_198
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [rax + 0x18], rcx
	mov	qword ptr [r14 + 0x18], rbx
	mov	eax, 1
	mov	rdx, rbx
	jmp	.label_201
.label_198:
	cmp	rax, 2
	jae	.label_206
.label_201:
	cmp	byte ptr [rip + translating],  0
	je	.label_209
	mov	eax, dword ptr [r14 + 0x30]
	test	al, al
	jne	.label_210
	test	eax, 0xff0000
	jne	.label_161
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [r14 + 8]
	movzx	eax, word ptr [r14 + 0x30]
	cmp	eax, 0x100
	jae	.label_218
	mov	rcx, rdx
	mov	rax, rdi
	jmp	.label_31
.label_209:
	test	rax, rax
	je	.label_48
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	jmp	.label_36
.label_218:
	mov	qword ptr [rsp + 0x68], rdi
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x58], rsi
	mov	dword ptr [rsp + 0x4c], r12d
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x50], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	pxor	xmm8, xmm8
	xor	ecx, ecx
	movdqa	xmm9, xmmword ptr [rip + label_85]
	pand	xmm9, xmmword ptr [rip + label_86]
	pxor	xmm1, xmm1
	pxor	xmm0, xmm0
	pxor	xmm5, xmm5
	pxor	xmm4, xmm4
	nop	word ptr cs:[rax + rax]
.label_96:
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
	jne	.label_96
	paddq	xmm4, xmm5
	pshufd	xmm2, xmm4, 0x4e
	paddq	xmm2, xmm4
	movq	r15, xmm2
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r12, xmm1
	mov	qword ptr [rsp + 0x20], -2
	mov	qword ptr [r14 + 0x10], -2
	mov	r13b, 1
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_128:
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x70]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	lea	rsi, [rsp + 0xc]
	call	get_next
	mov	ecx, dword ptr [rsp + 0xc]
	test	r13b, r13b
	je	.label_158
	cmp	ecx, 2
	je	.label_158
	test	bl, bl
	je	.label_89
	cmp	dword ptr [rsp + 0x70], 2
	je	.label_89
.label_158:
	cmp	ecx, 2
	jne	.label_180
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_181
	nop	
.label_180:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], -1
	mov	rdx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 8], rdx
	mov	qword ptr [r14 + 0x10], -1
	cmp	dword ptr [rsp + 0x70], 1
	mov	rdx, r15
	cmove	rdx, r12
	mov	rsi, qword ptr [rsp + 0x28]
	neg	rdx
	lea	rdx, [rsi + rdx + 1]
	mov	qword ptr [rsp + 0x28], rdx
	cmp	ecx, 1
	mov	rcx, r15
	cmove	rcx, r12
	mov	edx, 1
	sub	rdx, rcx
	add	qword ptr [r14 + 0x18], rdx
	mov	rdx, -1
	mov	rcx, -1
.label_181:
	cmp	rdx, -1
	sete	bl
	cmp	rcx, -1
	sete	r13b
	cmp	ebp, -1
	je	.label_217
	cmp	eax, -1
	jne	.label_128
.label_217:
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rsp + 0x68], rax
	jb	.label_32
	mov	rcx, qword ptr [r14 + 0x18]
	cmp	qword ptr [rsp + 0x60], rcx
	jb	.label_32
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [r14 + 8], rsi
	mov	r12d, dword ptr [rsp + 0x4c]
.label_31:
	mov	rbx, rax
	sub	rbx, rcx
	jbe	.label_50
	mov	dl, byte ptr [rip + truncate_set1]
	test	dl, dl
	jne	.label_50
	test	rcx, rcx
	je	.label_88
	cmp	byte ptr [rip + translating],  0
	je	.label_90
	mov	eax, dword ptr [rsi]
	cmp	rax, 4
	ja	.label_92
	jmp	qword ptr [(rax * 8) + label_94]
.label_837:
	add	rsi, 0x10
	jmp	.label_123
.label_838:
	add	rsi, 0x11
.label_123:
	mov	bpl, byte ptr [rsi]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], bpl
	mov	qword ptr [rax + 0x18], rbx
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_189
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r14 + 0x18], rax
	mov	rcx, rax
.label_50:
	cmp	byte ptr [rip + complement],  1
	jne	.label_48
	cmp	byte ptr [rsp + 0x41], 0
	je	.label_48
	cmp	rcx, rax
	jne	.label_113
	mov	qword ptr [r14 + 0x10], -2
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_113
	nop	dword ptr [rax]
.label_125:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_48
	cmp	eax, ebx
	je	.label_125
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	jmp	.label_36
.label_48:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	mov	al, byte ptr [rip + squeeze_repeats]
	cmp	r12d, 1
	jne	.label_135
	test	al, 1
	je	.label_135
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_162
	lea	rbx, [rsp + 0x10]
	nop	
.label_184:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_184
.label_162:
	test	bpl, 1
	je	.label_187
	movdqa	xmm0, xmmword ptr [rip + label_141]
	movdqa	xmm1, xmmword ptr [rip + in_squeeze_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_165]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_squeeze_set],  xmm1
	movdqa	xmmword ptr [rip + label_165],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_166]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_167]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_166],  xmm1
	movdqa	xmmword ptr [rip + label_167],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_168]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_169]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_168],  xmm1
	movdqa	xmmword ptr [rip + label_169],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_170]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_171]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_170],  xmm1
	movdqa	xmmword ptr [rip + label_171],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_172]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_173]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_172],  xmm1
	movdqa	xmmword ptr [rip + label_173],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_174]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_175]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_174],  xmm1
	movdqa	xmmword ptr [rip + label_175],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_176]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_177]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_176],  xmm1
	movdqa	xmmword ptr [rip + label_177],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_178]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_179]
	movdqa	xmmword ptr [rip + label_178],  xmm1
	movdqa	xmmword ptr [rip + label_179],  xmm0
.label_187:
	mov	edi, OFFSET FLAT:plain_read
	jmp	.label_105
.label_135:
	mov	cl, byte ptr [rip + delete]
	cmp	r12d, 1
	jne	.label_115
	test	cl, 1
	je	.label_115
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_129
	lea	rbx, [rsp + 0x10]
	nop	
.label_137:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_137
.label_129:
	test	bpl, 1
	je	.label_106
	movdqa	xmm0, xmmword ptr [rip + label_141]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_142]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmmword ptr [rip + label_142],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_143]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_144]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_143],  xmm1
	movdqa	xmmword ptr [rip + label_144],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_145]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_146]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_145],  xmm1
	movdqa	xmmword ptr [rip + label_146],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_147]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_148]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_147],  xmm1
	movdqa	xmmword ptr [rip + label_148],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_149]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_150]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_149],  xmm1
	movdqa	xmmword ptr [rip + label_150],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_151]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_152]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_151],  xmm1
	movdqa	xmmword ptr [rip + label_152],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_153]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_154]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_153],  xmm1
	movdqa	xmmword ptr [rip + label_154],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_155]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_156]
	movdqa	xmmword ptr [rip + label_155],  xmm1
	movdqa	xmmword ptr [rip + label_156],  xmm0
	nop	word ptr cs:[rax + rax]
.label_106:
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	read_and_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_47
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	je	.label_106
.label_182:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
.label_111:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_115:
	cmp	r12d, 2
	sete	dl
	and	dl, cl
	and	al, dl
	cmp	al, 1
	jne	.label_122
	mov	bpl, byte ptr [rip + complement]
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_132
	lea	rbx, [rsp + 0x10]
	nop	
.label_194:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_194
.label_132:
	test	bpl, 1
	je	.label_202
	movdqa	xmm0, xmmword ptr [rip + label_141]
	movdqa	xmm1, xmmword ptr [rip + in_delete_set]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_142]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + in_delete_set],  xmm1
	movdqa	xmmword ptr [rip + label_142],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_143]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_144]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_143],  xmm1
	movdqa	xmmword ptr [rip + label_144],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_145]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_146]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_145],  xmm1
	movdqa	xmmword ptr [rip + label_146],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_147]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_148]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_147],  xmm1
	movdqa	xmmword ptr [rip + label_148],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_149]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_150]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_149],  xmm1
	movdqa	xmmword ptr [rip + label_150],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_151]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_152]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_151],  xmm1
	movdqa	xmmword ptr [rip + label_152],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_153]
	pxor	xmm1, xmm0
	movdqa	xmm2, xmmword ptr [rip + label_154]
	pxor	xmm2, xmm0
	movdqa	xmmword ptr [rip + label_153],  xmm1
	movdqa	xmmword ptr [rip + label_154],  xmm2
	movdqa	xmm1, xmmword ptr [rip + label_155]
	pxor	xmm1, xmm0
	pxor	xmm0, xmmword ptr [rip + label_156]
	movdqa	xmmword ptr [rip + label_155],  xmm1
	movdqa	xmmword ptr [rip + label_156],  xmm0
.label_202:
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_99
.label_42:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_99:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_42
	mov	edi, OFFSET FLAT:read_and_delete
	jmp	.label_105
.label_122:
	cmp	byte ptr [rip + translating],  0
	je	.label_47
	cmp	byte ptr [rip + complement],  1
	jne	.label_109
	mov	qword ptr [rsp + 0x20], -2
	lea	rdi, [rsp + 0x10]
	xor	esi, esi
	call	get_next
	cmp	eax, -1
	je	.label_121
	lea	rbx, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_127:
	cdqe	
	mov	byte ptr [rax + in_delete_set],  1
	xor	esi, esi
	mov	rdi, rbx
	call	get_next
	cmp	eax, -1
	jne	.label_127
.label_121:
	mov	qword ptr [r14 + 0x10], -2
	movaps	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_52]
	movaps	xmmword ptr [rip + label_53],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_54]
	movaps	xmmword ptr [rip + label_55],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_56]
	movaps	xmmword ptr [rip + label_57],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_58]
	movaps	xmmword ptr [rip + label_59],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rip + label_61],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rip + label_63],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rip + label_65],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_66]
	movaps	xmmword ptr [rip + label_67],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_68]
	movaps	xmmword ptr [rip + label_69],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rip + label_71],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_72]
	movaps	xmmword ptr [rip + label_73],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_74]
	movaps	xmmword ptr [rip + label_75],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rip + label_77],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_78]
	movaps	xmmword ptr [rip + label_79],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_80]
	movdqa	xmmword ptr [rip + label_81],  xmm0
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_41:
	cmp	byte ptr [rbx + in_delete_set],  0
	jne	.label_34
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	je	.label_38
	mov	byte ptr [rbx + xlate],  al
.label_34:
	inc	rbx
	cmp	rbx, 0x100
	jl	.label_41
	jmp	.label_33
.label_109:
	movaps	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rip + xlate],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_52]
	movaps	xmmword ptr [rip + label_53],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_54]
	movaps	xmmword ptr [rip + label_55],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_56]
	movaps	xmmword ptr [rip + label_57],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_58]
	movaps	xmmword ptr [rip + label_59],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_60]
	movaps	xmmword ptr [rip + label_61],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rip + label_63],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rip + label_65],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_66]
	movaps	xmmword ptr [rip + label_67],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_68]
	movaps	xmmword ptr [rip + label_69],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rip + label_71],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_72]
	movaps	xmmword ptr [rip + label_73],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_74]
	movaps	xmmword ptr [rip + label_75],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rip + label_77],  xmm0
	movaps	xmm0, xmmword ptr [rip + label_78]
	movaps	xmmword ptr [rip + label_79],  xmm0
	movdqa	xmm0, xmmword ptr [rip + label_80]
	movdqa	xmmword ptr [rip + label_81],  xmm0
	mov	qword ptr [rsp + 0x20], -2
	mov	qword ptr [r14 + 0x10], -2
	lea	r13, [rsp + 0xc]
	jmp	.label_82
	nop	dword ptr [rax]
.label_208:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], -1
	mov	rax, qword ptr [r14 + 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
.label_82:
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x70]
	call	get_next
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r13
	call	get_next
	mov	ecx, dword ptr [rsp + 0x70]
	mov	r12d, dword ptr [rsp + 0xc]
	test	ecx, ecx
	jne	.label_186
	cmp	r12d, 1
	jne	.label_186
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_207:
	test	byte ptr [rbp + r15*2 + 1], 2
	je	.label_214
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r15*4]
	mov	byte ptr [r15 + xlate],  al
.label_214:
	inc	r15
	cmp	r15, 0x100
	jne	.label_207
	jmp	.label_114
	nop	word ptr [rax + rax]
.label_186:
	cmp	ecx, 1
	jne	.label_213
	test	r12d, r12d
	jne	.label_213
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_43:
	test	byte ptr [rbp + rbx*2 + 1], 1
	je	.label_29
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + rbx*4]
	mov	byte ptr [rbx + xlate],  al
.label_29:
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_43
	jmp	.label_114
	nop	word ptr [rax + rax]
.label_213:
	cmp	ebp, -1
	je	.label_40
	cmp	eax, -1
	je	.label_40
	movsxd	rcx, ebp
	mov	byte ptr [rcx + xlate],  al
.label_114:
	cmp	r12d, 2
	je	.label_82
	jmp	.label_208
.label_40:
	cmp	ebp, -1
	je	.label_33
	mov	al, byte ptr [rip + truncate_set1]
	test	al, al
	jne	.label_33
	mov	edi, OFFSET FLAT:label_84
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x762
	mov	ecx, OFFSET FLAT:label_46
	call	__assert_fail
.label_38:
	mov	al, byte ptr [rip + truncate_set1]
	test	al, al
	je	.label_95
.label_33:
	mov	al, byte ptr [rip + squeeze_repeats]
	test	al, al
	je	.label_97
	mov	qword ptr [r14 + 0x10], -2
	jmp	.label_98
	nop	dword ptr [rax]
.label_83:
	cdqe	
	mov	byte ptr [rax + in_squeeze_set],  1
.label_98:
	xor	esi, esi
	mov	rdi, r14
	call	get_next
	cmp	eax, -1
	jne	.label_83
	mov	edi, OFFSET FLAT:read_and_xlate
.label_105:
	call	squeeze_filter
.label_47:
	xor	ebp, ebp
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_107
.label_37:
	mov	eax, ebp
	add	rsp, 0x1a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_97:
	xor	edi, edi
	mov	esi, OFFSET FLAT:io_buf
	mov	edx, 0x2000
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_47
	cmp	rbp, -1
	je	.label_30
	lea	rcx, [rbp - 1]
	mov	eax, ebp
	and	eax, 3
	cmp	rcx, 3
	mov	ecx, 0
	jb	.label_124
	mov	rdx, rbp
	sub	rdx, rax
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_120:
	movzx	esi, byte ptr [rcx + io_buf]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + io_buf],  bl
	movzx	esi, byte ptr [rcx + label_117]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_117],  bl
	movzx	esi, byte ptr [rcx + label_118]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_118],  bl
	movzx	esi, byte ptr [rcx + label_119]
	movzx	ebx, byte ptr [rsi + xlate]
	mov	byte ptr [rcx + label_119],  bl
	add	rcx, 4
	cmp	rdx, rcx
	jne	.label_120
.label_124:
	test	rax, rax
	je	.label_188
	lea	rcx, qword ptr [rcx + io_buf]
	neg	rax
	nop	dword ptr [rax + rax]
.label_199:
	movzx	edx, byte ptr [rcx]
	movzx	edx, byte ptr [rdx + xlate]
	mov	byte ptr [rcx], dl
	inc	rcx
	inc	rax
	jne	.label_199
.label_188:
	test	rbp, rbp
	je	.label_47
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 1
	mov	rdx, rbp
	call	fwrite_unlocked
	cmp	rax, rbp
	je	.label_97
	jmp	.label_182
.label_190:
	cmp	eax, 0xffffff7d
	je	.label_215
	cmp	eax, 0xffffff7e
	jne	.label_157
	xor	edi, edi
	call	usage
.label_215:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_20
	mov	edx, OFFSET FLAT:label_11
	mov	r8d, OFFSET FLAT:label_219
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_157:
	mov	edi, 1
	call	usage
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	jmp	.label_36
.label_204:
	xor	edi, edi
	test	r12d, r12d
	jne	.label_49
	mov	esi, OFFSET FLAT:label_87
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
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
	jne	.label_103
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_108
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_103:
	mov	edi, 1
	call	usage
.label_49:
	mov	esi, OFFSET FLAT:label_116
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
	mov	ecx, OFFSET FLAT:label_130
	mov	esi, OFFSET FLAT:label_131
	test	al, al
	cmovne	rsi, rcx
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_108
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	jmp	.label_36
.label_107:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	jmp	.label_111
.label_210:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	jmp	.label_36
.label_161:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	jmp	.label_36
.label_32:
	mov	edi, OFFSET FLAT:label_196
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x4c5
	mov	ecx, OFFSET FLAT:label_197
	call	__assert_fail
.label_206:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	jmp	.label_36
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	jmp	.label_36
.label_90:
	mov	edi, OFFSET FLAT:label_101
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x55e
	mov	ecx, OFFSET FLAT:label_102
	call	__assert_fail
.label_189:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:label_212
	call	__assert_fail
.label_30:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	jmp	.label_111
.label_92:
	call	abort
.label_839:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
.label_36:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_95:
	mov	edi, OFFSET FLAT:label_44
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x72d
	mov	ecx, OFFSET FLAT:label_46
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x402c50

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
	mov	qword ptr [rsp + 0x18], rsi
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	mov	rdi, rbx
	call	xmalloc
	mov	r12, rax
	mov	esi, 1
	mov	rdi, rbx
	call	xcalloc
	mov	qword ptr [rsp + 0x30], rax
	mov	r9, rax
	xor	ebx, ebx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x38], r12
	jmp	.label_247
	nop	
.label_259:
	inc	ebx
	inc	ebp
.label_247:
	mov	eax, ebp
	movzx	eax, byte ptr [r14 + rax]
	cmp	al, 0x5c
	je	.label_254
	test	al, al
	je	.label_257
	mov	ecx, ebx
	mov	byte ptr [r12 + rcx], al
	jmp	.label_259
	nop	
.label_254:
	mov	r15d, ebx
	mov	byte ptr [r9 + r15], 1
	lea	r12d, [rbp + 1]
	movsx	eax, byte ptr [r14 + r12]
	cmp	eax, 0x76
	ja	.label_261
	mov	r13b, 0x5c
	jmp	qword ptr [(rax * 8) + label_266]
.label_821:
	add	al, 0xd0
	lea	edx, [rbp + 2]
	movsx	ecx, byte ptr [r14 + rdx]
	add	ecx, -0x30
	cmp	ecx, 7
	ja	.label_261
	movzx	eax, al
	lea	r13d, [rcx + rax*8]
	add	ebp, 3
	movsx	eax, byte ptr [r14 + rbp]
	add	eax, -0x30
	cmp	eax, 7
	ja	.label_272
	movzx	ecx, r13b
	lea	eax, [rax + rcx*8]
	cmp	eax, 0xff
	jg	.label_277
	mov	ebp, edx
	mov	r13b, al
	jmp	.label_225
.label_261:
	mov	r13b, al
	jmp	.label_225
.label_272:
	mov	ebp, r12d
	jmp	.label_225
.label_820:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r9, qword ptr [rsp + 0x10]
	mov	byte ptr [r9 + r15], 0
	dec	ebp
	jmp	.label_225
.label_823:
	mov	r13b, 8
	jmp	.label_225
.label_824:
	mov	r13b, 0xc
	jmp	.label_225
.label_277:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	qword ptr [rsp + 0x28], rdx
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [r14 + r12]
	mov	rax, qword ptr [rsp + 0x28]
	movsx	r8d, byte ptr [r14 + rax]
	movsx	r9d, byte ptr [r14 + rbp]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	eax, 0
	push	r9
	push	r8
	push	rcx
	call	error
	mov	r9, qword ptr [rsp + 0x30]
	add	rsp, 0x20
	mov	ebp, r12d
	jmp	.label_225
.label_822:
	mov	r13b, 7
	jmp	.label_225
.label_826:
	mov	r13b, 0xd
	jmp	.label_225
.label_827:
	mov	r13b, 9
	jmp	.label_225
.label_828:
	mov	r13b, 0xb
	jmp	.label_225
.label_825:
	mov	r13b, 0xa
	nop	word ptr cs:[rax + rax]
.label_225:
	inc	ebp
	mov	r12, qword ptr [rsp + 0x38]
	mov	byte ptr [r12 + r15], r13b
	jmp	.label_259
.label_257:
	mov	eax, ebx
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	cmp	ebx, 3
	jb	.label_302
	mov	rax, qword ptr [rsp + 0x20]
	dec	rax
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r12 + 3]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x50], rcx
	add	rax, 3
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	r15d, 2
.label_307:
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_299:
	movzx	r13d, byte ptr [r12 + rbx]
	cmp	r13, 0x5b
	jne	.label_239
	cmp	byte ptr [r9 + rbx], 0
	jne	.label_239
	mov	r14b, byte ptr [r12 + rbx + 1]
	cmp	r14b, 0x3d
	je	.label_241
	cmp	r14b, 0x3a
	jne	.label_244
.label_241:
	cmp	byte ptr [r9 + rbx + 1], 0
	jne	.label_244
	cmp	qword ptr [rsp + 0x28], r15
	jbe	.label_244
	lea	r8, [r12 + rbx]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + r15]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rcx, [rcx + r15]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	byte ptr [rcx + rbp - 1], r14b
	jne	.label_236
	cmp	byte ptr [rcx + rbp], 0x5d
	jne	.label_236
	cmp	byte ptr [rax + rbp - 1], 0
	jne	.label_236
	cmp	byte ptr [rax + rbp], 0
	je	.label_262
	nop	
.label_236:
	lea	rdx, [r15 + rbp + 1]
	inc	rbp
	cmp	rdx, qword ptr [rsp + 0x28]
	jb	.label_264
.label_244:
	lea	rax, [rbx + 2]
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rax, rcx
	jae	.label_268
	cmp	byte ptr [r12 + rax], 0x2a
	jne	.label_239
	cmp	byte ptr [r9 + rax], 0
	jne	.label_239
	lea	r8, [rbx + 3]
	cmp	r8, rcx
	jae	.label_239
	mov	rax, qword ptr [rsp + 0x40]
	lea	rax, [rax + rbx]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdx, [rdx + rbx]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_284:
	cmp	byte ptr [rdx + rbp], 0
	jne	.label_239
	cmp	byte ptr [rax + rbp], 0x5d
	je	.label_281
	lea	rsi, [rbx + rbp + 4]
	inc	rbp
	cmp	rsi, rcx
	jb	.label_284
	nop	dword ptr [rax]
.label_239:
	lea	r14, [rbx + 1]
	cmp	byte ptr [r12 + rbx + 1], 0x2d
	jne	.label_286
	cmp	byte ptr [r9 + r14], 0
	je	.label_289
.label_286:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], r13b
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_231
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
.label_311:
	mov	r9, qword ptr [rsp + 0x10]
.label_234:
	lea	r15, [r14 + 2]
	cmp	r15, qword ptr [rsp + 0x20]
	mov	rbx, r14
	jb	.label_299
	jmp	.label_302
.label_289:
	mov	r14b, byte ptr [r12 + rbx + 2]
	movzx	ebp, r14b
	cmp	bpl, r13b
	jb	.label_303
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 1
	mov	byte ptr [rax + 0x10], r13b
	mov	byte ptr [rax + 0x11], r14b
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_248
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	add	rbx, 3
	mov	r14, rbx
	jmp	.label_311
.label_262:
	test	rbp, rbp
	je	.label_314
	add	r8, 2
	cmp	r14b, 0x3a
	jne	.label_223
	mov	esi, OFFSET FLAT:label_222
	mov	qword ptr [rsp + 8], r8
	mov	rdi, r8
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_227
	xor	r12d, r12d
	test	eax, eax
	je	.label_230
.label_227:
	mov	esi, OFFSET FLAT:label_232
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_235
	mov	r12d, 1
	test	eax, eax
	je	.label_230
.label_235:
	mov	esi, OFFSET FLAT:label_237
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_242
	mov	r12d, 2
	test	eax, eax
	je	.label_230
.label_242:
	mov	esi, OFFSET FLAT:label_278
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_252
	mov	r12d, 3
	test	eax, eax
	je	.label_230
.label_252:
	mov	esi, OFFSET FLAT:label_256
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_260
	mov	r12d, 4
	test	eax, eax
	je	.label_230
.label_260:
	mov	esi, OFFSET FLAT:label_263
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_269
	mov	r12d, 5
	test	eax, eax
	je	.label_230
.label_269:
	mov	esi, OFFSET FLAT:label_273
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_276
	mov	r12d, 6
	test	eax, eax
	je	.label_230
.label_276:
	mov	esi, OFFSET FLAT:label_253
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_283
	mov	r12d, 7
	test	eax, eax
	je	.label_230
.label_283:
	mov	esi, OFFSET FLAT:label_287
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_290
	mov	r12d, 8
	test	eax, eax
	je	.label_230
.label_290:
	mov	esi, OFFSET FLAT:label_293
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_296
	mov	r12d, 9
	test	eax, eax
	je	.label_230
.label_296:
	mov	esi, OFFSET FLAT:label_297
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 5
	jne	.label_300
	mov	r12d, 0xa
	test	eax, eax
	je	.label_230
.label_300:
	mov	esi, OFFSET FLAT:label_304
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	strncmp
	cmp	rbp, 6
	jne	.label_308
	mov	r12d, 0xb
	test	eax, eax
	jne	.label_308
.label_230:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 2
	mov	dword ptr [rax + 0x10], r12d
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	je	.label_310
	mov	qword ptr [rcx + 8], rax
	mov	r12, qword ptr [rsp + 0x38]
	jmp	.label_315
.label_223:
	cmp	rbp, 1
	jne	.label_221
	mov	edi, 0x20
	mov	rbx, r8
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 3
	mov	cl, byte ptr [rbx]
	mov	byte ptr [rax + 0x10], cl
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	je	.label_275
	mov	qword ptr [rcx + 8], rax
.label_315:
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx + 8], rax
	lea	r14, [r15 + rbp + 2]
	jmp	.label_234
.label_221:
	cmp	byte ptr [r12 + r15], 0x2a
	jne	.label_238
	cmp	byte ptr [r9 + r15], 0
	jne	.label_238
	inc	r15
.label_250:
	mov	rax, r15
	cmp	rax, qword ptr [rsp + 0x20]
	jae	.label_238
	movzx	ecx, byte ptr [r12 + rax]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_246
	lea	r15, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_250
.label_246:
	cmp	cl, 0x5d
	jne	.label_238
	cmp	byte ptr [r9 + rax], 0
	je	.label_244
	jmp	.label_238
.label_308:
	mov	r12, qword ptr [rsp + 0x38]
	cmp	byte ptr [r12 + r15], 0x2a
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_258
	cmp	byte ptr [r9 + r15], 0
	jne	.label_258
	inc	r15
.label_274:
	mov	rax, r15
	cmp	rax, qword ptr [rsp + 0x20]
	jae	.label_258
	movzx	ecx, byte ptr [r12 + rax]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_271
	lea	r15, [rax + 1]
	cmp	byte ptr [r9 + rax], 0
	je	.label_274
.label_271:
	cmp	cl, 0x5d
	jne	.label_258
	cmp	byte ptr [r9 + rax], 0
	je	.label_244
	jmp	.label_258
.label_281:
	test	rbp, rbp
	je	.label_280
	lea	r13, [r12 + r8]
	xor	ecx, ecx
	cmp	byte ptr [r12 + r8], 0x30
	setne	cl
	lea	edx, [rcx + rcx + 8]
	xor	r8d, r8d
	mov	rdi, r13
	lea	rsi, [rsp + 0x60]
	lea	rcx, [rsp + 0x48]
	call	xstrtoumax
	test	eax, eax
	jne	.label_288
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r15, -1
	je	.label_288
	mov	rax, qword ptr [rsp + 0x40]
	sub	rax, qword ptr [rsp + 0x60]
	add	rax, rbx
	add	rax, rbp
	je	.label_292
	jmp	.label_288
.label_280:
	mov	qword ptr [rsp + 0x48], 0
	xor	r15d, r15d
.label_292:
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 4
	mov	byte ptr [rax + 0x10], r14b
	mov	qword ptr [rax + 0x18], r15
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_298
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rdx + 8], rax
	lea	rax, [rbx + rbp + 4]
	lea	r15, [rbx + rbp + 6]
	cmp	r15, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	jb	.label_307
	lea	r14, [rbx + rbp + 4]
.label_302:
	mov	r13b, 1
	mov	r15, qword ptr [rsp + 0x20]
	cmp	r14, r15
	jae	.label_279
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
.label_226:
	movzx	ebx, byte ptr [r12 + r14]
	mov	edi, 0x20
	call	xmalloc
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0
	mov	byte ptr [rax + 0x10], bl
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	je	.label_231
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp + 8], rax
	inc	r14
	cmp	r14, r15
	jb	.label_226
.label_279:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	eax, r13d
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_303:
	mov	edi, 5
	call	xmalloc
	mov	rbx, rax
	call	__ctype_b_loc
	mov	r15, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + r13*2 + 1], 0x40
	mov	qword ptr [rsp + 0x28], rbx
	jne	.label_240
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_245
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, r13d
	call	__sprintf_chk
	jmp	.label_251
.label_240:
	mov	byte ptr [rbx], r13b
	mov	byte ptr [rbx + 1], 0
.label_251:
	mov	edi, 5
	call	xmalloc
	mov	rbx, rax
	mov	rax, qword ptr [r15]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_255
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_245
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_265
.label_255:
	mov	byte ptr [rbx], r14b
	mov	byte ptr [rbx + 1], 0
.label_265:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
.label_301:
	mov	rdi, rbx
	call	free
	jmp	.label_279
.label_238:
	mov	rdi, r8
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
.label_224:
	call	error
	mov	rdi, rbx
	call	free
	jmp	.label_291
.label_288:
	mov	rdi, r13
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	jmp	.label_301
.label_314:
	xor	edi, edi
	cmp	r14b, 0x3a
	jne	.label_309
	mov	esi, OFFSET FLAT:label_305
	jmp	.label_306
.label_309:
	mov	esi, OFFSET FLAT:label_312
.label_306:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_291:
	xor	r13d, r13d
	jmp	.label_279
.label_231:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x287
	mov	ecx, OFFSET FLAT:label_270
	call	__assert_fail
.label_258:
	mov	rsi, rbp
	call	make_printable_str
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
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
	jmp	.label_224
.label_268:
	mov	edi, OFFSET FLAT:label_228
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x30e
	mov	ecx, OFFSET FLAT:label_229
	call	__assert_fail
.label_248:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2a5
	mov	ecx, OFFSET FLAT:label_233
	call	__assert_fail
.label_298:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2cf
	mov	ecx, OFFSET FLAT:label_212
	call	__assert_fail
.label_310:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2bb
	mov	ecx, OFFSET FLAT:label_243
	call	__assert_fail
.label_275:
	mov	edi, OFFSET FLAT:label_211
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x2e5
	mov	ecx, OFFSET FLAT:label_249
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036b0

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
	jmp	.label_318
.label_326:
	mov	r15d, 0x7fffffff
	nop	
.label_318:
	cmp	rbx, r12
	mov	rax, rbx
	jb	.label_319
	mov	edi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	call	r14
	mov	r12, rax
	test	r12, r12
	mov	eax, 0
	je	.label_325
.label_319:
	cmp	r15d, 0x7fffffff
	jne	.label_328
	mov	r15, r12
	sub	r15, rax
	mov	rbx, rax
	jbe	.label_316
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_323:
	movzx	ecx, byte ptr [rbx + io_buf]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	jne	.label_316
	add	rbx, 2
	cmp	rbx, r12
	jb	.label_323
.label_316:
	cmp	rbx, r12
	jne	.label_329
	lea	rbx, [r12 - 1]
	movzx	ecx, byte ptr [r12 + label_327]
	cmp	byte ptr [rcx + in_squeeze_set],  0
	cmove	rbx, r12
.label_329:
	cmp	rbx, r12
	jae	.label_320
	movsx	ebp, byte ptr [rbx + io_buf]
	mov	rcx, rbx
	sub	rcx, rax
	lea	r15, [rcx + 1]
	test	rbx, rbx
	je	.label_322
	cmp	byte ptr [rbx + label_327],  bpl
	cmove	r15, rcx
.label_322:
	inc	rbx
	jmp	.label_330
	nop	word ptr cs:[rax + rax]
.label_328:
	mov	ebp, r15d
	mov	rbx, rax
	jmp	.label_324
	nop	dword ptr [rax + rax]
.label_320:
	mov	ebp, 0x7fffffff
.label_330:
	test	r15, r15
	je	.label_321
	lea	rdi, qword ptr [rax + io_buf]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, r15
	call	fwrite_unlocked
	cmp	rax, r15
	jne	.label_317
.label_321:
	cmp	ebp, 0x7fffffff
	mov	r15d, 0x7fffffff
	je	.label_318
.label_324:
	cmp	rbx, r12
	mov	r15d, ebp
	jae	.label_318
	nop	dword ptr [rax + rax]
.label_331:
	movsx	eax, byte ptr [rbx + io_buf]
	cmp	eax, ebp
	jne	.label_326
	inc	rbx
	cmp	rbx, r12
	jb	.label_331
	mov	r15d, ebp
	jmp	.label_318
.label_325:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_317:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
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
	.align	32
	#Procedure 0x403850

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
	je	.label_332
	pop	rbx
	ret	
.label_332:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
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
	.align	32
	#Procedure 0x4038a0

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
.label_339:
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	call	safe_read
	test	rax, rax
	mov	ecx, 0
	je	.label_338
	cmp	rax, -1
	je	.label_333
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_340:
	movzx	edx, byte ptr [rbx + rcx]
	cmp	byte ptr [rdx + in_delete_set],  0
	jne	.label_336
	inc	rcx
	cmp	rcx, rax
	jb	.label_340
.label_336:
	mov	rsi, rcx
	jmp	.label_334
.label_337:
	mov	byte ptr [rbx + rcx], dil
	inc	rcx
	mov	rsi, rdx
	nop	word ptr cs:[rax + rax]
.label_334:
	lea	rdx, [rsi + 1]
	cmp	rdx, rax
	jae	.label_335
	movzx	edi, byte ptr [rbx + rsi + 1]
	cmp	byte ptr [rdi + in_delete_set],  0
	mov	rsi, rdx
	jne	.label_334
	jmp	.label_337
	nop	dword ptr [rax]
.label_335:
	test	rcx, rcx
	je	.label_339
.label_338:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_333:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403960

	.globl get_next
	.type get_next, @function
get_next:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	test	rsi, rsi
	jne	.label_356
	mov	rax, qword ptr [r14 + 0x10]
	jmp	.label_368
.label_364:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
	nop	dword ptr [rax]
.label_356:
	mov	dword ptr [rsi], 2
	mov	rax, qword ptr [r14 + 0x10]
	cmp	rax, -2
	jne	.label_346
	mov	rax, qword ptr [r14]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], r15
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	jmp	.label_349
	nop	dword ptr [rax]
.label_346:
	mov	r15, qword ptr [r14 + 8]
.label_349:
	mov	ebx, 0xffffffff
	test	r15, r15
	je	.label_347
	mov	ecx, dword ptr [r15]
	cmp	rcx, 4
	ja	.label_360
	jmp	qword ptr [(rcx * 8) + label_362]
.label_755:
	mov	rcx, qword ptr [r15 + 0x18]
	test	rcx, rcx
	je	.label_364
	jmp	.label_361
.label_365:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	nop	dword ptr [rax + rax]
.label_368:
	cmp	rax, -2
	jne	.label_363
	mov	rax, qword ptr [r14]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], r15
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, -1
	jmp	.label_348
	nop	word ptr cs:[rax + rax]
.label_363:
	mov	r15, qword ptr [r14 + 8]
.label_348:
	mov	ebx, 0xffffffff
	test	r15, r15
	je	.label_347
	mov	ecx, dword ptr [r15]
	cmp	rcx, 4
	ja	.label_360
	jmp	qword ptr [(rcx * 8) + label_355]
.label_719:
	mov	rcx, qword ptr [r15 + 0x18]
	test	rcx, rcx
	je	.label_365
.label_361:
	cmp	rax, -1
	jne	.label_367
	mov	qword ptr [r14 + 0x10], 0
	xor	eax, eax
.label_367:
	inc	rax
	mov	qword ptr [r14 + 0x10], rax
	movzx	ebx, byte ptr [r15 + 0x10]
	cmp	rax, rcx
	je	.label_366
	jmp	.label_347
.label_716:
	movzx	ebx, byte ptr [r15 + 0x10]
	mov	qword ptr [r14 + 0x10], -1
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	jmp	.label_347
.label_717:
	cmp	rax, -1
	je	.label_352
	inc	rax
	mov	cl, byte ptr [r15 + 0x11]
	mov	rbx, rax
	jmp	.label_354
.label_718:
	test	rsi, rsi
	je	.label_358
	mov	eax, dword ptr [r15 + 0x10]
	cmp	eax, 0xa
	je	.label_359
	cmp	eax, 6
	jne	.label_358
	mov	dword ptr [rsi], 0
	jmp	.label_358
.label_352:
	movzx	ecx, word ptr [r15 + 0x10]
	movzx	ebx, cl
	shr	ecx, 8
.label_354:
	mov	qword ptr [r14 + 0x10], rbx
	movzx	eax, cl
	cmp	rbx, rax
	je	.label_366
	jmp	.label_347
.label_359:
	mov	dword ptr [rsi], 1
.label_358:
	mov	rbx, qword ptr [r14 + 0x10]
	cmp	rbx, -1
	jne	.label_341
	mov	ebp, dword ptr [r15 + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_351:
	movzx	esi, bl
	mov	edi, ebp
	call	is_char_class_member
	test	al, al
	jne	.label_350
	inc	rbx
	cmp	ebx, 0x100
	jl	.label_351
	mov	edi, OFFSET FLAT:label_345
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x434
	mov	ecx, OFFSET FLAT:label_343
	call	__assert_fail
.label_350:
	mov	qword ptr [r14 + 0x10], rbx
.label_341:
	mov	r12d, dword ptr [r15 + 0x10]
	movzx	esi, bl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	je	.label_353
	lea	eax, [rbx + 1]
	cmp	eax, 0xff
	jg	.label_366
	movsxd	rbp, eax
	nop	word ptr cs:[rax + rax]
.label_357:
	movzx	esi, bpl
	mov	edi, r12d
	call	is_char_class_member
	test	al, al
	jne	.label_344
	inc	rbp
	cmp	ebp, 0x100
	jl	.label_357
.label_366:
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], -1
.label_347:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_344:
	mov	qword ptr [r14 + 0x10], rbp
	jmp	.label_347
.label_360:
	call	abort
.label_353:
	mov	edi, OFFSET FLAT:label_342
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x437
	mov	ecx, OFFSET FLAT:label_343
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403be0

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
	je	.label_372
	cmp	rax, -1
	je	.label_373
	lea	rcx, [rax - 1]
	mov	esi, eax
	and	esi, 3
	xor	edx, edx
	cmp	rcx, 3
	jb	.label_370
	mov	r8, rax
	sub	r8, rsi
	xor	edx, edx
.label_369:
	movzx	edi, byte ptr [rbx + rdx]
	movzx	ecx, byte ptr [rdi + xlate]
	mov	byte ptr [rbx + rdx], cl
	movzx	ecx, byte ptr [rbx + rdx + 1]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 1], cl
	movzx	ecx, byte ptr [rbx + rdx + 2]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 2], cl
	movzx	ecx, byte ptr [rbx + rdx + 3]
	movzx	ecx, byte ptr [rcx + xlate]
	mov	byte ptr [rbx + rdx + 3], cl
	add	rdx, 4
	cmp	r8, rdx
	jne	.label_369
.label_370:
	test	rsi, rsi
	je	.label_372
	add	rbx, rdx
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_371:
	movzx	edx, byte ptr [rbx]
	movzx	edx, byte ptr [rdx + xlate]
	mov	byte ptr [rbx], dl
	inc	rbx
	inc	rsi
	jne	.label_371
.label_372:
	pop	rbx
	ret	
.label_373:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
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
	.align	32
	#Procedure 0x403cd0

	.globl make_printable_str
	.type make_printable_str, @function
make_printable_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [r14 + 1]
	mov	rax, rdi
	shr	rax, 0x3d
	jne	.label_379
	shl	rdi, 2
	call	xmalloc
	mov	r15, rax
	test	r14, r14
	je	.label_376
	mov	r13, r15
	nop	word ptr [rax + rax]
.label_377:
	movzx	r12d, byte ptr [rbx]
	movzx	ebp, r12b
	mov	eax, ebp
	add	al, 0xf9
	movzx	eax, al
	cmp	al, 6
	ja	.label_385
	jmp	qword ptr [(rax * 8) + label_386]
.label_721:
	mov	esi, OFFSET FLAT:label_387
	jmp	.label_375
	nop	word ptr cs:[rax + rax]
.label_385:
	cmp	r12b, 0x5c
	mov	esi, OFFSET FLAT:label_374
	je	.label_375
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x40
	jne	.label_381
	mov	esi, 1
	mov	edx, 5
	mov	ecx, OFFSET FLAT:label_245
	xor	eax, eax
	lea	r12, [rsp + 3]
	mov	rdi, r12
	mov	r8d, ebp
	call	__sprintf_chk
	mov	rsi, r12
	jmp	.label_375
.label_722:
	mov	esi, OFFSET FLAT:label_378
	jmp	.label_375
.label_723:
	mov	esi, OFFSET FLAT:label_388
	jmp	.label_375
.label_724:
	mov	esi, OFFSET FLAT:label_380
	jmp	.label_375
.label_725:
	mov	esi, OFFSET FLAT:label_383
	jmp	.label_375
.label_726:
	mov	esi, OFFSET FLAT:label_384
	jmp	.label_375
.label_727:
	mov	esi, OFFSET FLAT:label_382
	jmp	.label_375
.label_381:
	mov	byte ptr [rsp + 3], r12b
	mov	byte ptr [rsp + 4], 0
	lea	rsi, [rsp + 3]
	nop	dword ptr [rax]
.label_375:
	mov	rdi, r13
	call	stpcpy
	mov	r13, rax
	inc	rbx
	dec	r14
	jne	.label_377
.label_376:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_379:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x403df0

	.globl get_spec_stats
	.type get_spec_stats, @function
get_spec_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	qword ptr [r14 + 0x20], 0
	mov	byte ptr [r14 + 0x32], 0
	mov	word ptr [r14 + 0x30], 0
	mov	r13, qword ptr [r14]
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
	nop	
.label_393:
	mov	r13, qword ptr [r13 + 8]
	test	r13, r13
	je	.label_395
	mov	ebx, 1
	mov	eax, dword ptr [r13]
	cmp	rax, 4
	ja	.label_400
	jmp	qword ptr [(rax * 8) + label_389]
.label_706:
	movzx	ebx, byte ptr [r13 + 0x11]
	movzx	eax, byte ptr [r13 + 0x10]
	cmp	bl, al
	jb	.label_390
	inc	rbx
	sub	rbx, rax
	jmp	.label_394
.label_707:
	mov	byte ptr [r14 + 0x31], 1
	mov	ebp, dword ptr [r13 + 0x10]
	xor	r15d, r15d
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_391:
	movzx	esi, r15b
	mov	edi, ebp
	call	is_char_class_member
	movzx	eax, al
	add	rbx, rax
	inc	r15d
	cmp	r15d, 0x100
	jne	.label_391
	cmp	ebp, 6
	je	.label_394
	cmp	ebp, 0xa
	je	.label_394
	mov	byte ptr [r14 + 0x32], 1
	jmp	.label_394
.label_708:
	mov	al, byte ptr [r13 + 0x10]
	xor	ecx, ecx
	mov	edx, eax
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_396:
	cmp	dl, 1
	adc	rbx, 0
	mov	esi, ecx
	or	esi, 1
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbx
	mov	esi, ecx
	or	esi, 2
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 3
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbp
	mov	esi, ecx
	or	esi, 4
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 5
	xor	edi, edi
	cmp	al, sil
	sete	dil
	add	rdi, rbp
	mov	esi, ecx
	or	esi, 6
	xor	ebp, ebp
	cmp	al, sil
	sete	bpl
	add	rbp, rdi
	mov	esi, ecx
	or	esi, 7
	xor	ebx, ebx
	cmp	al, sil
	sete	bl
	add	rbx, rbp
	add	ecx, 8
	add	dl, 0xf8
	cmp	ecx, 0x100
	jne	.label_396
	mov	byte ptr [r14 + 0x30], 1
	jmp	.label_394
.label_709:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_394
	mov	qword ptr [r14 + 0x28], r13
	mov	rax, qword ptr [rsp]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp], rax
	mov	qword ptr [r14 + 0x20], rcx
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_394:
	add	rbx, r12
	cmp	r12, rbx
	ja	.label_392
	cmp	rbx, -1
	mov	r12, rbx
	jne	.label_393
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_395:
	mov	qword ptr [r14 + 0x18], r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_400:
	call	abort
.label_390:
	mov	edi, OFFSET FLAT:label_397
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x4ee
	mov	ecx, OFFSET FLAT:label_398
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404000

	.globl is_char_class_member
	.type is_char_class_member, @function
is_char_class_member:
	push	rbx
	mov	eax, edi
	cmp	edi, 0xb
	ja	.label_401
	jmp	qword ptr [(rax * 8) + label_403]
.label_730:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 8
	jmp	.label_402
.label_732:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	jmp	.label_402
.label_733:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 2
	jmp	.label_402
.label_734:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x800
	jmp	.label_402
.label_739:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x2000
	jmp	.label_402
.label_741:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x1000
	jmp	.label_402
.label_731:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x400
	jmp	.label_402
.label_735:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x8000
	jmp	.label_402
.label_736:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x200
	jmp	.label_402
.label_737:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x4000
	jmp	.label_402
.label_738:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 4
	jmp	.label_402
.label_740:
	movzx	ebx, sil
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x100
.label_402:
	test	eax, eax
	setne	al
	pop	rbx
	ret	
.label_401:
	call	abort
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404140
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404150
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404160

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_409
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_405
	cmp	dword ptr [rbp], 0x20
	jne	.label_405
.label_409:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_407
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_405:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_406
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_404
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_407:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_406:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_408
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
	#Procedure 0x404220
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_410
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_410:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404250

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_413
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_412
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_412
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_416
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_416:
	mov	rbx, r14
.label_412:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_413:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_414
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404300
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
	#Procedure 0x404340
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
	#Procedure 0x404350
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
	#Procedure 0x404360
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
	#Procedure 0x4043a0
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
	#Procedure 0x4043c0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_417
	test	rdx, rdx
	je	.label_417
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_417:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043f0
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
	#Procedure 0x404470

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
	jmp	.label_469
	nop	
.label_509:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_470
	or	al, dl
	jne	.label_470
	test	dil, 1
	jne	.label_507
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_470
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_469
	jmp	.label_470
.label_812:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_518
	test	rbp, rbp
	je	.label_516
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_516:
	mov	r14d, 1
	jmp	.label_521
.label_813:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_485
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_463
.label_518:
	xor	r14d, r14d
.label_521:
	mov	eax, OFFSET FLAT:label_485
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_486
	nop	
.label_469:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_541
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_418]
.label_814:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_429
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_435
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_815:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_444
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_444
	xor	r14d, r14d
	nop	
.label_456:
	cmp	r14, rbp
	jae	.label_491
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_491:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_456
.label_444:
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
	jmp	.label_463
.label_807:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_463
.label_810:
	mov	al, 1
.label_808:
	mov	r12b, 1
.label_811:
	test	r12b, 1
	mov	cl, 1
	je	.label_480
	mov	ecx, eax
.label_480:
	mov	al, cl
.label_809:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_482
	test	rbp, rbp
	je	.label_490
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_490:
	mov	r14d, 1
	jmp	.label_492
.label_482:
	xor	r14d, r14d
.label_492:
	mov	ecx, OFFSET FLAT:label_435
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_486:
	mov	sil, r12b
.label_463:
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
	jmp	.label_499
	nop	word ptr cs:[rax + rax]
.label_501:
	inc	r12
.label_499:
	cmp	r11, -1
	je	.label_527
	cmp	r12, r11
	jne	.label_530
	jmp	.label_531
	nop	word ptr cs:[rax + rax]
.label_527:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_535
.label_530:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_542
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_421
	cmp	r11, -1
	jne	.label_421
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_421:
	cmp	rbx, r11
	jbe	.label_433
.label_542:
	xor	esi, esi
.label_458:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_436
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_441]
.label_787:
	test	r12, r12
	jne	.label_424
	jmp	.label_446
	nop	word ptr cs:[rax + rax]
.label_433:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_455
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_458
	jmp	.label_453
.label_455:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_458
.label_791:
	xor	eax, eax
	cmp	r11, -1
	je	.label_475
	test	r12, r12
	jne	.label_479
	cmp	r11, 1
	je	.label_446
	xor	r13d, r13d
	jmp	.label_447
.label_780:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_484
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_453
	cmp	r8d, 2
	jne	.label_434
	mov	eax, r9d
	and	al, 1
	jne	.label_434
	cmp	r14, rbp
	jae	.label_495
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_495:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_496
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_496:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_502
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_502:
	add	r14, 3
	mov	r9b, 1
.label_434:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_506
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_506:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_508
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_508
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_508
	cmp	r14, rbp
	jae	.label_524
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_524:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_526
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_526:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_447
.label_781:
	mov	bl, 0x62
	jmp	.label_528
.label_782:
	mov	cl, 0x74
	jmp	.label_505
.label_783:
	mov	bl, 0x76
	jmp	.label_528
.label_784:
	mov	bl, 0x66
	jmp	.label_528
.label_785:
	mov	cl, 0x72
	jmp	.label_505
.label_788:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_539
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_462
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
	jae	.label_419
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_419:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_438
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_438:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_443
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_443:
	add	r14, 3
	xor	r9d, r9d
.label_539:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_447
.label_789:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_451
	cmp	r8d, 2
	jne	.label_424
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_424
	jmp	.label_462
.label_790:
	cmp	r8d, 2
	jne	.label_460
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_462
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_465
.label_436:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_468
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_517
.label_475:
	test	r12, r12
	jne	.label_493
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_493
.label_446:
	mov	dl, 1
.label_786:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_462
	xor	eax, eax
	mov	r13b, dl
.label_447:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_500
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_503
	jmp	.label_504
	nop	word ptr cs:[rax + rax]
.label_500:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_504
.label_503:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_422
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_514
	nop	dword ptr [rax]
.label_504:
	test	sil, sil
.label_514:
	mov	ebx, r15d
	je	.label_449
	jmp	.label_520
.label_422:
	mov	ebx, r15d
	jmp	.label_520
.label_484:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_501
	xor	r15d, r15d
	jmp	.label_424
.label_460:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_505
	xor	eax, eax
	mov	r15b, 0x5c
.label_465:
	xor	r13d, r13d
	jmp	.label_449
.label_505:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_462
.label_528:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_447
	nop	
.label_520:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_453
	cmp	r8d, 2
	jne	.label_540
	mov	eax, r9d
	and	al, 1
	jne	.label_540
	cmp	r14, rbp
	jae	.label_544
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_544:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_420
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_420:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_427
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_427:
	add	r14, 3
	mov	r9b, 1
.label_540:
	cmp	r14, rbp
	jae	.label_440
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_440:
	inc	r14
	jmp	.label_512
.label_468:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_442
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_442:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_450
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_445:
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
	je	.label_461
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_476
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_529
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_488
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_536:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_515
	bt	rsi, rdx
	jb	.label_462
.label_515:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_536
.label_488:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_471
	xor	r13d, r13d
.label_471:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_445
	jmp	.label_478
.label_508:
	xor	r13d, r13d
	jmp	.label_447
.label_493:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_447
.label_451:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_424
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_424
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_424
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_525
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_467
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_534
	cmp	r14, rbp
	jae	.label_537
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_537:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_543
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_543:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_437
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_437:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_510
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_510:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_467:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_447
.label_424:
	xor	eax, eax
.label_479:
	xor	r13d, r13d
	jmp	.label_447
.label_450:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_426:
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
	je	.label_522
	cmp	rbp, -1
	je	.label_459
	cmp	rbp, -2
	je	.label_461
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_464
	xor	r13d, r13d
.label_464:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_426
	jmp	.label_478
.label_461:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_494
	lea	rax, [r10 + r12]
.label_448:
	cmp	byte ptr [rax + rsi], 0
	je	.label_494
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_448
.label_494:
	mov	qword ptr [rsp + 0x40], rsi
.label_476:
	xor	r13d, r13d
	jmp	.label_529
.label_459:
	xor	r13d, r13d
.label_522:
	mov	r10, qword ptr [rsp + 0x28]
.label_529:
	mov	r12, qword ptr [rsp + 0x40]
.label_478:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_517:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_498
	test	al, al
	je	.label_498
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_447
.label_498:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_511
	nop	word ptr [rax + rax]
.label_477:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_511:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_519
	test	sil, 1
	je	.label_513
	cmp	r14, rbp
	jae	.label_474
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_474:
	inc	r14
	xor	esi, esi
	jmp	.label_513
	nop	word ptr cs:[rax + rax]
.label_519:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_453
	cmp	r8d, 2
	jne	.label_472
	mov	eax, r9d
	and	al, 1
	jne	.label_472
	cmp	r14, rbp
	jae	.label_533
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_533:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_538
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_538:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_481
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_481:
	add	r14, 3
	mov	r9b, 1
.label_472:
	cmp	r14, rbp
	jae	.label_425
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_425:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_473
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_473:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_439
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_439:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_513:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_449
	test	r9b, 1
	je	.label_428
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_487
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_454
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_454:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_523
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_523:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_428
	nop	word ptr cs:[rax + rax]
.label_487:
	mov	rbx, rcx
.label_428:
	cmp	r14, rbp
	jae	.label_477
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_477
	nop	
.label_449:
	test	r9b, 1
	je	.label_483
	and	al, 1
	jne	.label_483
	cmp	r14, rbp
	jae	.label_489
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_489:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_431
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_431:
	add	r14, 2
	xor	r9d, r9d
.label_483:
	mov	ebx, r15d
.label_512:
	cmp	r14, rbp
	jae	.label_497
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_497:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_501
.label_525:
	xor	r13d, r13d
	jmp	.label_447
	nop	word ptr cs:[rax + rax]
.label_531:
	mov	rcx, r12
.label_535:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_509
	or	al, dl
	jne	.label_509
	mov	r11, rcx
	jmp	.label_453
.label_462:
	mov	eax, 2
.label_457:
	mov	qword ptr [rsp + 0x38], rax
.label_453:
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
.label_466:
	mov	r14, rax
.label_452:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_470:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_532
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_423
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_423
	inc	rdx
	nop	dword ptr [rax + rax]
.label_432:
	cmp	r14, rbp
	jae	.label_430
	mov	byte ptr [rcx + r14], al
.label_430:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_432
	jmp	.label_423
.label_507:
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
	jmp	.label_466
.label_532:
	mov	rcx, qword ptr [rsp + 0x10]
.label_423:
	cmp	r14, rbp
	jae	.label_452
	mov	byte ptr [rcx + r14], 0
	jmp	.label_452
.label_534:
	mov	eax, 5
	jmp	.label_457
.label_541:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4052a0
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
	#Procedure 0x405370
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
	je	.label_545
	mov	qword ptr [rax], rbx
.label_545:
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
	#Procedure 0x405460
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_546
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_548:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_548
.label_546:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_549
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_550], OFFSET FLAT:slot0
.label_549:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_547
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_547:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405500
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405510

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
	js	.label_554
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_557
	cmp	r12d, 0x7fffffff
	je	.label_552
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
	jne	.label_555
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_555:
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
.label_557:
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
	jbe	.label_553
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_556
.label_553:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_551
	mov	rdi, r14
	call	free
.label_551:
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
.label_556:
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
.label_554:
	call	abort
.label_552:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0
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
	#Procedure 0x405700
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
	#Procedure 0x405720
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
	je	.label_558
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
.label_558:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405790
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
	je	.label_559
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
.label_559:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405800
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
	je	.label_560
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
.label_560:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405870
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
	je	.label_561
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
.label_561:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_562]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_563]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_564]
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
	#Procedure 0x405950
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_562]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_563]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_564]
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
	#Procedure 0x4059c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_562]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_563]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_564]
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
	#Procedure 0x405a20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_562]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_563]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_564]
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
	#Procedure 0x405a80
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
	je	.label_565
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
.label_565:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_562]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_563]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_566
	test	rdx, rdx
	je	.label_566
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_566:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b90
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_562]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_563]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_567
	test	rdx, rdx
	je	.label_567
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_567:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c00
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_562]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_563]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_568
	test	rsi, rsi
	je	.label_568
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_568:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405c70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_562]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_563]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_569
	test	rsi, rsi
	je	.label_569
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
.label_569:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ce0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0
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
	#Procedure 0x405d10
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

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
	#Procedure 0x405d50

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
	jne	.label_574
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_578
	cmp	ecx, 0x55
	jne	.label_570
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_570
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_570
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_570
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_570
	cmp	byte ptr [rax + 5], 0
	jne	.label_570
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_576
	mov	eax, OFFSET FLAT:label_577
	jmp	.label_573
.label_578:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_570
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_570
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_570
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_570
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_570
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_570
	cmp	byte ptr [rax + 7], 0
	je	.label_575
.label_570:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_485
	mov	eax, OFFSET FLAT:label_435
.label_573:
	cmove	rax, rcx
.label_574:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_575:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_571
	mov	eax, OFFSET FLAT:label_572
	jmp	.label_573
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e20

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
.label_580:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_579
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_580
	cmp	rbx, 0x7ff00001
	jb	.label_579
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_580
.label_579:
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
	#Procedure 0x405e80

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
	je	.label_581
	mov	edx, OFFSET FLAT:label_591
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_597
.label_581:
	mov	edx, OFFSET FLAT:label_598
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_597:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_584
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
	mov	esi, OFFSET FLAT:label_599
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_586
	jmp	qword ptr [(r12 * 8) + label_587]
.label_695:
	add	rsp, 8
	jmp	.label_585
.label_586:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_594
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
	jmp	.label_585
.label_696:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_582
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
.label_697:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_595
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
.label_698:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_592
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
.label_699:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_589
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
	jmp	.label_585
.label_700:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_588
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
	jmp	.label_585
.label_701:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_590
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
	jmp	.label_585
.label_702:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_593
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
	jmp	.label_585
.label_704:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_596
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
	jmp	.label_585
.label_703:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_583
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
.label_585:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_600:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_600
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406210

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_605
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_608
.label_605:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_608:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_607
	cmp	r10d, 0x29
	jae	.label_604
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_606
.label_604:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_606:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_607
	cmp	r10d, 0x29
	jae	.label_602
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_603
.label_602:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_603:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_607
	cmp	r10d, 0x29
	jae	.label_613
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_601
.label_613:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_601:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_607
	cmp	r10d, 0x29
	jae	.label_611
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_612
.label_611:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_612:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_607
	cmp	r10d, 0x29
	jae	.label_609
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_610
.label_609:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_610:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_607
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_607
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_607
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_607
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_607:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406400

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_614
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_614:
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
	#Procedure 0x406490
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_615
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_616
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_618
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_617
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406510
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_619
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_620
	test	rax, rax
	je	.label_619
.label_620:
	pop	rbx
	ret	
.label_619:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406550

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_621
	test	rax, rax
	je	.label_622
.label_621:
	pop	rbx
	ret	
.label_622:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406570
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_623
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_624
	test	rbx, rbx
	jne	.label_624
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_624:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_625
	test	rax, rax
	je	.label_623
.label_625:
	pop	rbx
	ret	
.label_623:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_626
	test	rbx, rbx
	jne	.label_626
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_626:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_628
	test	rax, rax
	je	.label_627
.label_628:
	pop	rbx
	ret	
.label_627:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4065f0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_632
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_634
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_629
.label_632:
	test	rcx, rcx
	jne	.label_635
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_635:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_630
.label_629:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_631
	test	rbx, rbx
	jne	.label_631
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_631:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_633
	test	rax, rax
	je	.label_634
.label_633:
	pop	rbx
	ret	
.label_634:
	call	xalloc_die
.label_630:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406690
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_636
	test	rax, rax
	je	.label_637
.label_636:
	pop	rbx
	ret	
.label_637:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_640
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_642
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_639
	call	free
	xor	eax, eax
	jmp	.label_641
.label_640:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_638
	mov	qword ptr [rsi], rbx
.label_639:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_641
	test	rax, rax
	je	.label_638
.label_641:
	pop	rbx
	ret	
.label_638:
	call	xalloc_die
.label_642:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406720
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
	je	.label_644
	test	r14, r14
	je	.label_643
.label_644:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_643:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406760

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_645
	call	rpl_calloc
	test	rax, rax
	je	.label_645
	pop	rcx
	ret	
.label_645:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406790

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
	je	.label_646
	test	r15, r15
	je	.label_647
.label_646:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_647:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4067d0
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
	je	.label_649
	test	r15, r15
	je	.label_648
.label_649:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_648:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406820

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_650
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_404
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406850

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_661
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_656:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_656
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_654
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_664
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_671
	cmp	eax, 0x22
	jne	.label_654
	mov	ebp, 1
.label_671:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_651
	jmp	.label_653
.label_664:
	test	r14, r14
	je	.label_654
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_654
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_654
.label_651:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_653
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_665
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_655
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_655
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_655
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_657
	cmp	eax, 0x44
	je	.label_657
	cmp	eax, 0x69
	jne	.label_655
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_655
.label_657:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_655:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_665
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_672]
.label_769:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_652
.label_665:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_662
.label_770:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_666
.label_771:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_660
.label_773:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_659
.label_767:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_658
.label_768:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_660
.label_772:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
.label_659:
	or	dl, r10b
.label_652:
	or	dl, bl
.label_660:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_663
.label_774:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	mov	r13d, r15d
	sbb	r15b, r15b
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
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_667
.label_775:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
.label_667:
	movzx	eax, dl
.label_666:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_663
.label_776:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_658:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_663
.label_777:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_663:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_653:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_662:
	mov	r13d, r15d
.label_654:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_661:
	mov	edi, OFFSET FLAT:label_668
	mov	esi, OFFSET FLAT:label_669
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_670
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_673
	test	rsi, rsi
	mov	ecx, 1
	je	.label_674
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_674
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_673:
	mov	ecx, 1
.label_674:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ee0

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
	je	.label_675
	cmp	r15, -2
	jb	.label_675
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_675
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_675:
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
	#Procedure 0x406f40

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
	jne	.label_677
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_676
	test	cl, cl
	jne	.label_676
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_676
.label_677:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_676
	call	__errno_location
	mov	dword ptr [rax], 0
.label_676:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fa0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_679
	cmp	byte ptr [rax], 0x43
	jne	.label_681
	cmp	byte ptr [rax + 1], 0
	je	.label_678
.label_681:
	mov	esi, OFFSET FLAT:label_680
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_679
.label_678:
	xor	ebx, ebx
.label_679:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fe0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_138
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_682
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407010

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_683
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_685
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_683
.label_685:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_683
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_684
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_684:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_683:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407090

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_686
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_686
	test	byte ptr [rbx + 1], 1
	je	.label_686
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_686:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070d0

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
	jne	.label_687
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_687
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_688
.label_687:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_688:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_689
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_689:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x407140

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
