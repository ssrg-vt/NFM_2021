	.section	.text
	.align	16
	#Procedure 0x401919
	.globl sub_401919
	.type sub_401919, @function
sub_401919:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40191a
	.globl sub_40191a
	.type sub_40191a, @function
sub_40191a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401952
	.globl sub_401952
	.type sub_401952, @function
sub_401952:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40199a
	.globl sub_40199a
	.type sub_40199a, @function
sub_40199a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019bc
	.globl sub_4019bc
	.type sub_4019bc, @function
sub_4019bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019cd
	.globl sub_4019cd
	.type sub_4019cd, @function
sub_4019cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019e6
	.globl sub_4019e6
	.type sub_4019e6, @function
sub_4019e6:

	nop	word ptr cs:[rax + rax]
.label_9:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4019fc
	.globl sub_4019fc
	.type sub_4019fc, @function
sub_4019fc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a09

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_9
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a10

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x401a1d
	.globl sub_401a1d
	.type sub_401a1d, @function
sub_401a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a20

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
.label_58:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_61
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_67]]
.label_546:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_71
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_76
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_547:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_85
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_85
	xor	r14d, r14d
.label_96:
	cmp	r14, r11
	jae	.label_91
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_91:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_96
.label_85:
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
	jmp	.label_21
.label_539:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_21
.label_542:
	mov	al, 1
.label_540:
	mov	r12b, 1
.label_543:
	test	r12b, 1
	mov	cl, 1
	je	.label_110
	mov	ecx, eax
.label_110:
	mov	al, cl
.label_541:
	test	r12b, 1
	jne	.label_112
	test	r11, r11
	je	.label_60
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_60:
	mov	r14d, 1
	jmp	.label_119
.label_112:
	xor	r14d, r14d
.label_119:
	mov	ecx, OFFSET FLAT:label_76
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_21
.label_544:
	test	r12b, 1
	jne	.label_11
	test	r11, r11
	je	.label_13
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_13:
	mov	r14d, 1
	jmp	.label_47
.label_545:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_20
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_21
.label_11:
	xor	r14d, r14d
.label_47:
	mov	eax, OFFSET FLAT:label_20
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_21:
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
	jmp	.label_37
	.section	.text
	.align	16
	#Procedure 0x401cfc
	.globl sub_401cfc
	.type sub_401cfc, @function
sub_401cfc:

	nop	dword ptr [rax]
.label_50:
	inc	rsi
.label_37:
	cmp	rbp, -1
	je	.label_75
	cmp	rsi, rbp
	jne	.label_78
	jmp	.label_82
	.section	.text
	.align	16
	#Procedure 0x401d13
	.globl sub_401d13
	.type sub_401d13, @function
sub_401d13:

	nop	word ptr cs:[rax + rax]
.label_75:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_82
.label_78:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_86
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_88
	cmp	rbp, -1
	jne	.label_88
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
.label_88:
	cmp	rbx, rbp
	jbe	.label_98
.label_86:
	xor	r8d, r8d
.label_28:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_100
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_103]]
.label_438:
	test	rsi, rsi
	jne	.label_92
	jmp	.label_30
	.section	.text
	.align	16
	#Procedure 0x401dae
	.globl sub_401dae
	.type sub_401dae, @function
sub_401dae:

	nop	
.label_98:
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
	jne	.label_117
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_28
	jmp	.label_12
.label_117:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_28
.label_442:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_23
	test	rsi, rsi
	jne	.label_26
	cmp	rbp, 1
	je	.label_30
	xor	r13d, r13d
	jmp	.label_14
.label_431:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_33
	cmp	byte ptr [rsp + 7], 0
	jne	.label_34
	cmp	r12d, 2
	jne	.label_36
	mov	eax, r9d
	and	al, 1
	jne	.label_36
	cmp	r14, r11
	jae	.label_63
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_63:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_43
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_43:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_52
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_52:
	add	r14, 3
	mov	r9b, 1
.label_36:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_57
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_57:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_59
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_59
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_59
	cmp	r14, r11
	jae	.label_72
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_72:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_99
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_99:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_14
.label_432:
	mov	bl, 0x62
	jmp	.label_84
.label_433:
	mov	cl, 0x74
	jmp	.label_42
.label_434:
	mov	bl, 0x76
	jmp	.label_84
.label_435:
	mov	bl, 0x66
	jmp	.label_84
.label_436:
	mov	cl, 0x72
	jmp	.label_42
.label_439:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_90
	cmp	byte ptr [rsp + 7], 0
	jne	.label_34
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
	jae	.label_97
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_97:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_105
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_105:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_106
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_106:
	add	r14, 3
	xor	r9d, r9d
.label_90:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_14
.label_440:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_116
	cmp	r12d, 2
	jne	.label_92
	cmp	byte ptr [rsp + 7], 0
	je	.label_92
	jmp	.label_34
.label_441:
	cmp	r12d, 2
	jne	.label_124
	cmp	byte ptr [rsp + 7], 0
	jne	.label_34
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_24
.label_100:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_17
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
.label_18:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_35
	test	r8b, r8b
	je	.label_35
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_14
.label_23:
	test	rsi, rsi
	jne	.label_22
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_22
.label_30:
	mov	dl, 1
.label_437:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_34
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_14:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_68
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_69
	jmp	.label_73
	.section	.text
	.align	16
	#Procedure 0x4020f4
	.globl sub_4020f4
	.type sub_4020f4, @function
