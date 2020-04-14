	.section	.text
	.align	16
	#Procedure 0x4012b9
	.globl sub_4012b9
	.type sub_4012b9, @function
sub_4012b9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4012ba
	.globl sub_4012ba
	.type sub_4012ba, @function
sub_4012ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4012f2
	.globl sub_4012f2
	.type sub_4012f2, @function
sub_4012f2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40133a
	.globl sub_40133a
	.type sub_40133a, @function
sub_40133a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40135c
	.globl sub_40135c
	.type sub_40135c, @function
sub_40135c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40136d
	.globl sub_40136d
	.type sub_40136d, @function
sub_40136d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401386
	.globl sub_401386
	.type sub_401386, @function
sub_401386:

	nop	word ptr cs:[rax + rax]
.label_10:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_9
	call	__errno_location
	mov	dword ptr [rax], 0
.label_9:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4013ab

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
	jne	.label_10
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_9
	test	cl, cl
	jne	.label_9
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_9
.label_11:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4013f5
	.globl sub_4013f5
	.type sub_4013f5, @function
sub_4013f5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013fb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_11
	test	rdx, rdx
	je	.label_11
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_15:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401465
	.globl sub_401465
	.type sub_401465, @function
sub_401465:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401467
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_15
	test	rdx, rdx
	je	.label_15
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
	#Procedure 0x4014d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x401524
	.globl sub_401524
	.type sub_401524, @function
sub_401524:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401530
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
	je	.label_17
	test	r15, r15
	je	.label_16
.label_17:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_16:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401572
	.globl sub_401572
	.type sub_401572, @function
sub_401572:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401580
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
	#Procedure 0x401641
	.globl sub_401641
	.type sub_401641, @function
sub_401641:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650

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
.label_88:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_86
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_90]
.label_406:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_93
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_29
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_407:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_111
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_111
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_124:
	cmp	r14, r11
	jae	.label_114
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_114:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_124
.label_111:
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
	jmp	.label_30
.label_399:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_30
.label_402:
	mov	al, 1
.label_400:
	mov	r12b, 1
.label_403:
	test	r12b, 1
	mov	cl, 1
	je	.label_138
	mov	ecx, eax
.label_138:
	mov	al, cl
.label_401:
	test	r12b, 1
	jne	.label_18
	test	r11, r11
	je	.label_20
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_20:
	mov	r14d, 1
	jmp	.label_24
.label_18:
	xor	r14d, r14d
.label_24:
	mov	ecx, OFFSET FLAT:label_29
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_30
.label_404:
	test	r12b, 1
	jne	.label_41
	test	r11, r11
	je	.label_44
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_44:
	mov	r14d, 1
	jmp	.label_46
.label_405:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_48
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_30
.label_41:
	xor	r14d, r14d
.label_46:
	mov	eax, OFFSET FLAT:label_48
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_30:
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
	jmp	.label_70
	.section	.text
	.align	16
	#Procedure 0x40193d
	.globl sub_40193d
	.type sub_40193d, @function
sub_40193d:

	nop	dword ptr [rax]
.label_22:
	inc	rsi
.label_70:
	cmp	rbp, -1
	je	.label_104
	cmp	rsi, rbp
	jne	.label_106
	jmp	.label_108
	.section	.text
	.align	16
	#Procedure 0x401953
	.globl sub_401953
	.type sub_401953, @function
sub_401953:

	nop	word ptr cs:[rax + rax]
.label_104:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_113
.label_106:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_67
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_78
	cmp	rbp, -1
	jne	.label_78
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
.label_78:
	cmp	rbx, rbp
	jbe	.label_127
.label_67:
	xor	r8d, r8d
.label_25:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_64
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_131]
.label_423:
	test	rsi, rsi
	jne	.label_34
	jmp	.label_61
	.section	.text
	.align	16
	#Procedure 0x4019f5
	.globl sub_4019f5
	.type sub_4019f5, @function
sub_4019f5:

	nop	word ptr cs:[rax + rax]
.label_127:
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
	jne	.label_31
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_25
	jmp	.label_45
.label_31:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_25
.label_427:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_55
	test	rsi, rsi
	jne	.label_57
	cmp	rbp, 1
	je	.label_61
	xor	r13d, r13d
	jmp	.label_23
