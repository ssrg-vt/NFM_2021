	.section	.text
	.align	16
	#Procedure 0x4016d9
	.globl sub_4016d9
	.type sub_4016d9, @function
sub_4016d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4016da
	.globl sub_4016da
	.type sub_4016da, @function
sub_4016da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401712
	.globl sub_401712
	.type sub_401712, @function
sub_401712:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40175a
	.globl sub_40175a
	.type sub_40175a, @function
sub_40175a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40177c
	.globl sub_40177c
	.type sub_40177c, @function
sub_40177c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40178d
	.globl sub_40178d
	.type sub_40178d, @function
sub_40178d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017a6
	.globl sub_4017a6
	.type sub_4017a6, @function
sub_4017a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017b0

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r13d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_16
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0x28
	call	realloc
	mov	rbp, rax
	mov	r14d, 0xffffffff
	test	rbp, rbp
	je	.label_10
	mov	qword ptr [rsp + 0x10], r12
	mov	r12d, 0xa
	lea	r15, [rsp + 0xc]
	jmp	.label_24
	.section	.text
	.align	16
	#Procedure 0x401808
	.globl sub_401808
	.type sub_401808, @function
sub_401808:

	nop	dword ptr [rax + rax]
.label_22:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rax
.label_24:
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, rbp
	mov	rcx, r15
	call	getgrouplist
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0xc]
	test	r14d, r14d
	jns	.label_12
	cmp	r12d, eax
	jne	.label_12
	add	r12d, r12d
	mov	dword ptr [rsp + 0xc], r12d
	mov	eax, r12d
.label_12:
	test	eax, eax
	js	.label_18
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rbp
	call	realloc
	test	rax, rax
	je	.label_21
	test	r14d, r14d
	js	.label_22
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r14d, dword ptr [rsp + 0xc]
	jmp	.label_10
.label_16:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_9
	cmp	r13d, -1
	jne	.label_11
	test	eax, eax
	mov	ebx, eax
	jne	.label_13
.label_11:
	lea	ebx, [rax + 1]
	mov	dword ptr [rsp + 0xc], ebx
	cmp	eax, -2
	jg	.label_13
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_15
.label_13:
	movsxd	rsi, ebx
	shl	rsi, 2
	xor	edi, edi
	call	realloc
	mov	r15, rax
	mov	r14d, 0xffffffff
	test	r15, r15
	je	.label_10
	xor	eax, eax
	cmp	r13d, -1
	setne	al
	sub	ebx, eax
	lea	rsi, [r15 + rax*4]
	mov	edi, ebx
	call	getgroups
	test	eax, eax
	js	.label_23
	cmp	r13d, -1
	mov	r14d, eax
	je	.label_25
	mov	dword ptr [r15], r13d
	inc	eax
	mov	r14d, eax
.label_25:
	mov	qword ptr [r12], r15
	cmp	r14d, 2
	jl	.label_10
	movsxd	rax, r14d
	lea	rax, [r15 + rax*4]
	mov	rcx, r15
	add	rcx, 4
	cmp	rcx, rax
	jae	.label_10
	mov	edx, dword ptr [r15]
	mov	esi, edx
	nop	word ptr cs:[rax + rax]
.label_20:
	mov	edi, dword ptr [rcx]
	cmp	edi, edx
	je	.label_17
	cmp	edi, esi
	jne	.label_19
.label_17:
	dec	r14d
	add	rcx, 4
	cmp	rcx, rax
	jb	.label_20
	jmp	.label_10
.label_19:
	mov	dword ptr [r15 + 4], edi
	add	r15, 4
	add	rcx, 4
	cmp	rcx, rax
	mov	esi, edi
	jb	.label_20
	jmp	.label_10
.label_9:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_10
	xor	edi, edi
	mov	esi, 4
	call	realloc
	test	rax, rax
	je	.label_10
	mov	qword ptr [r12], rax
	mov	dword ptr [rax], r13d
	xor	r14d, r14d
	cmp	r13d, -1
	setne	r14b
	jmp	.label_10
.label_18:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0xc
	jmp	.label_14
.label_21:
	call	__errno_location
	mov	rbx, rax
.label_14:
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_15:
	mov	r14d, 0xffffffff
.label_10:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_23:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x4019f6
	.globl sub_4019f6
	.type sub_4019f6, @function
sub_4019f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a00
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
	je	.label_27
	test	r14, r14
	je	.label_26
.label_27:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_26:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a36
	.globl sub_401a36
	.type sub_401a36, @function
sub_401a36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a40

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
.label_94:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_91
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_145]
.label_481:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_103
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_35
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_482:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_120
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_120
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_131:
	cmp	r14, r11
	jae	.label_99
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_99:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_131
.label_120:
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
	jmp	.label_29
.label_474:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_29
.label_477:
	mov	al, 1
.label_475:
	mov	r12b, 1
.label_478:
	test	r12b, 1
	mov	cl, 1
	je	.label_147
	mov	ecx, eax
.label_147:
	mov	al, cl
.label_476:
	test	r12b, 1
	jne	.label_149
	test	r11, r11
	je	.label_146
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_146:
	mov	r14d, 1
	jmp	.label_32
.label_149:
	xor	r14d, r14d
.label_32:
	mov	ecx, OFFSET FLAT:label_35
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_29
.label_479:
	test	r12b, 1
	jne	.label_46
	test	r11, r11
	je	.label_48
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_48:
	mov	r14d, 1
	jmp	.label_49
.label_480:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_51
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_29
.label_46:
	xor	r14d, r14d
.label_49:
	mov	eax, OFFSET FLAT:label_51
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_29:
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
	jmp	.label_72
	.section	.text
	.align	16
	#Procedure 0x401d2d
	.globl sub_401d2d
	.type sub_401d2d, @function
sub_401d2d:

	nop	dword ptr [rax]
.label_132:
	inc	rsi
