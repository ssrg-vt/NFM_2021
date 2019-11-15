	.section	.text
	.align	32
	#Procedure 0x4014e9
	.globl sub_4014e9
	.type sub_4014e9, @function
sub_4014e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4014ea
	.globl sub_4014ea
	.type sub_4014ea, @function
sub_4014ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401522
	.globl sub_401522
	.type sub_401522, @function
sub_401522:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40156a
	.globl sub_40156a
	.type sub_40156a, @function
sub_40156a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40158c
	.globl sub_40158c
	.type sub_40158c, @function
sub_40158c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40159d
	.globl sub_40159d
	.type sub_40159d, @function
sub_40159d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015b6
	.globl sub_4015b6
	.type sub_4015b6, @function
sub_4015b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015c0
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
	.section	.text
	.align	32
	#Procedure 0x401681
	.globl sub_401681
	.type sub_401681, @function
sub_401681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401690
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	32
	#Procedure 0x4016fe
	.globl sub_4016fe
	.type sub_4016fe, @function
sub_4016fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401700

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_12
	test	rsi, rsi
	mov	ecx, 1
	je	.label_13
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_13
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_12:
	mov	ecx, 1
.label_13:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40174b
	.globl sub_40174b
	.type sub_40174b, @function
sub_40174b:

	nop	dword ptr [rax + rax]
.label_17:
	call	xalloc_die
.label_15:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_17
	mov	qword ptr [rsi], rbx
.label_14:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_16
	test	rax, rax
	je	.label_17
.label_16:
	pop	rbx
	ret	
.label_18:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401782
	.globl sub_401782
	.type sub_401782, @function
sub_401782:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40178e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_15
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_18
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_14
	call	free
	xor	eax, eax
	jmp	.label_16
	.section	.text
	.align	32
	#Procedure 0x4017c0

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
	jmp	.label_22
	.section	.text
	.align	32
	#Procedure 0x40186f
	.globl sub_40186f
	.type sub_40186f, @function
sub_40186f:

	nop	
.label_70:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_64
	or	al, dl
	jne	.label_64
	test	dil, 1
	jne	.label_66
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_64
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_22
	jmp	.label_64
.label_371:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_77
	test	rbp, rbp
	je	.label_81
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_81:
	mov	r14d, 1
	jmp	.label_86
.label_372:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_82
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_28
.label_77:
	xor	r14d, r14d
.label_86:
	mov	eax, OFFSET FLAT:label_82
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_83
	.section	.text
	.align	32
	#Procedure 0x40193f
	.globl sub_40193f
	.type sub_40193f, @function
sub_40193f:

	nop	
.label_22:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_102
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_108]
.label_373:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_116
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_48
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_374:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_57
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_57
	xor	r14d, r14d
	nop	
.label_97:
	cmp	r14, rbp
	jae	.label_137
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_137:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_97
.label_57:
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
	jmp	.label_28
.label_366:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_28
.label_369:
	mov	al, 1
.label_367:
	mov	r12b, 1
.label_370:
	test	r12b, 1
	mov	cl, 1
	je	.label_34
	mov	ecx, eax
.label_34:
	mov	al, cl
.label_368:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_36
	test	rbp, rbp
	je	.label_42
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_42:
	mov	r14d, 1
	jmp	.label_45
.label_36:
	xor	r14d, r14d
.label_45:
	mov	ecx, OFFSET FLAT:label_48
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_83:
	mov	sil, r12b
.label_28:
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
	jmp	.label_55
	.section	.text
	.align	32
	#Procedure 0x401b01
	.globl sub_401b01
	.type sub_401b01, @function
sub_401b01:

	nop	word ptr cs:[rax + rax]
.label_58:
	inc	r12
.label_55:
	cmp	r11, -1
	je	.label_91
	cmp	r12, r11
	jne	.label_93
	jmp	.label_94
	.section	.text
	.align	32
	#Procedure 0x401b23
	.globl sub_401b23
	.type sub_401b23, @function