.label_416:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_66
	cmp	byte ptr [rsp + 6], 0
	jne	.label_69
	cmp	r12d, 2
	jne	.label_73
	mov	eax, r9d
	and	al, 1
	jne	.label_73
	cmp	r14, r11
	jae	.label_75
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_75:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_79
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_79:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_43
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_43:
	add	r14, 3
	mov	r9b, 1
.label_73:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_19
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_19:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_91
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_91
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_91
	cmp	r14, r11
	jae	.label_56
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_56:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_105
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_105:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_23
.label_417:
	mov	bl, 0x62
	jmp	.label_117
.label_418:
	mov	cl, 0x74
	jmp	.label_119
.label_419:
	mov	bl, 0x76
	jmp	.label_117
.label_420:
	mov	bl, 0x66
	jmp	.label_117
.label_421:
	mov	cl, 0x72
	jmp	.label_119
.label_424:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_123
	cmp	byte ptr [rsp + 6], 0
	jne	.label_39
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
	jae	.label_126
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_126:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_136
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_136:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_139
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_139:
	add	r14, 3
	xor	r9d, r9d
.label_123:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_23
.label_425:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_26
	cmp	r12d, 2
	jne	.label_34
	cmp	byte ptr [rsp + 6], 0
	je	.label_34
	jmp	.label_39
.label_426:
	cmp	r12d, 2
	jne	.label_42
	cmp	byte ptr [rsp + 6], 0
	jne	.label_39
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_51
.label_64:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_52
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
.label_35:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_72
	test	r8b, r8b
	je	.label_72
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_23
.label_55:
	test	rsi, rsi
	jne	.label_38
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_38
.label_61:
	mov	dl, 1
.label_422:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_39
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_23:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_98
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_107
	jmp	.label_103
	.section	.text
	.align	16
	#Procedure 0x401d44
	.globl sub_401d44
	.type sub_401d44, @function
sub_401d44:

	nop	word ptr cs:[rax + rax]
.label_98:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_103
.label_107:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_109
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_51
	jmp	.label_121
	.section	.text
	.align	16
	#Procedure 0x401d8d
	.globl sub_401d8d
	.type sub_401d8d, @function
sub_401d8d:

	nop	dword ptr [rax]
.label_103:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_121
	jmp	.label_51
.label_109:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_121
.label_66:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_22
	xor	r15d, r15d
	jmp	.label_34
.label_42:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_119
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_51
.label_119:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_39
.label_117:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_23
	nop	word ptr cs:[rax + rax]
.label_121:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_69
	cmp	r12d, 2
	jne	.label_21
	mov	eax, r9d
	and	al, 1
	jne	.label_21
	cmp	r14, r11
	jae	.label_60
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_60:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_32
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_32:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_40
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_40:
	add	r14, 3
	mov	r9b, 1
.label_21:
	cmp	r14, r11
	jae	.label_137
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_137:
	inc	r14
	jmp	.label_49
.label_52:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_53
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_53:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_62:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_77
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_81
	cmp	rbp, -2
	je	.label_85
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_129
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_99:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_95
	bt	rsi, rdx
	jb	.label_102
.label_95:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_99
.label_129:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_122
	xor	r13d, r13d
.label_122:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_62
	jmp	.label_35
.label_91:
	xor	r13d, r13d
	jmp	.label_23
.label_38:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_23
.label_26:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_34
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_34
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_34
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_130
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_101
	cmp	byte ptr [rsp + 6], 0
	jne	.label_132
	cmp	r14, r11
	jae	.label_96
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_96:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_83
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_83:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_28
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_28:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_100
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_100:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_23
.label_34:
	xor	eax, eax
.label_57:
	xor	r13d, r13d
	jmp	.label_23
.label_72:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_50
	.section	.text
	.align	16
	#Procedure 0x402072
	.globl sub_402072
	.type sub_402072, @function
sub_402072:

	nop	word ptr cs:[rax + rax]
.label_125:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_50:
	test	r8b, r8b
	je	.label_58
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_59
	cmp	r14, r11
	jae	.label_63
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_63:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_59
	.section	.text
	.align	16
	#Procedure 0x4020bc
	.globl sub_4020bc
	.type sub_4020bc, @function
sub_4020bc:

	nop	dword ptr [rax]
.label_58:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_45
	cmp	r12d, 2
	jne	.label_76
	mov	eax, r9d
	and	al, 1
	jne	.label_76
	cmp	r14, r11
	jae	.label_80
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_80:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_135
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_135:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_87
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_87:
	add	r14, 3
	mov	r9b, 1
