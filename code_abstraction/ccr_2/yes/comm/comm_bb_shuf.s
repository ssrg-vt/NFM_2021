	.section	.text
	.align	16
	#Procedure 0x4014f9
	.globl sub_4014f9
	.type sub_4014f9, @function
sub_4014f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4014fa
	.globl sub_4014fa
	.type sub_4014fa, @function
sub_4014fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401532
	.globl sub_401532
	.type sub_401532, @function
sub_401532:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40157a
	.globl sub_40157a
	.type sub_40157a, @function
sub_40157a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40159c
	.globl sub_40159c
	.type sub_40159c, @function
sub_40159c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015ad
	.globl sub_4015ad
	.type sub_4015ad, @function
sub_4015ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015c6
	.globl sub_4015c6
	.type sub_4015c6, @function
sub_4015c6:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4015d5
	.globl sub_4015d5
	.type sub_4015d5, @function
sub_4015d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015df
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
	je	.label_10
	test	r14, r14
	je	.label_9
.label_10:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401610
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
	#Procedure 0x4016d1
	.globl sub_4016d1
	.type sub_4016d1, @function
sub_4016d1:

	nop	word ptr cs:[rax + rax]
.label_12:
	mov	ecx, 1
.label_11:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4016f0
	.globl sub_4016f0
	.type sub_4016f0, @function
sub_4016f0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016f5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_12
	test	rsi, rsi
	mov	ecx, 1
	je	.label_11
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_11
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401730

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_13
	test	rax, rax
	je	.label_14
.label_13:
	pop	rbx
	ret	
.label_14:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40174a
	.globl sub_40174a
	.type sub_40174a, @function
sub_40174a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401750
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x401755
	.globl sub_401755
	.type sub_401755, @function
sub_401755:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401760
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401771
	.globl sub_401771
	.type sub_401771, @function
sub_401771:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401780
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x401789
	.globl sub_401789
	.type sub_401789, @function
sub_401789:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401790

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
.label_35:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_33
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_39]
.label_480:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_45
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_50
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_481:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_36
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_36
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_76:
	cmp	r14, r11
	jae	.label_77
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_77:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_76
.label_36:
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
	jmp	.label_91
.label_473:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_91
.label_476:
	mov	al, 1
.label_474:
	mov	r12b, 1
.label_477:
	test	r12b, 1
	mov	cl, 1
	je	.label_94
	mov	ecx, eax
.label_94:
	mov	al, cl
.label_475:
	test	r12b, 1
	jne	.label_96
	test	r11, r11
	je	.label_97
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_97:
	mov	r14d, 1
	jmp	.label_99
.label_96:
	xor	r14d, r14d
.label_99:
	mov	ecx, OFFSET FLAT:label_50
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_91
.label_478:
	test	r12b, 1
	jne	.label_114
	test	r11, r11
	je	.label_117
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_117:
	mov	r14d, 1
	jmp	.label_119
.label_479:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_121
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_91
.label_114:
	xor	r14d, r14d
.label_119:
	mov	eax, OFFSET FLAT:label_121
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_91:
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
	jmp	.label_135
	.section	.text
	.align	16
	#Procedure 0x401a7d
	.globl sub_401a7d
	.type sub_401a7d, @function
sub_401a7d:

	nop	dword ptr [rax]
.label_79:
	inc	rsi
.label_135:
	cmp	rbp, -1
	je	.label_53
	cmp	rsi, rbp
	jne	.label_54
	jmp	.label_55
	.section	.text
	.align	16
	#Procedure 0x401a93
	.globl sub_401a93
	.type sub_401a93, @function
sub_401a93:

	nop	word ptr cs:[rax + rax]
.label_53:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_60
.label_54:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_64
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_40
	cmp	rbp, -1
	jne	.label_40
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
.label_40:
	cmp	rbx, rbp
	jbe	.label_85
.label_64:
	xor	r8d, r8d
.label_107:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_87
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_90]
.label_443:
	test	rsi, rsi
	jne	.label_25
	jmp	.label_93
	.section	.text
	.align	16
	#Procedure 0x401b35
	.globl sub_401b35
	.type sub_401b35, @function
sub_401b35:

	nop	word ptr cs:[rax + rax]
.label_85:
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
	jne	.label_103
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_107
	jmp	.label_16
.label_103:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_107
.label_447:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_48
	test	rsi, rsi
	jne	.label_127
	cmp	rbp, 1
	je	.label_93
	xor	r13d, r13d
	jmp	.label_32
.label_436:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_133
	cmp	byte ptr [rsp + 6], 0
	jne	.label_113
	cmp	r12d, 2
	jne	.label_15
	mov	eax, r9d
	and	al, 1
	jne	.label_15
	cmp	r14, r11
	jae	.label_17
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_17:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_21
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_21:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_81
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_81:
	add	r14, 3
	mov	r9b, 1
.label_15:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_37
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_37:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_41
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_41
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_41
	cmp	r14, r11
	jae	.label_88
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_88:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_84
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_84:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_32
.label_437:
	mov	bl, 0x62
	jmp	.label_27
.label_438:
	mov	cl, 0x74
	jmp	.label_67
.label_439:
	mov	bl, 0x76
	jmp	.label_27
.label_440:
	mov	bl, 0x66
	jmp	.label_27
.label_441:
	mov	cl, 0x72
	jmp	.label_67
.label_444:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_74
	cmp	byte ptr [rsp + 6], 0
	jne	.label_43
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
	jae	.label_82
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_82:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_92
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_92:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_95
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_95:
	add	r14, 3
	xor	r9d, r9d
.label_74:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_32
.label_445:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_101
	cmp	r12d, 2
	jne	.label_25
	cmp	byte ptr [rsp + 6], 0
	je	.label_25
	jmp	.label_43
