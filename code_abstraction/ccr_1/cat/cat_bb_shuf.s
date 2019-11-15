	.section	.text
	.align	16
	#Procedure 0x401559
	.globl sub_401559
	.type sub_401559, @function
sub_401559:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40155a
	.globl sub_40155a
	.type sub_40155a, @function
sub_40155a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401592
	.globl sub_401592
	.type sub_401592, @function
sub_401592:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015da
	.globl sub_4015da
	.type sub_4015da, @function
sub_4015da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015fc
	.globl sub_4015fc
	.type sub_4015fc, @function
sub_4015fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40160d
	.globl sub_40160d
	.type sub_40160d, @function
sub_40160d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401626
	.globl sub_401626
	.type sub_401626, @function
sub_401626:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401630
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401638
	.globl sub_401638
	.type sub_401638, @function
sub_401638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401640
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	.section	.text
	.align	16
	#Procedure 0x401641
	.globl sub_401641
	.type sub_401641, @function
sub_401641:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_9:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_9
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401671
	.globl sub_401671
	.type sub_401671, @function
sub_401671:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401680

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
.label_80:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_83
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_88]]
.label_443:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_93
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_31
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_444:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_101
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_101
	xor	r14d, r14d
.label_110:
	cmp	r14, r11
	jae	.label_108
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_108:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_110
.label_101:
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
	jmp	.label_11
.label_436:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_11
.label_439:
	mov	al, 1
.label_437:
	mov	r12b, 1
.label_440:
	test	r12b, 1
	mov	cl, 1
	je	.label_18
	mov	ecx, eax
.label_18:
	mov	al, cl
.label_438:
	test	r12b, 1
	jne	.label_21
	test	r11, r11
	je	.label_23
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_23:
	mov	r14d, 1
	jmp	.label_27
.label_21:
	xor	r14d, r14d
.label_27:
	mov	ecx, OFFSET FLAT:label_31
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_11
.label_441:
	test	r12b, 1
	jne	.label_38
	test	r11, r11
	je	.label_41
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_41:
	mov	r14d, 1
	jmp	.label_58
.label_442:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_48
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_11
.label_38:
	xor	r14d, r14d
.label_58:
	mov	eax, OFFSET FLAT:label_48
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_11:
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
	jmp	.label_85
	.section	.text
	.align	16
	#Procedure 0x40195c
	.globl sub_40195c
	.type sub_40195c, @function
sub_40195c:

	nop	dword ptr [rax]
.label_64:
	inc	rsi
.label_85:
	cmp	rbp, -1
	je	.label_95
	cmp	rsi, rbp
	jne	.label_44
	jmp	.label_98
	.section	.text
	.align	16
	#Procedure 0x401973
	.globl sub_401973
	.type sub_401973, @function
sub_401973:

	nop	word ptr cs:[rax + rax]
.label_95:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_98
.label_44:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_103
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_105
	cmp	rbp, -1
	jne	.label_105
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
.label_105:
	cmp	rbx, rbp
	jbe	.label_114
.label_103:
	xor	r8d, r8d
.label_47:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_118
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_121]]
.label_468:
	test	rsi, rsi
	jne	.label_10
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x401a0e
	.globl sub_401a0e
	.type sub_401a0e, @function
sub_401a0e:

	nop	
.label_114:
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
	jne	.label_25
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_47
	jmp	.label_39
.label_25:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_47
.label_472:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_51
	test	rsi, rsi
	jne	.label_52
	cmp	rbp, 1
	je	.label_13
	xor	r13d, r13d
	jmp	.label_16
.label_461:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_57
	cmp	byte ptr [rsp + 7], 0
	jne	.label_12
	cmp	r12d, 2
	jne	.label_61
	mov	eax, r9d
	and	al, 1
	jne	.label_61
	cmp	r14, r11
	jae	.label_65
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_65:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_69
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_69:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_72
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_72:
	add	r14, 3
	mov	r9b, 1
.label_61:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_40
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_40:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_82
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_82
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_82
	cmp	r14, r11
	jae	.label_94
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_94:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_117
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_117:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_16
.label_462:
	mov	bl, 0x62
	jmp	.label_100
.label_463:
	mov	cl, 0x74
	jmp	.label_102
.label_464:
	mov	bl, 0x76
	jmp	.label_100
.label_465:
	mov	bl, 0x66
	jmp	.label_100
.label_466:
	mov	cl, 0x72
	jmp	.label_102
.label_469:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_107
	cmp	byte ptr [rsp + 7], 0
	jne	.label_12
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
	jae	.label_111
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_111:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_123
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_123:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_14
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_14:
	add	r14, 3
	xor	r9d, r9d
.label_107:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_16
.label_470:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_24
	cmp	r12d, 2
	jne	.label_10
	cmp	byte ptr [rsp + 7], 0
	je	.label_10
	jmp	.label_12
.label_471:
	cmp	r12d, 2
	jne	.label_36
	cmp	byte ptr [rsp + 7], 0
	jne	.label_12
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_59
.label_118:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_62
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
.label_29:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_60
	test	r8b, r8b
	je	.label_60
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_16
.label_51:
	test	rsi, rsi
	jne	.label_79
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_79
.label_13:
	mov	dl, 1
.label_467:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_12
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_16:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_89
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_91
	jmp	.label_30
	.section	.text
	.align	16
	#Procedure 0x401d54
	.globl sub_401d54
	.type sub_401d54, @function
sub_401d54:

	nop	word ptr cs:[rax + rax]
.label_89:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_30
.label_91:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_96
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_59
	jmp	.label_106
	.section	.text
	.align	16
	#Procedure 0x401d9d
	.globl sub_401d9d
	.type sub_401d9d, @function
sub_401d9d:

	nop	dword ptr [rax]
.label_30:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_106
	jmp	.label_59
.label_96:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_106
.label_57:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_64
	xor	r15d, r15d
	jmp	.label_10