.label_76:
	cmp	r14, r11
	jae	.label_54
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_54:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_94
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_94:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_115
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_115:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_59:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_51
	test	r9b, 1
	je	.label_89
	mov	ebx, eax
	and	bl, 1
	jne	.label_89
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_120
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_120:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_128
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_128:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_89:
	cmp	r14, r11
	jae	.label_125
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_125
	.section	.text
	.align	16
	#Procedure 0x4021c3
	.globl sub_4021c3
	.type sub_4021c3, @function
sub_4021c3:

	nop	word ptr cs:[rax + rax]
.label_51:
	test	r9b, 1
	je	.label_82
	and	al, 1
	jne	.label_82
	cmp	r14, r11
	jae	.label_133
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_133:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_118
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_118:
	add	r14, 2
	xor	r9d, r9d
.label_82:
	mov	ebx, r15d
.label_49:
	cmp	r14, r11
	jae	.label_27
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_27:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_22
.label_81:
	xor	r13d, r13d
.label_77:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_35
.label_85:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_37
	mov	rsi, qword ptr [rsp + 0x58]
.label_47:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_112
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_47
	xor	r13d, r13d
	jmp	.label_35
.label_37:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_35
.label_112:
	xor	r13d, r13d
	jmp	.label_35
.label_130:
	xor	r13d, r13d
	jmp	.label_23
.label_101:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_23
	.section	.text
	.align	16
	#Procedure 0x402298
	.globl sub_402298
	.type sub_402298, @function
sub_402298:

	nop	dword ptr [rax + rax]
.label_108:
	mov	rcx, rsi
.label_113:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_65
	or	al, dl
	je	.label_71
.label_65:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_74
	or	al, dl
	jne	.label_74
	test	r10b, 1
	jne	.label_84
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_74
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_88
.label_74:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_92
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_97
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_97
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_110:
	cmp	r14, r11
	jae	.label_134
	mov	byte ptr [rcx + r14], al
.label_134:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_110
	jmp	.label_97
.label_69:
	mov	qword ptr [rsp + 0x20], rbp
.label_45:
	mov	rdx, rdi
	jmp	.label_116
.label_39:
	mov	qword ptr [rsp + 0x20], rbp
.label_102:
	mov	rdx, rdi
	mov	eax, 2
.label_68:
	mov	qword ptr [rsp + 0x38], rax
.label_116:
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
.label_33:
	mov	r14, rax
.label_36:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_116
.label_84:
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
	jmp	.label_33
.label_92:
	mov	rcx, qword ptr [rsp + 8]
.label_97:
	cmp	r14, r11
	jae	.label_36
	mov	byte ptr [rcx + r14], 0
	jmp	.label_36
.label_132:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_68
.label_86:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402457
	.globl sub_402457
	.type sub_402457, @function
sub_402457:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460

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
	jne	.label_145
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_141
	cmp	ecx, 0x55
	jne	.label_140
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_140
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_140
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_140
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_140
	cmp	byte ptr [rax + 5], 0
	jne	.label_140
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_147
	mov	eax, OFFSET FLAT:label_148
	jmp	.label_144
.label_141:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_140
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_140
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_140
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_140
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_140
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_140
	cmp	byte ptr [rax + 7], 0
	je	.label_146
.label_140:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_48
	mov	eax, OFFSET FLAT:label_29
.label_144:
	cmove	rax, rcx
.label_145:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_146:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_142
	mov	eax, OFFSET FLAT:label_143
	jmp	.label_144
	.section	.text
	.align	16
	#Procedure 0x402525
	.globl sub_402525
	.type sub_402525, @function
sub_402525:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402530
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402541
	.globl sub_402541
	.type sub_402541, @function
sub_402541:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_149
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_149:
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
	#Procedure 0x4025d3
	.globl sub_4025d3
	.type sub_4025d3, @function
sub_4025d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025e0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_150
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_153
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_151
.label_153:
	call	xalloc_die
.label_150:
	test	rcx, rcx
	jne	.label_154
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_154:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_156
.label_151:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_152
	test	rbx, rbx
	jne	.label_152
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_156:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402663
	.globl sub_402663
	.type sub_402663, @function
sub_402663:

	nop	word ptr [rax + rax]
.label_152:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_155
	test	rax, rax
	je	.label_153
