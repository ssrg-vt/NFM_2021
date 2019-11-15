	.section	.text
	.align	32
	#Procedure 0x4011e9
	.globl sub_4011e9
	.type sub_4011e9, @function
sub_4011e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4011ea
	.globl sub_4011ea
	.type sub_4011ea, @function
sub_4011ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401222
	.globl sub_401222
	.type sub_401222, @function
sub_401222:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40126a
	.globl sub_40126a
	.type sub_40126a, @function
sub_40126a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40128c
	.globl sub_40128c
	.type sub_40128c, @function
sub_40128c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40129d
	.globl sub_40129d
	.type sub_40129d, @function
sub_40129d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4012b6
	.globl sub_4012b6
	.type sub_4012b6, @function
sub_4012b6:

	nop	word ptr cs:[rax + rax]
.label_11:
	xor	eax, eax
	jmp	.label_9
	.section	.text
	.align	32
	#Procedure 0x4012c4
	.globl sub_4012c4
	.type sub_4012c4, @function
sub_4012c4:

	nop	word ptr cs:[rax + rax]
.label_9:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4012cf
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_11
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_10]]
	.section	.text
	.align	32
	#Procedure 0x4012e0
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
	#Procedure 0x401352
	.globl sub_401352
	.type sub_401352, @function
sub_401352:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401360

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x401365
	.globl sub_401365
	.type sub_401365, @function
sub_401365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401370
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_12:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_12
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x401391
	.globl sub_401391
	.type sub_401391, @function
sub_401391:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013a0
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
	#Procedure 0x4013ad
	.globl sub_4013ad
	.type sub_4013ad, @function
sub_4013ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4013b0
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
	#Procedure 0x4013c3
	.globl sub_4013c3
	.type sub_4013c3, @function
sub_4013c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013d0

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
	#Procedure 0x401407
	.globl sub_401407
	.type sub_401407, @function
sub_401407:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401410

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
	#Procedure 0x40143d
	.globl sub_40143d
	.type sub_40143d, @function
sub_40143d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401440
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
	#Procedure 0x401453
	.globl sub_401453
	.type sub_401453, @function
sub_401453:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401460
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_13
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_15:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_15
.label_13:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_16
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_17]], OFFSET FLAT:slot0
.label_16:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_14
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_14:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4014f1
	.globl sub_4014f1
	.type sub_4014f1, @function
sub_4014f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401500
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40150a
	.globl sub_40150a
	.type sub_40150a, @function
sub_40150a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401510
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_18
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_18:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40152e
	.globl sub_40152e
	.type sub_40152e, @function
sub_40152e:

	nop	
.label_21:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_19
.label_20:
	mov	eax, 1
	test	bpl, bpl
	je	.label_19
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
.label_19:
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
	#Procedure 0x401578
	.globl sub_401578
	.type sub_401578, @function
sub_401578:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40157b

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
	je	.label_21
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_20
	jmp	.label_19
	.section	.text
	.align	32
	#Procedure 0x4015b0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_22
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_22:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015ce
	.globl sub_4015ce
	.type sub_4015ce, @function
sub_4015ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4015d0

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
.label_50:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_107
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_56]]
.label_311:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_63
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_73
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_312:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_81
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_81
	xor	r14d, r14d
.label_93:
	cmp	r14, r11
	jae	.label_91
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_91:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_93
.label_81:
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
	jmp	.label_96
.label_304:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_96
.label_307:
	mov	al, 1
.label_305:
	mov	r12b, 1
.label_308:
	test	r12b, 1
	mov	cl, 1
	je	.label_110
	mov	ecx, eax
.label_110:
	mov	al, cl
.label_306:
	test	r12b, 1
	jne	.label_113
	test	r11, r11
	je	.label_86
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_86:
	mov	r14d, 1
	jmp	.label_119
.label_113:
	xor	r14d, r14d