.label_36:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_102
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_59
.label_102:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_12
.label_100:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_16
	nop	word ptr cs:[rax + rax]
.label_106:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_12
	cmp	r12d, 2
	jne	.label_19
	mov	eax, r9d
	and	al, 1
	jne	.label_19
	cmp	r14, r11
	jae	.label_22
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_22:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_92
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_92:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_33
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_33:
	add	r14, 3
	mov	r9b, 1
.label_19:
	cmp	r14, r11
	jae	.label_37
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_37:
	inc	r14
	jmp	.label_42
.label_62:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_45
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_45:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_46:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_68
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_71
	cmp	rbp, -2
	je	.label_74
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_112
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_81:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_50
	bt	rsi, rdx
	jb	.label_39
.label_50:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_81
.label_112:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_97
	xor	r13d, r13d
.label_97:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_46
	jmp	.label_29
.label_82:
	xor	r13d, r13d
	jmp	.label_16
.label_79:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_16
.label_24:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_10
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_10
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_10
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_119
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_77
	cmp	byte ptr [rsp + 7], 0
	jne	.label_12
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_15
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_15:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_66
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_66:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_26
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_26:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_32
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_32:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_16
.label_10:
	xor	eax, eax
.label_52:
	xor	r13d, r13d
	jmp	.label_16
.label_60:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_43
	.section	.text
	.align	16
	#Procedure 0x402083
	.globl sub_402083
	.type sub_402083, @function
sub_402083:

	nop	word ptr cs:[rax + rax]
.label_109:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_43:
	test	r8b, r8b
	je	.label_53
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_54
	cmp	r14, r11
	jae	.label_55
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_55:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_54
	.section	.text
	.align	16
	#Procedure 0x4020cc
	.globl sub_4020cc
	.type sub_4020cc, @function
sub_4020cc:

	nop	dword ptr [rax]
.label_53:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_39
	cmp	r12d, 2
	jne	.label_67
	mov	eax, r9d
	and	al, 1
	jne	.label_67
	cmp	r14, r11
	jae	.label_70
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_70:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_124
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_124:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_78
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_78:
	add	r14, 3
	mov	r9b, 1
.label_67:
	cmp	r14, r11
	jae	.label_63
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_63:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_86
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_86:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_116
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_116:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_54:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_59
	test	r9b, 1
	je	.label_73
	mov	ebx, eax
	and	bl, 1
	jne	.label_73
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_104
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_104:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_113
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_113:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_73:
	cmp	r14, r11
	jae	.label_109
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_109
	.section	.text
	.align	16
	#Procedure 0x4021d3
	.globl sub_4021d3
	.type sub_4021d3, @function
sub_4021d3:

	nop	word ptr cs:[rax + rax]
.label_59:
	test	r9b, 1
	je	.label_90
	and	al, 1
	jne	.label_90
	cmp	r14, r11
	jae	.label_120
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_120:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_115
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_115:
	add	r14, 2
	xor	r9d, r9d
.label_90:
	mov	ebx, r15d
.label_42:
	cmp	r14, r11
	jae	.label_17
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_17:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_64
.label_71:
	xor	r13d, r13d
.label_68:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_29
.label_74:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_34
	mov	rsi, qword ptr [rsp + 0x50]
.label_49:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_28
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_49
	xor	r13d, r13d
	jmp	.label_29
.label_34:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_29
.label_28:
	xor	r13d, r13d
	jmp	.label_29
.label_119:
	xor	r13d, r13d
	jmp	.label_16
.label_77:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_16
	.section	.text
	.align	16
	#Procedure 0x4022a8
	.globl sub_4022a8
	.type sub_4022a8, @function
sub_4022a8:

	nop	dword ptr [rax + rax]
.label_98:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_56
	or	dl, al
	je	.label_39
.label_56:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_35
	or	dl, al
	jne	.label_35
	test	r10b, 1
	jne	.label_75
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_35
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_80
.label_35:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_84
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_87
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_87
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_99:
	cmp	r14, r11
	jae	.label_122
	mov	byte ptr [rcx + r14], al
.label_122:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_99
	jmp	.label_87
.label_12:
	mov	qword ptr [rsp + 0x20], rbp
.label_39:
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
.label_20:
	mov	r14, rax
.label_76:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_75:
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
	jmp	.label_20
.label_84:
	mov	rcx, qword ptr [rsp + 8]
.label_87:
	cmp	r14, r11
	jae	.label_76
	mov	byte ptr [rcx + r14], 0
	jmp	.label_76
.label_83:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40243c
	.globl sub_40243c
	.type sub_40243c, @function
sub_40243c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402440
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
	#Procedure 0x40244f
	.globl sub_40244f
	.type sub_40244f, @function
sub_40244f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402450
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40245a
	.globl sub_40245a
	.type sub_40245a, @function
sub_40245a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40246a
	.globl sub_40246a
	.type sub_40246a, @function
sub_40246a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402470

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_125
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_126
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402495
	.globl sub_402495
	.type sub_402495, @function
sub_402495:

	nop	word ptr cs:[rax + rax]
.label_130:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_128:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_129
	inc	r9
	cmp	r9, 0xa
	jb	.label_127
.label_129:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024cf
	.globl sub_4024cf
	.type sub_4024cf, @function
sub_4024cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4024d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_127:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_130
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_128
	.section	.text
	.align	16
	#Procedure 0x4024f9
	.globl sub_4024f9
	.type sub_4024f9, @function
sub_4024f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402500

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
	je	.label_131
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_133:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_131
	test	rax, rax
	je	.label_132
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_133
	jmp	.label_131
.label_132:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_131:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40255e
	.globl sub_40255e
	.type sub_40255e, @function
sub_40255e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402560

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_134
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_134:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
	#Procedure 0x4026ad
	.globl sub_4026ad
	.type sub_4026ad, @function