sub_401b23:

	nop	word ptr cs:[rax + rax]
.label_91:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_96
.label_93:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_103
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_111
	cmp	r11, -1
	jne	.label_111
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_111:
	cmp	rbx, r11
	jbe	.label_120
.label_103:
	xor	esi, esi
.label_19:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_122
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_125]
.label_431:
	test	r12, r12
	jne	.label_80
	jmp	.label_131
	.section	.text
	.align	32
	#Procedure 0x401bb6
	.globl sub_401bb6
	.type sub_401bb6, @function
sub_401bb6:

	nop	word ptr cs:[rax + rax]
.label_120:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_138
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_19
	jmp	.label_43
.label_138:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_19
.label_435:
	xor	eax, eax
	cmp	r11, -1
	je	.label_26
	test	r12, r12
	jne	.label_32
	cmp	r11, 1
	je	.label_131
	xor	r13d, r13d
	jmp	.label_44
.label_424:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_38
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_43
	cmp	r8d, 2
	jne	.label_23
	mov	eax, r9d
	and	al, 1
	jne	.label_23
	cmp	r14, rbp
	jae	.label_49
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_49:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_51
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_51:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_59
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_59:
	add	r14, 3
	mov	r9b, 1
.label_23:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_65
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_65:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_69
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_69
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_69
	cmp	r14, rbp
	jae	.label_105
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_105:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_128
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_128:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_44
.label_425:
	mov	bl, 0x62
	jmp	.label_92
.label_426:
	mov	cl, 0x74
	jmp	.label_68
.label_427:
	mov	bl, 0x76
	jmp	.label_92
.label_428:
	mov	bl, 0x66
	jmp	.label_92
.label_429:
	mov	cl, 0x72
	jmp	.label_68
.label_432:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_100
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_50
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
	jae	.label_109
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_109:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_124
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_124:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_127
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_127:
	add	r14, 3
	xor	r9d, r9d
.label_100:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_44
.label_433:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_134
	cmp	r8d, 2
	jne	.label_80
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_80
	jmp	.label_50
.label_434:
	cmp	r8d, 2
	jne	.label_143
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_50
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_145
.label_122:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_21
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_35
.label_26:
	test	r12, r12
	jne	.label_46
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_46
.label_131:
	mov	dl, 1
.label_430:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_50
	xor	eax, eax
	mov	r13b, dl
.label_44:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_56
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_60
	jmp	.label_62
	.section	.text
	.align	32
	#Procedure 0x401e94
	.globl sub_401e94
	.type sub_401e94, @function
sub_401e94:

	nop	word ptr cs:[rax + rax]
.label_56:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_62
.label_60:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_67
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_73
	.section	.text
	.align	32
	#Procedure 0x401ecd
	.globl sub_401ecd
	.type sub_401ecd, @function
sub_401ecd:

	nop	dword ptr [rax]
.label_62:
	test	sil, sil
.label_73:
	mov	ebx, r15d
	je	.label_75
	jmp	.label_79
.label_67:
	mov	ebx, r15d
	jmp	.label_79
.label_38:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_58
	xor	r15d, r15d
	jmp	.label_80
.label_143:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_68
	xor	eax, eax
	mov	r15b, 0x5c
.label_145:
	xor	r13d, r13d
	jmp	.label_75
.label_68:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_50
.label_92:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_44
	nop	
.label_79:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_43
	cmp	r8d, 2
	jne	.label_101
	mov	eax, r9d
	and	al, 1
	jne	.label_101
	cmp	r14, rbp
	jae	.label_106
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_106:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_110
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_110:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_115
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_115:
	add	r14, 3
	mov	r9b, 1
.label_101:
	cmp	r14, rbp
	jae	.label_121
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_121:
	inc	r14
	jmp	.label_114
.label_21:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_126
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_126:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_133
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_20:
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
	je	.label_24
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_29
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_47
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_40
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_72:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_33
	bt	rsi, rdx
	jb	.label_50
.label_33:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_72
.label_40:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_123
	xor	r13d, r13d
