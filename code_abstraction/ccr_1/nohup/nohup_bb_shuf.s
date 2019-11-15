	.section	.text
	.align	32
	#Procedure 0x401589
	.globl sub_401589
	.type sub_401589, @function
sub_401589:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40158a
	.globl sub_40158a
	.type sub_40158a, @function
sub_40158a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015c2
	.globl sub_4015c2
	.type sub_4015c2, @function
sub_4015c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40160a
	.globl sub_40160a
	.type sub_40160a, @function
sub_40160a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40162c
	.globl sub_40162c
	.type sub_40162c, @function
sub_40162c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40163d
	.globl sub_40163d
	.type sub_40163d, @function
sub_40163d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401656
	.globl sub_401656
	.type sub_401656, @function
sub_401656:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401660
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40166a
	.globl sub_40166a
	.type sub_40166a, @function
sub_40166a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401670

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	32
	#Procedure 0x40167d
	.globl sub_40167d
	.type sub_40167d, @function
sub_40167d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401680
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40168a
	.globl sub_40168a
	.type sub_40168a, @function
sub_40168a:

	nop	word ptr [rax + rax]
.label_9:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401693
	.globl sub_401693
	.type sub_401693, @function
sub_401693:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401695
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_9
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_11
	cmp	byte ptr [rax], 0x43
	jne	.label_13
	cmp	byte ptr [rax + 1], 0
	je	.label_10
.label_13:
	mov	esi, OFFSET FLAT:label_12
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_11
.label_10:
	xor	ebx, ebx
.label_11:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016e1
	.globl sub_4016e1
	.type sub_4016e1, @function
sub_4016e1:

	nop	word ptr cs:[rax + rax]
.label_14:
	mov	eax, ebx
.label_15:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016fd
	.globl sub_4016fd
	.type sub_4016fd, @function
sub_4016fd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401707

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_14
	test	ebx, ebx
	js	.label_14
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_15
	.section	.text
	.align	32
	#Procedure 0x401750

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
	#Procedure 0x401767
	.globl sub_401767
	.type sub_401767, @function
sub_401767:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401770
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
	.align	32
	#Procedure 0x4017b9
	.globl sub_4017b9
	.type sub_4017b9, @function
sub_4017b9:

	nop	dword ptr [rax]
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
.label_36:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_42
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_46]]
.label_442:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_52
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_57
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_443:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_63
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_63
	xor	r14d, r14d
.label_80:
	cmp	r14, r11
	jae	.label_76
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_76:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_80
.label_63:
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
	jmp	.label_83
.label_435:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_83
.label_438:
	mov	al, 1
.label_436:
	mov	r12b, 1
.label_439:
	test	r12b, 1
	mov	cl, 1
	je	.label_95
	mov	ecx, eax
.label_95:
	mov	al, cl
.label_437:
	test	r12b, 1
	jne	.label_99
	test	r11, r11
	je	.label_102
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_102:
	mov	r14d, 1
	jmp	.label_107
.label_99:
	xor	r14d, r14d
.label_107:
	mov	ecx, OFFSET FLAT:label_57
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_83
.label_440:
	test	r12b, 1
	jne	.label_113
	test	r11, r11
	je	.label_114
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_114:
	mov	r14d, 1
	jmp	.label_32
.label_441:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_119
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_83
.label_113:
	xor	r14d, r14d
.label_32:
	mov	eax, OFFSET FLAT:label_119
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_83:
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
	jmp	.label_38
	.section	.text
	.align	32
	#Procedure 0x401a9c
	.globl sub_401a9c
	.type sub_401a9c, @function
sub_401a9c:

	nop	dword ptr [rax]
.label_77:
	inc	rsi
.label_38:
	cmp	rbp, -1
	je	.label_122
	cmp	rsi, rbp
	jne	.label_59
	jmp	.label_48
	.section	.text
	.align	32
	#Procedure 0x401ab3
	.globl sub_401ab3
	.type sub_401ab3, @function
sub_401ab3:

	nop	word ptr cs:[rax + rax]
.label_122:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_48
.label_59:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_66
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_69
	cmp	rbp, -1
	jne	.label_69
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
.label_69:
	cmp	rbx, rbp
	jbe	.label_82
.label_66:
	xor	r8d, r8d
.label_19:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_84
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_87]]
.label_393:
	test	rsi, rsi
	jne	.label_78
	jmp	.label_90
	.section	.text
	.align	32
	#Procedure 0x401b4e
	.globl sub_401b4e
	.type sub_401b4e, @function