.label_119:
	mov	ecx, OFFSET FLAT:label_73
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_96
.label_309:
	test	r12b, 1
	jne	.label_126
	test	r11, r11
	je	.label_58
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_58:
	mov	r14d, 1
	jmp	.label_129
.label_310:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_131
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_96
.label_126:
	xor	r14d, r14d
.label_129:
	mov	eax, OFFSET FLAT:label_131
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_96:
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
	jmp	.label_78
	.section	.text
	.align	32
	#Procedure 0x4018ac
	.globl sub_4018ac
	.type sub_4018ac, @function
sub_4018ac:

	nop	dword ptr [rax]
.label_57:
	inc	rsi
.label_78:
	cmp	rbp, -1
	je	.label_72
	cmp	rsi, rbp
	jne	.label_46
	jmp	.label_77
	.section	.text
	.align	32
	#Procedure 0x4018c3
	.globl sub_4018c3
	.type sub_4018c3, @function
sub_4018c3:

	nop	word ptr cs:[rax + rax]
.label_72:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_77
.label_46:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_83
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_85
	cmp	rbp, -1
	jne	.label_85
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
.label_85:
	cmp	rbx, rbp
	jbe	.label_95
.label_83:
	xor	r8d, r8d
.label_34:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_98
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_101]]
.label_328:
	test	rsi, rsi
	jne	.label_40
	jmp	.label_104
	.section	.text
	.align	32
	#Procedure 0x40195e
	.globl sub_40195e
	.type sub_40195e, @function
sub_40195e:

	nop	
.label_95:
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
	je	.label_34
	jmp	.label_31
.label_117:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_34
.label_332:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_133
	test	rsi, rsi
	jne	.label_134
	cmp	rbp, 1
	je	.label_104
	xor	r13d, r13d
	jmp	.label_25
.label_321:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_24
	cmp	byte ptr [rsp + 7], 0
	jne	.label_28
	cmp	r12d, 2
	jne	.label_29
	mov	eax, r9d
	and	al, 1
	jne	.label_29
	cmp	r14, r11
	jae	.label_33
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_33:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_37
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_37:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_42
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_42:
	add	r14, 3
	mov	r9b, 1
.label_29:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_49
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_49:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_52
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_52
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_52
	cmp	r14, r11
	jae	.label_64
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_64:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_111
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_111:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_25
.label_322:
	mov	bl, 0x62
	jmp	.label_80
.label_323:
	mov	cl, 0x74
	jmp	.label_66
.label_324:
	mov	bl, 0x76
	jmp	.label_80
.label_325:
	mov	bl, 0x66
	jmp	.label_80
.label_326:
	mov	cl, 0x72
	jmp	.label_66
.label_329:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_89
	cmp	byte ptr [rsp + 7], 0
	jne	.label_28
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
	jae	.label_94
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_94:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_102
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_102:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_106
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_106:
	add	r14, 3
	xor	r9d, r9d
.label_89:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_25
.label_330:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_116
	cmp	r12d, 2
	jne	.label_40
	cmp	byte ptr [rsp + 7], 0
	je	.label_40
	jmp	.label_28
.label_331:
	cmp	r12d, 2
	jne	.label_124
	cmp	byte ptr [rsp + 7], 0
	jne	.label_28
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_47
.label_98:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_68
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
.label_87:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_43
	test	r8b, r8b
	je	.label_43
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_25
.label_133:
	test	rsi, rsi
	jne	.label_41
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_41
.label_104:
	mov	dl, 1
.label_327:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_28
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_25:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_59
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_60
	jmp	.label_65
	.section	.text
	.align	32
	#Procedure 0x401ca4
	.globl sub_401ca4
	.type sub_401ca4, @function
sub_401ca4:

	nop	word ptr cs:[rax + rax]
.label_59:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_65
.label_60:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_74
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_47
	jmp	.label_88
	.section	.text
	.align	32
	#Procedure 0x401ced
	.globl sub_401ced
	.type sub_401ced, @function