.label_123:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_20
	jmp	.label_31
.label_69:
	xor	r13d, r13d
	jmp	.label_44
.label_46:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_44
.label_134:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_80
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_80
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_80
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_89
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_63
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_88
	cmp	r14, rbp
	jae	.label_98
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_98:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_104
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_104:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_27
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_27:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_53
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_53:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_63:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_44
.label_80:
	xor	eax, eax
.label_32:
	xor	r13d, r13d
	jmp	.label_44
.label_133:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_61:
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
	je	.label_139
	cmp	rbp, -1
	je	.label_142
	cmp	rbp, -2
	je	.label_24
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_141
	xor	r13d, r13d
.label_141:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_61
	jmp	.label_31
.label_24:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_39
	lea	rax, [r10 + r12]
.label_129:
	cmp	byte ptr [rax + rsi], 0
	je	.label_39
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_129
.label_39:
	mov	qword ptr [rsp + 0x40], rsi
.label_29:
	xor	r13d, r13d
	jmp	.label_47
.label_142:
	xor	r13d, r13d
.label_139:
	mov	r10, qword ptr [rsp + 0x28]
.label_47:
	mov	r12, qword ptr [rsp + 0x40]
.label_31:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_35:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_54
	test	al, al
	je	.label_54
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_44
.label_54:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_71
	.section	.text
	.align	32
	#Procedure 0x4022c7
	.globl sub_4022c7
	.type sub_4022c7, @function
sub_4022c7:

	nop	word ptr [rax + rax]
.label_30:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_71:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_78
	test	sil, 1
	je	.label_87
	cmp	r14, rbp
	jae	.label_85
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_85:
	inc	r14
	xor	esi, esi
	jmp	.label_87
	.section	.text
	.align	32
	#Procedure 0x402305
	.globl sub_402305
	.type sub_402305, @function
sub_402305:

	nop	word ptr cs:[rax + rax]
.label_78:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_43
	cmp	r8d, 2
	jne	.label_74
	mov	eax, r9d
	and	al, 1
	jne	.label_74
	cmp	r14, rbp
	jae	.label_95
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_95:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_99
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_99:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_130
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_130:
	add	r14, 3
	mov	r9b, 1
.label_74:
	cmp	r14, rbp
	jae	.label_113
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_113:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_118
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_118:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_112
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_112:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_87:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_75
	test	r9b, 1
	je	.label_135
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_76
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_90
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_90:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_144
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_144:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_135
	.section	.text
	.align	32
	#Procedure 0x402416
	.globl sub_402416
	.type sub_402416, @function
sub_402416:

	nop	word ptr cs:[rax + rax]
.label_76:
	mov	rbx, rcx
.label_135:
	cmp	r14, rbp
	jae	.label_30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_30
	.section	.text
	.align	32
	#Procedure 0x40243e
	.globl sub_40243e
	.type sub_40243e, @function
sub_40243e:

	nop	
.label_75:
	test	r9b, 1
	je	.label_37
	and	al, 1
	jne	.label_37
	cmp	r14, rbp
	jae	.label_41
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_41:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_25
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_25:
	add	r14, 2
	xor	r9d, r9d
.label_37:
	mov	ebx, r15d
.label_114:
	cmp	r14, rbp
	jae	.label_52
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_52:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_58
.label_89:
	xor	r13d, r13d
	jmp	.label_44
	.section	.text
	.align	32
	#Procedure 0x4024a1
	.globl sub_4024a1
	.type sub_4024a1, @function
sub_4024a1:

	nop	word ptr cs:[rax + rax]
.label_94:
	mov	rcx, r12
.label_96:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_70
	or	al, dl
	jne	.label_70
	mov	r11, rcx
	jmp	.label_43
.label_50:
	mov	eax, 2
.label_140:
	mov	qword ptr [rsp + 0x38], rax
.label_43:
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
.label_132:
	mov	r14, rax
.label_136:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_64:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_107
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_84
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_84
	inc	rdx
	nop	dword ptr [rax + rax]