sub_4020f4:

	nop	word ptr cs:[rax + rax]
.label_68:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_73
.label_69:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_77
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_24
	jmp	.label_49
	.section	.text
	.align	16
	#Procedure 0x40213d
	.globl sub_40213d
	.type sub_40213d, @function
sub_40213d:

	nop	dword ptr [rax]
.label_73:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_49
	jmp	.label_24
.label_77:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_49
.label_33:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_50
	xor	r15d, r15d
	jmp	.label_92
.label_124:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_42
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_24
.label_42:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_34
.label_84:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_14
	nop	word ptr cs:[rax + rax]
.label_49:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_34
	cmp	r12d, 2
	jne	.label_44
	mov	eax, r9d
	and	al, 1
	jne	.label_44
	cmp	r14, r11
	jae	.label_114
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_114:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_80
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_80:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_121
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_121:
	add	r14, 3
	mov	r9b, 1
.label_44:
	cmp	r14, r11
	jae	.label_10
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_10:
	inc	r14
	jmp	.label_15
.label_17:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_19
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_19:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_66:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_40
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_46
	cmp	rbp, -2
	je	.label_107
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_54
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_123:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_95
	bt	rsi, rdx
	jb	.label_12
.label_95:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_123
.label_54:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_79
	xor	r13d, r13d
.label_79:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_66
	jmp	.label_18
.label_59:
	xor	r13d, r13d
	jmp	.label_14
.label_22:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_14
.label_116:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_92
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_92
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_92
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_101
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_93
	cmp	byte ptr [rsp + 7], 0
	jne	.label_34
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_108
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_108:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_53
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_53:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_118
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_118:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_120
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_120:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_14
.label_92:
	xor	eax, eax
.label_26:
	xor	r13d, r13d
	jmp	.label_14
.label_35:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_16
	.section	.text
	.align	16
	#Procedure 0x402423
	.globl sub_402423
	.type sub_402423, @function
sub_402423:

	nop	word ptr cs:[rax + rax]
.label_94:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_16:
	test	r8b, r8b
	je	.label_27
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_29
	cmp	r14, r11
	jae	.label_31
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_31:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_29
	.section	.text
	.align	16
	#Procedure 0x40246c
	.globl sub_40246c
	.type sub_40246c, @function
sub_40246c:

	nop	dword ptr [rax]
.label_27:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_12
	cmp	r12d, 2
	jne	.label_39
	mov	eax, r9d
	and	al, 1
	jne	.label_39
	cmp	r14, r11
	jae	.label_45
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_45:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_51
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_51:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_55
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_55:
	add	r14, 3
	mov	r9b, 1
.label_39:
	cmp	r14, r11
	jae	.label_48
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_48:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_64
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_64:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_70
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_70:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_29:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_24
	test	r9b, 1
	je	.label_81
	mov	ebx, eax
	and	bl, 1
	jne	.label_81
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_87
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_87:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_56
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_56:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_81:
	cmp	r14, r11
	jae	.label_94
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_94
	.section	.text
	.align	16
	#Procedure 0x402573
	.globl sub_402573
	.type sub_402573, @function
sub_402573:

	nop	word ptr cs:[rax + rax]
.label_24:
	test	r9b, 1
	je	.label_74
	and	al, 1
	jne	.label_74
	cmp	r14, r11
	jae	.label_102
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_102:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_104
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_104:
	add	r14, 2
	xor	r9d, r9d
.label_74:
	mov	ebx, r15d
.label_15:
	cmp	r14, r11
	jae	.label_109
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_109:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_50
.label_46:
	xor	r13d, r13d
.label_40:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_18
.label_107:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_122
	mov	rsi, qword ptr [rsp + 0x50]
.label_41:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_83
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_41
	xor	r13d, r13d
	jmp	.label_18
.label_122:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_18
.label_83:
	xor	r13d, r13d
	jmp	.label_18
.label_101:
	xor	r13d, r13d
	jmp	.label_14
.label_93:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_14
	.section	.text
	.align	16
	#Procedure 0x402648
	.globl sub_402648
	.type sub_402648, @function
sub_402648:

	nop	dword ptr [rax + rax]
.label_82:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_32
	or	dl, al
	je	.label_12
.label_32:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_38
	or	dl, al
	jne	.label_38
	test	r10b, 1
	jne	.label_113
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_38
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_58
.label_38:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_62
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_65
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_65
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_25:
	cmp	r14, r11
	jae	.label_89
	mov	byte ptr [rcx + r14], al
.label_89:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_25
	jmp	.label_65
.label_34:
	mov	qword ptr [rsp + 0x20], rbp
.label_12:
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
.label_111:
	mov	r14, rax
.label_115:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_113:
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
	jmp	.label_111
.label_62:
	mov	rcx, qword ptr [rsp + 8]
.label_65:
	cmp	r14, r11
	jae	.label_115
	mov	byte ptr [rcx + r14], 0
	jmp	.label_115
.label_61:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4027dc
	.globl sub_4027dc
	.type sub_4027dc, @function
sub_4027dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4027e0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027e5
	.globl sub_4027e5
	.type sub_4027e5, @function