sub_401ced:

	nop	dword ptr [rax]
.label_65:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_88
	jmp	.label_47
.label_74:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_88
.label_24:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_57
	xor	r15d, r15d
	jmp	.label_40
.label_124:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_66
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_47
.label_66:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_28
.label_80:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_25
	nop	word ptr cs:[rax + rax]
.label_88:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_28
	cmp	r12d, 2
	jne	.label_67
	mov	eax, r9d
	and	al, 1
	jne	.label_67
	cmp	r14, r11
	jae	.label_114
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_114:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_79
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_79:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_121
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_121:
	add	r14, 3
	mov	r9b, 1
.label_67:
	cmp	r14, r11
	jae	.label_125
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_125:
	inc	r14
	jmp	.label_127
.label_68:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_130
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_130:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_90:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_36
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_39
	cmp	rbp, -2
	je	.label_137
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_26
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_51:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_132
	bt	rsi, rdx
	jb	.label_31
.label_132:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_51
.label_26:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_76
	xor	r13d, r13d
.label_76:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_90
	jmp	.label_87
.label_52:
	xor	r13d, r13d
	jmp	.label_25
.label_41:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_25
.label_116:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_40
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_40
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_40
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_99
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_32
	cmp	byte ptr [rsp + 7], 0
	jne	.label_28
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_48
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_48:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_61
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_61:
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
	jmp	.label_25
.label_40:
	xor	eax, eax
.label_134:
	xor	r13d, r13d
	jmp	.label_25
.label_43:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_128
	.section	.text
	.align	32
	#Procedure 0x401fd3
	.globl sub_401fd3
	.type sub_401fd3, @function
sub_401fd3:

	nop	word ptr cs:[rax + rax]
.label_92:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_128:
	test	r8b, r8b
	je	.label_135
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_27
	cmp	r14, r11
	jae	.label_136
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_136:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_27
	.section	.text
	.align	32
	#Procedure 0x40201c
	.globl sub_40201c
	.type sub_40201c, @function
sub_40201c:

	nop	dword ptr [rax]
.label_135:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_31
	cmp	r12d, 2
	jne	.label_35
	mov	eax, r9d
	and	al, 1
	jne	.label_35
	cmp	r14, r11
	jae	.label_38
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_38:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_105
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_105:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_103
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_103:
	add	r14, 3
	mov	r9b, 1
.label_35:
	cmp	r14, r11
	jae	.label_69
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_69:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_54
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_54:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_62
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_62:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_27:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_47
	test	r9b, 1
	je	.label_82
	mov	ebx, eax
	and	bl, 1
	jne	.label_82
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_84
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_84:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_97
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_97:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_82:
	cmp	r14, r11
	jae	.label_92
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_92
	.section	.text
	.align	32
	#Procedure 0x402123
	.globl sub_402123
	.type sub_402123, @function
sub_402123:

	nop	word ptr cs:[rax + rax]
.label_47:
	test	r9b, 1
	je	.label_70
	and	al, 1
	jne	.label_70
	cmp	r14, r11
	jae	.label_100
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_100:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_123
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_123:
	add	r14, 2
	xor	r9d, r9d
.label_70:
	mov	ebx, r15d
.label_127:
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
	jmp	.label_57
.label_39:
	xor	r13d, r13d
.label_36:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_87
.label_137:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_122
	mov	rsi, qword ptr [rsp + 0x50]
.label_108:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_30
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_108
	xor	r13d, r13d
	jmp	.label_87
.label_122:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_87
.label_30:
	xor	r13d, r13d
	jmp	.label_87
.label_99:
	xor	r13d, r13d
	jmp	.label_25
.label_32:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_25
	.section	.text
	.align	32
	#Procedure 0x4021f8
	.globl sub_4021f8
	.type sub_4021f8, @function
sub_4021f8:

	nop	dword ptr [rax + rax]
.label_77:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_23
	or	dl, al
	je	.label_31