.label_72:
	cmp	rbp, -1
	je	.label_114
	cmp	rsi, rbp
	jne	.label_116
	jmp	.label_117
	.section	.text
	.align	16
	#Procedure 0x401d43
	.globl sub_401d43
	.type sub_401d43, @function
sub_401d43:

	nop	word ptr cs:[rax + rax]
.label_114:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_121
.label_116:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_133
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_59
	cmp	rbp, -1
	jne	.label_59
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
.label_59:
	cmp	rbx, rbp
	jbe	.label_136
.label_133:
	xor	r8d, r8d
.label_40:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_137
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_141]
.label_492:
	test	rsi, rsi
	jne	.label_39
	jmp	.label_64
	.section	.text
	.align	16
	#Procedure 0x401de5
	.globl sub_401de5
	.type sub_401de5, @function
sub_401de5:

	nop	word ptr cs:[rax + rax]
.label_136:
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
	jne	.label_36
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_40
	jmp	.label_41
.label_36:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_40
.label_496:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_58
	test	rsi, rsi
	jne	.label_60
	cmp	rbp, 1
	je	.label_64
	xor	r13d, r13d
	jmp	.label_30
.label_485:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_69
	cmp	byte ptr [rsp + 6], 0
	jne	.label_71
	cmp	r12d, 2
	jne	.label_75
	mov	eax, r9d
	and	al, 1
	jne	.label_75
	cmp	r14, r11
	jae	.label_77
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_77:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_80
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_80:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_104
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_104:
	add	r14, 3
	mov	r9b, 1
.label_75:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_96
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_96:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_100
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_100
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_100
	cmp	r14, r11
	jae	.label_138
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_138:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_110
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_110:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_30
.label_486:
	mov	bl, 0x62
	jmp	.label_123
.label_487:
	mov	cl, 0x74
	jmp	.label_95
.label_488:
	mov	bl, 0x76
	jmp	.label_123
.label_489:
	mov	bl, 0x66
	jmp	.label_123
.label_490:
	mov	cl, 0x72
	jmp	.label_95
.label_493:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_130
	cmp	byte ptr [rsp + 6], 0
	jne	.label_44
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
	jae	.label_135
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_135:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_144
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_144:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_148
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	add	r14, 3
	xor	r9d, r9d
.label_130:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_30
.label_494:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_33
	cmp	r12d, 2
	jne	.label_39
	cmp	byte ptr [rsp + 6], 0
	je	.label_39
	jmp	.label_44
.label_495:
	cmp	r12d, 2
	jne	.label_47
	cmp	byte ptr [rsp + 6], 0
	jne	.label_44
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_31
.label_137:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_54
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
.label_55:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_74
	test	r8b, r8b
	je	.label_74
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_30
.label_58:
	test	rsi, rsi
	jne	.label_98
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_98
.label_64:
	mov	dl, 1
.label_491:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_44
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_30:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_107
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_93
	jmp	.label_113
	.section	.text
	.align	16
	#Procedure 0x402134
	.globl sub_402134
	.type sub_402134, @function
sub_402134:

	nop	word ptr cs:[rax + rax]
.label_107:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_113
.label_93:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_118
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_31
	jmp	.label_128
	.section	.text
	.align	16
	#Procedure 0x40217d
	.globl sub_40217d
	.type sub_40217d, @function
sub_40217d:

	nop	dword ptr [rax]
.label_113:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_128
	jmp	.label_31
.label_118:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_128
.label_69:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_132
	xor	r15d, r15d
	jmp	.label_39
.label_47:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_95
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_31
.label_95:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_44
.label_123:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_30
	nop	word ptr cs:[rax + rax]
.label_128:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_71
	cmp	r12d, 2
	jne	.label_28
	mov	eax, r9d
	and	al, 1
	jne	.label_28
	cmp	r14, r11
	jae	.label_45
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_45:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_37
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_37:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_97
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_97:
	add	r14, 3
	mov	r9b, 1
.label_28:
	cmp	r14, r11
	jae	.label_83
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_83:
	inc	r14
	jmp	.label_52
.label_54:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_56
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_56:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_85:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_79
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_82
	cmp	rbp, -2
	je	.label_88
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_125
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_127:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_89
	bt	rsi, rdx
	jb	.label_112
.label_89:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_127
.label_125:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_143
	xor	r13d, r13d
.label_143:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_85
	jmp	.label_55
.label_100:
	xor	r13d, r13d
	jmp	.label_30
.label_98:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_30
.label_33:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_39
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_39
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_39
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_63
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_86
	cmp	byte ptr [rsp + 6], 0
	jne	.label_65
	cmp	r14, r11
	jae	.label_124
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_124:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_109
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_109:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_34
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_34:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_90
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_90:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_30
.label_39:
	xor	eax, eax
.label_60:
	xor	r13d, r13d
	jmp	.label_30
.label_74:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_53
	.section	.text
	.align	16
	#Procedure 0x402462
	.globl sub_402462
	.type sub_402462, @function
sub_402462:

	nop	word ptr cs:[rax + rax]
.label_134:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_53:
	test	r8b, r8b
	je	.label_61
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_62
	cmp	r14, r11
	jae	.label_66
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_66:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_62
	.section	.text
	.align	16
	#Procedure 0x4024ac
	.globl sub_4024ac
	.type sub_4024ac, @function
sub_4024ac:

	nop	dword ptr [rax]
.label_61:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_41
	cmp	r12d, 2
	jne	.label_78
	mov	eax, r9d
	and	al, 1
	jne	.label_78
	cmp	r14, r11
	jae	.label_81
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_81:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_84
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_84:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_92
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_92:
	add	r14, 3
	mov	r9b, 1