sub_4027e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_129
	call	setlocale
	mov	edi, OFFSET FLAT:label_133
	mov	esi, OFFSET FLAT:label_134
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_133
	call	textdomain
	mov	edi, OFFSET FLAT:maybe_close_stdout
	call	atexit
	xor	ecx, ecx
	xor	r12d, r12d
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
.label_529:
	mov	r13d, ecx
	mov	cl, r12b
	mov	byte ptr [rsp + 0x17], r13b
.label_526:
	mov	r12b, cl
	mov	cl, bl
.label_530:
	mov	bl, cl
	jmp	.label_147
.label_531:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x20], rax
	nop	word ptr cs:[rax + rax]
.label_147:
	mov	cl, r14b
.label_528:
	mov	r14b, cl
	mov	edx, OFFSET FLAT:label_150
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x55
	jle	.label_154
	add	eax, -0x56
	cmp	eax, 0x2a
	ja	.label_159
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_132]]
.label_527:
	mov	r13b, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_147
.label_154:
	cmp	eax, -1
	jne	.label_165
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x30], r12
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebp, eax
	cmp	ebp, 2
	jae	.label_167
	mov	r12d, OFFSET FLAT:label_173
	mov	cl, 1
	test	ebp, ebp
	je	.label_174
	mov	r12, qword ptr [r15 + rax*8]
	mov	ecx, r13d
.label_174:
	mov	byte ptr [rsp + 0x16], cl
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_125
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_131
	cmp	byte ptr [r12 + rbx - 1], 0x58
	jne	.label_131
	mov	r13, qword ptr [rsp + 0x20]
	mov	rdi, r13
	call	strlen
	mov	r15, rax
	lea	rdi, [rbx + r15 + 1]
	call	xcharalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	mov	r12, rbp
	add	rbp, rbx
	lea	rdx, [r15 + 1]
	mov	rdi, rbp
	mov	rsi, r13
	call	memcpy
	jmp	.label_148
.label_125:
	mov	rdi, r12
	call	xstrdup
	mov	rbx, rax
	mov	esi, 0x58
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_151
	mov	r12, rbx
	inc	rbp
	jmp	.label_152
.label_151:
	xor	esi, esi
	mov	r12, rbx
	mov	rdi, rbx
	call	__rawmemchr
	mov	rbp, rax
.label_152:
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
.label_148:
	test	r15, r15
	je	.label_160
	mov	rdi, rbp
	call	last_component
	cmp	rax, rbp
	jne	.label_161
.label_160:
	mov	r13, r12
	sub	rbp, r13
	mov	rdi, r13
	mov	rsi, rbp
	call	count_consecutive_X_s
	mov	r12, rax
	cmp	r12, 2
	jbe	.label_168
	test	byte ptr [rsp + 0x16], 1
	je	.label_171
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_175
	mov	edi, OFFSET FLAT:label_144
	call	getenv
	mov	rbp, rax
	test	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	je	.label_126
	cmp	byte ptr [rbp], 0
	jne	.label_130
.label_126:
	test	rax, rax
	je	.label_149
	cmp	byte ptr [rax], 0
	mov	rbp, rax
	jne	.label_130
.label_149:
	mov	ebp, OFFSET FLAT:label_137
.label_130:
	mov	rdi, r13
	call	last_component
	cmp	rax, r13
	je	.label_139
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
	jmp	.label_158
.label_175:
	mov	rcx, qword ptr [rsp + 0x18]
	test	rcx, rcx
	je	.label_140
	cmp	byte ptr [rcx], 0
	jne	.label_143
.label_140:
	mov	edi, OFFSET FLAT:label_144
	call	getenv
	mov	ecx, OFFSET FLAT:label_137
	test	rax, rax
	je	.label_143
	cmp	byte ptr [rax], 0
	mov	ecx, OFFSET FLAT:label_137
	cmovne	rcx, rax
.label_143:
	cmp	byte ptr [r13], 0x2f
	mov	rbp, rcx
	je	.label_153
.label_139:
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r13
	call	file_name_concat
	mov	rbx, rax
	mov	rdi, r13
	call	free
	mov	r13, rbx
.label_171:
	mov	rdi, r13
	call	xstrdup
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	xor	ecx, ecx
	test	al, al
	je	.label_156
	mov	rbx, qword ptr [rsp + 0x28]
	test	bl, bl
	setne	cl
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	mkdtemp_len
	test	eax, eax
	je	.label_164
	mov	r12d, 1
	test	r14b, r14b
	jne	.label_135
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	jmp	.label_170
.label_156:
	mov	rbx, qword ptr [rsp + 0x28]
	test	bl, bl
	setne	cl
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	mkstemp_len
	test	eax, eax
	js	.label_128
	test	bl, bl
	je	.label_127
	mov	rdi, rbp
	call	puts
	xor	r12d, r12d
	jmp	.label_135
.label_164:
	mov	rdi, rbp
	call	puts
	xor	r12d, r12d
	test	bl, bl
	jne	.label_135
	jmp	.label_138
.label_127:
	mov	edi, eax
	call	close
	test	eax, eax
	je	.label_163
.label_128:
	mov	r12d, 1
	test	r14b, r14b
	jne	.label_135
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
.label_170:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_135:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_163:
	mov	rdi, rbp
	call	puts
.label_138:
	mov	byte ptr [byte ptr [rip + stdout_closed]],  1
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	xor	r12d, r12d
	test	eax, eax
	je	.label_135
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rdi, rbp
	call	remove
	mov	r12d, 1
	test	r14b, r14b
	jne	.label_135
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	call	error
	jmp	.label_135