.label_155:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402680

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
	je	.label_157
	cmp	r15, -2
	jb	.label_157
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_157
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_157:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026d6
	.globl sub_4026d6
	.type sub_4026d6, @function
sub_4026d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0

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
	jne	.label_158
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_158
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_159
.label_158:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_159:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_160
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_160:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40274e
	.globl sub_40274e
	.type sub_40274e, @function
sub_40274e:

	nop	
.label_161:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402755
	.globl sub_402755
	.type sub_402755, @function
sub_402755:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40275b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_162
	test	rax, rax
	je	.label_161
.label_162:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402770
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_163
	test	rsi, rsi
	je	.label_163
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_163:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4027e0

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
	#Procedure 0x4027f9
	.globl sub_4027f9
	.type sub_4027f9, @function
sub_4027f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402800
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
	#Procedure 0x402833
	.globl sub_402833
	.type sub_402833, @function
sub_402833:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402840
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x4028af
	.globl sub_4028af
	.type sub_4028af, @function
sub_4028af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4028b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_164
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_164
	test	byte ptr [rbx + 1], 1
	je	.label_164
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_164:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4028e3
	.globl sub_4028e3
	.type sub_4028e3, @function
sub_4028e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4028fa
	.globl sub_4028fa
	.type sub_4028fa, @function
sub_4028fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402900

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_165
	test	rbx, rbx
	jne	.label_165
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_167:
	call	xalloc_die
.label_165:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_166
	test	rax, rax
	je	.label_167
.label_166:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402930
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
	#Procedure 0x402948
	.globl sub_402948
	.type sub_402948, @function
sub_402948:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402950

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x4029a5
	.globl sub_4029a5
	.type sub_4029a5, @function
sub_4029a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_169
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_172
	mov	ecx, OFFSET FLAT:label_173
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402a24
	.globl sub_402a24
	.type sub_402a24, @function
sub_402a24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_174
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_176:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_176
.label_174:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_177
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_178], OFFSET FLAT:slot0
.label_177:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_175
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_175:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ac1
	.globl sub_402ac1
	.type sub_402ac1, @function
sub_402ac1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ad0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_180
	cmp	byte ptr [rax], 0x43
	jne	.label_182
	cmp	byte ptr [rax + 1], 0
	je	.label_179
.label_182:
	mov	esi, OFFSET FLAT:label_181
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_180
.label_179:
	xor	ebx, ebx
.label_180:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b01
	.globl sub_402b01
	.type sub_402b01, @function
sub_402b01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b10

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_183
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_184
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b35
	.globl sub_402b35
	.type sub_402b35, @function
sub_402b35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b40
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
	#Procedure 0x402b53
	.globl sub_402b53
	.type sub_402b53, @function
sub_402b53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_185
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_186
	test	rax, rax
	je	.label_185
.label_186:
	pop	rbx
	ret	
.label_185:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b95
	.globl sub_402b95
	.type sub_402b95, @function
sub_402b95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0
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
	#Procedure 0x402baf
	.globl sub_402baf
	.type sub_402baf, @function
sub_402baf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402bb0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_187
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_188
	test	rbx, rbx
	jne	.label_188
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_187:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402be4
	.globl sub_402be4
	.type sub_402be4, @function
sub_402be4:

	nop	dword ptr [rax + rax]
.label_188:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_189
	test	rax, rax
	je	.label_187
.label_189:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_190:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_190
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402c21
	.globl sub_402c21
	.type sub_402c21, @function
sub_402c21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30
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
	je	.label_191
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
.label_191:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402cc5
	.globl sub_402cc5
	.type sub_402cc5, @function
sub_402cc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cd0

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
	je	.label_198
	mov	edx, OFFSET FLAT:label_207
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_194
.label_198:
	mov	edx, OFFSET FLAT:label_196
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_194:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
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
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_203
	jmp	qword ptr [(r12 * 8) + label_204]
.label_452:
	add	rsp, 8
	jmp	.label_195
.label_203:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
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
	jmp	.label_195
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
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
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
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
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
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
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
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
	jmp	.label_195
.label_457:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
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
	jmp	.label_195
.label_458:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
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
	jmp	.label_195
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
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
	jmp	.label_195
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
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
	jmp	.label_195
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
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
.label_195:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403028
	.globl sub_403028
	.type sub_403028, @function
sub_403028:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030
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
	#Procedure 0x403049
	.globl sub_403049
	.type sub_403049, @function