.label_78:
	cmp	r14, r11
	jae	.label_106
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_106:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_57
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_57:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_111
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_111:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_62:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_31
	test	r9b, 1
	je	.label_67
	mov	ebx, eax
	and	bl, 1
	jne	.label_67
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_126
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_126:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_101
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_101:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_67:
	cmp	r14, r11
	jae	.label_134
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_134
	.section	.text
	.align	16
	#Procedure 0x4025b3
	.globl sub_4025b3
	.type sub_4025b3, @function
sub_4025b3:

	nop	word ptr cs:[rax + rax]
.label_31:
	test	r9b, 1
	je	.label_140
	and	al, 1
	jne	.label_140
	cmp	r14, r11
	jae	.label_142
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_142:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_115
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_115:
	add	r14, 2
	xor	r9d, r9d
.label_140:
	mov	ebx, r15d
.label_52:
	cmp	r14, r11
	jae	.label_139
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_139:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_132
.label_82:
	xor	r13d, r13d
.label_79:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_55
.label_88:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_43
	mov	rsi, qword ptr [rsp + 0x58]
.label_50:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_70
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_50
	xor	r13d, r13d
	jmp	.label_55
.label_43:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_55
.label_70:
	xor	r13d, r13d
	jmp	.label_55
.label_63:
	xor	r13d, r13d
	jmp	.label_30
.label_86:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_30
	.section	.text
	.align	16
	#Procedure 0x402688
	.globl sub_402688
	.type sub_402688, @function
sub_402688:

	nop	dword ptr [rax + rax]
.label_117:
	mov	rcx, rsi
.label_121:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_68
	or	al, dl
	je	.label_73
.label_68:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_76
	or	al, dl
	jne	.label_76
	test	r10b, 1
	jne	.label_87
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_76
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_94
.label_76:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_102
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_105
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_105
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_119:
	cmp	r14, r11
	jae	.label_129
	mov	byte ptr [rcx + r14], al
.label_129:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_119
	jmp	.label_105
.label_71:
	mov	qword ptr [rsp + 0x20], rbp
.label_41:
	mov	rdx, rdi
	jmp	.label_122
.label_44:
	mov	qword ptr [rsp + 0x20], rbp
.label_112:
	mov	rdx, rdi
	mov	eax, 2
.label_108:
	mov	qword ptr [rsp + 0x38], rax
.label_122:
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
.label_38:
	mov	r14, rax
.label_42:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_73:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_122
.label_87:
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
	jmp	.label_38
.label_102:
	mov	rcx, qword ptr [rsp + 8]
.label_105:
	cmp	r14, r11
	jae	.label_42
	mov	byte ptr [rcx + r14], 0
	jmp	.label_42
.label_65:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_108
.label_91:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402847
	.globl sub_402847
	.type sub_402847, @function
sub_402847:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40285f
	.globl sub_40285f
	.type sub_40285f, @function
sub_40285f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402860
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_150:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_150
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402881
	.globl sub_402881
	.type sub_402881, @function
sub_402881:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402890
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_151]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_152]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_153]
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
	.align	16
	#Procedure 0x4028ff
	.globl sub_4028ff
	.type sub_4028ff, @function
sub_4028ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402900

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
	jne	.label_155
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_160
	cmp	ecx, 0x55
	jne	.label_154
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_154
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_154
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_154
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_154
	cmp	byte ptr [rax + 5], 0
	jne	.label_154
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_157
	mov	eax, OFFSET FLAT:label_158
	jmp	.label_159
.label_160:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_154
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_154
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_154
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_154
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_154
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_154
	cmp	byte ptr [rax + 7], 0
	je	.label_156
.label_154:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_51
	mov	eax, OFFSET FLAT:label_35
.label_159:
	cmove	rax, rcx
.label_155:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_156:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_161
	mov	eax, OFFSET FLAT:label_162
	jmp	.label_159
	.section	.text
	.align	16
	#Procedure 0x4029c5
	.globl sub_4029c5
	.type sub_4029c5, @function
sub_4029c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029d0

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_164
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_163
.label_164:
	mov	eax, ebx
	pop	rbx
	ret	
.label_163:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4029f0

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 4], r9d
	mov	ebp, r8d
	mov	r15d, ecx
	mov	ebx, edx
	mov	r14b, 1
	xor	r13d, r13d
	mov	qword ptr [rsp + 8], rdi
	test	rdi, rdi
	je	.label_181
	mov	edi, esi
	call	getpwuid
	mov	r13, rax
	test	r13, r13
	setne	r14b
.label_181:
	movzx	r12d, bpl
	mov	edi, ebx
	mov	esi, r12d
	call	print_group
	mov	bpl, al
	test	bpl, bpl
	je	.label_175
	mov	bpl, r14b
.label_175:
	cmp	r15d, ebx
	jne	.label_176
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_178
.label_176:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	r14, qword ptr [rsp + 8]
	jae	.label_179
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp + 4]
	mov	byte ptr [rax], cl
.label_173:
	mov	edi, r15d
	mov	esi, r12d
	call	print_group
	test	al, al
	je	.label_165
	mov	eax, ebp
.label_165:
	mov	bpl, al
.label_178:
	test	r13, r13
	mov	esi, r15d
	je	.label_166
	mov	esi, dword ptr [r13 + 0x14]
.label_166:
	lea	rdx, [rsp + 0x10]
	mov	rdi, r14
	call	xgetgroups
	test	eax, eax
	js	.label_170
	je	.label_171
	mov	ecx, dword ptr [rsp + 4]
	movzx	ecx, cl
	mov	dword ptr [rsp + 8], ecx
	movsxd	r13, eax
	xor	r14d, r14d
	jmp	.label_174
.label_170:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	r14, r14
	je	.label_177
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_183
.label_177:
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_183:
	xor	ebp, ebp
	jmp	.label_168
.label_167:
	mov	esi, dword ptr [rsp + 8]
	call	__overflow
	jmp	.label_172
	.section	.text
	.align	16
	#Procedure 0x402b2d
	.globl sub_402b2d
	.type sub_402b2d, @function
sub_402b2d:

	nop	dword ptr [rax]