.label_119:
	cmp	r14, rbp
	jae	.label_117
	mov	byte ptr [rcx + r14], al
.label_117:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_119
	jmp	.label_84
.label_66:
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
	jmp	.label_132
.label_107:
	mov	rcx, qword ptr [rsp + 0x10]
.label_84:
	cmp	r14, rbp
	jae	.label_136
	mov	byte ptr [rcx + r14], 0
	jmp	.label_136
.label_88:
	mov	eax, 5
	jmp	.label_140
.label_102:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4025f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	32
	#Procedure 0x402645
	.globl sub_402645
	.type sub_402645, @function
sub_402645:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402650

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_146
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_146
	test	byte ptr [rbx + 1], 1
	je	.label_146
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_146:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402683
	.globl sub_402683
	.type sub_402683, @function
sub_402683:

	nop	word ptr cs:[rax + rax]
.label_147:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402695
	.globl sub_402695
	.type sub_402695, @function
sub_402695:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402699
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_147
	test	rsi, rsi
	je	.label_147
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
	.section	.text
	.align	32
	#Procedure 0x402700
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40270f
	.globl sub_40270f
	.type sub_40270f, @function
sub_40270f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402710

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
	jae	.label_153
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_167:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_167
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_152
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
	je	.label_156
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_150
	cmp	eax, 0x22
	jne	.label_152
	mov	ebp, 1
.label_150:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_165
	jmp	.label_148
.label_156:
	test	r14, r14
	je	.label_152
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_152
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_152
.label_165:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_148
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_157
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_151
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_151
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_151
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_168
	cmp	eax, 0x44
	je	.label_168
	cmp	eax, 0x69
	jne	.label_151
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_151
.label_168:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_151:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_157
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_164]
.label_448:
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
	jmp	.label_166
.label_157:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_154
.label_449:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_158
.label_450:
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
	jmp	.label_149
.label_452:
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
	jmp	.label_163
.label_446:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_169
.label_447:
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
	jmp	.label_149
.label_451:
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
.label_163:
	or	dl, r10b
.label_166:
	or	dl, bl
.label_149:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_155
.label_453:
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
	jmp	.label_159
.label_454:
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
.label_159:
	movzx	eax, dl
.label_158:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_155
.label_455:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_169:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_155
.label_456:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_155:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_148:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_154:
	mov	r13d, r15d
.label_152:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_153:
	mov	edi, OFFSET FLAT:label_160
	mov	esi, OFFSET FLAT:label_161
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_162
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x402d41
	.globl sub_402d41
	.type sub_402d41, @function
sub_402d41:

	nop	word ptr cs:[rax + rax]
.label_171:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402d5c
	.globl sub_402d5c
	.type sub_402d5c, @function
sub_402d5c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d68

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_171
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_170
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_171
.label_170:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_171
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_172
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_172:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dd0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402de3
	.globl sub_402de3
	.type sub_402de3, @function
sub_402de3:

	nop	word ptr cs:[rax + rax]
.label_175:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402df5
	.globl sub_402df5
	.type sub_402df5, @function
sub_402df5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dfd
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_175
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_174
	test	rbx, rbx
	jne	.label_174
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_174:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_173
	test	rax, rax
	je	.label_175
.label_173:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e40

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
	je	.label_176
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_192
.label_176:
	mov	edx, OFFSET FLAT:label_193
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_192:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
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
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_181
	jmp	qword ptr [(r12 * 8) + label_182]
.label_397:
	add	rsp, 8
	jmp	.label_180
.label_181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
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
	jmp	.label_180
.label_398:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
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
.label_399:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
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
.label_400:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
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
.label_401:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
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
	jmp	.label_180
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
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
	jmp	.label_180
.label_403:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
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
	jmp	.label_180
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
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
	jmp	.label_180
.label_406:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
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
	jmp	.label_180
.label_405:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
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
.label_180:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403198
	.globl sub_403198
	.type sub_403198, @function