sub_401b4e:

	nop	
.label_82:
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
	jne	.label_105
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_19
	jmp	.label_18
.label_105:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_19
.label_397:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_121
	test	rsi, rsi
	jne	.label_123
	cmp	rbp, 1
	je	.label_90
	xor	r13d, r13d
	jmp	.label_61
.label_386:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_129
	cmp	byte ptr [rsp + 7], 0
	jne	.label_40
	cmp	r12d, 2
	jne	.label_17
	mov	eax, r9d
	and	al, 1
	jne	.label_17
	cmp	r14, r11
	jae	.label_51
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_51:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_23
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_23:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_28
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_28:
	add	r14, 3
	mov	r9b, 1
.label_17:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_126
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_126:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_39
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_39
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_39
	cmp	r14, r11
	jae	.label_100
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_100:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_37
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_37:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_61
.label_387:
	mov	bl, 0x62
	jmp	.label_68
.label_388:
	mov	cl, 0x74
	jmp	.label_31
.label_389:
	mov	bl, 0x76
	jmp	.label_68
.label_390:
	mov	bl, 0x66
	jmp	.label_68
.label_391:
	mov	cl, 0x72
	jmp	.label_31
.label_394:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_74
	cmp	byte ptr [rsp + 7], 0
	jne	.label_40
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
	jae	.label_81
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_81:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_88
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_88:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_91
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_91:
	add	r14, 3
	xor	r9d, r9d
.label_74:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_61
.label_395:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_103
	cmp	r12d, 2
	jne	.label_78
	cmp	byte ptr [rsp + 7], 0
	je	.label_78
	jmp	.label_40
.label_396:
	cmp	r12d, 2
	jne	.label_111
	cmp	byte ptr [rsp + 7], 0
	jne	.label_40
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_43
.label_84:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_117
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
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_26
	test	r8b, r8b
	je	.label_26
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_61
.label_121:
	test	rsi, rsi
	jne	.label_35
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_35
.label_90:
	mov	dl, 1
.label_392:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_40
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_61:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_47
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_50
	jmp	.label_54
	.section	.text
	.align	32
	#Procedure 0x401e94
	.globl sub_401e94
	.type sub_401e94, @function
sub_401e94:

	nop	word ptr cs:[rax + rax]
.label_47:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_54
.label_50:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_58
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_43
	jmp	.label_72
	.section	.text
	.align	32
	#Procedure 0x401edd
	.globl sub_401edd
	.type sub_401edd, @function
sub_401edd:

	nop	dword ptr [rax]
.label_54:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_72
	jmp	.label_43
.label_58:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_72
.label_129:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_77
	xor	r15d, r15d
	jmp	.label_78
.label_111:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_31
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_43
.label_31:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_40
.label_68:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_61
	nop	word ptr cs:[rax + rax]
.label_72:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_40
	cmp	r12d, 2
	jne	.label_97
	mov	eax, r9d
	and	al, 1
	jne	.label_97
	cmp	r14, r11
	jae	.label_101
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_101:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_67
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_67:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_109
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_109:
	add	r14, 3
	mov	r9b, 1
.label_97:
	cmp	r14, r11
	jae	.label_112
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_112:
	inc	r14
	jmp	.label_115
.label_117:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_118
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_118:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_55:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_22
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_25
	cmp	rbp, -2
	je	.label_104
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_96
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_85:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_29
	bt	rsi, rdx
	jb	.label_18
.label_29:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_85
.label_96:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_60
	xor	r13d, r13d
.label_60:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_55
	jmp	.label_73
.label_39:
	xor	r13d, r13d
	jmp	.label_61
.label_35:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_61
.label_103:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_78
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_78
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_78
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_62
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_53
	cmp	byte ptr [rsp + 7], 0
	jne	.label_40
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_92
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_92:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_65
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_65:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_106
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_106:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_108
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_108:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_61
.label_78:
	xor	eax, eax
.label_123:
	xor	r13d, r13d
	jmp	.label_61
.label_26:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_116
	.section	.text
	.align	32
	#Procedure 0x4021c3
	.globl sub_4021c3
	.type sub_4021c3, @function
sub_4021c3:

	nop	word ptr cs:[rax + rax]
.label_79:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_116:
	test	r8b, r8b
	je	.label_124
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_125
	cmp	r14, r11
	jae	.label_127
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_127:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_125
	.section	.text
	.align	32
	#Procedure 0x40220c
	.globl sub_40220c
	.type sub_40220c, @function