.label_174:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + r14*4]
	cmp	eax, ebx
	je	.label_169
	cmp	eax, r15d
	je	.label_169
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_167
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp + 4]
	mov	byte ptr [rax], cl
.label_172:
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + r14*4]
	mov	esi, r12d
	call	print_group
	test	al, al
	je	.label_182
	mov	eax, ebp
.label_182:
	mov	bpl, al
.label_169:
	inc	r14
	cmp	r14, r13
	jl	.label_174
.label_171:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	and	bpl, 1
.label_168:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_179:
	mov	eax, dword ptr [rsp + 4]
	movzx	esi, al
	call	__overflow
	jmp	.label_173
	.section	.text
	.align	16
	#Procedure 0x402bb3
	.globl sub_402bb3
	.type sub_402bb3, @function
sub_402bb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bc0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_186
	cmp	byte ptr [rax], 0x43
	jne	.label_188
	cmp	byte ptr [rax + 1], 0
	je	.label_185
.label_188:
	mov	esi, OFFSET FLAT:label_187
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_186
.label_185:
	xor	ebx, ebx
.label_186:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bf1
	.globl sub_402bf1
	.type sub_402bf1, @function
sub_402bf1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00
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
	je	.label_189
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
.label_189:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402c68
	.globl sub_402c68
	.type sub_402c68, @function
sub_402c68:

	nop	dword ptr [rax + rax]
.label_190:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402c75
	.globl sub_402c75
	.type sub_402c75, @function
sub_402c75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80
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
	je	.label_190
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
	.section	.text
	.align	16
	#Procedure 0x402d10

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_191
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_193
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_191
.label_193:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_191
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_192
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_192:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_191:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x402d84
	.globl sub_402d84
	.type sub_402d84, @function
sub_402d84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d90
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
	je	.label_194
	mov	qword ptr [rax], rbx
.label_194:
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
	.align	16
	#Procedure 0x402e7c
	.globl sub_402e7c
	.type sub_402e7c, @function
sub_402e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_195
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_195:
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
	.align	16
	#Procedure 0x402f03
	.globl sub_402f03
	.type sub_402f03, @function
sub_402f03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10
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
	je	.label_196
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
.label_196:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402f71
	.globl sub_402f71
	.type sub_402f71, @function
sub_402f71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_197
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_197
	test	byte ptr [rbx + 1], 1
	je	.label_197
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_197:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402fb3
	.globl sub_402fb3
	.type sub_402fb3, @function
sub_402fb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fc0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_151]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_152]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_153]
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
	.align	16
	#Procedure 0x403014
	.globl sub_403014
	.type sub_403014, @function
sub_403014:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403020

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_201
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_199
	cmp	dword ptr [rbp], 0x20
	jne	.label_199
.label_201:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_204
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_198:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_200
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_199:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_198
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_203
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_204:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4030e0
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
	.align	16
	#Procedure 0x4030f3
	.globl sub_4030f3
	.type sub_4030f3, @function
sub_4030f3:

	nop	word ptr cs:[rax + rax]
.label_222:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
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
	.align	16
	#Procedure 0x403138
	.globl sub_403138
	.type sub_403138, @function
sub_403138:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40313d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_222
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_214
	mov	ecx, OFFSET FLAT:label_212
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_208
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_208
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_208:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_212
	mov	ecx, OFFSET FLAT:label_206
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_206
	mov	ecx, OFFSET FLAT:label_207
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4032e0

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
	je	.label_223
	cmp	r15, -2
	jb	.label_223
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_223
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_223:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403336
	.globl sub_403336
	.type sub_403336, @function
sub_403336:

	nop	word ptr cs:[rax + rax]
.label_225:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_224
	call	__errno_location
	mov	dword ptr [rax], 0
.label_224:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40335b

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
	jne	.label_225
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_224
	test	cl, cl
	jne	.label_224
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_224
	.section	.text
	.align	16
	#Procedure 0x4033a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033a8
	.globl sub_4033a8
	.type sub_4033a8, @function
sub_4033a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
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
	jae	.label_237
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_226:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_226
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_228
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_245
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_244
	cmp	eax, 0x22
	jne	.label_228
	mov	ebx, 1
.label_244:
	test	r14, r14
	jne	.label_246
	jmp	.label_232
.label_245:
	test	r14, r14
	je	.label_228
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_228
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_228
.label_246:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_232
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_236
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_231
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_231
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_231
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_233
	cmp	eax, 0x44
	je	.label_233
	cmp	eax, 0x69
	jne	.label_231
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_231
.label_233:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_231:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_236
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_243]
.label_547:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_229
.label_236:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_234
.label_548:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_238
.label_549:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_229
.label_551:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_229
.label_545:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_227
.label_546:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_229:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_235
.label_550:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_235
.label_552:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_242
.label_553:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_242:
	movzx	eax, dl
.label_238:
	and	eax, 1
.label_235:
	mov	rbp, rsi
.label_230:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_232:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_234:
	mov	r13d, ebx
.label_228:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_554:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_227:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_230
.label_555:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_230
.label_237:
	mov	edi, OFFSET FLAT:label_239
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_241
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4039cd
	.globl sub_4039cd
	.type sub_4039cd, @function
sub_4039cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl print_stuff
	.type print_stuff, @function
print_stuff:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	cmp	byte ptr [rip + just_user],  1
	jne	.label_274
	mov	al, byte ptr [rip + use_real]
	mov	ecx, OFFSET FLAT:ruid
	mov	edx, OFFSET FLAT:euid
	test	al, al
	cmovne	rdx, rcx
	mov	ebx, dword ptr [rdx]
	mov	al, byte ptr [rip + use_name]
	test	al, al
	je	.label_277
	mov	edi, ebx
	call	getpwuid
	test	rax, rax
	je	.label_249
	mov	rdi, qword ptr [rax]
	jmp	.label_251