.label_446:
	cmp	r12d, 2
	jne	.label_115
	cmp	byte ptr [rsp + 6], 0
	jne	.label_43
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_65
.label_87:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_124
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
.label_73:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_29
	test	r8b, r8b
	je	.label_29
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_32
.label_48:
	test	rsi, rsi
	jne	.label_116
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_116
.label_93:
	mov	dl, 1
.label_442:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_43
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_32:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_49
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_72
	jmp	.label_52
	.section	.text
	.align	16
	#Procedure 0x401e84
	.globl sub_401e84
	.type sub_401e84, @function
sub_401e84:

	nop	word ptr cs:[rax + rax]
.label_49:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_52
.label_72:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_57
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_65
	jmp	.label_71
	.section	.text
	.align	16
	#Procedure 0x401ecd
	.globl sub_401ecd
	.type sub_401ecd, @function
sub_401ecd:

	nop	dword ptr [rax]
.label_52:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_71
	jmp	.label_65
.label_57:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_71
.label_133:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_79
	xor	r15d, r15d
	jmp	.label_25
.label_115:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_67
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_65
.label_67:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_43
.label_27:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_32
	nop	word ptr cs:[rax + rax]
.label_71:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_113
	cmp	r12d, 2
	jne	.label_98
	mov	eax, r9d
	and	al, 1
	jne	.label_98
	cmp	r14, r11
	jae	.label_20
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_20:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_105
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_105:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_75
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_75:
	add	r14, 3
	mov	r9b, 1
.label_98:
	cmp	r14, r11
	jae	.label_118
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_118:
	inc	r14
	jmp	.label_122
.label_124:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_125
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_125:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_26:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_19
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_24
	cmp	rbp, -2
	je	.label_31
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_104
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_126:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_61
	bt	rsi, rdx
	jb	.label_51
.label_61:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_126
.label_104:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_109
	xor	r13d, r13d
.label_109:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_26
	jmp	.label_73
.label_41:
	xor	r13d, r13d
	jmp	.label_32
.label_116:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_32
.label_101:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_25
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_25
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_25
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_46
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_69
	cmp	byte ptr [rsp + 6], 0
	jne	.label_100
	cmp	r14, r11
	jae	.label_62
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_62:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_131
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_131:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_102
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_102:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_68
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_68:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_32
.label_25:
	xor	eax, eax
.label_127:
	xor	r13d, r13d
	jmp	.label_32
.label_29:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_123
	.section	.text
	.align	16
	#Procedure 0x4021b2
	.globl sub_4021b2
	.type sub_4021b2, @function
sub_4021b2:

	nop	word ptr cs:[rax + rax]
.label_80:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_123:
	test	r8b, r8b
	je	.label_128
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_129
	cmp	r14, r11
	jae	.label_130
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_130:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_129
	.section	.text
	.align	16
	#Procedure 0x4021fc
	.globl sub_4021fc
	.type sub_4021fc, @function
sub_4021fc:

	nop	dword ptr [rax]
.label_128:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_16
	cmp	r12d, 2
	jne	.label_18
	mov	eax, r9d
	and	al, 1
	jne	.label_18
	cmp	r14, r11
	jae	.label_23
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_23:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_42
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_42:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_34
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_34:
	add	r14, 3
	mov	r9b, 1
.label_18:
	cmp	r14, r11
	jae	.label_134
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_134:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_38
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_38:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_78
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_78:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_129:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_65
	test	r9b, 1
	je	.label_66
	mov	ebx, eax
	and	bl, 1
	jne	.label_66
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_70
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_70:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_111
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_111:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_66:
	cmp	r14, r11
	jae	.label_80
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_80
	.section	.text
	.align	16
	#Procedure 0x402303
	.globl sub_402303
	.type sub_402303, @function
sub_402303:

	nop	word ptr cs:[rax + rax]
.label_65:
	test	r9b, 1
	je	.label_89
	and	al, 1
	jne	.label_89
	cmp	r14, r11
	jae	.label_59
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_59:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_83
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_83:
	add	r14, 2
	xor	r9d, r9d
.label_89:
	mov	ebx, r15d
.label_122:
	cmp	r14, r11
	jae	.label_22
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_22:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_79
.label_24:
	xor	r13d, r13d
.label_19:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_73
.label_31:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_110
	mov	rsi, qword ptr [rsp + 0x58]
.label_120:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_112
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_120
	xor	r13d, r13d
	jmp	.label_73
.label_110:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_73
.label_112:
	xor	r13d, r13d
	jmp	.label_73
.label_46:
	xor	r13d, r13d
	jmp	.label_32
.label_69:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_32
	.section	.text
	.align	16
	#Procedure 0x4023d8
	.globl sub_4023d8
	.type sub_4023d8, @function
sub_4023d8:

	nop	dword ptr [rax + rax]
.label_55:
	mov	rcx, rsi
.label_60:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_132
	or	al, dl
	je	.label_136
.label_132:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_28
	or	al, dl
	jne	.label_28
	test	r10b, 1
	jne	.label_30
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_28
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_35
.label_28:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_44
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_47
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_47
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_58:
	cmp	r14, r11
	jae	.label_56
	mov	byte ptr [rcx + r14], al
.label_56:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_58
	jmp	.label_47
.label_113:
	mov	qword ptr [rsp + 0x20], rbp
.label_16:
	mov	rdx, rdi
	jmp	.label_63
.label_43:
	mov	qword ptr [rsp + 0x20], rbp
.label_51:
	mov	rdx, rdi
	mov	eax, 2
.label_86:
	mov	qword ptr [rsp + 0x38], rax
.label_63:
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
.label_106:
	mov	r14, rax
.label_108:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_136:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_63
.label_30:
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
	jmp	.label_106