.label_23:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_44
	or	dl, al
	jne	.label_44
	test	r10b, 1
	jne	.label_45
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_44
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_50
.label_44:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_53
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_55
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_55
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_75:
	cmp	r14, r11
	jae	.label_71
	mov	byte ptr [rcx + r14], al
.label_71:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_75
	jmp	.label_55
.label_28:
	mov	qword ptr [rsp + 0x20], rbp
.label_31:
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
.label_112:
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
.label_45:
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
	jmp	.label_112
.label_53:
	mov	rcx, qword ptr [rsp + 8]
.label_55:
	cmp	r14, r11
	jae	.label_115
	mov	byte ptr [rcx + r14], 0
	jmp	.label_115
.label_107:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40238c
	.globl sub_40238c
	.type sub_40238c, @function
sub_40238c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402390
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x402398
	.globl sub_402398
	.type sub_402398, @function
sub_402398:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4023ae
	.globl sub_4023ae
	.type sub_4023ae, @function
sub_4023ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4023b0

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
	js	.label_141
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_144
	cmp	r12d, 0x7fffffff
	je	.label_139
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
	jne	.label_142
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_142:
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
.label_144:
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
	jbe	.label_140
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_143
.label_140:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_138
	mov	rdi, r14
	call	free
.label_138:
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
.label_143:
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
.label_141:
	call	abort
.label_139:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40256d
	.globl sub_40256d
	.type sub_40256d, @function
sub_40256d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402570
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_146
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_149
	mov	ecx, OFFSET FLAT:label_150
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4025e4
	.globl sub_4025e4
	.type sub_4025e4, @function
sub_4025e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025f0

	.globl main
	.type main, @function
main:
	push	rbx
	mov	rbx, rsi
	cmp	edi, 2
	jne	.label_157
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_152
	call	setlocale
	mov	edi, OFFSET FLAT:label_151
	mov	esi, OFFSET FLAT:label_158
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_151
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rbx, qword ptr [rbx + 8]
	mov	esi, OFFSET FLAT:label_159
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_153
	mov	esi, OFFSET FLAT:label_154
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	jne	.label_157
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_155
	mov	edx, OFFSET FLAT:label_149
	mov	r8d, OFFSET FLAT:label_156
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
.label_157:
	mov	eax, 1
	pop	rbx
	ret	
.label_153:
	mov	edi, 1
	call	usage
	nop	
	nop	dword ptr [rax + rax]
.label_160:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4026a5
	.globl sub_4026a5
	.type sub_4026a5, @function
sub_4026a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026b3

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
	je	.label_160
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
	#Procedure 0x402700
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
	#Procedure 0x40270d
	.globl sub_40270d
	.type sub_40270d, @function
sub_40270d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402710

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_161
	ret	
.label_161:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x402723
	.globl sub_402723
	.type sub_402723, @function
sub_402723:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402730
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402738
	.globl sub_402738
	.type sub_402738, @function
sub_402738:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402740
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_162
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_162:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402763
	.globl sub_402763
	.type sub_402763, @function
sub_402763:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402770

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_163
	test	rax, rax
	je	.label_164
.label_163:
	pop	rbx
	ret	
.label_164:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40278a
	.globl sub_40278a
	.type sub_40278a, @function
sub_40278a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402790
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
	#Procedure 0x40279f
	.globl sub_40279f
	.type sub_40279f, @function
sub_40279f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4027a0

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
	je	.label_177
	mov	edx, OFFSET FLAT:label_168
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_174
.label_177:
	mov	edx, OFFSET FLAT:label_175
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_174:
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
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_180
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_181]]
.label_347:
	add	rsp, 8
	jmp	.label_167
.label_180:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
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
	jmp	.label_167
.label_348:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
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
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
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
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
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
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
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
	jmp	.label_167
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
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
	jmp	.label_167
.label_353:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
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
	jmp	.label_167
.label_354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
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
	jmp	.label_167
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
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
	jmp	.label_167