sub_40220c:

	nop	dword ptr [rax]
.label_124:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_18
	cmp	r12d, 2
	jne	.label_21
	mov	eax, r9d
	and	al, 1
	jne	.label_21
	cmp	r14, r11
	jae	.label_24
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_24:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_27
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_27:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_33
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_33:
	add	r14, 3
	mov	r9b, 1
.label_21:
	cmp	r14, r11
	jae	.label_34
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_34:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_44
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_44:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_89
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_89:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_125:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_43
	test	r9b, 1
	je	.label_64
	mov	ebx, eax
	and	bl, 1
	jne	.label_64
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_70
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_70:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_71
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_71:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_64:
	cmp	r14, r11
	jae	.label_79
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_79
	.section	.text
	.align	32
	#Procedure 0x402313
	.globl sub_402313
	.type sub_402313, @function
sub_402313:

	nop	word ptr cs:[rax + rax]
.label_43:
	test	r9b, 1
	je	.label_75
	and	al, 1
	jne	.label_75
	cmp	r14, r11
	jae	.label_86
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_86:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_94
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_94:
	add	r14, 2
	xor	r9d, r9d
.label_75:
	mov	ebx, r15d
.label_115:
	cmp	r14, r11
	jae	.label_93
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_93:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_77
.label_25:
	xor	r13d, r13d
.label_22:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_73
.label_104:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_110
	mov	rsi, qword ptr [rsp + 0x50]
.label_16:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_120
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_16
	xor	r13d, r13d
	jmp	.label_73
.label_110:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_73
.label_120:
	xor	r13d, r13d
	jmp	.label_73
.label_62:
	xor	r13d, r13d
	jmp	.label_61
.label_53:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_61
	.section	.text
	.align	32
	#Procedure 0x4023e8
	.globl sub_4023e8
	.type sub_4023e8, @function
sub_4023e8:

	nop	dword ptr [rax + rax]
.label_48:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_128
	or	dl, al
	je	.label_18
.label_128:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_20
	or	dl, al
	jne	.label_20
	test	r10b, 1
	jne	.label_30
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_20
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_36
.label_20:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_41
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_45
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_45
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_130:
	cmp	r14, r11
	jae	.label_56
	mov	byte ptr [rcx + r14], al
.label_56:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_130
	jmp	.label_45
.label_40:
	mov	qword ptr [rsp + 0x20], rbp
.label_18:
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
.label_98:
	mov	r14, rax
.label_49:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_30:
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
	jmp	.label_98
.label_41:
	mov	rcx, qword ptr [rsp + 8]
.label_45:
	cmp	r14, r11
	jae	.label_49
	mov	byte ptr [rcx + r14], 0
	jmp	.label_49
.label_42:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40257c
	.globl sub_40257c
	.type sub_40257c, @function
sub_40257c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402580
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40258a
	.globl sub_40258a
	.type sub_40258a, @function
sub_40258a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402590

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
	.align	32
	#Procedure 0x4025c9
	.globl sub_4025c9
	.type sub_4025c9, @function
sub_4025c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4025d0

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
	.align	32
	#Procedure 0x4025e1
	.globl sub_4025e1
	.type sub_4025e1, @function
sub_4025e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025f0
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
	.align	32
	#Procedure 0x402604
	.globl sub_402604
	.type sub_402604, @function
sub_402604:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402610

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
	je	.label_133
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_131
	jmp	.label_132
.label_133:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_132
.label_131:
	mov	eax, 1
	test	bpl, bpl
	je	.label_132
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
.label_132:
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
	#Procedure 0x402698
	.globl sub_402698
	.type sub_402698, @function
sub_402698:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026a0

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
	je	.label_134
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_136
	jmp	.label_135
.label_134:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_135
.label_136:
	mov	eax, 1
	test	bpl, bpl
	je	.label_135
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
.label_135:
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
	#Procedure 0x402719
	.globl sub_402719
	.type sub_402719, @function
sub_402719:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402720

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
	je	.label_139
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_138
	jmp	.label_137
.label_139:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_137
.label_138:
	mov	eax, 1
	test	bpl, bpl
	je	.label_137
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
.label_137:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402783
	.globl sub_402783
	.type sub_402783, @function
sub_402783:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402790

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
	je	.label_142
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_140
	jmp	.label_141