sub_4026ad:

	nop	dword ptr [rax]
.label_144:
	mov	ecx, 1
.label_143:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4026c0
	.globl sub_4026c0
	.type sub_4026c0, @function
sub_4026c0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_144
	test	rsi, rsi
	mov	ecx, 1
	je	.label_143
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_143
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402700

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_145
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_148
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_146
.label_145:
	test	rcx, rcx
	jne	.label_149
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_149:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_147
.label_146:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_148:
	call	xalloc_die
.label_147:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402779
	.globl sub_402779
	.type sub_402779, @function
sub_402779:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402780
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40278a
	.globl sub_40278a
	.type sub_40278a, @function
sub_40278a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402790

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
	je	.label_150
	mov	qword ptr [rax], rbx
.label_150:
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
	#Procedure 0x40287c
	.globl sub_40287c
	.type sub_40287c, @function
sub_40287c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402880

	.globl cat
	.type cat, @function
cat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x20], r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	al, byte ptr [rsp + 0x88]
	mov	cl, byte ptr [rsp + 0x80]
	mov	bl, byte ptr [rsp + 0x98]
	mov	esi,  dword ptr [dword ptr [rip + newlines2]]
	lea	r14, [rdi + 1]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 0x10], rdx
	lea	r13, [rdx + r15]
	xor	bl, 1
	mov	byte ptr [rsp + 0xe], bl
	xor	cl, 1
	mov	byte ptr [rsp + 0xc], cl
	or	al, cl
	mov	byte ptr [rsp + 0xd], al
	mov	dword ptr [rsp + 0x24], r9d
	mov	r12d, r9d
	xor	r12b, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	mov	qword ptr [rsp + 0x28], rdi
	mov	rbp, rdi
	mov	byte ptr [rsp + 0xf], r12b
	jmp	.label_151
	.section	.text
	.align	16
	#Procedure 0x4028ff
	.globl sub_4028ff
	.type sub_4028ff, @function
sub_4028ff:

	nop	
.label_161:
	mov	rbp, rax
	mov	rcx, qword ptr [rsp + 0x28]
	add	rbp, rcx
	mov	byte ptr [rcx + rax], 0xa
	mov	r14, rcx
	mov	rsi, rbx
	jmp	.label_152
	.section	.text
	.align	16
	#Procedure 0x402917
	.globl sub_402917
	.type sub_402917, @function
sub_402917:

	nop	word ptr [rax + rax]
.label_154:
	lea	ebx, [rsi + 1]
	test	esi, esi
	js	.label_162
	sete	al
	mov	esi, 2
	cmovne	ebx, esi
	or	al, byte ptr [rsp + 0xe]
	cmp	al, 1
	jne	.label_152
	cmp	byte ptr [rsp + 0xd], 0
	jne	.label_162
	call	next_line_num
	mov	rdi, qword ptr [rsp]
	mov	rsi,  qword ptr [word ptr [rip + line_num_print]]
	call	stpcpy
	mov	qword ptr [rsp], rax
.label_162:
	mov	esi, ebx
	cmp	byte ptr [rsp + 0x90], 0
	je	.label_173
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x24
.label_173:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0xa
.label_152:
	mov	bl, byte ptr [r14]
	inc	r14
	cmp	bl, 0xa
	je	.label_151
	test	esi, esi
	sets	al
	or	al, byte ptr [rsp + 0xc]
	jne	.label_180
	call	next_line_num
	mov	rdi, qword ptr [rsp]
	mov	rsi,  qword ptr [word ptr [rip + line_num_print]]
	call	stpcpy
	mov	qword ptr [rsp], rax
.label_180:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_166
	jmp	.label_158
	.section	.text
	.align	16
	#Procedure 0x4029c5
	.globl sub_4029c5
	.type sub_4029c5, @function
sub_4029c5:

	nop	word ptr cs:[rax + rax]
.label_165:
	movzx	ebx, byte ptr [r14]
	inc	r14
.label_158:
	cmp	bl, 0x20
	jb	.label_172
	cmp	bl, 0x7e
	jbe	.label_157
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	cmp	bl, 0x7f
	je	.label_176
	mov	byte ptr [rax], 0x4d
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x2d
	cmp	bl, 0xa0
	jb	.label_182
	cmp	bl, 0xff
	je	.label_177
	xor	bl, 0x80
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x402a1b
	.globl sub_402a1b
	.type sub_402a1b, @function
sub_402a1b:

	nop	dword ptr [rax + rax]
.label_172:
	cmp	bl, 9
	jne	.label_159
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	jne	.label_159
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 9
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x402a3e
	.globl sub_402a3e
	.type sub_402a3e, @function
sub_402a3e:

	nop	
.label_159:
	mov	esi, 0xffffffff
	cmp	bl, 0xa
	je	.label_151
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x5e
	add	bl, 0x40
	jmp	.label_157
.label_182:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x5e
	add	bl, 0xc0
	nop	word ptr cs:[rax + rax]
.label_157:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], bl
	jmp	.label_165
.label_177:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
.label_176:
	mov	byte ptr [rax], 0x5e
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x402ab6
	.globl sub_402ab6
	.type sub_402ab6, @function
sub_402ab6:

	nop	word ptr cs:[rax + rax]
.label_163:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], bl
	movzx	ebx, byte ptr [r14]
	inc	r14
.label_166:
	cmp	bl, 9
	setne	al
	or	al, r12b
	je	.label_171
	mov	esi, 0xffffffff
	cmp	bl, 0xa
	jne	.label_163
	jmp	.label_151
	.section	.text
	.align	16
	#Procedure 0x402aec
	.globl sub_402aec
	.type sub_402aec, @function
sub_402aec:

	nop	dword ptr [rax]
.label_171:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x5e
	add	bl, 0x40
	jmp	.label_163
	.section	.text
	.align	16
	#Procedure 0x402b04
	.globl sub_402b04
	.type sub_402b04, @function