.label_44:
	mov	rcx, qword ptr [rsp + 8]
.label_47:
	cmp	r14, r11
	jae	.label_108
	mov	byte ptr [rcx + r14], 0
	jmp	.label_108
.label_100:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_86
.label_33:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402597
	.globl sub_402597
	.type sub_402597, @function
sub_402597:

	nop	word ptr [rax + rax]
.label_139:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_137
	test	rax, rax
	je	.label_138
.label_137:
	pop	rbx
	ret	
.label_138:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025b9
	.globl sub_4025b9
	.type sub_4025b9, @function
sub_4025b9:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025c1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_138
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_139
	test	rbx, rbx
	jne	.label_139
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025f0

	.globl memcmp2
	.type memcmp2, @function
memcmp2:
	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rsi
	cmp	rbx, r14
	mov	rax, r14
	cmovbe	rax, rbx
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	jne	.label_140
	mov	eax, 0xffffffff
	cmp	rbx, r14
	jb	.label_140
	cmp	r14, rbx
	sbb	eax, eax
	and	eax, 1
.label_140:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40262d
	.globl sub_40262d
	.type sub_40262d, @function
sub_40262d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402630
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
	#Procedure 0x402649
	.globl sub_402649
	.type sub_402649, @function
sub_402649:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402650

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
	#Procedure 0x402669
	.globl sub_402669
	.type sub_402669, @function
sub_402669:

	nop	dword ptr [rax]
.label_142:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_141
	call	__errno_location
	mov	dword ptr [rax], 0
.label_141:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40268b

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
	jne	.label_142
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_141
	test	cl, cl
	jne	.label_141
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_141
	.section	.text
	.align	16
	#Procedure 0x4026d0
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
	#Procedure 0x402703
	.globl sub_402703
	.type sub_402703, @function
sub_402703:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402710
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_144
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_147
	mov	ecx, OFFSET FLAT:label_148
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402784
	.globl sub_402784
	.type sub_402784, @function
sub_402784:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402790

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
	jne	.label_153
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_157
	cmp	ecx, 0x55
	jne	.label_149
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_149
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_149
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_149
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_149
	cmp	byte ptr [rax + 5], 0
	jne	.label_149
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_155
	mov	eax, OFFSET FLAT:label_156
	jmp	.label_152
.label_157:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_149
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_149
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_149
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_149
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_149
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_149
	cmp	byte ptr [rax + 7], 0
	je	.label_154
.label_149:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_121
	mov	eax, OFFSET FLAT:label_50
.label_152:
	cmove	rax, rcx
.label_153:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_154:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_150
	mov	eax, OFFSET FLAT:label_151
	jmp	.label_152
	.section	.text
	.align	16
	#Procedure 0x402855
	.globl sub_402855
	.type sub_402855, @function
sub_402855:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_158:
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
	ja	.label_158
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028ab
	.globl sub_4028ab
	.type sub_4028ab, @function
sub_4028ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028b0

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
	je	.label_159
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
.label_159:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402918
	.globl sub_402918
	.type sub_402918, @function
sub_402918:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402920
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_160
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_161
	test	rax, rax
	je	.label_160
.label_161:
	pop	rbx
	ret	
.label_160:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402955
	.globl sub_402955
	.type sub_402955, @function
sub_402955:

	nop	word ptr cs:[rax + rax]
.label_162:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402965
	.globl sub_402965
	.type sub_402965, @function
sub_402965:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40296b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_163]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_164]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_162
	test	rdx, rdx
	je	.label_162
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
	#Procedure 0x4029d0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x4029de
	.globl sub_4029de
	.type sub_4029de, @function
sub_4029de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4029e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_163]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_164]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_165]
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
	#Procedure 0x402a34
	.globl sub_402a34
	.type sub_402a34, @function
sub_402a34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1b8
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_191
	call	setlocale
	mov	edi, OFFSET FLAT:label_208
	mov	esi, OFFSET FLAT:label_209
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_208
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + only_file_1],  1
	mov	byte ptr [rip + only_file_2],  1
	mov	byte ptr [rip + both],  1
	mov	byte ptr [rip + seen_unpairable],  0
	mov	byte ptr [rip + label_226],  0
	mov	byte ptr [rip + issued_disorder_warning],  0
	mov	dword ptr [rip + check_input_order],  0
	mov	byte ptr [rip + total_option],  0
	jmp	.label_176
	.section	.text
	.align	16
	#Procedure 0x402ade
	.globl sub_402ade
	.type sub_402ade, @function
sub_402ade:

	nop	
.label_248:
	mov	byte ptr [rip + only_file_1],  0
.label_176:
	mov	edx, OFFSET FLAT:label_246
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x31
	jle	.label_251
	lea	ecx, [rax - 0x7a]
	cmp	ecx, 9
	ja	.label_168
	jmp	qword ptr [(rcx * 8) + label_171]
.label_513:
	mov	byte ptr [rip + delim],  1
	jmp	.label_176
	.section	.text
	.align	16
	#Procedure 0x402b1c
	.globl sub_402b1c
	.type sub_402b1c, @function
sub_402b1c:

	nop	dword ptr [rax]
.label_251:
	cmp	eax, 0x30
	jle	.label_180
	jmp	.label_248
.label_168:
	cmp	eax, 0x32
	je	.label_185
	cmp	eax, 0x33
	jne	.label_188
	mov	byte ptr [rip + both],  0
	jmp	.label_176
.label_514:
	mov	dword ptr [rip + check_input_order],  1
	jmp	.label_176
.label_515:
	mov	dword ptr [rip + check_input_order],  2
	jmp	.label_176
.label_516:
	cmp	qword ptr [rip + col_sep_len],  0
	je	.label_199
	mov	rdi, qword ptr [rip + col_sep]
	mov	rbx, qword ptr [rip + optarg]
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_213
	jmp	.label_214