.label_165:
	cmp	eax, 0xffffff7d
	je	.label_172
	cmp	eax, 0xffffff7e
	jne	.label_159
	xor	edi, edi
	call	usage
.label_172:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_176
	mov	edx, OFFSET FLAT:label_177
	mov	r8d, OFFSET FLAT:label_178
	mov	r9d, OFFSET FLAT:label_179
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_159:
	mov	edi, 1
	call	usage
.label_131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	jmp	.label_145
.label_167:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
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
.label_168:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
.label_158:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	jmp	.label_145
.label_161:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
.label_145:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	jmp	.label_158
	.section	.text
	.align	16
	#Procedure 0x402cd7
	.globl sub_402cd7
	.type sub_402cd7, @function
sub_402cd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ce0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_129
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_180
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d05
	.globl sub_402d05
	.type sub_402d05, @function
sub_402d05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d10

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	.section	.text
	.align	16
	#Procedure 0x402d1a
	.globl sub_402d1a
	.type sub_402d1a, @function
sub_402d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbx, rsi
	mov	esi, 0x58
	call	__strspn_c1
	cmp	rax, rbx
	setae	al
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d36
	.globl sub_402d36
	.type sub_402d36, @function
sub_402d36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x402d4a
	.globl sub_402d4a
	.type sub_402d4a, @function
sub_402d4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_181
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_181:
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
	#Procedure 0x402dd3
	.globl sub_402dd3
	.type sub_402dd3, @function
sub_402dd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402de0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402de5
	.globl sub_402de5
	.type sub_402de5, @function
sub_402de5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402df0

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	.section	.text
	.align	16
	#Procedure 0x402e0a
	.globl sub_402e0a
	.type sub_402e0a, @function
sub_402e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e10
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_182
	call	rpl_calloc
	test	rax, rax
	je	.label_182
	pop	rcx
	ret	
.label_182:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402e36
	.globl sub_402e36
	.type sub_402e36, @function
sub_402e36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e40

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e7b
	.globl sub_402e7b
	.type sub_402e7b, @function
sub_402e7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e80
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
	.section	.text
	.align	16
	#Procedure 0x402ec9
	.globl sub_402ec9
	.type sub_402ec9, @function
sub_402ec9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0

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
	.section	.text
	.align	16
	#Procedure 0x402f07
	.globl sub_402f07
	.type sub_402f07, @function
sub_402f07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_184
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:label_193
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_184:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
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
	.section	.text
	.align	16
	#Procedure 0x40309c
	.globl sub_40309c
	.type sub_40309c, @function
sub_40309c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_195
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_195:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4030c6
	.globl sub_4030c6
	.type sub_4030c6, @function
sub_4030c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_196
	test	rbx, rbx
	jne	.label_196
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_196:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_198
	test	rax, rax
	je	.label_197
.label_198:
	pop	rbx
	ret	
.label_197:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403100

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_199
	test	rdx, rdx
	je	.label_199
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_199:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40312b
	.globl sub_40312b
	.type sub_40312b, @function
sub_40312b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40313a
	.globl sub_40313a
	.type sub_40313a, @function
sub_40313a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403140
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
	#Procedure 0x403153
	.globl sub_403153
	.type sub_403153, @function
sub_403153:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160
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
	#Procedure 0x403193
	.globl sub_403193
	.type sub_403193, @function
sub_403193:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031a0

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
	je	.label_200
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
.label_200:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4031f2
	.globl sub_4031f2
	.type sub_4031f2, @function
sub_4031f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403200
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
	.section	.text
	.align	16
	#Procedure 0x403219
	.globl sub_403219
	.type sub_403219, @function
sub_403219:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403220

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40322e
	.globl sub_40322e
	.type sub_40322e, @function
sub_40322e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403230

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x403239
	.globl sub_403239
	.type sub_403239, @function
sub_403239:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403240

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
	mov	rax,  qword ptr [word ptr [rip + label_201]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_202]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_203]]
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
	.section	.text
	.align	16
	#Procedure 0x4032a8
	.globl sub_4032a8
	.type sub_4032a8, @function
sub_4032a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_204
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_206
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_204
.label_206:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_204
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_205
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_205:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_204:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403327
	.globl sub_403327
	.type sub_403327, @function
sub_403327:

	nop	word ptr [rax + rax]
.label_207:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403335
	.globl sub_403335
	.type sub_403335, @function
sub_403335:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403343

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_207
	pop	rcx
	ret	
.label_209:
	mov	edi, 1
	call	_exit
	nop	dword ptr [rax]
.label_208:
	pop	rax
	jmp	close_stdout
	.section	.text
	.align	16
	#Procedure 0x403363

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rax
	mov	al,  byte ptr [byte ptr [rip + stdout_closed]]
	test	al, al
	je	.label_208
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_209
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403380
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40338a
	.globl sub_40338a
	.type sub_40338a, @function
sub_40338a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403390

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
	je	.label_210
	mov	qword ptr [rax], rbx
.label_210:
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
	#Procedure 0x40347c
	.globl sub_40347c
	.type sub_40347c, @function
sub_40347c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403480

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	16
	#Procedure 0x40348d
	.globl sub_40348d
	.type sub_40348d, @function
sub_40348d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403490

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40349a
	.globl sub_40349a
	.type sub_40349a, @function