.label_142:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_141
.label_140:
	mov	eax, 1
	test	bpl, bpl
	je	.label_141
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_141:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027ef
	.globl sub_4027ef
	.type sub_4027ef, @function
sub_4027ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4027f0

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
	je	.label_143
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_145
	jmp	.label_144
.label_143:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_144
.label_145:
	mov	eax, 1
	test	bpl, bpl
	je	.label_144
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_144:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402839
	.globl sub_402839
	.type sub_402839, @function
sub_402839:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402840

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
	je	.label_148
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_147
	jmp	.label_146
.label_148:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_146
.label_147:
	mov	eax, 1
	test	bpl, bpl
	je	.label_146
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_146:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402885
	.globl sub_402885
	.type sub_402885, @function
sub_402885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402890

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_151
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_150
	jmp	.label_149
.label_151:
	mov	eax, 1
	test	cl, cl
	je	.label_149
.label_150:
	xor	eax, eax
.label_149:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028bf
	.globl sub_4028bf
	.type sub_4028bf, @function
sub_4028bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4028c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4028c9
	.globl sub_4028c9
	.type sub_4028c9, @function
sub_4028c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0

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
	mov	rax,  qword ptr [word ptr [rip + label_152]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_153]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_154]]
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
	.align	32
	#Procedure 0x402938
	.globl sub_402938
	.type sub_402938, @function
sub_402938:

	nop	dword ptr [rax + rax]
.label_157:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_155
.label_156:
	mov	eax, 1
	test	bpl, bpl
	je	.label_155
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
.label_155:
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
	#Procedure 0x402988
	.globl sub_402988
	.type sub_402988, @function
sub_402988:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40298b

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
	je	.label_157
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_156
	jmp	.label_155
	.section	.text
	.align	32
	#Procedure 0x4029c0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_158
	test	rdx, rdx
	je	.label_158
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_158:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4029eb
	.globl sub_4029eb
	.type sub_4029eb, @function
sub_4029eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029f0
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
	.align	32
	#Procedure 0x402a06
	.globl sub_402a06
	.type sub_402a06, @function
sub_402a06:

	nop	word ptr cs:[rax + rax]
.label_159:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a13
	.globl sub_402a13
	.type sub_402a13, @function
sub_402a13:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a15
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_159
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a30
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x402a3a
	.globl sub_402a3a
	.type sub_402a3a, @function
sub_402a3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	cmp	edi, 1
	je	.label_160
	mov	dword ptr [dword ptr [rip + exit_failure]],  edi
.label_160:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a4c
	.globl sub_402a4c
	.type sub_402a4c, @function
sub_402a4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a50
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a5a
	.globl sub_402a5a
	.type sub_402a5a, @function
sub_402a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_161
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_161:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_162
	mov	edx, OFFSET FLAT:label_163
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_164
	cmp	eax, 0x76
	jne	.label_162
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_164:
	xor	edi, edi
	call	rbx
.label_162:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b51
	.globl sub_402b51
	.type sub_402b51, @function
sub_402b51:

	nop	word ptr cs:[rax + rax]
.label_172:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
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
	.align	32
	#Procedure 0x402b98

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_172
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_171
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_174:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x402c9c
	.globl sub_402c9c
	.type sub_402c9c, @function
sub_402c9c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ca9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_174
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cb0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_175
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_175:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402cd3
	.globl sub_402cd3
	.type sub_402cd3, @function
sub_402cd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_176
	test	rax, rax
	je	.label_177
.label_176:
	pop	rbx
	ret	
.label_177:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402cfa
	.globl sub_402cfa
	.type sub_402cfa, @function
sub_402cfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d00

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_178
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_179
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d25
	.globl sub_402d25
	.type sub_402d25, @function
sub_402d25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d30
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_180
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_180:
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
	#Procedure 0x402db3
	.globl sub_402db3
	.type sub_402db3, @function
sub_402db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dc0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dcd
	.globl sub_402dcd
	.type sub_402dcd, @function
sub_402dcd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0
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
	#Procedure 0x402e03
	.globl sub_402e03
	.type sub_402e03, @function
sub_402e03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e10

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x402e15
	.globl sub_402e15
	.type sub_402e15, @function
sub_402e15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e20
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_181
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_183]]
.label_181:
	xor	eax, eax
	jmp	.label_182
	.section	.text
	.align	32
	#Procedure 0x402e35
	.globl sub_402e35
	.type sub_402e35, @function
sub_402e35:

	nop	word ptr cs:[rax + rax]