.label_355:
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
.label_167:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402af8
	.globl sub_402af8
	.type sub_402af8, @function
sub_402af8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b00
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
	#Procedure 0x402b33
	.globl sub_402b33
	.type sub_402b33, @function
sub_402b33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b40
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b4a
	.globl sub_402b4a
	.type sub_402b4a, @function
sub_402b4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b50
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b5a
	.globl sub_402b5a
	.type sub_402b5a, @function
sub_402b5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b60

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_184
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_184:
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
	#Procedure 0x402be3
	.globl sub_402be3
	.type sub_402be3, @function
sub_402be3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bf0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bfa
	.globl sub_402bfa
	.type sub_402bfa, @function
sub_402bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c00
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
	#Procedure 0x402c16
	.globl sub_402c16
	.type sub_402c16, @function
sub_402c16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c20

	.globl usage
	.type usage, @function
usage:
	push	rbx
	mov	ebx, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
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
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_186
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_155
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402cec
	.globl sub_402cec
	.type sub_402cec, @function
sub_402cec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cf0

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
	je	.label_191
	cmp	r15, -2
	jb	.label_191
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_191
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_191:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d46
	.globl sub_402d46
	.type sub_402d46, @function
sub_402d46:

	nop	word ptr cs:[rax + rax]
.label_192:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402d56
	.globl sub_402d56
	.type sub_402d56, @function
sub_402d56:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d5b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_192
	test	rdx, rdx
	je	.label_192
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d80

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
	#Procedure 0x402d97
	.globl sub_402d97
	.type sub_402d97, @function
sub_402d97:

	nop	word ptr [rax + rax]
.label_194:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_193
	test	cl, cl
	jne	.label_193
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_193:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dcb
	.globl sub_402dcb
	.type sub_402dcb, @function
sub_402dcb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dd5

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
	je	.label_194
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_193
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_193
	.section	.text
	.align	32
	#Procedure 0x402e10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_198
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_197
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_197
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_196
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_196:
	mov	rbx, r14
.label_197:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_198:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_199
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402eb1
	.globl sub_402eb1
	.type sub_402eb1, @function
sub_402eb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0

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
	.align	32
	#Procedure 0x402f2d
	.globl sub_402f2d
	.type sub_402f2d, @function
sub_402f2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f30

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x402f3d
	.globl sub_402f3d
	.type sub_402f3d, @function
sub_402f3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f40

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x402f47
	.globl sub_402f47
	.type sub_402f47, @function
sub_402f47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_204
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_204
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_204:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402f76
	.globl sub_402f76
	.type sub_402f76, @function
sub_402f76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402f8a
	.globl sub_402f8a
	.type sub_402f8a, @function
sub_402f8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x402f9d
	.globl sub_402f9d
	.type sub_402f9d, @function
sub_402f9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402fa0
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
	.align	32
	#Procedure 0x402fb0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x402fba
	.globl sub_402fba
	.type sub_402fba, @function
sub_402fba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fc0

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
	#Procedure 0x402ff6
	.globl sub_402ff6
	.type sub_402ff6, @function
sub_402ff6:

	nop	word ptr cs:[rax + rax]
.label_206:
	test	rcx, rcx
	jne	.label_205
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_205:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_209
.label_208:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_209:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403047
	.globl sub_403047
	.type sub_403047, @function
sub_403047:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40304e

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_206
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_207
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_208
.label_207:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403080
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40308a
	.globl sub_40308a
	.type sub_40308a, @function
sub_40308a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403090

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
	.align	32
	#Procedure 0x40317c
	.globl sub_40317c
	.type sub_40317c, @function
sub_40317c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_152
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_211
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031a5
	.globl sub_4031a5
	.type sub_4031a5, @function
sub_4031a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031b0

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
	jne	.label_213
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
	je	.label_212
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_217
	mov	eax, OFFSET FLAT:label_218
	jmp	.label_216