sub_402b04:

	nop	word ptr cs:[rax + rax]
.label_151:
	cmp	r13, qword ptr [rsp]
	ja	.label_174
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x40], rbp
	mov	rbx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_168
	add	rbx, r15
	mov	rbp, qword ptr [rsp]
	sub	rbp, rbx
	cmp	rbp, r15
	jae	.label_170
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, rbp
	call	memmove
	add	rbp, r13
	mov	r13, r12
	mov	r12b, byte ptr [rsp + 0xf]
	mov	qword ptr [rsp], rbp
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x38]
.label_174:
	cmp	r14, rbp
	jbe	.label_154
	mov	rbx, rsi
	mov	dword ptr [rsp + 0x1c], 0
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	je	.label_155
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	esi, 0x541b
	xor	eax, eax
	lea	rdx, [rsp + 0x1c]
	call	ioctl
	test	eax, eax
	jns	.label_167
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	dword ptr [rsp + 0x18], 0
	cmp	r14, 0x26
	ja	.label_169
	movabs	rax, 0x4002480000
	bt	rax, r14
	jb	.label_167
.label_169:
	cmp	r14d, 0x5f
	jne	.label_175
	nop	
.label_167:
	cmp	dword ptr [rsp + 0x1c], 0
	jne	.label_179
.label_155:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp]
	call	write_pending
.label_179:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	call	safe_read
	test	rax, rax
	je	.label_160
	cmp	rax, -1
	jne	.label_161
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_164
	xor	eax, eax
	mov	esi, r14d
	call	error
	lea	rsi, [rsp]
	mov	rdi, qword ptr [rsp + 0x10]
	call	write_pending
	jmp	.label_178
.label_160:
	lea	rsi, [rsp]
	mov	rdi, qword ptr [rsp + 0x10]
	call	write_pending
	mov	dword ptr [dword ptr [rip + newlines2]],  ebx
	mov	bpl, 1
	jmp	.label_181
.label_175:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
.label_178:
	mov	dword ptr [dword ptr [rip + newlines2]],  ebx
.label_181:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_168:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
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
	#Procedure 0x402d00
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
	#Procedure 0x402d0f
	.globl sub_402d0f
	.type sub_402d0f, @function
sub_402d0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402d10

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_184:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_183
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_184
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_183
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_184
.label_183:
	mov	rax, rbp
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
	#Procedure 0x402d97
	.globl sub_402d97
	.type sub_402d97, @function
sub_402d97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402da0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402daa
	.globl sub_402daa
	.type sub_402daa, @function
sub_402daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402db0
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
	#Procedure 0x402dc0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x402dc9
	.globl sub_402dc9
	.type sub_402dc9, @function
sub_402dc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402dd0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x402dda
	.globl sub_402dda
	.type sub_402dda, @function
sub_402dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402de0

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
	#Procedure 0x402e0d
	.globl sub_402e0d
	.type sub_402e0d, @function
sub_402e0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e10
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
	#Procedure 0x402e23
	.globl sub_402e23
	.type sub_402e23, @function
sub_402e23:

	nop	word ptr cs:[rax + rax]
.label_186:
	cmp	edi, 0x7f
	je	.label_185
	xor	eax, eax
	jmp	.label_185
	.section	.text
	.align	16
	#Procedure 0x402e39
	.globl sub_402e39
	.type sub_402e39, @function
sub_402e39:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e48
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_186
.label_185:
	ret	
.label_187:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402e55
	.globl sub_402e55
	.type sub_402e55, @function
sub_402e55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e63

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
	je	.label_187
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
	.section	.text
	.align	16
	#Procedure 0x402eb0
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
	#Procedure 0x402ec3
	.globl sub_402ec3
	.type sub_402ec3, @function
sub_402ec3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ed3
	.globl sub_402ed3
	.type sub_402ed3, @function
sub_402ed3:

	nop	word ptr cs:[rax + rax]
.label_190:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_188
.label_189:
	mov	eax, 1
	test	bpl, bpl
	je	.label_188
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
.label_188:
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
	#Procedure 0x402f28
	.globl sub_402f28
	.type sub_402f28, @function
sub_402f28:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f2b

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
	je	.label_190
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_189
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x402f60

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_191
	test	rdx, rdx
	je	.label_191
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_191:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402f8b
	.globl sub_402f8b
	.type sub_402f8b, @function
sub_402f8b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_193
	cmp	byte ptr [rax], 0x43
	jne	.label_195
	cmp	byte ptr [rax + 1], 0
	je	.label_192
.label_195:
	mov	esi, OFFSET FLAT:label_194
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_193
.label_192:
	xor	ebx, ebx
.label_193:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fc1
	.globl sub_402fc1
	.type sub_402fc1, @function
sub_402fc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x402fd9
	.globl sub_402fd9
	.type sub_402fd9, @function
sub_402fd9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402fe0

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
	mov	rax,  qword ptr [word ptr [rip + label_196]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_197]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_198]]
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
	#Procedure 0x403048
	.globl sub_403048
	.type sub_403048, @function
sub_403048:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403050

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_199
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_201
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_199
.label_201:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_199
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_200
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_200:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_199:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4030c7
	.globl sub_4030c7
	.type sub_4030c7, @function
sub_4030c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_202
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_202:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4030f3
	.globl sub_4030f3
	.type sub_4030f3, @function
sub_4030f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403100

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_203
	test	rax, rax
	je	.label_204
.label_203:
	pop	rbx
	ret	
.label_204:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40311a
	.globl sub_40311a
	.type sub_40311a, @function
sub_40311a:

	nop	word ptr [rax + rax]
.label_205:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403125
	.globl sub_403125
	.type sub_403125, @function
sub_403125:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40312f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_205
	call	rpl_calloc
	test	rax, rax
	je	.label_205
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403150
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40315a
	.globl sub_40315a
	.type sub_40315a, @function