.label_182:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e40

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
	mov	rcx,  qword ptr [word ptr [rip + label_152]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_153]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_154]]
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
	.align	32
	#Procedure 0x402ead
	.globl sub_402ead
	.type sub_402ead, @function
sub_402ead:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x402ebd
	.globl sub_402ebd
	.type sub_402ebd, @function
sub_402ebd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x402ec7
	.globl sub_402ec7
	.type sub_402ec7, @function
sub_402ec7:

	nop	word ptr [rax + rax]
.label_185:
	mov	ecx, 1
.label_184:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x402ee0
	.globl sub_402ee0
	.type sub_402ee0, @function
sub_402ee0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_185
	test	rsi, rsi
	mov	ecx, 1
	je	.label_184
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_184
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f20
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
	#Procedure 0x402f2f
	.globl sub_402f2f
	.type sub_402f2f, @function
sub_402f2f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_186
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_188:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_188
.label_186:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_190
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_189]], OFFSET FLAT:slot0
.label_190:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_187
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_187:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fc1
	.globl sub_402fc1
	.type sub_402fc1, @function
sub_402fc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fd0

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
	jne	.label_197
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
	je	.label_191
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_195
	mov	eax, OFFSET FLAT:label_196
	jmp	.label_194
.label_191:
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
	je	.label_198
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_192
	mov	eax, OFFSET FLAT:label_193
	jmp	.label_194
.label_198:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_119
	mov	eax, OFFSET FLAT:label_57
.label_194:
	cmove	rax, rcx
.label_197:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40308d
	.globl sub_40308d
	.type sub_40308d, @function
sub_40308d:

	nop	dword ptr [rax]
.label_203:
	call	xalloc_die
.label_202:
	test	rcx, rcx
	jne	.label_200
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_200:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_201
.label_199:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_201:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4030dc
	.globl sub_4030dc
	.type sub_4030dc, @function
sub_4030dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030e3

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_202
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_203
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_199
	.section	.text
	.align	32
	#Procedure 0x403110
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403118
	.globl sub_403118
	.type sub_403118, @function
sub_403118:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403120

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_204
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_206
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_206
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_208
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_207
.label_206:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_207
.label_204:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_207:
	test	ebx, ebx
	js	.label_208
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_208
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_205
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_208
.label_205:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_208:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031e3
	.globl sub_4031e3
	.type sub_4031e3, @function
sub_4031e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031f0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031fa
	.globl sub_4031fa
	.type sub_4031fa, @function
sub_4031fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403200
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_210
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_213
	mov	ecx, OFFSET FLAT:label_214
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403274
	.globl sub_403274
	.type sub_403274, @function
sub_403274:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280
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
	.align	32
	#Procedure 0x403299
	.globl sub_403299
	.type sub_403299, @function
sub_403299:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_215:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_215
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4032c1
	.globl sub_4032c1
	.type sub_4032c1, @function
sub_4032c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_216
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_218
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_216
.label_218:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_216
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_217
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_217:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_216:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x403347
	.globl sub_403347
	.type sub_403347, @function
sub_403347:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403350
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40335d
	.globl sub_40335d
	.type sub_40335d, @function
sub_40335d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403360

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_220
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403390
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
	#Procedure 0x4033a3
	.globl sub_4033a3
	.type sub_4033a3, @function
sub_4033a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_224
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_226
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_226
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_222
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_222:
	mov	rbx, r14
.label_226:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_224:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_225
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403451
	.globl sub_403451
	.type sub_403451, @function
sub_403451:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403460
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
	.align	32
	#Procedure 0x403487
	.globl sub_403487
	.type sub_403487, @function
sub_403487:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403490
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
	#Procedure 0x40349f
	.globl sub_40349f
	.type sub_40349f, @function
sub_40349f:

	nop	
.label_228:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_227
	test	cl, cl
	jne	.label_227
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_227:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034cb
	.globl sub_4034cb
	.type sub_4034cb, @function
sub_4034cb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034d5

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
	je	.label_228
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_227
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_227
.label_229:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403515
	.globl sub_403515
	.type sub_403515, @function
sub_403515:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403523

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
	je	.label_229
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
	.align	32
	#Procedure 0x403570
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40357a
	.globl sub_40357a
	.type sub_40357a, @function