sub_403198:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0

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
	.section	.text
	.align	32
	#Procedure 0x4031c3
	.globl sub_4031c3
	.type sub_4031c3, @function
sub_4031c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031d0
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
	je	.label_196
	test	r15, r15
	je	.label_195
.label_196:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_195:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403212
	.globl sub_403212
	.type sub_403212, @function
sub_403212:

	nop	word ptr cs:[rax + rax]
.label_203:
	test	rcx, rcx
	jne	.label_197
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_197:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_201
.label_202:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_200
	test	rbx, rbx
	jne	.label_200
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40326c
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_203
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_199
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_202
.label_200:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_198
	test	rax, rax
	je	.label_199
.label_198:
	pop	rbx
	ret	
.label_201:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4032b2
	.globl sub_4032b2
	.type sub_4032b2, @function
sub_4032b2:

	nop	word ptr [rax + rax]
.label_199:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4032c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4032f0
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
	je	.label_206
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
.label_206:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403358
	.globl sub_403358
	.type sub_403358, @function
sub_403358:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403360
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_207
	test	rdx, rdx
	je	.label_207
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_207:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4033ce
	.globl sub_4033ce
	.type sub_4033ce, @function
sub_4033ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4033d0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x4033e7
	.globl sub_4033e7
	.type sub_4033e7, @function
sub_4033e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	32
	#Procedure 0x40345f
	.globl sub_40345f
	.type sub_40345f, @function
sub_40345f:

	nop	
.label_212:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_208
	mov	eax, OFFSET FLAT:label_209
	jmp	.label_210
	.section	.text
	.align	32
	#Procedure 0x40346f
	.globl sub_40346f
	.type sub_40346f, @function
sub_40346f:

	nop	word ptr cs:[rax + rax]
.label_215:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_211
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_211
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_211
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_211
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_211
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_211
	cmp	byte ptr [rax + 7], 0
	je	.label_212
.label_211:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_82
	mov	eax, OFFSET FLAT:label_48
.label_210:
	cmove	rax, rcx
.label_216:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034c2

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
	jne	.label_216
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_215
	cmp	ecx, 0x55
	jne	.label_211
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_211
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_211
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_211
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_211
	cmp	byte ptr [rax + 5], 0
	jne	.label_211
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_213
	mov	eax, OFFSET FLAT:label_214
	jmp	.label_210
	.section	.text
	.align	32
	#Procedure 0x403530

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
	je	.label_217
	test	r15, r15
	je	.label_218
.label_217:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_218:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40356c
	.globl sub_40356c
	.type sub_40356c, @function
sub_40356c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403570

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
	je	.label_222
	cmp	eax, 1
	je	.label_223
	cmp	eax, 3
	jne	.label_226
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_219
.label_223:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_219
.label_222:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_225
	cmp	rbx, r15
	jbe	.label_221
.label_225:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_220
	mov	dword ptr [rax], 0x4b
	jmp	.label_219
.label_226:
	call	__errno_location
	jmp	.label_219
.label_220:
	mov	dword ptr [rax], 0x22
.label_219:
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
	mov	edx, OFFSET FLAT:label_224
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_221:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40363b
	.globl sub_40363b
	.type sub_40363b, @function
sub_40363b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403640

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_227
	test	rbx, rbx
	jne	.label_227
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_229:
	call	xalloc_die
.label_227:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_228
	test	rax, rax
	je	.label_229
.label_228:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403670
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
	.section	.text
	.align	32
	#Procedure 0x403688
	.globl sub_403688
	.type sub_403688, @function
sub_403688:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403690
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
	je	.label_230
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
.label_230:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4036fc
	.globl sub_4036fc
	.type sub_4036fc, @function
sub_4036fc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403700
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_232
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_235
	mov	ecx, OFFSET FLAT:label_236
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403774
	.globl sub_403774
	.type sub_403774, @function
sub_403774:

	nop	word ptr cs:[rax + rax]
.label_238:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_237
	call	__errno_location
	mov	dword ptr [rax], 0