sub_40315a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_206
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_208:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_208
.label_206:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_210
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_209]], OFFSET FLAT:slot0
.label_210:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_207
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_207:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031f1
	.globl sub_4031f1
	.type sub_4031f1, @function
sub_4031f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403200
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
	#Procedure 0x40320d
	.globl sub_40320d
	.type sub_40320d, @function
sub_40320d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403210

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_212:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_211
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_212
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_211
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_212
.label_211:
	mov	rax, rbp
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
	#Procedure 0x403297
	.globl sub_403297
	.type sub_403297, @function
sub_403297:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032a0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032aa
	.globl sub_4032aa
	.type sub_4032aa, @function
sub_4032aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_213
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_213
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_213:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4032d6
	.globl sub_4032d6
	.type sub_4032d6, @function
sub_4032d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0
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
	#Procedure 0x4032f9
	.globl sub_4032f9
	.type sub_4032f9, @function
sub_4032f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403300

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40330a
	.globl sub_40330a
	.type sub_40330a, @function
sub_40330a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403310
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40331d
	.globl sub_40331d
	.type sub_40331d, @function
sub_40331d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403320
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	16
	#Procedure 0x403330
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40333a
	.globl sub_40333a
	.type sub_40333a, @function
sub_40333a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403340
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
	#Procedure 0x4033b2
	.globl sub_4033b2
	.type sub_4033b2, @function
sub_4033b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0

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
	mov	rcx,  qword ptr [word ptr [rip + label_196]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_197]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_198]]
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
	#Procedure 0x40342d
	.globl sub_40342d
	.type sub_40342d, @function
sub_40342d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403430

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40343d
	.globl sub_40343d
	.type sub_40343d, @function
sub_40343d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403440

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x403447
	.globl sub_403447
	.type sub_403447, @function
sub_403447:

	nop	word ptr [rax + rax]
.label_215:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_214
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40345b
	.globl sub_40345b
	.type sub_40345b, @function
sub_40345b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403465
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_215
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_215
.label_214:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403480

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
	#Procedure 0x4034b6
	.globl sub_4034b6
	.type sub_4034b6, @function
sub_4034b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0

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
	je	.label_216
	mov	edx, OFFSET FLAT:label_226
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_232
.label_216:
	mov	edx, OFFSET FLAT:label_233
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_232:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
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
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_221
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_222]]
.label_426:
	add	rsp, 8
	jmp	.label_220
.label_221:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
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
	jmp	.label_220
.label_427:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
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
.label_428:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
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
.label_429:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
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
.label_430:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
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
	jmp	.label_220
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
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
	jmp	.label_220
.label_432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_225
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
	jmp	.label_220
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
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
	jmp	.label_220
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
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
	jmp	.label_220
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
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
.label_220:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403818
	.globl sub_403818
	.type sub_403818, @function
sub_403818:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403820

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_164
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_236:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403853
	.globl sub_403853
	.type sub_403853, @function
sub_403853:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403855
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_236
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x403870

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	r14, rsi
	mov	ebp, edi
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_125
	call	setlocale
	mov	edi, OFFSET FLAT:label_264
	mov	esi, OFFSET FLAT:label_265
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_264
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xa8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xb8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	jmp	.label_269
	.section	.text
	.align	16
	#Procedure 0x403905
	.globl sub_403905
	.type sub_403905, @function
sub_403905:

	nop	word ptr cs:[rax + rax]
.label_266:
	mov	al, 1
.label_269:
	mov	qword ptr [rsp + 0xc0], rax
	jmp	.label_240
	.section	.text
	.align	16
	#Procedure 0x40391c
	.globl sub_40391c
	.type sub_40391c, @function
sub_40391c:

	nop	dword ptr [rax]
.label_257:
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
.label_240:
	mov	edx, OFFSET FLAT:label_247
	mov	ecx, OFFSET FLAT:main.long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x40
	jle	.label_251
	add	eax, -0x41
	cmp	eax, 0x35
	ja	.label_253
	jmp	qword ptr [word ptr [+ (rax * 8) + label_256]]
.label_401:
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	al, 1
	mov	qword ptr [rsp + 0xb0], rax
	jmp	.label_257
.label_404:
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_257
.label_405:
	mov	al, 1
	mov	qword ptr [rsp + 0xb8], rax
	jmp	.label_240
.label_406:
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
.label_402:
	mov	al, 1
	mov	qword ptr [rsp + 0xb0], rax
	jmp	.label_240
.label_407:
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_240
	.section	.text
	.align	16
	#Procedure 0x4039a9
	.globl sub_4039a9
	.type sub_4039a9, @function
sub_4039a9:

	nop	dword ptr [rax]
.label_403:
	mov	al, 1
	mov	qword ptr [rsp + 0xe8], rax
	jmp	.label_266
.label_251:
	cmp	eax, -1
	jne	.label_268
	lea	rsi, [rsp + 0x138]
	mov	edi, 1
	call	fstat
	test	eax, eax
	js	.label_270
	lea	rsi, [rsp + 0x138]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	r15, rax
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x130], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp + 0x128], rax
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x150]
	mov	dword ptr [rsp + 0xe4], eax
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0xc0]
	or	al, cl
	sete	bl
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	jne	.label_255
	test	bl, bl
	je	.label_255
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
.label_255:
	mov	qword ptr [word ptr [rip + infile]], OFFSET FLAT:label_254
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0xa0]
	or	al, cl
	mov	rcx, qword ptr [rsp + 0xb8]
	or	al, cl
	sete	al
	and	al, bl
	mov	byte ptr [rsp + 0x97], al
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x100], rcx
	lea	rax, [rax + r15 + 0x12]
	mov	qword ptr [rsp + 0xf8], rax
	movsxd	r13,  dword ptr [dword ptr [rip + optind]]
	movsxd	rbp, ebp
	mov	al, 1
	mov	qword ptr [rsp + 0x98], rax
	lea	rbx, [rsp + 0x138]
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	qword ptr [rsp + 0x110], r14
	mov	qword ptr [rsp + 0x108], r15
	mov	qword ptr [rsp + 0x120], rbp
	nop	word ptr cs:[rax + rax]