sub_403049:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403050

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	test	r14d, r14d
	jne	.label_232
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	cmp	dword ptr [rip + uname_mode],  1
	jne	.label_213
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	jmp	.label_236
.label_232:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, r14d
	call	exit
.label_213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
.label_236:
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	cmp	dword ptr [rip + uname_mode],  1
	mov	eax, OFFSET FLAT:label_218
	mov	ebx, OFFSET FLAT:label_219
	cmove	rbx, rax
	mov	esi, OFFSET FLAT:label_220
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:emit_ancillary_info.infomap
	test	eax, eax
	je	.label_212
	mov	esi, OFFSET FLAT:label_242
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:label_216
	test	eax, eax
	je	.label_212
	mov	esi, OFFSET FLAT:label_223
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:label_231
	test	eax, eax
	je	.label_212
	mov	esi, OFFSET FLAT:label_234
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:label_238
	test	eax, eax
	je	.label_212
	mov	esi, OFFSET FLAT:label_226
	mov	rdi, rbx
	call	strcmp
	mov	ecx, OFFSET FLAT:label_211
	test	eax, eax
	je	.label_212
	mov	esi, OFFSET FLAT:label_225
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_214
	mov	ecx, OFFSET FLAT:label_215
	cmove	rcx, rax
.label_212:
	mov	rbp, qword ptr [rcx + 8]
	test	rbp, rbp
	cmove	rbp, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_172
	mov	ecx, OFFSET FLAT:label_173
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_217
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_217
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_173
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rbx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbp, rbx
	mov	eax, OFFSET FLAT:label_228
	mov	ecx, OFFSET FLAT:label_183
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbp
	call	__printf_chk
	mov	edi, r14d
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4032d7
	.globl sub_4032d7
	.type sub_4032d7, @function
sub_4032d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_253
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_255
.label_253:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_255:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_244
	cmp	r10d, 0x29
	jae	.label_252
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_254
.label_252:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_254:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_244
	cmp	r10d, 0x29
	jae	.label_250
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_251
.label_250:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_251:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_244
	cmp	r10d, 0x29
	jae	.label_248
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_249
.label_248:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_249:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_244
	cmp	r10d, 0x29
	jae	.label_246
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_247
.label_246:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_247:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_244
	cmp	r10d, 0x29
	jae	.label_243
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_245
.label_243:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_245:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_244
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_244
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_244
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_244
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_244:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034c2
	.globl sub_4034c2
	.type sub_4034c2, @function
sub_4034c2:

	nop	word ptr cs:[rax + rax]
.label_256:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4034d5
	.globl sub_4034d5
	.type sub_4034d5, @function
sub_4034d5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034dd
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
	je	.label_256
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
	.section	.text
	.align	16
	#Procedure 0x403540
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403548
	.globl sub_403548
	.type sub_403548, @function
sub_403548:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403550

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_259
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_261
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_261
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_258
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_258:
	mov	rbx, r14
.label_261:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_259:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_260
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4035f1
	.globl sub_4035f1
	.type sub_4035f1, @function
sub_4035f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403600

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x190
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_183
	call	setlocale
	mov	edi, OFFSET FLAT:label_242
	mov	esi, OFFSET FLAT:label_276
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_242
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	cmp	dword ptr [rip + uname_mode],  2
	jne	.label_282
	mov	edx, OFFSET FLAT:label_183
	mov	ecx, OFFSET FLAT:arch_long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	mov	ebx, 0x10
	cmp	eax, -1
	je	.label_288
	cmp	eax, 0xffffff7d
	je	.label_290
	cmp	eax, 0xffffff7e
	jne	.label_292
	xor	edi, edi
	call	usage
.label_282:
	xor	ecx, ecx
	jmp	.label_263
.label_383:
	or	ebx, 0x40
	mov	ecx, ebx
	nop	
.label_263:
	mov	ebx, ecx
	mov	edx, OFFSET FLAT:label_296
	mov	ecx, OFFSET FLAT:uname_long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_300
	add	eax, -0x61
	cmp	eax, 0x15
	ja	.label_303
	mov	ecx, 0xffffffff
	jmp	qword ptr [(rax * 8) + label_304]
.label_384:
	or	ebx, 0x10
	mov	ecx, ebx
	jmp	.label_263
.label_385:
	or	ebx, 2
	mov	ecx, ebx
	jmp	.label_263
.label_388:
	or	ebx, 4
	mov	ecx, ebx
	jmp	.label_263