.label_274:
	cmp	byte ptr [rip + just_group],  1
	jne	.label_254
	mov	al, byte ptr [rip + use_real]
	mov	ecx, OFFSET FLAT:rgid
	mov	edx, OFFSET FLAT:egid
	test	al, al
	cmovne	rdx, rcx
	mov	edi, dword ptr [rdx]
	movzx	esi, byte ptr [rip + use_name]
	call	print_group
	and	byte ptr [rip + ok],  al
	jmp	.label_247
.label_277:
	mov	ebx, ebx
	jmp	.label_261
.label_254:
	cmp	byte ptr [rip + just_group_list],  1
	jne	.label_262
	mov	esi, dword ptr [rip + ruid]
	mov	edx, dword ptr [rip + rgid]
	mov	ecx, dword ptr [rip + egid]
	mov	al, byte ptr [rip + opt_zero]
	test	al, al
	sete	al
	shl	al, 5
	movzx	r8d, byte ptr [rip + use_name]
	movzx	r9d, al
	mov	rdi, rbx
	call	print_group_list
	and	byte ptr [rip + ok],  al
	jmp	.label_247
.label_262:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + ruid]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + ruid]
	call	getpwuid
	mov	r14, rax
	test	r14, r14
	je	.label_279
	mov	rdx, qword ptr [r14]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_256
	xor	eax, eax
	call	__printf_chk
.label_279:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + rgid]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + rgid]
	call	getgrgid
	test	rax, rax
	je	.label_258
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_256
	xor	eax, eax
	call	__printf_chk
.label_258:
	mov	eax, dword ptr [rip + euid]
	cmp	eax, dword ptr [rip + ruid]
	je	.label_263
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + euid]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + euid]
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	je	.label_263
	mov	rdx, qword ptr [rbp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_256
	xor	eax, eax
	call	__printf_chk
	mov	r14, rbp
.label_263:
	mov	eax, dword ptr [rip + egid]
	cmp	eax, dword ptr [rip + rgid]
	je	.label_275
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + egid]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + egid]
	call	getgrgid
	test	rax, rax
	je	.label_275
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_256
	xor	eax, eax
	call	__printf_chk
.label_275:
	test	rbx, rbx
	je	.label_257
	mov	esi, 0xffffffff
	test	r14, r14
	je	.label_259
	mov	esi, dword ptr [r14 + 0x14]
	jmp	.label_259
.label_249:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	ebx, ebx
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	mov	rdi, rbx
	call	umaxtostr
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	byte ptr [rip + ok],  0
.label_261:
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_251:
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_247:
	mov	al, byte ptr [rip + opt_zero]
	cmp	al, 1
	jne	.label_273
	cmp	byte ptr [rip + multiple_users],  0
	je	.label_273
	mov	cl, byte ptr [rip + just_group_list]
	xor	cl, 1
	test	cl, 1
	jne	.label_273
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_276
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0
.label_271:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_280
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0
	jmp	.label_250
.label_273:
	xor	ecx, ecx
	test	al, al
	mov	esi, 0xa
	cmovne	esi, ecx
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_253
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_250:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_257:
	mov	esi, dword ptr [rip + egid]
.label_259:
	lea	rdx, [rsp + 8]
	mov	rdi, rbx
	call	xgetgroups
	mov	ebp, eax
	test	ebp, ebp
	js	.label_264
	je	.label_267
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	ebx, ebp
	xor	ebp, ebp
	jmp	.label_268
.label_264:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	test	rbx, rbx
	je	.label_272
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	byte ptr [rip + ok],  0
	jmp	.label_247
.label_272:
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
	mov	byte ptr [rip + ok],  0
	jmp	.label_247
.label_255:
	mov	esi, 0x2c
	call	__overflow
	jmp	.label_252
	.section	.text
	.align	16
	#Procedure 0x403e19
	.globl sub_403e19
	.type sub_403e19, @function
sub_403e19:

	nop	dword ptr [rax]
.label_268:
	test	rbp, rbp
	jle	.label_252
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_255
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x2c
.label_252:
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + rbp*4]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + rbp*4]
	call	getgrgid
	test	rax, rax
	je	.label_265
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_256
	xor	eax, eax
	call	__printf_chk
.label_265:
	inc	rbp
	cmp	ebx, ebp
	jne	.label_268
.label_267:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_247
.label_253:
	call	__overflow
	jmp	.label_250
.label_276:
	xor	esi, esi
	call	__overflow
	jmp	.label_271
.label_280:
	xor	esi, esi
	call	__overflow
	jmp	.label_250
	.section	.text
	.align	16
	#Procedure 0x403ec0
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
	je	.label_281
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
.label_281:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f28
	.globl sub_403f28
	.type sub_403f28, @function
sub_403f28:

	nop	dword ptr [rax + rax]
.label_282:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f35
	.globl sub_403f35
	.type sub_403f35, @function
sub_403f35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f3f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_282
	call	rpl_calloc
	test	rax, rax
	je	.label_282
	pop	rcx
	ret	
.label_285:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_283
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f80
	.globl sub_403f80
	.type sub_403f80, @function
sub_403f80:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f8f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_285
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_286
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_286
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_284
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_284:
	mov	rbx, r14
.label_286:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404010
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
	.align	16
	#Procedure 0x404085
	.globl sub_404085
	.type sub_404085, @function
sub_404085:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090
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
	.align	16
	#Procedure 0x4040a8
	.globl sub_4040a8
	.type sub_4040a8, @function
sub_4040a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_323
	call	setlocale
	mov	edi, OFFSET FLAT:label_327
	mov	esi, OFFSET FLAT:label_328
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_327
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_299
.label_530:
	mov	byte ptr [rip + just_group_list],  1
	nop	
.label_299:
	mov	edx, OFFSET FLAT:label_289
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x46
	jle	.label_295
	add	eax, -0x47
	cmp	eax, 0x33
	ja	.label_296
	jmp	qword ptr [(rax * 8) + label_298]