.label_517:
	mov	byte ptr [rip + total_option],  1
	jmp	.label_176
.label_185:
	mov	byte ptr [rip + only_file_2],  0
	jmp	.label_176
.label_199:
	mov	rbx, qword ptr [rip + optarg]
.label_213:
	mov	qword ptr [rip + col_sep],  rbx
	cmp	byte ptr [rbx], 0
	mov	eax, 1
	je	.label_227
	mov	rdi, rbx
	call	strlen
.label_227:
	mov	qword ptr [rip + col_sep_len],  rax
	jmp	.label_176
.label_180:
	cmp	eax, -1
	jne	.label_236
	cmp	qword ptr [rip + col_sep_len],  0
	jne	.label_237
	mov	qword ptr [rip + col_sep_len],  1
.label_237:
	movsxd	r12, dword ptr [rip + optind]
	mov	eax, r14d
	sub	eax, r12d
	cmp	eax, 1
	jle	.label_245
	cmp	eax, 2
	jne	.label_250
	lea	rbx, [rsp + 0xf0]
	mov	rdi, rbx
	call	initbuffer
	mov	qword ptr [rsp + 0x50], rbx
	lea	rbx, [rsp + 0x108]
	mov	rdi, rbx
	call	initbuffer
	mov	qword ptr [rsp + 0x58], rbx
	lea	rbx, [rsp + 0x120]
	mov	rdi, rbx
	call	initbuffer
	mov	qword ptr [rsp + 0x60], rbx
	lea	rbx, [rsp + 0x138]
	mov	rdi, rbx
	call	initbuffer
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, qword ptr [r15 + r12*8]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_197
	cmp	byte ptr [rdi + 1], 0
	je	.label_203
.label_197:
	mov	esi, OFFSET FLAT:label_181
	call	fopen_safer
	mov	r13, rax
.label_167:
	lea	r14, [r15 + r12*8]
	test	r13, r13
	je	.label_238
	mov	esi, 2
	mov	rdi, r13
	call	fadvise
	mov	al, byte ptr [rip + delim]
	test	al, al
	jne	.label_222
	mov	al, 0xa
	jmp	.label_225
.label_222:
	xor	eax, eax
.label_225:
	movzx	edx, al
	lea	rdi, [rsp + 0xf0]
	mov	rsi, r13
	call	readlinebuffer_delim
	mov	rbx, rax
	test	byte ptr [r13], 0x20
	jne	.label_231
	lea	r15, [rsp + 0x150]
	mov	rdi, r15
	call	initbuffer
	mov	qword ptr [rsp + 0x70], r15
	lea	rbp, [rsp + 0x168]
	mov	rdi, rbp
	call	initbuffer
	mov	qword ptr [rsp + 0x78], rbp
	lea	rbp, [rsp + 0x180]
	mov	rdi, rbp
	call	initbuffer
	mov	qword ptr [rsp + 0x80], rbp
	lea	rbp, [rsp + 0x198]
	mov	rdi, rbp
	call	initbuffer
	mov	qword ptr [rsp + 0x88], rbp
	mov	rdi, qword ptr [r14 + 8]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_215
	cmp	byte ptr [rdi + 1], 0
	je	.label_183
.label_215:
	mov	esi, OFFSET FLAT:label_181
	call	fopen_safer
	mov	rbp, rax
.label_172:
	lea	r12, [r14 + 8]
	test	rbp, rbp
	je	.label_193
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	al, byte ptr [rip + delim]
	test	al, al
	mov	qword ptr [rsp + 0x40], r13
	jne	.label_198
	mov	al, 0xa
	jmp	.label_205
.label_198:
	xor	eax, eax
.label_205:
	mov	qword ptr [rsp + 0x48], r14
	movzx	edx, al
	mov	rdi, r15
	mov	rsi, rbp
	call	readlinebuffer_delim
	mov	r15, rax
	mov	qword ptr [rsp + 0x38], rbp
	test	byte ptr [rbp], 0x20
	jne	.label_228
	xor	r14d, r14d
	mov	rax, rbx
	or	rax, r15
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	je	.label_210
	mov	dword ptr [rsp + 0x10], 0
	mov	ebp, 0
	mov	dword ptr [rsp + 0xc], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_184
.label_221:
	mov	eax, ebp
	mov	dword ptr [rsp + 0xc], eax
	mov	ebp, r14d
	mov	eax, dword ptr [rsp + 0x10]
	mov	r14d, eax
	jmp	.label_247
.label_190:
	mov	al, cl
	jmp	.label_192
	.section	.text
	.align	16
	#Procedure 0x402e03
	.globl sub_402e03
	.type sub_402e03, @function
sub_402e03:

	nop	word ptr cs:[rax + rax]
.label_184:
	test	rbx, rbx
	je	.label_175
	test	r15, r15
	je	.label_224
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_182
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	dec	rsi
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	dec	rcx
	call	xmemcoll
.label_192:
	test	eax, eax
	jne	.label_232
	mov	rax, qword ptr [rsp + 0x18]
	inc	rax
	mov	bl, 1
	cmp	byte ptr [rip + both],  1
	mov	qword ptr [rsp + 0x18], rax
	jne	.label_239
	mov	r12, qword ptr [rip + stdout]
	cmp	byte ptr [rip + only_file_1],  1
	jne	.label_223
	mov	rdi, qword ptr [rip + col_sep]
	mov	rdx, qword ptr [rip + col_sep_len]
	mov	esi, 1
	mov	rcx, r12
	call	fwrite_unlocked
.label_223:
	cmp	byte ptr [rip + only_file_2],  1
	jne	.label_206
	mov	rdi, qword ptr [rip + col_sep]
	mov	rdx, qword ptr [rip + col_sep_len]
	mov	esi, 1
	mov	rcx, r12
	call	fwrite_unlocked