.label_237:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40379b

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
	jne	.label_238
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_237
	test	cl, cl
	jne	.label_237
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_237
	.section	.text
	.align	32
	#Procedure 0x4037e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037e8
	.globl sub_4037e8
	.type sub_4037e8, @function
sub_4037e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_244
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_242
	cmp	dword ptr [rbp], 0x20
	jne	.label_242
.label_244:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_241
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_243:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_224
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_243
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_205
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_241:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_248:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_239
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4038d0
	.globl sub_4038d0
	.type sub_4038d0, @function
sub_4038d0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038df

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_248
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_246
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_246
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_245
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_245:
	mov	rbx, r14
.label_246:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403960
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.section	.text
	.align	32
	#Procedure 0x4039b4
	.globl sub_4039b4
	.type sub_4039b4, @function
sub_4039b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_250
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_250:
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
	.section	.text
	.align	32
	#Procedure 0x403a43
	.globl sub_403a43
	.type sub_403a43, @function
sub_403a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_255
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_258
.label_255:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_258:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_254
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_256
.label_254:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_256:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_252
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_253
.label_252:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_253:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_263
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_251
.label_263:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_251:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_261
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_262
.label_261:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_262:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_259
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_260
.label_259:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_260:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_257:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c32
	.globl sub_403c32
	.type sub_403c32, @function
sub_403c32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c40
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
	.section	.text
	.align	32
	#Procedure 0x403c58
	.globl sub_403c58
	.type sub_403c58, @function
sub_403c58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c60
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
	je	.label_264
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
.label_264:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403cc1
	.globl sub_403cc1
	.type sub_403cc1, @function
sub_403cc1:

	nop	word ptr cs:[rax + rax]
.label_265:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403cd5
	.globl sub_403cd5
	.type sub_403cd5, @function
sub_403cd5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cdd
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
	je	.label_265
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
.label_266:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403d45
	.globl sub_403d45
	.type sub_403d45, @function
sub_403d45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d50
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_266
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_267
	test	rax, rax
	je	.label_266
.label_267:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_268
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_271:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_271
.label_268:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_272
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_269], OFFSET FLAT:slot0
.label_272:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_270
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_270:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e11
	.globl sub_403e11
	.type sub_403e11, @function
sub_403e11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e20
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
	je	.label_273
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
.label_273:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403eb5
	.globl sub_403eb5
	.type sub_403eb5, @function
sub_403eb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403eca
	.globl sub_403eca
	.type sub_403eca, @function
sub_403eca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0
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
	.section	.text
	.align	32
	#Procedure 0x403f06
	.globl sub_403f06
	.type sub_403f06, @function
sub_403f06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f10
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403f21
	.globl sub_403f21
	.type sub_403f21, @function
sub_403f21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f30

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_274
	test	rax, rax
	je	.label_275
.label_274:
	pop	rbx
	ret	
.label_275:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403f4a
	.globl sub_403f4a
	.type sub_403f4a, @function
sub_403f4a:

	nop	word ptr [rax + rax]
.label_281:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
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
	.section	.text
	.align	32
	#Procedure 0x403f88
	.globl sub_403f88
	.type sub_403f88, @function
sub_403f88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f8d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_281
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_235
	mov	ecx, OFFSET FLAT:label_236
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_282
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_282
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_282:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_236
	mov	ecx, OFFSET FLAT:label_280
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_280
	mov	ecx, OFFSET FLAT:label_287
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x404110
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_291:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_291
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404131
	.globl sub_404131
	.type sub_404131, @function
sub_404131:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404140
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_292
	call	rpl_calloc
	test	rax, rax
	je	.label_292
	pop	rcx
	ret	
.label_292:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404166
	.globl sub_404166
	.type sub_404166, @function
sub_404166:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404170
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
	.section	.text
	.align	32
	#Procedure 0x4041e5
	.globl sub_4041e5
	.type sub_4041e5, @function
sub_4041e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4041fa
	.globl sub_4041fa
	.type sub_4041fa, @function
sub_4041fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404200
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
	je	.label_293
	mov	qword ptr [rax], rbx