.label_389:
	or	ebx, 1
	mov	ecx, ebx
	jmp	.label_263
.label_390:
	or	ebx, 8
	mov	ecx, ebx
	jmp	.label_263
.label_386:
	or	ebx, 0x80
	mov	ecx, ebx
	jmp	.label_263
.label_387:
	or	ebx, 0x20
	mov	ecx, ebx
	jmp	.label_263
.label_300:
	cmp	eax, -1
	jne	.label_265
.label_288:
	cmp	dword ptr [rip + optind],  ebp
	jne	.label_270
	test	ebx, ebx
	mov	ebp, 1
	cmovne	ebp, ebx
	test	bpl, 0x1f
	je	.label_272
	lea	rdi, [rsp + 8]
	call	uname
	cmp	eax, -1
	je	.label_279
	test	bpl, 1
	je	.label_281
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_264
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_283
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_264:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	lea	rdi, [rsp + 8]
	call	fputs_unlocked
.label_281:
	test	bpl, 2
	je	.label_294
	lea	rbx, [rsp + 0x49]
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_289
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_297
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_289:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_294:
	test	bpl, 4
	je	.label_307
	lea	rbx, [rsp + 0x8a]
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_274
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_299
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_274:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_307:
	test	bpl, 8
	je	.label_275
	lea	rbx, [rsp + 0xcb]
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_277
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_278
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_277:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_275:
	test	bpl, 0x10
	je	.label_272
	lea	rbx, [rsp + 0x10c]
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_286
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_293
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_286:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_272:
	cmp	ebp, -1
	je	.label_302
	mov	eax, ebp
	and	eax, 0x20
	je	.label_302
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_301
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_306
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_301:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:main.unknown
	call	fputs_unlocked
.label_302:
	cmp	ebp, -1
	je	.label_266
	mov	eax, ebp
	and	eax, 0x40
	je	.label_266
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_271
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_273
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_271:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:main.unknown
	call	fputs_unlocked
.label_266:
	test	bpl, bpl
	jns	.label_284
	cmp	byte ptr [rip + print_element.printed],  1
	jne	.label_285
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_287
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_285:
	mov	byte ptr [rip + print_element.printed],  1
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_291
	call	fputs_unlocked
.label_284:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_295
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_305:
	xor	eax, eax
	add	rsp, 0x190
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_295:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_305
.label_306:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_301
.label_273:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_271
.label_287:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_285
.label_283:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_264
.label_297:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_289
.label_299:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_274
.label_278:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_277
.label_293:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_286
.label_265:
	cmp	eax, 0xffffff7d
	je	.label_280
	cmp	eax, 0xffffff7e
	jne	.label_303
	xor	edi, edi
	call	usage
.label_280:
	mov	rdi, qword ptr [rip + stdout]
	cmp	dword ptr [rip + uname_mode],  1
	mov	eax, OFFSET FLAT:label_218
	mov	esi, OFFSET FLAT:label_219
	cmove	rsi, rax
	mov	rcx, qword ptr [rip + Version]
	mov	edx, OFFSET FLAT:label_172
	mov	r8d, OFFSET FLAT:label_267
	xor	r9d, r9d
.label_269:
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_303:
	mov	edi, 1
	call	usage
.label_270:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_279:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_290:
	mov	rdi, qword ptr [rip + stdout]
	cmp	dword ptr [rip + uname_mode],  1
	mov	eax, OFFSET FLAT:label_218
	mov	esi, OFFSET FLAT:label_219
	cmove	rsi, rax
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	edx, OFFSET FLAT:label_172
	mov	r8d, OFFSET FLAT:label_267
	mov	r9d, OFFSET FLAT:label_268
	jmp	.label_269
.label_292:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x403b59
	.globl sub_403b59
	.type sub_403b59, @function
sub_403b59:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b60

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
	#Procedure 0x403b77
	.globl sub_403b77
	.type sub_403b77, @function
sub_403b77:

	nop	word ptr [rax + rax]
.label_309:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403b85
	.globl sub_403b85
	.type sub_403b85, @function
sub_403b85:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b8d
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
	je	.label_309
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
.label_311:
	mov	ecx, 1
.label_310:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403c00
	.globl sub_403c00
	.type sub_403c00, @function
sub_403c00:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c05

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_311
	test	rsi, rsi
	mov	ecx, 1
	je	.label_310
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_310
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_312
	test	rax, rax
	je	.label_313