sub_40349a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034a0
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
	#Procedure 0x4034b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4034b9
	.globl sub_4034b9
	.type sub_4034b9, @function
sub_4034b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4034ca
	.globl sub_4034ca
	.type sub_4034ca, @function
sub_4034ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034d0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x4034d5
	.globl sub_4034d5
	.type sub_4034d5, @function
sub_4034d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034e0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_212:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_212
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_211:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_211
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	#Procedure 0x403872
	.globl sub_403872
	.type sub_403872, @function
sub_403872:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403880
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
	#Procedure 0x40388f
	.globl sub_40388f
	.type sub_40388f, @function
sub_40388f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403890

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403894
	.globl sub_403894
	.type sub_403894, @function
sub_403894:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038a0

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
	#Procedure 0x4038b7
	.globl sub_4038b7
	.type sub_4038b7, @function
sub_4038b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x4038d7
	.globl sub_4038d7
	.type sub_4038d7, @function
sub_4038d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_213:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_213
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403901
	.globl sub_403901
	.type sub_403901, @function
sub_403901:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403910

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_214
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_216
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_215
.label_216:
	call	xalloc_die
.label_217:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403947
	.globl sub_403947
	.type sub_403947, @function
sub_403947:

	nop	dword ptr [rax]
.label_214:
	test	rcx, rcx
	jne	.label_218
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_218:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_217
.label_215:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x403990

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_219
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_219
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_219:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4039b6
	.globl sub_4039b6
	.type sub_4039b6, @function
sub_4039b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4039ca
	.globl sub_4039ca
	.type sub_4039ca, @function
sub_4039ca:

	nop	word ptr [rax + rax]
.label_220:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039d3
	.globl sub_4039d3
	.type sub_4039d3, @function
sub_4039d3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039db
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_220
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039f0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_221
	xor	ecx, ecx
	nop	
.label_222:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_222
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d0c
	.globl sub_403d0c
	.type sub_403d0c, @function
sub_403d0c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d10
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
	.section	.text
	.align	16
	#Procedure 0x403d26
	.globl sub_403d26
	.type sub_403d26, @function
sub_403d26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30

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
	jne	.label_229
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
	je	.label_226
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_223
	mov	eax, OFFSET FLAT:label_224
	jmp	.label_225
.label_226:
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
	je	.label_230
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_227
	mov	eax, OFFSET FLAT:label_228
	jmp	.label_225
.label_230:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_20
	mov	eax, OFFSET FLAT:label_76
.label_225:
	cmove	rax, rcx
.label_229:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ded
	.globl sub_403ded
	.type sub_403ded, @function
sub_403ded:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403df0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dfd
	.globl sub_403dfd
	.type sub_403dfd, @function
sub_403dfd:

	nop	dword ptr [rax]
.label_232:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e04
	.globl sub_403e04
	.type sub_403e04, @function
sub_403e04:

	nop	dword ptr [rax + rax]
.label_231:
	inc	rax
	mov	sil, dl
.label_235:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_231
	test	cl, cl
	je	.label_232
	mov	edx, esi
	and	dl, 1
	je	.label_233
	xor	esi, esi
.label_233:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x403e30

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_234:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_234
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_235
	.section	.text
	.align	16
	#Procedure 0x403e51
	.globl sub_403e51
	.type sub_403e51, @function
sub_403e51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e60

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
	.section	.text
	.align	16
	#Procedure 0x403e99
	.globl sub_403e99
	.type sub_403e99, @function
sub_403e99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	.section	.text
	.align	16
	#Procedure 0x403eb1
	.globl sub_403eb1
	.type sub_403eb1, @function
sub_403eb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ec0
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
	.section	.text
	.align	16
	#Procedure 0x403ed4
	.globl sub_403ed4
	.type sub_403ed4, @function
sub_403ed4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ee8
	.globl sub_403ee8
	.type sub_403ee8, @function
sub_403ee8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ef0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_236
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_236:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f13
	.globl sub_403f13
	.type sub_403f13, @function
sub_403f13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_237
	test	rax, rax
	je	.label_238
.label_237:
	pop	rbx
	ret	
.label_238:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f3a
	.globl sub_403f3a
	.type sub_403f3a, @function
sub_403f3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_239
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_241
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_241
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_242
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_243
.label_241:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_243
.label_239:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_243:
	test	ebx, ebx
	js	.label_242
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_242
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_240
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_242
.label_240:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_242:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404003
	.globl sub_404003
	.type sub_404003, @function
sub_404003:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010

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
	je	.label_245
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_246
	jmp	.label_244
.label_245:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_244
.label_246:
	mov	eax, 1
	test	bpl, bpl
	je	.label_244
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
.label_244:
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
	#Procedure 0x40408d
	.globl sub_40408d
	.type sub_40408d, @function
sub_40408d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404090
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	.section	.text
	.align	16
	#Procedure 0x40409b
	.globl sub_40409b
	.type sub_40409b, @function
sub_40409b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
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

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_248
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_250
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_251
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_247
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_248
.label_247:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_249
.label_250:
	mov	rax, rbx
	jmp	.label_248
.label_251:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_249:
	xor	eax, eax
.label_248:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404136
	.globl sub_404136
	.type sub_404136, @function
sub_404136:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404140

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_254
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_254
	mov	dword ptr [rsp + 0x14], r12d
	mov	qword ptr [rsp + 0x18], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_253
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x18]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x20], rax
	nop	dword ptr [rax]