.label_238:
	cmp	r13, rbp
	jge	.label_237
	mov	rax, qword ptr [r14 + r13*8]
	mov	qword ptr [word ptr [rip + infile]],  rax
.label_237:
	mov	rax,  qword ptr [word ptr [rip + infile]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_258
	cmp	byte ptr [rax + 1], 0
	je	.label_242
.label_258:
	mov	rdi,  qword ptr [word ptr [rip + infile]]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	dword ptr [dword ptr [rip + input_desc]],  eax
	test	eax, eax
	jns	.label_249
	jmp	.label_250
.label_242:
	mov	dword ptr [dword ptr [rip + input_desc]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0xf0], rax
.label_249:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	rsi, rbx
	call	fstat
	test	eax, eax
	js	.label_259
	mov	ecx, 0x12
	mov	rdi, rsp
	mov	rsi, rbx
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	rbx, rax
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	call	fdadvise
	cmp	dword ptr [rsp + 0xe4], 0x8000
	jne	.label_262
	mov	rax, qword ptr [rsp + 0x130]
	cmp	qword ptr [rsp + 0x138], rax
	jne	.label_262
	mov	rax, qword ptr [rsp + 0x128]
	cmp	qword ptr [rsp + 0x140], rax
	jne	.label_262
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	xor	esi, esi
	mov	edx, 1
	call	lseek
	cmp	rax, qword ptr [rsp + 0x168]
	jge	.label_262
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_246
	.section	.text
	.align	16
	#Procedure 0x403c2d
	.globl sub_403c2d
	.type sub_403c2d, @function
sub_403c2d:

	nop	dword ptr [rax]
.label_262:
	cmp	byte ptr [rsp + 0x97], 0
	je	.label_248
	cmp	rbx, r15
	cmovbe	rbx, r15
	mov	rax, qword ptr [rsp + 0x100]
	lea	rdi, [rax + rbx]
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0xc8]
	call	ptr_align
	mov	rdi, rax
	mov	rsi, rbx
	call	simple_cat
	mov	ebx, eax
	jmp	.label_260
	.section	.text
	.align	16
	#Procedure 0x403c7b
	.globl sub_403c7b
	.type sub_403c7b, @function
sub_403c7b:

	nop	dword ptr [rax + rax]
.label_259:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_164
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_246
.label_248:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	setne	cl
	mov	dword ptr [rsp + 0xd0], ecx
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0xa8]
	test	al, al
	setne	cl
	mov	dword ptr [rsp + 0xd8], ecx
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0xe8]
	test	al, al
	setne	cl
	mov	dword ptr [rsp + 0xd4], ecx
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0xb0]
	test	al, al
	setne	cl
	mov	dword ptr [rsp + 0xe0], ecx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0xa0]
	test	cl, cl
	setne	al
	mov	dword ptr [rsp + 0xdc], eax
	xor	r14d, r14d
	mov	rax, qword ptr [rsp + 0xc0]
	test	al, al
	setne	r14b
	mov	r15, qword ptr [rsp + 0xc8]
	lea	rdi, [rbx + r15]
	call	xmalloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0xf8]
	lea	rdi, [rax + rbx*4]
	call	xmalloc
	mov	r12, rax
	mov	rdi, rbp
	mov	rsi, r15
	call	ptr_align
	mov	qword ptr [rsp + 0x118], rax
	mov	rdi, r12
	mov	rsi, r15
	call	ptr_align
	mov	ecx, dword ptr [rsp + 0xd0]
	mov	dword ptr [rsp + 0x18], ecx
	mov	r15, qword ptr [rsp + 0x108]
	mov	ecx, dword ptr [rsp + 0xd8]
	mov	dword ptr [rsp + 0x10], ecx
	mov	ecx, dword ptr [rsp + 0xd4]
	mov	dword ptr [rsp + 8], ecx
	mov	dword ptr [rsp], r14d
	mov	r14, qword ptr [rsp + 0x110]
	mov	rdi, qword ptr [rsp + 0x118]
	mov	rsi, rbx
	mov	rdx, rax
	mov	rcx, r15
	mov	r8d, dword ptr [rsp + 0xdc]
	mov	r9d, dword ptr [rsp + 0xe0]
	call	cat
	mov	ebx, eax
	mov	rdi, r12
	call	free
.label_260:
	mov	rax, qword ptr [rsp + 0x98]
	and	al, bl
	mov	qword ptr [rsp + 0x98], rax
	mov	rdi, rbp
	call	free
	mov	rbp, qword ptr [rsp + 0x120]
.label_246:
	mov	rax,  qword ptr [word ptr [rip + infile]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_239
	cmp	byte ptr [rax + 1], 0
	je	.label_241
.label_239:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	call	close
	test	eax, eax
	lea	rbx, [rsp + 0x138]
	jns	.label_243
.label_250:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_164
	xor	eax, eax
	mov	esi, ebx
	lea	rbx, [rsp + 0x138]
	call	error
	jmp	.label_243
.label_241:
	lea	rbx, [rsp + 0x138]
	nop	word ptr [rax + rax]
.label_243:
	inc	r13
	cmp	r13, rbp
	jl	.label_238
	mov	rax, qword ptr [rsp + 0xf0]
	test	al, 1
	je	.label_261
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_263
.label_261:
	mov	rax, qword ptr [rsp + 0x98]
	not	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_268:
	cmp	eax, 0xffffff7d
	je	.label_267
	cmp	eax, 0xffffff7e
	jne	.label_253
	xor	edi, edi
	call	usage
.label_267:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_271
	mov	edx, OFFSET FLAT:label_272
	mov	r8d, OFFSET FLAT:label_273
	mov	r9d, OFFSET FLAT:label_274
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_253:
	mov	edi, 1
	call	usage
.label_270:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	jmp	.label_245
.label_263:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
.label_245:
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
	.align	16
	#Procedure 0x403f60

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
	#Procedure 0x403f97
	.globl sub_403f97
	.type sub_403f97, @function
sub_403f97:

	nop	word ptr [rax + rax]
.label_277:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fa1
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_276
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_278]]
.label_276:
	xor	eax, eax
	jmp	.label_277
	.section	.text
	.align	16
	#Procedure 0x403fb6
	.globl sub_403fb6
	.type sub_403fb6, @function