.label_206:
	mov	rdx, qword ptr [r15 + 8]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	rcx, r12
	call	fwrite_unlocked
	jmp	.label_239
	.section	.text
	.align	16
	#Procedure 0x402ed7
	.globl sub_402ed7
	.type sub_402ed7, @function
sub_402ed7:

	nop	word ptr [rax + rax]
.label_175:
	mov	byte ptr [rip + seen_unpairable],  1
	jmp	.label_194
.label_182:
	mov	r12, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r13, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	cmp	r12, r13
	mov	rdx, r13
	cmovb	rdx, r12
	dec	rdx
	call	memcmp
	test	eax, eax
	je	.label_170
.label_232:
	mov	byte ptr [rip + seen_unpairable],  1
	test	eax, eax
	jle	.label_174
.label_194:
	mov	qword ptr [rsp + 0x20], rbx
	inc	qword ptr [rsp + 0x30]
	cmp	byte ptr [rip + only_file_2],  1
	jne	.label_177
	mov	r13, qword ptr [rip + stdout]
	cmp	byte ptr [rip + only_file_1],  1
	jne	.label_186
	mov	rdi, qword ptr [rip + col_sep]
	mov	rdx, qword ptr [rip + col_sep_len]
	mov	esi, 1
	mov	rcx, r13
	call	fwrite_unlocked
.label_186:
	mov	rdx, qword ptr [r15 + 8]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	rcx, r13
	call	fwrite_unlocked
.label_177:
	mov	r12d, ebp
	jmp	.label_207
.label_170:
	xor	eax, eax
	cmp	r12, r13
	setne	cl
	jae	.label_190
	nop	word ptr cs:[rax + rax]
.label_224:
	mov	byte ptr [rip + seen_unpairable],  1
.label_174:
	inc	qword ptr [rsp + 0x28]
	cmp	byte ptr [rip + only_file_1],  1
	jne	.label_220
	mov	rcx, qword ptr [rip + stdout]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	esi, 1
	call	fwrite_unlocked
.label_220:
	xor	ebx, ebx
.label_239:
	lea	r12d, [rbp + 1]
	and	r12d, 3
	mov	rdi, qword ptr [rsp + r12*8 + 0x50]
	movzx	eax, byte ptr [rip + delim]
	test	al, al
	jne	.label_233
	mov	al, 0xa
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x402fdc
	.globl sub_402fdc
	.type sub_402fdc, @function
sub_402fdc:

	nop	dword ptr [rax]
.label_233:
	xor	eax, eax
.label_242:
	movzx	edx, al
	mov	rsi, qword ptr [rsp + 0x40]
	call	readlinebuffer_delim
	test	rax, rax
	mov	qword ptr [rsp + 0x20], rax
	je	.label_230
	movsxd	rcx, ebp
	mov	rdi, qword ptr [rsp + rcx*8 + 0x50]
	mov	edx, 1
	mov	rsi, rax
	jmp	.label_249
.label_230:
	movsxd	rax, dword ptr [rsp + 0xc]
	mov	rdi, qword ptr [rsp + rax*8 + 0x50]
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_179
	movsxd	rax, ebp
	mov	rsi, qword ptr [rsp + rax*8 + 0x50]
	mov	edx, 1
.label_249:
	call	check_order
.label_179:
	mov	rax, qword ptr [rsp + 0x40]
	test	byte ptr [rax], 0x20
	mov	r13d, 0
	jne	.label_187
	test	bl, bl
	mov	eax, ebp
	mov	dword ptr [rsp + 0xc], eax
	je	.label_221
.label_207:
	lea	ebp, [r14 + 1]
	and	ebp, 3
	mov	rdi, qword ptr [rsp + rbp*8 + 0x70]
	movzx	eax, byte ptr [rip + delim]
	test	al, al
	jne	.label_196
	mov	al, 0xa
	jmp	.label_211
	.section	.text
	.align	16
	#Procedure 0x40306b
	.globl sub_40306b
	.type sub_40306b, @function
sub_40306b:

	nop	dword ptr [rax + rax]
.label_196:
	xor	eax, eax
.label_211:
	mov	rbx, qword ptr [rsp + 0x38]
	movzx	edx, al
	mov	rsi, rbx
	call	readlinebuffer_delim
	mov	r15, rax
	test	r15, r15
	je	.label_217
	movsxd	rax, r14d
	mov	rdi, qword ptr [rsp + rax*8 + 0x70]
	mov	edx, 2
	mov	rsi, r15
	jmp	.label_219
	.section	.text
	.align	16
	#Procedure 0x40309c
	.globl sub_40309c
	.type sub_40309c, @function
sub_40309c:

	nop	dword ptr [rax]
.label_217:
	movsxd	rax, dword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + rax*8 + 0x70]
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_234
	movsxd	rax, r14d
	mov	rsi, qword ptr [rsp + rax*8 + 0x70]
	mov	edx, 2
.label_219:
	call	check_order
.label_234:
	test	byte ptr [rbx], 0x20
	mov	r13d, 1
	jne	.label_187
.label_247:
	mov	eax, r14d
	mov	dword ptr [rsp + 0x10], eax
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rax, rbx
	or	rax, r15
	mov	r14d, ebp
	mov	ebp, r12d
	jne	.label_184