sub_40357a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403580

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_178
	call	setlocale
	mov	edi, OFFSET FLAT:label_243
	mov	esi, OFFSET FLAT:label_244
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_243
	call	textdomain
	mov	edi, OFFSET FLAT:label_251
	call	getenv
	xor	ecx, ecx
	test	rax, rax
	setne	cl
	lea	r12d, [rcx + rcx + 0x7d]
	mov	edi, r12d
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_171
	mov	ecx, OFFSET FLAT:label_213
	mov	r9d, 0
	mov	eax, 0
	mov	edi, ebx
	mov	rsi, r14
	push	0
	push	OFFSET FLAT:label_233
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	jge	.label_239
	xor	r15d, r15d
	xor	edi, edi
	call	isatty
	mov	r13d, eax
	mov	edi, 1
	call	isatty
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_252
	call	__errno_location
	cmp	dword ptr [rax], 9
	sete	r15b
.label_252:
	mov	edi, 2
	call	isatty
	mov	ebp, eax
	test	r13d, r13d
	mov	dword ptr [rsp + 0x10], ebx
	je	.label_247
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 1
	xor	ecx, ecx
	call	fd_reopen
	test	eax, eax
	jns	.label_231
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r12d
	mov	esi, ebx
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rdx, rcx
	call	error
.label_231:
	mov	eax, ebp
	or	eax, ebx
	jne	.label_247
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_247:
	mov	dword ptr [rsp + 0x14], r13d
	mov	qword ptr [rsp + 0x20], r14
	test	ebx, ebx
	mov	dword ptr [rsp + 0x18], r15d
	mov	dword ptr [rsp + 0x1c], ebp
	je	.label_254
	mov	dword ptr [rsp + 0xc], r12d
	mov	edi, 0xfffffe7f
	call	umask
	mov	ebx, eax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 0x441
	mov	ecx, 0x180
	call	fd_reopen
	jmp	.label_237
.label_254:
	test	ebp, ebp
	setne	al
	mov	r13d, 1
	test	r15b, al
	je	.label_238
	mov	dword ptr [rsp + 0xc], r12d
	mov	edi, 0xfffffe7f
	call	umask
	mov	ebx, eax
	mov	edi, OFFSET FLAT:label_235
	mov	esi, 0x441
	mov	edx, 0x180
	xor	eax, eax
	call	open
.label_237:
	mov	r13d, eax
	mov	r14d, OFFSET FLAT:label_235
	xor	r12d, r12d
	test	r13d, r13d
	jns	.label_240
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, OFFSET FLAT:label_261
	call	getenv
	xor	r14d, r14d
	test	rax, rax
	je	.label_230
	mov	esi, OFFSET FLAT:label_235
	xor	edx, edx
	mov	rdi, rax
	call	file_name_concat
	mov	r14, rax
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_246
	mov	edi, 1
	mov	edx, 0x441
	mov	ecx, 0x180
	mov	rsi, r14
	call	fd_reopen
	jmp	.label_242
.label_246:
	mov	esi, 0x441
	mov	edx, 0x180
	xor	eax, eax
	mov	rdi, r14
	call	open
.label_242:
	mov	r13d, eax
	test	r13d, r13d
	mov	r12, r14
	js	.label_230
.label_240:
	mov	edi, ebx
	call	umask
	cmp	dword ptr [rsp + 0x14], 0
	mov	eax, OFFSET FLAT:label_258
	mov	esi, OFFSET FLAT:label_259
	cmovne	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rdi, r12
	call	free
	mov	r12d, dword ptr [rsp + 0xc]
.label_238:
	mov	r14d, 2
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_248
	mov	edi, 2
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	r14d, eax
	cmp	dword ptr [rsp + 0x10], 0
	jne	.label_255
	cmp	dword ptr [rsp + 0x14], 0
	mov	eax, OFFSET FLAT:label_256
	mov	esi, OFFSET FLAT:label_257
	cmovne	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_255:
	mov	esi, 2
	mov	edi, r13d
	call	dup2
	test	eax, eax
	jns	.label_241
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r12d
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_241:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_248
	mov	edi, r13d
	call	close
.label_248:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_232
	mov	edi, 1
	mov	esi, 1
	call	signal
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rbx, [rbp + rax*8]
	mov	rdi, qword ptr [rbp + rax*8]
	mov	rsi, rbx
	call	execvp
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r12d, r12d
	cmp	r15d, 2
	sete	r12b
	or	r12d, 0x7e
	mov	esi, 2
	mov	edi, r14d
	call	dup2
	cmp	eax, 2
	jne	.label_232
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r14
	call	error
	jmp	.label_232