.label_293:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042ec
	.globl sub_4042ec
	.type sub_4042ec, @function
sub_4042ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_294
	test	rdx, rdx
	je	.label_294
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_294:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40431b
	.globl sub_40431b
	.type sub_40431b, @function
sub_40431b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404320

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404339
	.globl sub_404339
	.type sub_404339, @function
sub_404339:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_295
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_296
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404365
	.globl sub_404365
	.type sub_404365, @function
sub_404365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404370
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40437f
	.globl sub_40437f
	.type sub_40437f, @function
sub_40437f:

	nop	
.label_298:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_297
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_297:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043b4
	.globl sub_4043b4
	.type sub_4043b4, @function
sub_4043b4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4043b6

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
	jne	.label_299
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_299
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_298
.label_299:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x4043f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_300
	test	rsi, rsi
	je	.label_300
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_300:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404460

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	rbx, -1
	cmp	edi, 2
	jne	.label_315
	mov	edi, OFFSET FLAT:label_319
	call	getenv
	xor	r14d, r14d
	test	rax, rax
	je	.label_302
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_321
	mov	edx, 0x80001f
	nop	dword ptr [rax + rax]
.label_311:
	movsx	esi, cl
	add	esi, -9
	cmp	esi, 0x17
	ja	.label_307
	bt	edx, esi
	jae	.label_307
	mov	cl, byte ptr [rax + 1]
	inc	rax
	test	cl, cl
	jne	.label_311
.label_321:
	xor	ecx, ecx
.label_307:
	movsx	ecx, cl
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_302
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtoul
	mov	r14, rax
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_322
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_302
	inc	rax
	mov	edx, 0x80001f
.label_304:
	movsx	esi, cl
	add	esi, -9
	cmp	esi, 0x17
	ja	.label_301
	bt	edx, esi
	jae	.label_301
	mov	qword ptr [rsp + 8], rax
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_304
	jmp	.label_302
.label_301:
	cmp	cl, 0x2c
	je	.label_302
.label_322:
	xor	r14d, r14d
.label_302:
	mov	edi, OFFSET FLAT:label_310
	call	getenv
	xor	ecx, ecx
	test	rax, rax
	je	.label_308
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_313
	mov	edx, 0x80001f
	nop	dword ptr [rax]
.label_320:
	movsx	esi, cl
	add	esi, -9
	cmp	esi, 0x17
	ja	.label_318
	bt	edx, esi
	jae	.label_318
	mov	cl, byte ptr [rax + 1]
	inc	rax
	test	cl, cl
	jne	.label_320
.label_313:
	xor	ecx, ecx
.label_318:
	movsx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_308
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtoul
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_303
	mov	dl, byte ptr [rax]
	test	dl, dl
	je	.label_308
	inc	rax
	mov	esi, 0x80001f
	nop	
.label_314:
	movsx	edi, dl
	add	edi, -9
	cmp	edi, 0x17
	ja	.label_306
	bt	esi, edi
	jae	.label_306
	mov	qword ptr [rsp + 8], rax
	movzx	edx, byte ptr [rax]
	inc	rax
	test	dl, dl
	jne	.label_314
	jmp	.label_308
.label_306:
	cmp	dl, 0x2c
	je	.label_308
.label_303:
	xor	ecx, ecx
.label_308:
	cmp	rcx, 1
	sbb	rbx, rbx
	or	rbx, rcx
	cmp	r14, rbx
	mov	rax, rbx
	cmovb	rax, r14
	mov	edi, 1
	test	r14, r14
	jne	.label_317
.label_315:
	cmp	edi, 1
	jne	.label_323
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_305
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_305
	cdqe	
	jmp	.label_309
.label_323:
	mov	edi, 0x53
	call	sysconf
	cmp	rax, 1
	jne	.label_312
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_316
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_316
	cdqe	
	jmp	.label_312
.label_305:
	mov	edi, 0x54
	call	sysconf
.label_312:
	test	rax, rax
	jg	.label_309