.label_532:
	mov	byte ptr [rip + just_group],  1
	jmp	.label_299
.label_535:
	mov	byte ptr [rip + just_user],  1
	jmp	.label_299
.label_536:
	mov	byte ptr [rip + opt_zero],  1
	jmp	.label_299
.label_533:
	mov	byte ptr [rip + use_name],  1
	jmp	.label_299
.label_534:
	mov	byte ptr [rip + use_real],  1
	jmp	.label_299
.label_295:
	cmp	eax, -1
	jne	.label_307
	movzx	esi, byte ptr [rip + just_user]
	movzx	ecx, byte ptr [rip + just_group]
	lea	eax, [rcx + rsi]
	movzx	edx, byte ptr [rip + just_group_list]
	add	eax, edx
	cmp	eax, 2
	jae	.label_310
	movsxd	rax, dword ptr [rip + optind]
	mov	ebx, esi
	or	bl, cl
	or	bl, dl
	jne	.label_316
	mov	bl, byte ptr [rip + use_real]
	test	bl, bl
	jne	.label_317
	cmp	byte ptr [rip + use_name],  1
	je	.label_317
	cmp	byte ptr [rip + opt_zero],  1
	je	.label_319
.label_316:
	movsxd	r15, ebp
	sub	r15, rax
	test	r15d, r15d
	je	.label_314
	cmp	r15d, 1
	setne	byte ptr [rip + multiple_users]
	add	r15, rax
	jmp	.label_326
	.section	.text
	.align	16
	#Procedure 0x4041de
	.globl sub_4041de
	.type sub_4041de, @function
sub_4041de:

	nop	
.label_311:
	movsxd	rax, dword ptr [rip + optind]
	inc	rax
	mov	dword ptr [rip + optind],  eax
.label_326:
	cmp	rax, r15
	jae	.label_330
	mov	rdi, qword ptr [r14 + rax*8]
	cmp	byte ptr [rdi], 0
	je	.label_293
	mov	esi, OFFSET FLAT:euid
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	call	parse_user_spec
	test	rax, rax
	jne	.label_293
	mov	edi, dword ptr [rip + euid]
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	je	.label_293
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x10]
	mov	dword ptr [rip + euid],  eax
	mov	dword ptr [rip + ruid],  eax
	shr	rax, 0x20
	mov	dword ptr [rip + egid],  eax
	mov	dword ptr [rip + rgid],  eax
	mov	rdi, rbx
	call	print_stuff
	mov	rdi, rbx
	call	free
	jmp	.label_311
	.section	.text
	.align	16
	#Procedure 0x40426c
	.globl sub_40426c
	.type sub_40426c, @function
sub_40426c:

	nop	dword ptr [rax]
.label_293:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	byte ptr [rip + ok],  0
	jmp	.label_311
.label_314:
	test	sil, sil
	je	.label_320
	mov	al, byte ptr [rip + use_real]
	test	al, al
	je	.label_321
	jmp	.label_308
.label_320:
	or	cl, dl
	jne	.label_308
.label_321:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	mov	dword ptr [rip + euid],  eax
	cmp	eax, -1
	jne	.label_308
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_329
.label_308:
	cmp	byte ptr [rip + just_user],  1
	jne	.label_331
	mov	al, byte ptr [rip + use_real]
	test	al, al
	jne	.label_332
	jmp	.label_290
.label_331:
	mov	al, byte ptr [rip + just_group]
	test	al, al
	jne	.label_290
.label_332:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getuid
	mov	dword ptr [rip + ruid],  eax
	cmp	eax, -1
	jne	.label_290
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_300
.label_290:
	mov	al, byte ptr [rip + just_user]
	test	al, al
	jne	.label_301
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getegid
	mov	dword ptr [rip + egid],  eax
	cmp	eax, -1
	jne	.label_306
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	jne	.label_309
.label_306:
	mov	dword ptr [rbx], 0
	call	getgid
	mov	dword ptr [rip + rgid],  eax
	cmp	eax, -1
	jne	.label_301
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_315
.label_301:
	xor	edi, edi
	call	print_stuff
.label_330:
	movzx	eax, byte ptr [rip + ok]
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_307:
	cmp	eax, 0xffffff7d
	je	.label_318
	cmp	eax, 0xffffff7e
	jne	.label_296
	xor	edi, edi
	call	usage
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	jmp	.label_292
.label_318:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_206
	mov	edx, OFFSET FLAT:label_214
	mov	r8d, OFFSET FLAT:label_324
	mov	r9d, OFFSET FLAT:label_325
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_296:
	mov	edi, 1
	call	usage
.label_310:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	jmp	.label_292
.label_317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	jmp	.label_292
.label_319:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
.label_292:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	jmp	.label_303
.label_300:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	jmp	.label_303
.label_309:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_315:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
.label_303:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4044a0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_333
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_336
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_334
.label_335:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_339
	test	rax, rax
	je	.label_336
.label_339:
	pop	rbx
	ret	
.label_337:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4044e6
	.globl sub_4044e6
	.type sub_4044e6, @function
sub_4044e6:

	nop	word ptr [rax + rax]
.label_336:
	call	xalloc_die
.label_333:
	test	rcx, rcx
	jne	.label_338
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_338:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_337
.label_334:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_335
	test	rbx, rbx
	jne	.label_335
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404540
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
	.align	16
	#Procedure 0x404559
	.globl sub_404559
	.type sub_404559, @function
sub_404559:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404560
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404571
	.globl sub_404571
	.type sub_404571, @function
sub_404571:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404580

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_323
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_340
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045a5
	.globl sub_4045a5
	.type sub_4045a5, @function
sub_4045a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0
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
	je	.label_341
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
.label_341:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40461c
	.globl sub_40461c
	.type sub_40461c, @function