.label_258:
	test	r14, r14
	je	.label_256
	mov	rbx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_259:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_259
.label_256:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_255
	mov	rax, qword ptr [rsp + 8]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_257
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, qword ptr [rsp + 0x18]
	jbe	.label_258
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_252
.label_254:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_252:
	mov	r12d, 0xffffffff
.label_253:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_255:
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rsp + 0x14]
	mov	dword ptr [rax], ecx
.label_257:
	mov	rbp, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_253
	.section	.text
	.align	16
	#Procedure 0x40429a
	.globl sub_40429a
	.type sub_40429a, @function
sub_40429a:

	nop	word ptr [rax + rax]
.label_261:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_260
	test	cl, cl
	jne	.label_260
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_260:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042cb
	.globl sub_4042cb
	.type sub_4042cb, @function
sub_4042cb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042d5

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
	je	.label_261
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_260
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_260
.label_264:
	xor	eax, eax
	jmp	.label_262
	.section	.text
	.align	16
	#Procedure 0x404314
	.globl sub_404314
	.type sub_404314, @function
sub_404314:

	nop	word ptr cs:[rax + rax]
.label_262:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40431f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_264
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_263]]
	.section	.text
	.align	16
	#Procedure 0x404330

	.globl mkdtemp_len
	.type mkdtemp_len, @function
mkdtemp_len:
	mov	rax, rdx
	movzx	ecx, cl
	inc	ecx
	xor	edx, edx
	mov	r8, rax
	jmp	gen_tempname_len
	.section	.text
	.align	16
	#Procedure 0x404342
	.globl sub_404342
	.type sub_404342, @function
sub_404342:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404354
	.globl sub_404354
	.type sub_404354, @function
sub_404354:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404360

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_265
	jmp	readsource
.label_265:
	add	rdi, 0x18
	jmp	readisaac
	.section	.text
	.align	16
	#Procedure 0x404371
	.globl sub_404371
	.type sub_404371, @function
sub_404371:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_267
	.section	.text
	.align	16
	#Procedure 0x4043af
	.globl sub_4043af
	.type sub_4043af, @function
sub_4043af:

	nop	
.label_266:
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
.label_267:
	sub	r13, rbx
	jne	.label_266
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043f5
	.globl sub_4043f5
	.type sub_4043f5, @function
sub_4043f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404400

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
	.section	.text
	.align	16
	#Procedure 0x40442d
	.globl sub_40442d
	.type sub_40442d, @function
sub_40442d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404430

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
	.section	.text
	.align	16
	#Procedure 0x404443
	.globl sub_404443
	.type sub_404443, @function
sub_404443:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:label_269
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_270
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_270
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_268
.label_270:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_268
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_268
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_268
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_268
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_268:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045e9
	.globl sub_4045e9
	.type sub_4045e9, @function
sub_4045e9:

	nop	dword ptr [rax]
.label_272:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_274
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_273
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x404635

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_276
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_272
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_272
.label_276:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_271
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_274:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_275
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_271:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4046b0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046bd
	.globl sub_4046bd
	.type sub_4046bd, @function
sub_4046bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046c0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046ca
	.globl sub_4046ca
	.type sub_4046ca, @function
sub_4046ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046d0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_286
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_286:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_287
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_282
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_283
	test	esi, esi
	jne	.label_287
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_289
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_280
.label_287:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_279
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_283
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_285
.label_282:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_283:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_290
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_278
.label_290:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_278:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_285:
	cmp	eax, 6
	jne	.label_279
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_288
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_277
.label_279:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_281
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_284
.label_289:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_280:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_288:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_277:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_281:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_284:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404884
	.globl sub_404884
	.type sub_404884, @function
sub_404884:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404890

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_273
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4048c0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_292
	test	rbx, rbx
	je	.label_294
	mov	esi, OFFSET FLAT:label_295
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_293
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_293
.label_292:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_294:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_293:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40496d
	.globl sub_40496d
	.type sub_40496d, @function
sub_40496d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404970

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40499b
	.globl sub_40499b
	.type sub_40499b, @function
sub_40499b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0

	.globl mkstemp_len
	.type mkstemp_len, @function
mkstemp_len:
	mov	rax, rdx
	movzx	ecx, cl
	add	ecx, ecx
	xor	edx, edx
	mov	r8, rax
	jmp	gen_tempname_len
	.section	.text
	.align	16
	#Procedure 0x4049b2
	.globl sub_4049b2
	.type sub_4049b2, @function
sub_4049b2:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049ca
	.globl sub_4049ca
	.type sub_4049ca, @function
sub_4049ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0
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
	.section	.text
	.align	16
	#Procedure 0x404a42
	.globl sub_404a42
	.type sub_404a42, @function
sub_404a42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_297
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_177
	mov	ecx, OFFSET FLAT:label_300
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404ac4
	.globl sub_404ac4
	.type sub_404ac4, @function
sub_404ac4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404aea
	.globl sub_404aea
	.type sub_404aea, @function
sub_404aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404af0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_301
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_301:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b05
	.globl sub_404b05
	.type sub_404b05, @function
sub_404b05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b10
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b1a
	.globl sub_404b1a
	.type sub_404b1a, @function
sub_404b1a:

	nop	word ptr [rax + rax]
.label_306:
	mov	esi, OFFSET FLAT:label_302