.label_230:
	mov	ebx, dword ptr [rbp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_235
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	test	r14, r14
	je	.label_262
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_262:
	mov	r12d, dword ptr [rsp + 0xc]
.label_232:
	mov	eax, r12d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_239:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, r12d
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403a36
	.globl sub_403a36
	.type sub_403a36, @function
sub_403a36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_266
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_263
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_263
.label_266:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_267
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_263:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_264
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_220
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_264:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_265
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_267:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403b00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_269
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_269
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_269:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403b26
	.globl sub_403b26
	.type sub_403b26, @function
sub_403b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x403b3a
	.globl sub_403b3a
	.type sub_403b3a, @function
sub_403b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b40

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
	je	.label_270
	mov	qword ptr [rax], rbx
.label_270:
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
	#Procedure 0x403c2c
	.globl sub_403c2c
	.type sub_403c2c, @function
sub_403c2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c30

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
	.align	32
	#Procedure 0x403c67
	.globl sub_403c67
	.type sub_403c67, @function
sub_403c67:

	nop	word ptr [rax + rax]
.label_273:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_272:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_274
	inc	r9
	cmp	r9, 0xa
	jb	.label_271
.label_274:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c9f
	.globl sub_403c9f
	.type sub_403c9f, @function
sub_403c9f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403ca0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_271:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_273
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_272
	.section	.text
	.align	32
	#Procedure 0x403cc9
	.globl sub_403cc9
	.type sub_403cc9, @function
sub_403cc9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_276:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_275
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_276
.label_275:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cf6
	.globl sub_403cf6
	.type sub_403cf6, @function
sub_403cf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d08
	.globl sub_403d08
	.type sub_403d08, @function
sub_403d08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d10

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
	je	.label_281
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_280
	cmp	byte ptr [r15], 0x2f
	je	.label_280
	mov	r12b, 0x2f
	jmp	.label_277
.label_281:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_277
.label_280:
	xor	r12d, r12d
.label_277:
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
	je	.label_279
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_278
	mov	qword ptr [rax], rbp
.label_278:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_279:
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
	#Procedure 0x403de8
	.globl sub_403de8
	.type sub_403de8, @function
sub_403de8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403df0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_288
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_288:
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
	ja	.label_282
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_292
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_290
	test	esi, esi
	jne	.label_282
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_293
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_285
.label_282:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_283
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_290
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_295
.label_292:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_290:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_286
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_289
.label_286:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_289:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_295:
	cmp	eax, 6
	jne	.label_283
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_284
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_287
.label_283:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_291
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_294
.label_293:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_285:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_284:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_287:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_291:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_294:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fa4
	.globl sub_403fa4
	.type sub_403fa4, @function
sub_403fa4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

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
	#Procedure 0x403fe6
	.globl sub_403fe6
	.type sub_403fe6, @function
sub_403fe6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff0

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
	je	.label_311
	mov	edx, OFFSET FLAT:label_301
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_307
.label_311:
	mov	edx, OFFSET FLAT:label_308
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_307:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
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
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_297
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_298]]
.label_370:
	add	rsp, 8
	jmp	.label_296
.label_297:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
	jmp	.label_296
.label_371:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
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
.label_372:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
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
.label_373:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
.label_374:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
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
	jmp	.label_296
.label_375:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_296
.label_376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
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
	jmp	.label_296
.label_377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
	jmp	.label_296
.label_379:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
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
	jmp	.label_296
.label_378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
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
.label_296:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404348
	.globl sub_404348
	.type sub_404348, @function
sub_404348:

	nop	dword ptr [rax + rax]
.label_316:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_315
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40435b
	.globl sub_40435b
	.type sub_40435b, @function
sub_40435b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404365
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_316
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_316
.label_315:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404380
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_317
	call	rpl_calloc
	test	rax, rax
	je	.label_317
	pop	rcx
	ret	
.label_317:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4043a6
	.globl sub_4043a6
	.type sub_4043a6, @function
sub_4043a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0
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
	.align	32
	#Procedure 0x404422
	.globl sub_404422
	.type sub_404422, @function
sub_404422:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404430
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
	.align	32
	#Procedure 0x40443f
	.globl sub_40443f
	.type sub_40443f, @function
sub_40443f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404440

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40444e
	.globl sub_40444e
	.type sub_40444e, @function
sub_40444e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404450

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
	js	.label_321
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_324
	cmp	r12d, 0x7fffffff
	je	.label_319
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
	jne	.label_322
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_322:
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
.label_324:
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
	jbe	.label_320
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_323
.label_320:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_318
	mov	rdi, r14
	call	free