sub_403fb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fc0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_279
	ret	
.label_279:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x403fd3
	.globl sub_403fd3
	.type sub_403fd3, @function
sub_403fd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fe0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_280
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_280:
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
	#Procedure 0x404063
	.globl sub_404063
	.type sub_404063, @function
sub_404063:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070

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
	#Procedure 0x4040b9
	.globl sub_4040b9
	.type sub_4040b9, @function
sub_4040b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040c0
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040c3
	.globl sub_4040c3
	.type sub_4040c3, @function
sub_4040c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4040f2
	.globl sub_4040f2
	.type sub_4040f2, @function
sub_4040f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404100

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x404105
	.globl sub_404105
	.type sub_404105, @function
sub_404105:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404110

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
	jne	.label_286
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
	je	.label_282
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_288
	mov	eax, OFFSET FLAT:label_289
	jmp	.label_285
.label_287:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_48
	mov	eax, OFFSET FLAT:label_31
.label_285:
	cmove	rax, rcx
.label_286:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40418f
	.globl sub_40418f
	.type sub_40418f, @function
sub_40418f:

	nop	dword ptr [rax]
.label_282:
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
	je	.label_287
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_283
	mov	eax, OFFSET FLAT:label_284
	jmp	.label_285
	.section	.text
	.align	16
	#Procedure 0x4041d0

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
	je	.label_292
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_290
	jmp	.label_291
.label_292:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_291
.label_290:
	mov	eax, 1
	test	bpl, bpl
	je	.label_291
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
.label_291:
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
	#Procedure 0x404258
	.globl sub_404258
	.type sub_404258, @function
sub_404258:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260

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
	je	.label_293
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_295
	jmp	.label_294
.label_293:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_294
.label_295:
	mov	eax, 1
	test	bpl, bpl
	je	.label_294
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
.label_294:
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
	#Procedure 0x4042d9
	.globl sub_4042d9
	.type sub_4042d9, @function
sub_4042d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0

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
	je	.label_298
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_297
	jmp	.label_296
.label_298:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_296
.label_297:
	mov	eax, 1
	test	bpl, bpl
	je	.label_296
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
.label_296:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404343
	.globl sub_404343
	.type sub_404343, @function
sub_404343:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350

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
	je	.label_301
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_299
	jmp	.label_300
.label_301:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_300
.label_299:
	mov	eax, 1
	test	bpl, bpl
	je	.label_300
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_300:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043af
	.globl sub_4043af
	.type sub_4043af, @function
sub_4043af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4043b0

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
	je	.label_302
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_304
	jmp	.label_303
.label_302:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_303
.label_304:
	mov	eax, 1
	test	bpl, bpl
	je	.label_303
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_303:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043f9
	.globl sub_4043f9
	.type sub_4043f9, @function
sub_4043f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404400

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
	je	.label_307
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_306
	jmp	.label_305
.label_307:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_305
.label_306:
	mov	eax, 1
	test	bpl, bpl
	je	.label_305
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_305:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404445
	.globl sub_404445
	.type sub_404445, @function
sub_404445:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_310
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_309
	jmp	.label_308
.label_310:
	mov	eax, 1
	test	cl, cl
	je	.label_308
.label_309:
	xor	eax, eax
.label_308:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40447f
	.globl sub_40447f
	.type sub_40447f, @function
sub_40447f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404480

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x404485
	.globl sub_404485
	.type sub_404485, @function
sub_404485:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_311
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_311:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044aa
	.globl sub_4044aa
	.type sub_4044aa, @function
sub_4044aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044ba
	.globl sub_4044ba
	.type sub_4044ba, @function
sub_4044ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044ca
	.globl sub_4044ca
	.type sub_4044ca, @function
sub_4044ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
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
	#Procedure 0x4044f7
	.globl sub_4044f7
	.type sub_4044f7, @function
sub_4044f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404500
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
	#Procedure 0x404533
	.globl sub_404533
	.type sub_404533, @function
sub_404533:

	nop	word ptr cs:[rax + rax]
.label_312:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_164
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_314:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40457c
	.globl sub_40457c
	.type sub_40457c, @function
sub_40457c:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40457d

	.globl simple_cat
	.type simple_cat, @function
simple_cat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	nop	dword ptr [rax]
.label_313:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	rsi, r15
	mov	rdx, r14
	call	safe_read
	mov	rbx, rax
	mov	bpl, 1
	test	rbx, rbx
	je	.label_314
	cmp	rbx, -1
	je	.label_312
	mov	edi, 1
	mov	rsi, r15
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	je	.label_313
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	.section	.text
	.align	16
	#Procedure 0x4045f0
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
	#Procedure 0x404606
	.globl sub_404606
	.type sub_404606, @function
sub_404606:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404610

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
	je	.label_316
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_315
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_315
.label_316:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_315
	test	cl, cl
	jne	.label_315
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_315:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404676
	.globl sub_404676
	.type sub_404676, @function
sub_404676:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404680
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40468a
	.globl sub_40468a
	.type sub_40468a, @function
sub_40468a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690

	.globl write_pending
	.type write_pending, @function