.label_304:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_305:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b52
	.globl sub_404b52
	.type sub_404b52, @function
sub_404b52:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b54

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_305
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_306
	mov	esi, OFFSET FLAT:label_303
	jmp	.label_304
.label_307:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b83
	.globl sub_404b83
	.type sub_404b83, @function
sub_404b83:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b85
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_307
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ba0

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
	je	.label_320
	mov	edx, OFFSET FLAT:label_311
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_317
.label_320:
	mov	edx, OFFSET FLAT:label_318
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
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
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_323
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_324]]
.label_515:
	add	rsp, 8
	jmp	.label_310
.label_323:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
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
	jmp	.label_310
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
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
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
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
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
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
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
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
	jmp	.label_310
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
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
	jmp	.label_310
.label_521:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
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
	jmp	.label_310
.label_522:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
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
	jmp	.label_310
.label_524:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
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
	jmp	.label_310
.label_523:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
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
.label_310:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ef8
	.globl sub_404ef8
	.type sub_404ef8, @function
sub_404ef8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 0x10]
	lea	r12, [r13 + 1]
	nop	word ptr cs:[rax + rax]
.label_330:
	cmp	rbx, r13
	jae	.label_327
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_331:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_331
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_329:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_329
.label_327:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_328
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_330
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_332
.label_328:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_332:
	mov	rax, rcx
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
	#Procedure 0x40501c
	.globl sub_40501c
	.type sub_40501c, @function
sub_40501c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405020

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
	je	.label_333
	cmp	r15, -2
	jb	.label_333
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_333
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_333:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405076
	.globl sub_405076
	.type sub_405076, @function
sub_405076:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40508a
	.globl sub_40508a
	.type sub_40508a, @function
sub_40508a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090
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
	#Procedure 0x40509f
	.globl sub_40509f
	.type sub_40509f, @function
sub_40509f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4050a0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_334
	nop	
.label_343:
	mov	edi, OFFSET FLAT:label_176
	call	strcmp
	test	eax, eax
	je	.label_341
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_343
.label_341:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_176
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_177
	mov	ecx, OFFSET FLAT:label_300
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_335
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_335
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_176
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_300
	mov	ecx, OFFSET FLAT:label_176
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_338
	mov	ecx, OFFSET FLAT:label_129
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x4051ba
	.globl sub_4051ba
	.type sub_4051ba, @function
sub_4051ba:

	nop	word ptr [rax + rax]
.label_348:
	mov	edi, OFFSET FLAT:label_344
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_346
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4051d9
	.globl sub_4051d9
	.type sub_4051d9, @function
sub_4051d9:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051df

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_348
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_347]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405200
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	.section	.text
	.align	16
	#Procedure 0x40520b
	.globl sub_40520b
	.type sub_40520b, @function
sub_40520b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_349
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_351:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_351
.label_349:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_352
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_353]], OFFSET FLAT:slot0
.label_352:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_350
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_350:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052a1
	.globl sub_4052a1
	.type sub_4052a1, @function
sub_4052a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_201]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_202]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_203]]
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
	.section	.text
	.align	16
	#Procedure 0x40531d
	.globl sub_40531d
	.type sub_40531d, @function
sub_40531d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405320

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40532d
	.globl sub_40532d
	.type sub_40532d, @function
sub_40532d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405330

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x405337
	.globl sub_405337
	.type sub_405337, @function
sub_405337:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40534a
	.globl sub_40534a
	.type sub_40534a, @function
sub_40534a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405350

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_355
	cmp	byte ptr [rax], 0x43
	jne	.label_357
	cmp	byte ptr [rax + 1], 0
	je	.label_354
.label_357:
	mov	esi, OFFSET FLAT:label_356
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_355
.label_354:
	xor	ebx, ebx
.label_355:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405381
	.globl sub_405381
	.type sub_405381, @function
sub_405381:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405390

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40539b
	.globl sub_40539b
	.type sub_40539b, @function
sub_40539b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_358
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_360
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_360
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_363
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_363:
	mov	rbx, r14
.label_360:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_358:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_359
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405441
	.globl sub_405441
	.type sub_405441, @function
sub_405441:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405450
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_364
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_364:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40546e
	.globl sub_40546e
	.type sub_40546e, @function
sub_40546e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405470
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405478
	.globl sub_405478
	.type sub_405478, @function
sub_405478:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405480

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
	jne	.label_365
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_365
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_366
.label_365:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_366:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_367
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_367:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054ee
	.globl sub_4054ee
	.type sub_4054ee, @function
sub_4054ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4054f0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_368
.label_369:
	ret	
.label_368:
	cmp	edi, 0x7f
	je	.label_369
	xor	eax, eax
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x405501
	.globl sub_405501
	.type sub_405501, @function
sub_405501:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405510

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_370
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_370:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40554a
	.globl sub_40554a
	.type sub_40554a, @function
sub_40554a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550

	.globl count_consecutive_X_s
	.type count_consecutive_X_s, @function
count_consecutive_X_s:
	xor	eax, eax
	test	rsi, rsi
	je	.label_371
	dec	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_372:
	cmp	byte ptr [rsi + rdi], 0x58
	jne	.label_371
	inc	rax
	dec	rdi
	cmp	rsi, rax
	jne	.label_372
.label_371:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405572
	.globl sub_405572
	.type sub_405572, @function