.label_318:
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
.label_323:
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
.label_321:
	call	abort
.label_319:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40460d
	.globl sub_40460d
	.type sub_40460d, @function
sub_40460d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404610

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_331
	nop	
.label_330:
	mov	edi, OFFSET FLAT:label_171
	call	strcmp
	test	eax, eax
	je	.label_328
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_330
.label_328:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_171
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_213
	mov	ecx, OFFSET FLAT:label_214
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_325
	mov	esi, OFFSET FLAT:label_327
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_325
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_171
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_214
	mov	ecx, OFFSET FLAT:label_171
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_334
	mov	ecx, OFFSET FLAT:label_178
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
	.align	32
	#Procedure 0x40472a
	.globl sub_40472a
	.type sub_40472a, @function
sub_40472a:

	nop	word ptr [rax + rax]
.label_337:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_335
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_335:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404764
	.globl sub_404764
	.type sub_404764, @function
sub_404764:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404766

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
	jne	.label_336
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_336
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_337
.label_336:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x4047a0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047aa
	.globl sub_4047aa
	.type sub_4047aa, @function
sub_4047aa:

	nop	word ptr [rax + rax]
.label_338:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4047b5
	.globl sub_4047b5
	.type sub_4047b5, @function
sub_4047b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047c3

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_338
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_339
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_339:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4047f6
	.globl sub_4047f6
	.type sub_4047f6, @function
sub_4047f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404800

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_340
	test	rbx, rbx
	jne	.label_340
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_340:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_342
	test	rax, rax
	je	.label_341
.label_342:
	pop	rbx
	ret	
.label_341:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404830

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
	je	.label_343
	cmp	r15, -2
	jb	.label_343
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_343
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_343:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404886
	.globl sub_404886
	.type sub_404886, @function
sub_404886:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_346
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_346:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_178
	mov	edx, OFFSET FLAT:label_163
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_348
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_347
	cmp	eax, 0x76
	je	.label_345
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_344
.label_347:
	xor	edi, edi
.label_344:
	call	rcx
.label_348:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_345:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40498c
	.globl sub_40498c
	.type sub_40498c, @function
sub_40498c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404990

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
	.align	32
	#Procedure 0x4049bd
	.globl sub_4049bd
	.type sub_4049bd, @function
sub_4049bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0
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
	.align	32
	#Procedure 0x4049d3
	.globl sub_4049d3
	.type sub_4049d3, @function
sub_4049d3:

	nop	word ptr cs:[rax + rax]
.label_351:
	inc	rax
	mov	sil, dl
.label_353:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_351
	test	cl, cl
	je	.label_349
	mov	edx, esi
	and	dl, 1
	je	.label_350
	xor	esi, esi
.label_350:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_351
.label_349:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a0b
	.globl sub_404a0b
	.type sub_404a0b, @function
sub_404a0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a10

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_352:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_352
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_353
	.section	.text
	.align	32
	#Procedure 0x404a31
	.globl sub_404a31
	.type sub_404a31, @function
sub_404a31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a40

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404a4a
	.globl sub_404a4a
	.type sub_404a4a, @function
sub_404a4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a50
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x404a5d
	.globl sub_404a5d
	.type sub_404a5d, @function
sub_404a5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a60
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_354:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a73
	.globl sub_404a73
	.type sub_404a73, @function
sub_404a73:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a7b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_354
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a90
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_355
.label_356:
	ret	
.label_355:
	cmp	edi, 0x7f
	je	.label_356
	xor	eax, eax
	jmp	.label_356
	.section	.text
	.align	32
	#Procedure 0x404aa1
	.globl sub_404aa1
	.type sub_404aa1, @function
sub_404aa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404aba
	.globl sub_404aba
	.type sub_404aba, @function
sub_404aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0
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
	.align	32
	#Procedure 0x404ad0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x404ad9
	.globl sub_404ad9
	.type sub_404ad9, @function
sub_404ad9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ae0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x404aea
	.globl sub_404aea
	.type sub_404aea, @function
sub_404aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b55
	.globl sub_404b55
	.type sub_404b55, @function
sub_404b55:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b62
	.globl sub_404b62
	.type sub_404b62, @function
sub_404b62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b86
	.globl sub_404b86
	.type sub_404b86, @function
sub_404b86:

	nop	word ptr cs:[rax + rax]