.label_210:
	mov	rdi, qword ptr [rsp + 0x40]
	call	rpl_fclose
	xor	ebp, ebp
	test	eax, eax
	jne	.label_173
	mov	rdi, qword ptr [rsp + 0x38]
	call	rpl_fclose
	mov	ebp, 1
	test	eax, eax
	jne	.label_173
	mov	al, byte ptr [rip + total_option]
	test	al, al
	je	.label_178
	lea	rsi, [rsp + 0xd0]
	mov	rdi, qword ptr [rsp + 0x28]
	call	umaxtostr
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rip + col_sep]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x30]
	call	umaxtostr
	mov	r12, rax
	mov	r13, qword ptr [rip + col_sep]
	lea	rsi, [rsp + 0x90]
	mov	rdi, qword ptr [rsp + 0x18]
	call	umaxtostr
	mov	r15, rax
	mov	r14, qword ptr [rip + col_sep]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	al, byte ptr [rip + delim]
	test	al, al
	mov	ebx, 0xa
	mov	eax, 0
	cmovne	ebx, eax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_169
	mov	eax, 0
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r13
	push	rbx
	push	rbp
	push	r14
	push	r15
	call	__printf_chk
	add	rsp, 0x20
.label_178:
	mov	al, byte ptr [rip + label_226]
	or	al, byte ptr [rip + issued_disorder_warning]
	jne	.label_243
	xor	eax, eax
	add	rsp, 0x1b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_203:
	mov	r13, qword ptr [rip + stdin]
	jmp	.label_167
.label_183:
	mov	rbp, qword ptr [rip + stdin]
	jmp	.label_172
.label_187:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rax + r13*8]
.label_212:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_189
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_236:
	cmp	eax, 0xffffff7d
	je	.label_195
	cmp	eax, 0xffffff7e
	jne	.label_188
	xor	edi, edi
	call	usage
.label_195:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_200
	mov	edx, OFFSET FLAT:label_147
	mov	r8d, OFFSET FLAT:label_201
	mov	r9d, OFFSET FLAT:label_202
	xor	eax, eax
	push	0
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_173:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rax + rbp*8]
	jmp	.label_212
.label_188:
	mov	edi, 1
	call	usage
.label_245:
	xor	edi, edi
	cmp	r12d, r14d
	jge	.label_204
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r14d
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_238:
	mov	rbp, r14
	jmp	.label_216
.label_231:
	mov	r12, r14
.label_228:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [r12]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_189
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_193:
	mov	rbp, r12
.label_216:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rbp]
	jmp	.label_212
.label_243:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
.label_241:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_204:
	mov	esi, OFFSET FLAT:label_229
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
.label_214:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	jmp	.label_241
.label_252:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4033e5
	.globl sub_4033e5
	.type sub_4033e5, @function
sub_4033e5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033e9
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
	je	.label_252
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
	.section	.text
	.align	16
	#Procedure 0x403450

	.globl check_order
	.type check_order, @function
check_order:
	push	rbp
	push	rbx
	push	rax
	mov	eax, dword ptr [rip + check_input_order]
	cmp	eax, 1
	je	.label_255
	cmp	eax, 2
	je	.label_253
	cmp	byte ptr [rip + seen_unpairable],  1
	jne	.label_253
.label_255:
	movsxd	rbx, edx
	cmp	byte ptr [rbx + seen_unpairable],  0
	jne	.label_253
	mov	rax, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rdi + 0x10]
	dec	rax
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	dec	rcx
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_257
	mov	rsi, rax
	call	xmemcoll
	jmp	.label_254
.label_257:
	mov	rsi, rax
	call	memcmp2
.label_254:
	test	eax, eax
	jle	.label_253
	xor	ebp, ebp
	cmp	dword ptr [rip + check_input_order],  1
	sete	bpl
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	mov	byte ptr [rbx + seen_unpairable],  1
.label_253:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_258
	test	rbx, rbx
	jne	.label_258
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_258:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_260
	test	rax, rax
	je	.label_259
.label_260:
	pop	rbx
	ret	
.label_259:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403520

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x40352f
	.globl sub_40352f
	.type sub_40352f, @function
sub_40352f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403530
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_261
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_263:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_263
.label_261:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_265
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_264], OFFSET FLAT:slot0
.label_265:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_262
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_262:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035c1
	.globl sub_4035c1
	.type sub_4035c1, @function
sub_4035c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035d0

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
	je	.label_266
	cmp	r15, -2
	jb	.label_266
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_266
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_266:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403626
	.globl sub_403626
	.type sub_403626, @function
sub_403626:

	nop	word ptr cs:[rax + rax]
.label_268:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_267
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_267:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403664
	.globl sub_403664
	.type sub_403664, @function
sub_403664:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403666

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
	jne	.label_269
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_269
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_268
.label_269:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_271:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_273
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_189
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4036e1

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_272
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_271
	cmp	dword ptr [rbp], 0x20
	jne	.label_271
.label_272:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_275
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_275:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_273:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_274
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
	#Procedure 0x403760

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_276
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_276
	test	byte ptr [rbx + 1], 1
	je	.label_276
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_276:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403793
	.globl sub_403793
	.type sub_403793, @function
sub_403793:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0
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
	je	.label_277
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
.label_277:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403801
	.globl sub_403801
	.type sub_403801, @function
sub_403801:

	nop	word ptr cs:[rax + rax]
.label_284:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
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
	#Procedure 0x403848
	.globl sub_403848
	.type sub_403848, @function
sub_403848:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_284
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_292
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
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
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_147
	mov	ecx, OFFSET FLAT:label_148
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_282
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_282
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_282:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_148
	mov	ecx, OFFSET FLAT:label_200
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_200
	mov	ecx, OFFSET FLAT:label_279
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403ae0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_163]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_164]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_165]
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
	#Procedure 0x403b4f
	.globl sub_403b4f
	.type sub_403b4f, @function
sub_403b4f:

	nop	
.label_303:
	mov	rax, rbx
	jmp	.label_300
	.section	.text
	.align	16
	#Procedure 0x403b55

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
	je	.label_300
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_303
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_304
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_301
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_300
.label_301:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_302
.label_304:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_302:
	xor	eax, eax