.label_312:
	pop	rbx
	ret	
.label_313:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403c5a
	.globl sub_403c5a
	.type sub_403c5a, @function
sub_403c5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c60
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
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
	#Procedure 0x403cce
	.globl sub_403cce
	.type sub_403cce, @function
sub_403cce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403cd0

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
	je	.label_314
	test	r15, r15
	je	.label_315
.label_314:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_315:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403d0c
	.globl sub_403d0c
	.type sub_403d0c, @function
sub_403d0c:

	nop	dword ptr [rax]
.label_316:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403d15
	.globl sub_403d15
	.type sub_403d15, @function
sub_403d15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d1f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_316
	call	rpl_calloc
	test	rax, rax
	je	.label_316
	pop	rcx
	ret	
.label_317:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d46
	.globl sub_403d46
	.type sub_403d46, @function
sub_403d46:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d4b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_317
	test	rdx, rdx
	je	.label_317
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d70
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
	je	.label_319
	test	r14, r14
	je	.label_318
.label_319:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_318:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403da6
	.globl sub_403da6
	.type sub_403da6, @function
sub_403da6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403db0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403dba
	.globl sub_403dba
	.type sub_403dba, @function
sub_403dba:

	nop	word ptr [rax + rax]
.label_323:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403dc5
	.globl sub_403dc5
	.type sub_403dc5, @function
sub_403dc5:

	nop	word ptr cs:[rax + rax]
.label_322:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_320
	mov	qword ptr [rsi], rbx
.label_324:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_321
	test	rax, rax
	je	.label_320
.label_321:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403df9
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_322
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_323
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_324
	call	free
	xor	eax, eax
	jmp	.label_321
.label_320:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e30
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
	#Procedure 0x403e3f
	.globl sub_403e3f
	.type sub_403e3f, @function
sub_403e3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e40

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_325
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_327
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_325
.label_327:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_325
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_326
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_326:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_325:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403eb4
	.globl sub_403eb4
	.type sub_403eb4, @function
sub_403eb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ec0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_329
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403ef0
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
	#Procedure 0x403f08
	.globl sub_403f08
	.type sub_403f08, @function
sub_403f08:

	nop	dword ptr [rax + rax]
.label_330:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f15
	.globl sub_403f15
	.type sub_403f15, @function
sub_403f15:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f19
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
	je	.label_330
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
	#Procedure 0x403f80
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
	je	.label_331
	mov	qword ptr [rax], rbx
.label_331:
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
	#Procedure 0x40406c
	.globl sub_40406c
	.type sub_40406c, @function
sub_40406c:

	nop	dword ptr [rax]
.label_332:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404075
	.globl sub_404075
	.type sub_404075, @function
sub_404075:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404084
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
	je	.label_332
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
	.section	.text
	.align	16
	#Procedure 0x4040e0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4040ee
	.globl sub_4040ee
	.type sub_4040ee, @function
sub_4040ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4040f0

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
	js	.label_336
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_339
	cmp	r12d, 0x7fffffff
	je	.label_334
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
	jne	.label_337
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_337:
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
.label_339:
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
	jbe	.label_335
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_338
.label_335:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_333
	mov	rdi, r14
	call	free
.label_333:
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
.label_338:
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
.label_336:
	call	abort
.label_334:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4042ad
	.globl sub_4042ad
	.type sub_4042ad, @function
sub_4042ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_12]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_340
	test	rsi, rsi
	je	.label_340
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
.label_340:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40431c
	.globl sub_40431c
	.type sub_40431c, @function
sub_40431c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404320
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404328
	.globl sub_404328
	.type sub_404328, @function
sub_404328:

	nop	dword ptr [rax + rax]
.label_342:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_343
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_342
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_329
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_345:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4043ad

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_346
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_344
	cmp	dword ptr [rbp], 0x20
	jne	.label_344
.label_346:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_345
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043f0
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
	#Procedure 0x404426
	.globl sub_404426
	.type sub_404426, @function
sub_404426:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404430
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
	#Procedure 0x4044a5
	.globl sub_4044a5
	.type sub_4044a5, @function
sub_4044a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404515
	.globl sub_404515
	.type sub_404515, @function
sub_404515:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404522
	.globl sub_404522
	.type sub_404522, @function
sub_404522:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404546
	.globl sub_404546
	.type sub_404546, @function
sub_404546:

	nop	word ptr cs:[rax + rax]