.label_212:
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
	je	.label_219
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_214
	mov	eax, OFFSET FLAT:label_215
	jmp	.label_216
.label_219:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_131
	mov	eax, OFFSET FLAT:label_73
.label_216:
	cmove	rax, rcx
.label_213:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40326d
	.globl sub_40326d
	.type sub_40326d, @function
sub_40326d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403270
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
	#Procedure 0x40327f
	.globl sub_40327f
	.type sub_40327f, @function
sub_40327f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403280

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_220
	nop	
.label_229:
	mov	edi, OFFSET FLAT:label_155
	call	strcmp
	test	eax, eax
	je	.label_227
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_229
.label_227:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_155
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_149
	mov	ecx, OFFSET FLAT:label_150
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_222
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_222
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_222:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_155
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_150
	mov	ecx, OFFSET FLAT:label_155
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_225
	mov	ecx, OFFSET FLAT:label_152
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
	#Procedure 0x40339a
	.globl sub_40339a
	.type sub_40339a, @function
sub_40339a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4033a9
	.globl sub_4033a9
	.type sub_4033a9, @function
sub_4033a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

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
	.align	32
	#Procedure 0x403418
	.globl sub_403418
	.type sub_403418, @function
sub_403418:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403420
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_230
	call	rpl_calloc
	test	rax, rax
	je	.label_230
	pop	rcx
	ret	
.label_230:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403446
	.globl sub_403446
	.type sub_403446, @function
sub_403446:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403450

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_231
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_233
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_233
.label_231:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_232
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_234:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_237
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_232:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_234
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_235
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403510

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
	#Procedure 0x403549
	.globl sub_403549
	.type sub_403549, @function
sub_403549:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403550
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
	#Procedure 0x403561
	.globl sub_403561
	.type sub_403561, @function
sub_403561:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403570
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
	#Procedure 0x403584
	.globl sub_403584
	.type sub_403584, @function
sub_403584:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403590
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_238
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_238:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4035b6
	.globl sub_4035b6
	.type sub_4035b6, @function
sub_4035b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_239
	test	rbx, rbx
	jne	.label_239
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_239:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_241
	test	rax, rax
	je	.label_240
.label_241:
	pop	rbx
	ret	
.label_240:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4035f0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035fa
	.globl sub_4035fa
	.type sub_4035fa, @function
sub_4035fa:

	nop	word ptr [rax + rax]
.label_243:
	mov	ecx, 1
.label_242:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x403610
	.globl sub_403610
	.type sub_403610, @function
sub_403610:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403615

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_243
	test	rsi, rsi
	mov	ecx, 1
	je	.label_242
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_242
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403650

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
	je	.label_246
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_244
	jmp	.label_245
.label_246:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_245
.label_244:
	mov	eax, 1
	test	bpl, bpl
	je	.label_245
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
.label_245:
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
	#Procedure 0x4036d8
	.globl sub_4036d8
	.type sub_4036d8, @function
sub_4036d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036e0

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
	je	.label_247
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_249
	jmp	.label_248
.label_247:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_248
.label_249:
	mov	eax, 1
	test	bpl, bpl
	je	.label_248
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
.label_248:
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
	#Procedure 0x403759
	.globl sub_403759
	.type sub_403759, @function
sub_403759:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403760

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
	je	.label_252
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_251
	jmp	.label_250
.label_252:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_250
.label_251:
	mov	eax, 1
	test	bpl, bpl
	je	.label_250
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
.label_250:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037c3
	.globl sub_4037c3
	.type sub_4037c3, @function
sub_4037c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037d0

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
	je	.label_255
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_253
	jmp	.label_254
.label_255:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_254
.label_253:
	mov	eax, 1
	test	bpl, bpl
	je	.label_254
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_254:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40382f
	.globl sub_40382f
	.type sub_40382f, @function
sub_40382f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403830

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
	je	.label_256
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_258
	jmp	.label_257