write_pending:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14]
	sub	rbx, r15
	je	.label_317
	mov	edi, 1
	mov	rsi, r15
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	jne	.label_318
	mov	qword ptr [r14], r15
.label_317:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_318:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
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
	.align	16
	#Procedure 0x4046f0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046f3
	.globl sub_4046f3
	.type sub_4046f3, @function
sub_4046f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404700

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	.section	.text
	.align	16
	#Procedure 0x404705
	.globl sub_404705
	.type sub_404705, @function
sub_404705:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404710

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
	#Procedure 0x404749
	.globl sub_404749
	.type sub_404749, @function
sub_404749:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404750

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
	#Procedure 0x404761
	.globl sub_404761
	.type sub_404761, @function
sub_404761:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404770
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
	#Procedure 0x404784
	.globl sub_404784
	.type sub_404784, @function
sub_404784:

	nop	word ptr cs:[rax + rax]
.label_319:
	mov	eax, 0x20000
	ret	
	.section	.text
	.align	16
	#Procedure 0x404796
	.globl sub_404796
	.type sub_404796, @function
sub_404796:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a5

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	setle	al
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	jl	.label_319
	or	al, dl
	jne	.label_319
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_322
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_321
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_321
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_324
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_324:
	mov	rbx, r14
.label_321:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_322:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_323
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404891
	.globl sub_404891
	.type sub_404891, @function
sub_404891:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048a0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_326
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_326:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048b8
	.globl sub_4048b8
	.type sub_4048b8, @function
sub_4048b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0

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
	jne	.label_327
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_327
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_328
.label_327:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_328:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_329
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_329:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40492e
	.globl sub_40492e
	.type sub_40492e, @function
sub_40492e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404930

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
	#Procedure 0x404947
	.globl sub_404947
	.type sub_404947, @function
sub_404947:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x404958
	.globl sub_404958
	.type sub_404958, @function
sub_404958:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404960

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
	je	.label_330
	cmp	r15, -2
	jb	.label_330
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_330
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_330:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049b6
	.globl sub_4049b6
	.type sub_4049b6, @function
sub_4049b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_331
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_331:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049de
	.globl sub_4049de
	.type sub_4049de, @function
sub_4049de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4049e0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_332
	nop	
.label_342:
	mov	edi, OFFSET FLAT:label_271
	call	strcmp
	test	eax, eax
	je	.label_340
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_342
.label_340:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_271
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_272
	mov	ecx, OFFSET FLAT:label_335
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_334
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_334
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_334:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_271
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_335
	mov	ecx, OFFSET FLAT:label_271
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_338
	mov	ecx, OFFSET FLAT:label_125
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
	#Procedure 0x404afa
	.globl sub_404afa
	.type sub_404afa, @function
sub_404afa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b00

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b14
	.globl sub_404b14
	.type sub_404b14, @function
sub_404b14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_344
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_272
	mov	ecx, OFFSET FLAT:label_335
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404b94
	.globl sub_404b94
	.type sub_404b94, @function
sub_404b94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0
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
	#Procedure 0x404bad
	.globl sub_404bad
	.type sub_404bad, @function
sub_404bad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0

	.globl next_line_num
	.type next_line_num, @function
next_line_num:
	mov	rsi,  qword ptr [word ptr [rip + line_num_start]]
	mov	ecx, OFFSET FLAT:label_347
	nop	dword ptr [rax]
.label_351:
	movzx	eax, byte ptr [rcx]
	mov	edx, eax
	inc	dl
	mov	byte ptr [rcx], dl
	cmp	al, 0x39
	jl	.label_348
	mov	byte ptr [rcx], 0x30
	dec	rcx
	cmp	rcx, rsi
	jae	.label_351
	mov	eax, OFFSET FLAT:line_buf
	cmp	rsi, rax
	jbe	.label_350
	lea	rax, [rsi - 1]
	mov	qword ptr [word ptr [rip + line_num_start]],  rax
	mov	byte ptr [rsi - 1], 0x31
	jmp	.label_349
.label_350:
	mov	byte ptr [byte ptr [rip + line_buf]],  0x3e
.label_349:
	mov	rax,  qword ptr [word ptr [rip + line_num_print]]
	cmp	qword ptr [word ptr [rip + line_num_start]],  rax
	jae	.label_348
	dec	rax
	mov	qword ptr [word ptr [rip + line_num_print]],  rax
.label_348:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c15
	.globl sub_404c15
	.type sub_404c15, @function
sub_404c15:

	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_352:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_353
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_352
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_164
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x404c99

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_354
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_355
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_355
.label_354:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_356
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_356:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x404ce0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_357
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_357:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404d06
	.globl sub_404d06
	.type sub_404d06, @function
sub_404d06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_358
	test	rbx, rbx
	jne	.label_358
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_358:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_360
	test	rax, rax
	je	.label_359
.label_360:
	pop	rbx
	ret	
.label_359:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404d40

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404d4e
	.globl sub_404d4e
	.type sub_404d4e, @function
sub_404d4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404d50

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
	js	.label_364
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_367
	cmp	r12d, 0x7fffffff
	je	.label_362
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
	jne	.label_365
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_365:
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
.label_367:
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
	jbe	.label_363
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_366
.label_363:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_361
	mov	rdi, r14
	call	free
.label_361:
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
.label_366:
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
.label_364:
	call	abort
.label_362:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404f0d
	.globl sub_404f0d
	.type sub_404f0d, @function
sub_404f0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f10
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
	#Procedure 0x404f1f
	.globl sub_404f1f
	.type sub_404f1f, @function
sub_404f1f:

	nop
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f92
	.globl sub_404f92
	.type sub_404f92, @function
sub_404f92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb6
	.globl sub_404fb6
	.type sub_404fb6, @function
sub_404fb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc9
	.globl sub_404fc9
	.type sub_404fc9, @function
sub_404fc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404fd0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