sub_40461c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404620
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
	.align	16
	#Procedure 0x404656
	.globl sub_404656
	.type sub_404656, @function
sub_404656:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404660
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_151]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_152]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_153]
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
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_342:
	call	abort
.label_343:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4046d5
	.globl sub_4046d5
	.type sub_4046d5, @function
sub_4046d5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4046d7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_151]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_152]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_153]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_343
	test	rdx, rdx
	je	.label_343
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x404740

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x404757
	.globl sub_404757
	.type sub_404757, @function
sub_404757:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404760
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40476a
	.globl sub_40476a
	.type sub_40476a, @function
sub_40476a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404770
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_344
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_346:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_346
.label_344:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_348
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_347], OFFSET FLAT:slot0
.label_348:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_345
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_345:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404801
	.globl sub_404801
	.type sub_404801, @function
sub_404801:

	nop	word ptr cs:[rax + rax]
.label_349:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404815
	.globl sub_404815
	.type sub_404815, @function
sub_404815:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40481b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_151]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_152]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_153]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_349
	test	rdx, rdx
	je	.label_349
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x404880
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40488e
	.globl sub_40488e
	.type sub_40488e, @function
sub_40488e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404890

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
	js	.label_353
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_356
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
	jne	.label_354
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_354:
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
.label_356:
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
	jmp	.label_355
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
.label_355:
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
.label_353:
	call	abort
.label_351:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404a4d
	.globl sub_404a4d
	.type sub_404a4d, @function
sub_404a4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a50
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404a5a
	.globl sub_404a5a
	.type sub_404a5a, @function
sub_404a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a60
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_358
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_214
	mov	ecx, OFFSET FLAT:label_212
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404ad4
	.globl sub_404ad4
	.type sub_404ad4, @function
sub_404ad4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ae0

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_361
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_361:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	qword ptr [rsp], rbp
	mov	r9, rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_363
	test	r14, r14
	jne	.label_363
	test	rbp, rbp
	je	.label_363
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_363
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_362
.label_363:
	mov	rax, rbp
.label_362:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b84
	.globl sub_404b84
	.type sub_404b84, @function
sub_404b84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b90
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_364
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	je	.label_364
.label_365:
	pop	rbx
	ret	
.label_364:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404bc5
	.globl sub_404bc5
	.type sub_404bc5, @function
sub_404bc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_371
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_373
.label_371:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_373:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_370
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_372
.label_370:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_372:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_367
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_369
.label_367:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_369:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_378
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_366
.label_378:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_366:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_376
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_377
.label_376:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_377:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_374
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_375
.label_374:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_375:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_368
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_368
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_368
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_368
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_368:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x404db2
	.globl sub_404db2
	.type sub_404db2, @function
sub_404db2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0
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
	.align	16
	#Procedure 0x404dd8
	.globl sub_404dd8
	.type sub_404dd8, @function
sub_404dd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404de0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404def
	.globl sub_404def
	.type sub_404def, @function
sub_404def:

	nop	
.label_379:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404df5
	.globl sub_404df5
	.type sub_404df5, @function
sub_404df5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404df9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_151]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_152]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_153]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_379
	test	rsi, rsi
	je	.label_379
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
.label_382:
	call	xalloc_die
.label_380:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_381
	test	rax, rax
	je	.label_382
.label_381:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e79

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_380
	test	rbx, rbx
	jne	.label_380
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_385:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_383
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_383:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ec4
	.globl sub_404ec4
	.type sub_404ec4, @function
sub_404ec4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404ec6

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
	jne	.label_384
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_384
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_385
.label_384:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x404f00

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
	je	.label_386
	mov	edx, OFFSET FLAT:label_396
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_402
.label_386:
	mov	edx, OFFSET FLAT:label_403
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
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
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_391
	jmp	qword ptr [(r12 * 8) + label_392]
.label_556:
	add	rsp, 8
	jmp	.label_390
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
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
	jmp	.label_390
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
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
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
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
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
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
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
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
	jmp	.label_390
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
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
	jmp	.label_390
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
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
	jmp	.label_390
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
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
	jmp	.label_390
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
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
	jmp	.label_390
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
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
.label_390:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405258
	.globl sub_405258
	.type sub_405258, @function
sub_405258:

	nop	dword ptr [rax + rax]
.label_409:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_406:
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_407:
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052ae
	.globl sub_4052ae
	.type sub_4052ae, @function
sub_4052ae:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052bd

	.globl print_group
	.type print_group, @function
print_group:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	sil, sil
	je	.label_408
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_409
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_407
.label_408:
	mov	ebp, ebp
	mov	bl, 1
	jmp	.label_406
	.section	.text
	.align	16
	#Procedure 0x4052e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_410
	test	rax, rax
	je	.label_411
.label_410:
	pop	rbx
	ret	
.label_411:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4052fa
	.globl sub_4052fa
	.type sub_4052fa, @function
sub_4052fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, r8
	mov	r12, rcx
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	ecx, 0xffffffff
	test	r12, r12
	je	.label_412
	mov	ecx, dword ptr [r12]
.label_412:
	test	r14, r14
	je	.label_422
	mov	qword ptr [r14], 0
.label_422:
	test	r9, r9
	je	.label_432
	mov	qword ptr [r9], 0
.label_432:
	test	r15, r15
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rcx
	je	.label_429
	mov	qword ptr [rsp + 8], r9
	xor	ebp, ebp
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_435
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	rbp, rax
	mov	byte ptr [rbp + rbx], 0
.label_435:
	lea	rax, [r15 + 1]
	xor	ebx, ebx
	cmp	byte ptr [r15 + 1], 0
	cmovne	rbx, rax
	jmp	.label_442
.label_429:
	xor	r13d, r13d
	cmp	byte ptr [rdi], 0
	je	.label_419
	mov	qword ptr [rsp + 8], r9
	call	xstrdup
	mov	rbp, rax
	xor	ebx, ebx