.label_256:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_257
.label_258:
	mov	eax, 1
	test	bpl, bpl
	je	.label_257
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_257:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403879
	.globl sub_403879
	.type sub_403879, @function
sub_403879:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403880

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
	je	.label_261
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_260
	jmp	.label_259
.label_261:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_259
.label_260:
	mov	eax, 1
	test	bpl, bpl
	je	.label_259
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_259:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038c5
	.globl sub_4038c5
	.type sub_4038c5, @function
sub_4038c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_264
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_263
	jmp	.label_262
.label_264:
	mov	eax, 1
	test	cl, cl
	je	.label_262
.label_263:
	xor	eax, eax
.label_262:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038ff
	.globl sub_4038ff
	.type sub_4038ff, @function
sub_4038ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403900
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_265
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_265
.label_266:
	ret	
.label_265:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_266
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403926
	.globl sub_403926
	.type sub_403926, @function
sub_403926:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403930
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
	#Procedure 0x403949
	.globl sub_403949
	.type sub_403949, @function
sub_403949:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403950
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_267
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_267:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403968
	.globl sub_403968
	.type sub_403968, @function
sub_403968:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403970
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40397a
	.globl sub_40397a
	.type sub_40397a, @function
sub_40397a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403980

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40398a
	.globl sub_40398a
	.type sub_40398a, @function
sub_40398a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403990
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
	#Procedure 0x4039a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x4039a9
	.globl sub_4039a9
	.type sub_4039a9, @function
sub_4039a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039b0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x4039ba
	.globl sub_4039ba
	.type sub_4039ba, @function
sub_4039ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039c0
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
	#Procedure 0x4039cf
	.globl sub_4039cf
	.type sub_4039cf, @function
sub_4039cf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4039d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_269:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_268
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_270
	.section	.text
	.align	32
	#Procedure 0x4039f9
	.globl sub_4039f9
	.type sub_4039f9, @function
sub_4039f9:

	nop	dword ptr [rax]
.label_268:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_270:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_271
	inc	r9
	cmp	r9, 0xa
	jb	.label_269
.label_271:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a2f
	.globl sub_403a2f
	.type sub_403a2f, @function
sub_403a2f:

	nop	
.label_273:
	cmp	edi, 0x7f
	je	.label_272
	xor	eax, eax
	jmp	.label_272
	.section	.text
	.align	32
	#Procedure 0x403a39
	.globl sub_403a39
	.type sub_403a39, @function
sub_403a39:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a48
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_273
.label_272:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x403a5a
	.globl sub_403a5a
	.type sub_403a5a, @function
sub_403a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a60

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
	jne	.label_274
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_274
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_275
.label_274:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_275:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_276
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_276:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ace
	.globl sub_403ace
	.type sub_403ace, @function
sub_403ace:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403ad0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_235
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_278:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x403b0e
	.globl sub_403b0e
	.type sub_403b0e, @function
sub_403b0e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b17

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_278
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_280
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_278
.label_280:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_278
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_279
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_279:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b80
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
	#Procedure 0x403bc9
	.globl sub_403bc9
	.type sub_403bc9, @function
sub_403bc9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403bd0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_282
	cmp	byte ptr [rax], 0x43
	jne	.label_284
	cmp	byte ptr [rax + 1], 0
	je	.label_281
.label_284:
	mov	esi, OFFSET FLAT:label_283
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_282
.label_281:
	xor	ebx, ebx
.label_282:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c01
	.globl sub_403c01
	.type sub_403c01, @function
sub_403c01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c10
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
	#Procedure 0x403c37
	.globl sub_403c37
	.type sub_403c37, @function
sub_403c37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ca5
	.globl sub_403ca5
	.type sub_403ca5, @function
sub_403ca5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cb2
	.globl sub_403cb2
	.type sub_403cb2, @function
sub_403cb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd6
	.globl sub_403cd6
	.type sub_403cd6, @function
sub_403cd6:

	nop	word ptr cs:[rax + rax]