sub_405572:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405580

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	lstat
	test	eax, eax
	je	.label_373
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_374
.label_373:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_374:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055c4
	.globl sub_4055c4
	.type sub_4055c4, @function
sub_4055c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055d0

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
	#Procedure 0x405606
	.globl sub_405606
	.type sub_405606, @function
sub_405606:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405610

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
	je	.label_377
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_375
	jmp	.label_376
.label_377:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_376
.label_375:
	mov	eax, 1
	test	bpl, bpl
	je	.label_376
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
.label_376:
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
	#Procedure 0x405698
	.globl sub_405698
	.type sub_405698, @function
sub_405698:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

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
	je	.label_378
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_380
	jmp	.label_379
.label_378:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_379
.label_380:
	mov	eax, 1
	test	bpl, bpl
	je	.label_379
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
.label_379:
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
	#Procedure 0x405719
	.globl sub_405719
	.type sub_405719, @function
sub_405719:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405720

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
	je	.label_383
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_382
	jmp	.label_381
.label_383:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_381
.label_382:
	mov	eax, 1
	test	bpl, bpl
	je	.label_381
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
.label_381:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405783
	.globl sub_405783
	.type sub_405783, @function
sub_405783:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405790

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
	je	.label_386
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_384
	jmp	.label_385
.label_386:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_385
.label_384:
	mov	eax, 1
	test	bpl, bpl
	je	.label_385
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_385:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057ef
	.globl sub_4057ef
	.type sub_4057ef, @function
sub_4057ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4057f0

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
	je	.label_387
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_389
	jmp	.label_388
.label_387:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_388
.label_389:
	mov	eax, 1
	test	bpl, bpl
	je	.label_388
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_388:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405839
	.globl sub_405839
	.type sub_405839, @function
sub_405839:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405840

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
	je	.label_392
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_391
	jmp	.label_390
.label_392:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_390
.label_391:
	mov	eax, 1
	test	bpl, bpl
	je	.label_390
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_390:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405885
	.globl sub_405885
	.type sub_405885, @function
sub_405885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_394
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_395
	jmp	.label_393
.label_394:
	mov	eax, 1
	test	cl, cl
	je	.label_393
.label_395:
	xor	eax, eax
.label_393:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058bf
	.globl sub_4058bf
	.type sub_4058bf, @function
sub_4058bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4058c0
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
	.section	.text
	.align	16
	#Procedure 0x4058e7
	.globl sub_4058e7
	.type sub_4058e7, @function
sub_4058e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058f0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058ff
	.globl sub_4058ff
	.type sub_4058ff, @function
sub_4058ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405900

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_397:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_396
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_397
.label_396:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405926
	.globl sub_405926
	.type sub_405926, @function
sub_405926:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_400
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_401:
	cmp	r15, 0x800
	jb	.label_398
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_401
	jmp	.label_399
.label_398:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_400:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_399:
	mov	qword ptr [r14], r12
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
	#Procedure 0x4059da
	.globl sub_4059da
	.type sub_4059da, @function
sub_4059da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_403:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_402
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_404
	.section	.text
	.align	16
	#Procedure 0x405a09
	.globl sub_405a09
	.type sub_405a09, @function
sub_405a09:

	nop	dword ptr [rax]
.label_402:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_404:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_405
	inc	r9
	cmp	r9, 0xa
	jb	.label_403
.label_405:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a3f
	.globl sub_405a3f
	.type sub_405a3f, @function
sub_405a3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405a40

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405a4a
	.globl sub_405a4a
	.type sub_405a4a, @function
sub_405a4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a50
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x405a5d
	.globl sub_405a5d
	.type sub_405a5d, @function
sub_405a5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a60
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_407:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_406
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a7b
	.globl sub_405a7b
	.type sub_405a7b, @function
sub_405a7b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a85
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_407
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_407
.label_406:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405aa0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_412
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_408
	cmp	byte ptr [r15], 0x2f
	je	.label_408
	mov	r12b, 0x2f
	jmp	.label_409
.label_412:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_409
.label_408:
	xor	r12d, r12d
.label_409:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_411
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_410
	mov	qword ptr [rax], rbp
.label_410:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_411:
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
	#Procedure 0x405b78
	.globl sub_405b78
	.type sub_405b78, @function
sub_405b78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405b8e
	.globl sub_405b8e
	.type sub_405b8e, @function
sub_405b8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405b90

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
	js	.label_416
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_419
	cmp	r12d, 0x7fffffff
	je	.label_414
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
	jne	.label_417
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_417:
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
.label_419:
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
	jbe	.label_415
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_418
.label_415:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_413
	mov	rdi, r14
	call	free
.label_413:
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
.label_418:
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
.label_416:
	call	abort
.label_414:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405d4d
	.globl sub_405d4d
	.type sub_405d4d, @function
sub_405d4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_420
	test	rsi, rsi
	mov	ecx, 1
	je	.label_421
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_421
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_420:
	mov	ecx, 1
.label_421:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x405d9b
	.globl sub_405d9b
	.type sub_405d9b, @function
sub_405d9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e05
	.globl sub_405e05
	.type sub_405e05, @function
sub_405e05:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e12
	.globl sub_405e12
	.type sub_405e12, @function
sub_405e12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e36
	.globl sub_405e36
	.type sub_405e36, @function
sub_405e36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e49
	.globl sub_405e49
	.type sub_405e49, @function
sub_405e49:

	nop	dword ptr [rax]