.label_442:
	xor	r13d, r13d
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x28], r14
	je	.label_427
	cmp	byte ptr [rbp], 0x2b
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_426
	mov	rdi, rbp
	call	getpwnam
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_426
	mov	rax, qword ptr [rax + 0x10]
	xor	r13d, r13d
	test	r15, r15
	mov	qword ptr [rsp + 0x10], rax
	je	.label_434
	mov	r15, rbx
	test	r15, r15
	jne	.label_440
	mov	rbp, rax
	shr	rbp, 0x20
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 0x18], rbp
	je	.label_413
	mov	rdi, qword ptr [rax]
	jmp	.label_441
.label_426:
	mov	r14d, OFFSET FLAT:label_416
	xor	r13d, r13d
	test	r15, r15
	mov	r15, rbx
	je	.label_417
	test	r15, r15
	je	.label_423
.label_417:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_323
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	jne	.label_431
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_431
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_424
.label_431:
	mov	r14d, OFFSET FLAT:label_439
	mov	rax, qword ptr [rsp + 0x10]
.label_424:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_423
.label_427:
	xor	edi, edi
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_437
.label_419:
	xor	edi, edi
	jmp	.label_414
.label_434:
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_423
.label_413:
	lea	rsi, [rsp + 0x40]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_441:
	call	xstrdup
	mov	r13, rax
	call	endgrent
.label_440:
	xor	r14d, r14d
.label_423:
	call	endpwent
	mov	rdi, qword ptr [rsp + 0x20]
.label_437:
	test	r15, r15
	je	.label_428
	test	r14, r14
	jne	.label_428
	mov	rbp, rdi
	cmp	byte ptr [r15], 0x2b
	je	.label_430
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_430
	mov	ebx, dword ptr [rax + 0x10]
	xor	r14d, r14d
	jmp	.label_418
.label_428:
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_438
.label_430:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_323
	mov	rdi, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_415
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_415
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_418
.label_415:
	mov	r14d, OFFSET FLAT:label_421
	mov	rbx, qword ptr [rsp + 0x18]
.label_418:
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r13, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, rbp
.label_438:
	test	r14, r14
	je	.label_425
	xor	ebx, ebx
	jmp	.label_433
.label_425:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x30]
.label_414:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	test	r12, r12
	je	.label_436
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], eax
.label_436:
	test	r14, r14
	je	.label_443
	mov	qword ptr [r14], rdi
	xor	edi, edi
.label_443:
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_433
	mov	qword ptr [r9], r13
	xor	r14d, r14d
	xor	r13d, r13d
.label_433:
	call	free
	mov	rdi, r13
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_420
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_420:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055c3
	.globl sub_4055c3
	.type sub_4055c3, @function
sub_4055c3:

	nop	word ptr cs:[rax + rax]
.label_445:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4055d5
	.globl sub_4055d5
	.type sub_4055d5, @function
sub_4055d5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055d9

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
	je	.label_444
	test	r15, r15
	je	.label_445
.label_444:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405610

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_446
	test	rsi, rsi
	mov	ecx, 1
	je	.label_447
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_447
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_446:
	mov	ecx, 1
.label_447:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40565b
	.globl sub_40565b
	.type sub_40565b, @function
sub_40565b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_448:
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
	ja	.label_448
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056ab
	.globl sub_4056ab
	.type sub_4056ab, @function
sub_4056ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_449
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_450
	test	rbx, rbx
	jne	.label_450
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_450:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_451
	test	rax, rax
	je	.label_449
.label_451:
	pop	rbx
	ret	
.label_449:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4056f8
	.globl sub_4056f8
	.type sub_4056f8, @function
sub_4056f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405700
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405708
	.globl sub_405708
	.type sub_405708, @function
sub_405708:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405710
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_151]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_152]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_153]
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
	.align	16
	#Procedure 0x40577e
	.globl sub_40577e
	.type sub_40577e, @function
sub_40577e:

	nop	
.label_453:
	call	xalloc_die
.label_455:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40578a
	.globl sub_40578a
	.type sub_40578a, @function
sub_40578a:

	nop	word ptr cs:[rax + rax]
.label_456:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_453
	mov	qword ptr [rsi], rbx
.label_454:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_452
	test	rax, rax
	je	.label_453
.label_452:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057be
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_456
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_455
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_454
	call	free
	xor	eax, eax
	jmp	.label_452
.label_457:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4057f6
	.globl sub_4057f6
	.type sub_4057f6, @function
sub_4057f6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057fb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_457
	test	rdx, rdx
	je	.label_457
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405820

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_203
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405850

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
	.align	16
	#Procedure 0x405869
	.globl sub_405869
	.type sub_405869, @function
sub_405869:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405870

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
	je	.label_460
	test	r15, r15
	je	.label_459
.label_460:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_459:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4058b2
	.globl sub_4058b2
	.type sub_4058b2, @function
sub_4058b2:

	nop	word ptr cs:[rax + rax]
.label_461:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4058c5
	.globl sub_4058c5
	.type sub_4058c5, @function
sub_4058c5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058cb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_462
	test	rax, rax
	je	.label_461
.label_462:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058e0
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
	.align	16
	#Procedure 0x4059a1
	.globl sub_4059a1
	.type sub_4059a1, @function
sub_4059a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059b0
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
	.align	16
	#Procedure 0x4059e3
	.globl sub_4059e3
	.type sub_4059e3, @function
sub_4059e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_151]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_152]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_153]
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
	.align	16
	#Procedure 0x405a45
	.globl sub_405a45
	.type sub_405a45, @function
sub_405a45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ab5
	.globl sub_405ab5
	.type sub_405ab5, @function
sub_405ab5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ac2
	.globl sub_405ac2
	.type sub_405ac2, @function
sub_405ac2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ae6
	.globl sub_405ae6
	.type sub_405ae6, @function
sub_405ae6:

	nop	word ptr cs:[rax + rax]