.label_300:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bd6
	.globl sub_403bd6
	.type sub_403bd6, @function
sub_403bd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_305
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_305:
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
	#Procedure 0x403c63
	.globl sub_403c63
	.type sub_403c63, @function
sub_403c63:

	nop	word ptr cs:[rax + rax]
.label_311:
	test	rcx, rcx
	jne	.label_309
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_309:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_308
.label_312:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_306
	test	rbx, rbx
	jne	.label_306
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_308:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403cc1
	.globl sub_403cc1
	.type sub_403cc1, @function
sub_403cc1:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cca
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_311
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_310
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_312
.label_310:
	call	xalloc_die
.label_306:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_307
	test	rax, rax
	je	.label_310
.label_307:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d10

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
	je	.label_313
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
.label_313:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403da5
	.globl sub_403da5
	.type sub_403da5, @function
sub_403da5:

	nop	word ptr cs:[rax + rax]
.label_314:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403db5
	.globl sub_403db5
	.type sub_403db5, @function
sub_403db5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403db9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_163]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_164]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_314
	test	rsi, rsi
	je	.label_314
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
.label_315:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e25
	.globl sub_403e25
	.type sub_403e25, @function
sub_403e25:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e27
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_163]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_164]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.section	.text
	.align	16
	#Procedure 0x403e90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e98
	.globl sub_403e98
	.type sub_403e98, @function
sub_403e98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_316
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_318
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_316
.label_318:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_316
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_317
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_317:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_316:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403f14
	.globl sub_403f14
	.type sub_403f14, @function
sub_403f14:

	nop	word ptr cs:[rax + rax]
.label_319:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f25
	.globl sub_403f25
	.type sub_403f25, @function
sub_403f25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f33
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
	je	.label_320
	test	r15, r15
	je	.label_319
.label_320:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_321:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f75
	.globl sub_403f75
	.type sub_403f75, @function
sub_403f75:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f7d
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
	je	.label_321
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
	.section	.text
	.align	16
	#Procedure 0x403fe0

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_322
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_322:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404022
	.globl sub_404022
	.type sub_404022, @function
sub_404022:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404030
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
	je	.label_323
	mov	qword ptr [rax], rbx
.label_323:
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
	#Procedure 0x40411c
	.globl sub_40411c
	.type sub_40411c, @function
sub_40411c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404120

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_189
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404150
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
	#Procedure 0x40415f
	.globl sub_40415f
	.type sub_40415f, @function
sub_40415f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404160
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_325
	call	rpl_calloc
	test	rax, rax
	je	.label_325
	pop	rcx
	ret	
.label_325:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404186
	.globl sub_404186
	.type sub_404186, @function
sub_404186:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404190

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	ebp, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r13
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x40425a
	.globl sub_40425a
	.type sub_40425a, @function
sub_40425a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260
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
	#Procedure 0x4042d5
	.globl sub_4042d5
	.type sub_4042d5, @function
sub_4042d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0
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
	#Procedure 0x4042f8
	.globl sub_4042f8
	.type sub_4042f8, @function
sub_4042f8:

	nop	dword ptr [rax + rax]
.label_329:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404306
	.globl sub_404306
	.type sub_404306, @function
sub_404306:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40430b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_329
	test	rdx, rdx
	je	.label_329
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404330

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_340
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_342
.label_340:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_342:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_330
	cmp	r10d, 0x29
	jae	.label_339
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_341
.label_339:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_341:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_330
	cmp	r10d, 0x29
	jae	.label_337
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_338
.label_337:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_338:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_330
	cmp	r10d, 0x29
	jae	.label_335
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_336
.label_335:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_336:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_330
	cmp	r10d, 0x29
	jae	.label_333
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_334
.label_333:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_334:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_330
	cmp	r10d, 0x29
	jae	.label_331
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_332
.label_331:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_332:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_330
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_330
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_330
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_330
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_330:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x404512
	.globl sub_404512
	.type sub_404512, @function
sub_404512:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404520

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_343
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_345
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_345
	mov	esi, OFFSET FLAT:label_346
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_348
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_348:
	mov	rbx, r14
.label_345:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_343:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_344
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4045c1
	.globl sub_4045c1
	.type sub_4045c1, @function
sub_4045c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4045da
	.globl sub_4045da
	.type sub_4045da, @function
sub_4045da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0
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
	#Procedure 0x4045ef
	.globl sub_4045ef
	.type sub_4045ef, @function
sub_4045ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4045f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_163]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_164]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_165]
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
	#Procedure 0x404645
	.globl sub_404645
	.type sub_404645, @function
sub_404645:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404650
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	call	memcoll0
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_349
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_349:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404698
	.globl sub_404698
	.type sub_404698, @function
sub_404698:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046a0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	r15, r14
	jne	.label_350
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_352
.label_350:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_354:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_351
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_353
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_354
	jmp	.label_351
.label_352:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_351:
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
	#Procedure 0x404746
	.globl sub_404746
	.type sub_404746, @function
sub_404746:

	nop	dword ptr [rax]
.label_353:
	neg	r14
	sbb	eax, eax
	jmp	.label_351
	.section	.text
	.align	16
	#Procedure 0x404750
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
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

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r15, rdi
	xor	eax, eax
	test	byte ptr [rbp], 0x10
	jne	.label_355
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_356
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_358:
	cmp	r13, r14
	jne	.label_359
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	edx, dword ptr [rsp]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_359:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_360
	jmp	.label_357
.label_356:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_358
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_355
	test	byte ptr [rbp], 0x20
	jne	.label_355
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_358
.label_357:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_355:
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
	#Procedure 0x40482f
	.globl sub_40482f
	.type sub_40482f, @function