.label_316:
	mov	eax, 1
.label_309:
	cmp	rax, rbx
	cmovb	rbx, rax
	mov	rax, rbx
.label_317:
	add	rsp, 0x88
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404690
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
	je	.label_325
	test	r14, r14
	je	.label_324
.label_325:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_324:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4046c6
	.globl sub_4046c6
	.type sub_4046c6, @function
sub_4046c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_327
	cmp	byte ptr [rax], 0x43
	jne	.label_329
	cmp	byte ptr [rax + 1], 0
	je	.label_326
.label_329:
	mov	esi, OFFSET FLAT:label_328
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_327
.label_326:
	xor	ebx, ebx
.label_327:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404701
	.globl sub_404701
	.type sub_404701, @function
sub_404701:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404710
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_330
	test	rax, rax
	je	.label_331
.label_330:
	pop	rbx
	ret	
.label_331:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40472a
	.globl sub_40472a
	.type sub_40472a, @function
sub_40472a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_295
	call	setlocale
	mov	edi, OFFSET FLAT:label_338
	mov	esi, OFFSET FLAT:label_339
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_338
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebx, 2
	xor	r15d, r15d
	jmp	.label_343
	.section	.text
	.align	32
	#Procedure 0x404782
	.globl sub_404782
	.type sub_404782, @function
sub_404782:

	nop	word ptr cs:[rax + rax]
.label_342:
	mov	rbp, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_295
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	r15, rax
.label_343:
	mov	ebp, ebx
.label_341:
	mov	ebx, ebp
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_295
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x7f
	jle	.label_340
	cmp	eax, 0x80
	je	.label_341
	cmp	eax, 0x81
	je	.label_342
	jmp	.label_332
.label_340:
	cmp	eax, -1
	jne	.label_345
	cmp	dword ptr [rip + optind],  r12d
	jne	.label_333
	mov	edi, ebx
	call	num_processors
	sub	rax, r15
	mov	edx, 1
	cmova	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_337
	xor	eax, eax
	call	__printf_chk
	xor	eax, eax
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_345:
	cmp	eax, 0xffffff7d
	je	.label_344
	cmp	eax, 0xffffff7e
	jne	.label_332
	xor	edi, edi
	call	usage
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_344:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_280
	mov	edx, OFFSET FLAT:label_235
	mov	r8d, OFFSET FLAT:label_334
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_332:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4048c7
	.globl sub_4048c7
	.type sub_4048c7, @function
sub_4048c7:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048d0
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
	.section	.text
	.align	32
	#Procedure 0x404903
	.globl sub_404903
	.type sub_404903, @function
sub_404903:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404910
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404929
	.globl sub_404929
	.type sub_404929, @function
sub_404929:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404930
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40493e
	.globl sub_40493e
	.type sub_40493e, @function
sub_40493e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404940

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
	js	.label_346
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_349
	cmp	r12d, 0x7fffffff
	je	.label_351
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
	jne	.label_347
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_347:
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
.label_349:
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
	jbe	.label_352
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_348
.label_352:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_350
	mov	rdi, r14
	call	free
.label_350:
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
.label_348:
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
.label_346:
	call	abort
.label_351:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404afd
	.globl sub_404afd
	.type sub_404afd, @function
sub_404afd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

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
	je	.label_353
	cmp	r15, -2
	jb	.label_353
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_353
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_353:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b56
	.globl sub_404b56
	.type sub_404b56, @function
sub_404b56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b68
	.globl sub_404b68
	.type sub_404b68, @function
sub_404b68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b70
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_354
	test	rdx, rdx
	je	.label_354
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_354:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404bda
	.globl sub_404bda
	.type sub_404bda, @function
sub_404bda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c45
	.globl sub_404c45
	.type sub_404c45, @function
sub_404c45:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c52
	.globl sub_404c52
	.type sub_404c52, @function
sub_404c52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c76
	.globl sub_404c76
	.type sub_404c76, @function
sub_404c76:

	nop	word ptr cs:[rax + rax]