sub_40482f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404830

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, rbx
	jne	.label_362
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_366
.label_362:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	mov	qword ptr [rsp + 0x10], rbp
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x20], rbx
	lea	r15, [rbx + 1]
	call	__errno_location
	mov	rbx, rax
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, r14
	mov	qword ptr [rsp + 8], r12
	mov	r14, r12
	nop	dword ptr [rax]
.label_364:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_361
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r15, rax
	sub	r13, r12
	je	.label_365
	add	rbp, rax
	add	r14, r12
	mov	eax, 1
	test	r15, r15
	jne	.label_364
	jmp	.label_361
.label_365:
	neg	r15
	sbb	eax, eax
.label_361:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_363
.label_366:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_363:
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
	#Procedure 0x40493d
	.globl sub_40493d
	.type sub_40493d, @function
sub_40493d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404940

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
	je	.label_367
	mov	edx, OFFSET FLAT:label_377
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_383
.label_367:
	mov	edx, OFFSET FLAT:label_384
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_372
	jmp	qword ptr [(r12 * 8) + label_373]
.label_529:
	add	rsp, 8
	jmp	.label_371
.label_372:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
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
	jmp	.label_371
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
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
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
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
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
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
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
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
	jmp	.label_371
.label_534:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_371
.label_535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
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
	jmp	.label_371
.label_536:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
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
	jmp	.label_371
.label_538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
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
	jmp	.label_371
.label_537:
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
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_371:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c98
	.globl sub_404c98
	.type sub_404c98, @function
sub_404c98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ca0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_386
	test	rax, rax
	je	.label_387
.label_386:
	pop	rbx
	ret	
.label_387:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404cba
	.globl sub_404cba
	.type sub_404cba, @function
sub_404cba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0

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
	je	.label_388
	test	r15, r15
	je	.label_389
.label_388:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_389:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404cfc
	.globl sub_404cfc
	.type sub_404cfc, @function
sub_404cfc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_390:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_390
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404d21
	.globl sub_404d21
	.type sub_404d21, @function
sub_404d21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_163]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_164]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_391
	test	rsi, rsi
	je	.label_391
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_391:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404da0
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
	#Procedure 0x404db3
	.globl sub_404db3
	.type sub_404db3, @function
sub_404db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_191
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_392
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404de5
	.globl sub_404de5
	.type sub_404de5, @function
sub_404de5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_412
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_412:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_395
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_413
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_394
	test	esi, esi
	jne	.label_395
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_396
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_397
.label_395:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_399
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_394
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_406
.label_413:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_393
.label_394:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_409
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_410
.label_409:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_410:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_411:
	call	fcntl
.label_393:
	mov	ebp, eax
.label_400:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_406:
	cmp	eax, 6
	jne	.label_399
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_402
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_398
.label_399:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_405
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_408
.label_396:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_397:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_411
.label_402:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_398:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_403
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_401
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_401
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_400
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_407
.label_401:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_400
.label_405:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_408:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_393
.label_403:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_407:
	test	al, al
	je	.label_400
	test	ebp, ebp
	js	.label_400
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_404
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_400
.label_404:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_400
	.section	.text
	.align	16
	#Procedure 0x405081
	.globl sub_405081
	.type sub_405081, @function
sub_405081:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090
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
	#Procedure 0x4050a8
	.globl sub_4050a8
	.type sub_4050a8, @function
sub_4050a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_163]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_164]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_165]
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
	#Procedure 0x40511e
	.globl sub_40511e
	.type sub_40511e, @function
sub_40511e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405120
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40512e
	.globl sub_40512e
	.type sub_40512e, @function
sub_40512e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405130

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
	js	.label_417
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_420
	cmp	r12d, 0x7fffffff
	je	.label_415
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
	jne	.label_418
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_418:
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
.label_420:
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
	jbe	.label_416
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_419
.label_416:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_414
	mov	rdi, r14
	call	free
.label_414:
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
.label_419:
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
.label_417:
	call	abort
.label_415:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4052ed
	.globl sub_4052ed
	.type sub_4052ed, @function
sub_4052ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052f8
	.globl sub_4052f8
	.type sub_4052f8, @function
sub_4052f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_422
	cmp	byte ptr [rax], 0x43
	jne	.label_424
	cmp	byte ptr [rax + 1], 0
	je	.label_421
.label_424:
	mov	esi, OFFSET FLAT:label_423
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_422
.label_421:
	xor	ebx, ebx
.label_422:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405331
	.globl sub_405331
	.type sub_405331, @function
sub_405331:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340
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
	#Procedure 0x405376
	.globl sub_405376
	.type sub_405376, @function
sub_405376:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_425
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_428
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_429
	call	free
	xor	eax, eax
	jmp	.label_426
.label_428:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4053b7
	.globl sub_4053b7
	.type sub_4053b7, @function
sub_4053b7:

	nop	word ptr cs:[rax + rax]
.label_427:
	call	xalloc_die
.label_425:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_427
	mov	qword ptr [rsi], rbx
.label_429:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_426
	test	rax, rax
	je	.label_427
.label_426:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053f0

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
	#Procedure 0x405407
	.globl sub_405407
	.type sub_405407, @function
sub_405407:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405410
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40541a
	.globl sub_40541a
	.type sub_40541a, @function
sub_40541a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_430
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_430:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40543d
	.globl sub_40543d
	.type sub_40543d, @function
sub_40543d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4054a5
	.globl sub_4054a5
	.type sub_4054a5, @function
sub_4054a5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054b2
	.globl sub_4054b2
	.type sub_4054b2, @function
sub_4054b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054d6
	.globl sub_4054d6
	.type sub_4054d6, @function
sub_4054d6:

	nop	word ptr cs:[rax + rax]
