	.section	.text
	.align	32
	#Procedure 0x4018e9
	.globl sub_4018e9
	.type sub_4018e9, @function
sub_4018e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4018ea
	.globl sub_4018ea
	.type sub_4018ea, @function
sub_4018ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401922
	.globl sub_401922
	.type sub_401922, @function
sub_401922:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40196a
	.globl sub_40196a
	.type sub_40196a, @function
sub_40196a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40198c
	.globl sub_40198c
	.type sub_40198c, @function
sub_40198c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40199d
	.globl sub_40199d
	.type sub_40199d, @function
sub_40199d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4019b6
	.globl sub_4019b6
	.type sub_4019b6, @function
sub_4019b6:

	nop	word ptr cs:[rax + rax]
.label_11:
	jmp	.label_9
.label_9:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, -1
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	je	.label_10
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [rbp - 0x40]
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x40]
	jmp	.label_9
.label_10:
	fld	xword ptr [rbp - 0x40]
	fstp	xword ptr [rbp - 0x10]
.label_12:
	fld	xword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019f2
	.globl sub_4019f2
	.type sub_4019f2, @function
sub_4019f2:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4019f9

	.globl powerld
	.type powerld, @function
powerld:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], edi
	fld	xword ptr [rbp - 0x20]
	fstp	xword ptr [rbp - 0x40]
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_11
	fld1	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_12
	.section	.text
	.align	32
	#Procedure 0x401a20

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a3f
	.globl sub_401a3f
	.type sub_401a3f, @function
sub_401a3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a40
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_13
	call	gettext
	movabs	rsi, OFFSET FLAT:label_15
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_17
	movabs	rdx, OFFSET FLAT:label_18
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ac6
	.globl sub_401ac6
	.type sub_401ac6, @function
sub_401ac6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ad0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_19
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_20
.label_19:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_20
.label_20:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_21
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_21:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c24
	.globl sub_401c24
	.type sub_401c24, @function
sub_401c24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_22
	jmp	.label_24
.label_24:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_23
.label_22:
	mov	byte ptr [rbp - 1], 0
.label_23:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c5f
	.globl sub_401c5f
	.type sub_401c5f, @function
sub_401c5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_25
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_26
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c9f
	.globl sub_401c9f
	.type sub_401c9f, @function
sub_401c9f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401ca0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_27
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_31
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_30
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_28
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_29
.label_30:
	mov	byte ptr [rbp - 5], 0
.label_29:
	jmp	.label_27
.label_27:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d13
	.globl sub_401d13
	.type sub_401d13, @function
sub_401d13:

	nop	word ptr cs:[rax + rax]
.label_33:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_32
.label_34:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_35:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d5e
	.globl sub_401d5e
	.type sub_401d5e, @function
sub_401d5e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d6d

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_36
	mov	dword ptr [rbp - 4], 0
	jmp	.label_35
.label_36:
	jmp	.label_32
.label_32:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_33
	jmp	.label_34
	.section	.text
	.align	32
	#Procedure 0x401de0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e11
	.globl sub_401e11
	.type sub_401e11, @function
sub_401e11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e20

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e4c
	.globl sub_401e4c
	.type sub_401e4c, @function
sub_401e4c:

	nop	dword ptr [rax]
.label_45:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_42:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_40
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_38]]
	mov	qword ptr [rax + 8], rcx
.label_40:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_41:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_37
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_39
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_39:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_37:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40202e
	.globl sub_40202e
	.type sub_40202e, @function
sub_40202e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40203b

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_44
	call	abort
.label_43:
	test	byte ptr [rbp - 0x31], 1
	je	.label_45
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_42
.label_44:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_41
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_43
	call	xalloc_die
.label_47:
	mov	byte ptr [rbp - 1], 0
.label_48:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020de
	.globl sub_4020de
	.type sub_4020de, @function
sub_4020de:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020e3
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_46
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_47
	jmp	.label_46
.label_46:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_48
.label_54:
	jmp	.label_50
.label_53:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_52
	call	xalloc_die
.label_52:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_50:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402180
	.globl sub_402180
	.type sub_402180, @function
sub_402180:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402189

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_53
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_51
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_51:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_54
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402210
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_55
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_56
.label_55:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_56
.label_56:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402282
	.globl sub_402282
	.type sub_402282, @function
sub_402282:

	nop	word ptr cs:[rax + rax]
.label_71:
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_61
	cmp	dword ptr [rbp - 0x94], 0
	jbe	.label_61
	movabs	rsi, OFFSET FLAT:label_58
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, dword ptr [rbp - 0x38]
	sub	rax, rcx
	sub	rax, 1
	mov	rdx, rax
	call	strncat
	mov	qword ptr [rbp - 0x168], rax
.label_61:
	jmp	.label_62
.label_62:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_63
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x170], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_57
	mov	rdi, qword ptr [rbp - 0x170]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x174], eax
.label_63:
	jmp	.label_60
.label_60:
	jmp	.label_59
.label_59:
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402335
	.globl sub_402335
	.type sub_402335, @function
sub_402335:

	nop	word ptr cs:[rax + rax]
.label_69:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0x128], rax
.label_76:
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xa0], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	dec	rax
	lea	rdx, [rbp - 0x80]
	fld	xword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x94]
	mov	qword ptr [rbp - 0x130], rdi
	mov	edi, esi
	mov	dword ptr [rbp - 0x134], ecx
	fstp	xword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x148], rax
	mov	qword ptr [rbp - 0x150], rdx
	call	suffix_power_char
	mov	rdx, rsp
	fld	xword ptr [rbp - 0x140]
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	ecx, dword ptr [rbp - 0x134]
	mov	byte ptr [rbp - 0x151], r8b
	mov	r8, rax
	mov	al, byte ptr [rbp - 0x151]
	call	snprintf
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	jl	.label_79
	mov	eax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, ecx
	sub	edx, 1
	cmp	eax, edx
	jl	.label_71
.label_79:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, OFFSET FLAT:label_64
	mov	edi, edx
	mov	dword ptr [rbp - 0x158], eax
	mov	dword ptr [rbp - 0x15c], ecx
	call	gettext
	fld	xword ptr [rbp - 0x10]
	mov	rdi, rsp
	fstp	xword ptr [rdi]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, 1
	mov	byte ptr [rbp - 0x15d], sil
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0x15d]
	call	error
	sub	rsp, 0x10
.label_92:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0xe8], rax
.label_90:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_68
.label_101:
	mov	edi, dword ptr [rbp - 0x2c]
	call	default_scale_base
	cvtsi2sd	xmm0, eax
	movsd	qword ptr [rbp - 0x90], xmm0
	mov	dword ptr [rbp - 0x94], 0
	fld	xword ptr [rbp - 0x10]
	cvttsd2si	rcx, qword ptr [rbp - 0x90]
	mov	eax, ecx
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	lea	rsi, [rbp - 0x94]
	mov	edi, eax
	call	expld
	fstp	xword ptr [rbp - 0x10]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_98
	movabs	rax, OFFSET FLAT:label_102
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x10]
	movsd	xmm0, qword ptr [rbp - 0x90]
	mov	edx, dword ptr [rbp - 0x94]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:label_102
	mov	r8b, 1
	mov	qword ptr [rbp - 0xd8], rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
.label_98:
	jmp	.label_80
.label_80:
	mov	dword ptr [rbp - 0x98], 0
	cmp	qword ptr [word ptr [user_precision]],  -1
	je	.label_91
	imul	eax, dword ptr [rbp - 0x94], 3
	mov	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [user_precision]]
	jge	.label_92
	imul	eax, dword ptr [rbp - 0x94], 3
	mov	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe8], rcx
	jmp	.label_90
	.section	.text
	.align	32
	#Procedure 0x402551

	.globl double_to_human
	.type double_to_human, @function
double_to_human:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	fld	xword ptr [rbp + 0x10]
	lea	rax, [rbp - 0x80]
	fstp	xword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	dword ptr [rbp - 0x2c], ecx
	mov	dword ptr [rbp - 0x30], r8d
	mov	dword ptr [rbp - 0x34], r9d
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x88], rdx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_86
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	mov	byte ptr [rax], 0x27
.label_86:
	cmp	qword ptr [word ptr [zero_padding_width]],  0
	je	.label_88
	mov	eax, 0x3e
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:label_83
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rcx,  qword ptr [word ptr [zero_padding_width]]
	mov	al, 0
	call	snprintf
	mov	rcx, qword ptr [rbp - 0x88]
	movsxd	rdx, eax
	add	rcx, rdx
	mov	qword ptr [rbp - 0x88], rcx
.label_88:
	jmp	.label_81
.label_81:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_82
	movabs	rsi, OFFSET FLAT:label_89
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
.label_82:
	jmp	.label_100
.label_100:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_101
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_66]]
	fld	st(0)
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0xb0]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	mov	edi, dword ptr [rbp - 0x34]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round
	fstp	xword ptr [rbp - 0x10]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, rsp
	fld	xword ptr [rbp - 0xb0]
	fstp	xword ptr [rax]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_85
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	eax, dword ptr [rbp - 0x30]
	test	eax, eax
	mov	eax, OFFSET FLAT:label_93
	mov	ecx, eax
	mov	eax, OFFSET FLAT:label_94
	mov	edx, eax
	cmovne	rdx, rcx
	mov	eax, dword ptr [rbp - 0x14]
	fld	xword ptr [rbp - 0x10]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	xor	esi, esi
	mov	r8b, sil
	mov	rsi, rdx
	mov	edx, eax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0xb4], eax
.label_85:
	jmp	.label_95
.label_95:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	eax, OFFSET FLAT:label_97
	mov	esi, eax
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdx, [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x14]
	fld	xword ptr [rbp - 0x10]
	mov	r8, rsp
	fstp	xword ptr [r8]
	xor	r9d, r9d
	mov	r10b, r9b
	mov	qword ptr [rbp - 0xc0], rax
	mov	al, r10b
	call	snprintf
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	jl	.label_84
	mov	eax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_87
.label_84:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, OFFSET FLAT:label_64
	mov	edi, edx
	mov	dword ptr [rbp - 0xc4], eax
	mov	dword ptr [rbp - 0xc8], ecx
	call	gettext
	fld	xword ptr [rbp - 0x10]
	mov	rdi, rsp
	fstp	xword ptr [rdi]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, 1
	mov	byte ptr [rbp - 0xc9], sil
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0xc9]
	call	error
	sub	rsp, 0x10
.label_87:
	jmp	.label_59
.label_91:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	fld	dword ptr [dword ptr [rip + label_66]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_96
	jmp	.label_99
.label_99:
	mov	dword ptr [rbp - 0x98], 1
.label_96:
	jmp	.label_68
.label_68:
	mov	edi, dword ptr [rbp - 0x98]
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_66]]
	fld	st(0)
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0xf4]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	mov	edi, dword ptr [rbp - 0x34]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round
	fstp	xword ptr [rbp - 0x10]
	mov	edi, dword ptr [rbp - 0x98]
	mov	rax, rsp
	fld	xword ptr [rbp - 0xf4]
	fstp	xword ptr [rax]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	fld	st(0)
	fld	qword ptr [rbp - 0x90]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	fstp	xword ptr [rbp - 0x100]
	jb	.label_72
	jmp	.label_74
.label_74:
	fld	qword ptr [rbp - 0x90]
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, 1
	mov	dword ptr [rbp - 0x94], eax
.label_72:
	fld	xword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x101], cl
	jne	.label_65
	jp	.label_65
	jmp	.label_67
.label_65:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	xor	ecx, ecx
	mov	dl, cl
	fld	dword ptr [dword ptr [rip + label_66]]
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x101], dl
	jbe	.label_67
	jmp	.label_77
.label_77:
	cmp	dword ptr [rbp - 0x94], 0
	seta	al
	mov	byte ptr [rbp - 0x101], al
.label_67:
	mov	al, byte ptr [rbp - 0x101]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x9c], ecx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_75
	movabs	rax, OFFSET FLAT:label_70
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x10]
	movsd	xmm0, qword ptr [rbp - 0x90]
	mov	edx, dword ptr [rbp - 0x94]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:label_70
	mov	r8b, 1
	mov	qword ptr [rbp - 0x110], rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_75:
	jmp	.label_73
.label_73:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	eax, OFFSET FLAT:label_78
	mov	esi, eax
	call	stpcpy
	cmp	qword ptr [word ptr [user_precision]],  -1
	mov	qword ptr [rbp - 0x120], rax
	jne	.label_69
	movsxd	rax, dword ptr [rbp - 0x9c]
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_76
	.section	.text
	.align	32
	#Procedure 0x402970

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029e2
	.globl sub_4029e2
	.type sub_4029e2, @function
sub_4029e2:

	nop	word ptr cs:[rax + rax]
.label_104:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_103
.label_103:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a0e
	.globl sub_402a0e
	.type sub_402a0e, @function
sub_402a0e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a17
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_104
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_103
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl simple_strtod_fatal
	.type simple_strtod_fatal, @function
simple_strtod_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	edi, dword ptr [rbp - 4]
	mov	esi, edi
	mov	rax, rsi
	sub	rax, 6
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rax
	ja	.label_105
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_106]]
	jmp	rcx
.label_1272:
	movabs	rax, OFFSET FLAT:label_110
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_105
.label_1271:
	call	abort
.label_1273:
	movabs	rax, OFFSET FLAT:label_109
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_105
.label_1274:
	movabs	rax, OFFSET FLAT:label_108
	mov	qword ptr [rbp - 0x18], rax
.label_105:
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_107
	mov	edi,  dword ptr [dword ptr [conv_exit_code]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x2c], edi
	mov	rdi, rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	call	quote
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_107:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b02
	.globl sub_402b02
	.type sub_402b02, @function
sub_402b02:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b0a

	.globl sub_402b0a
	.type sub_402b0a, @function
sub_402b0a:
	movabs	rax, OFFSET FLAT:label_111
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_105
	.section	.text
	.align	32
	#Procedure 0x402b1d

	.globl sub_402b1d
	.type sub_402b1d, @function
sub_402b1d:
	movabs	rax, OFFSET FLAT:label_112
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_105
.label_113:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b39
	.globl sub_402b39
	.type sub_402b39, @function
sub_402b39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b3c

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_114:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_113
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_114
	.section	.text
	.align	32
	#Procedure 0x402b80

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_115
	movabs	rdi, OFFSET FLAT:label_118
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_117
.label_115:
	movabs	rdi, OFFSET FLAT:label_116
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_117:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c1f
	.globl sub_402c1f
	.type sub_402c1f, @function
sub_402c1f:

	nop	
.label_136:
	movabs	rdi, OFFSET FLAT:label_119
	movabs	rsi, OFFSET FLAT:label_120
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_121
	call	__assert_fail
.label_1159:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_131:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_137
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_141
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_141
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_141
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_153
.label_1161:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_1157:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_1152:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_1153:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_146:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_131
	mov	dword ptr [rbp - 4], 4
	jmp	.label_124
.label_137:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_152
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_135
	mov	dword ptr [rbp - 4], 4
	jmp	.label_124
.label_1151:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_1155:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_158:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_123
	jmp	.label_151
.label_151:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_123
	jmp	.label_155
.label_155:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_123
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_123
	jmp	.label_161
.label_161:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_123
	jmp	.label_142
.label_142:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_123
	jmp	.label_132
.label_132:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_123
	jmp	.label_149
.label_149:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_123
	jmp	.label_140
.label_140:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_123
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_123
	jmp	.label_143
.label_143:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_145
	jmp	.label_123
.label_123:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_144
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_154
	jmp	.label_156
.label_156:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_154
	jmp	.label_160
.label_160:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_122
	jmp	.label_126
.label_126:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_127
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_127:
	jmp	.label_122
.label_1150:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_128:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_130
.label_130:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_150:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_146
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_150
.label_133:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_129
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_158
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_124
.label_148:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_128
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_130
.label_1156:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_1158:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
	.section	.text
	.align	32
	#Procedure 0x403069

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_136
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_136
	jmp	.label_148
.label_135:
	mov	dword ptr [rbp - 0x4c], 1
.label_152:
	jmp	.label_134
.label_134:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_133
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_124
.label_1154:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_125
.label_125:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_159
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_159:
	jmp	.label_129
.label_129:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_124:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403145
	.globl sub_403145
	.type sub_403145, @function
sub_403145:

	nop	dword ptr [rax + rax]
.label_153:
	jmp	.label_134
.label_147:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_124
.label_1160:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_125
.label_141:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_124
.label_154:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_122:
	jmp	.label_144
.label_144:
	jmp	.label_145
.label_145:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_147
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_139]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x4031d0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031f7
	.globl sub_4031f7
	.type sub_4031f7, @function
sub_4031f7:

	nop	word ptr [rax + rax]
.label_1226:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_186:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_171:
	jmp	.label_176
.label_176:
	jmp	.label_185
.label_185:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_177
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_182]]
	jmp	rcx
.label_1230:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_166:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_164
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_190
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_168
.label_1231:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_177:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_168
.label_1222:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_178:
	movabs	rdi, OFFSET FLAT:label_119
	movabs	rsi, OFFSET FLAT:label_172
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_173
	call	__assert_fail
.label_1224:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_1228:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_1225:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_190:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_165
	jmp	.label_188
.label_188:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_165
	jmp	.label_191
.label_191:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_165
	jmp	.label_194
.label_194:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_165
	jmp	.label_197
.label_197:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_165
	jmp	.label_199
.label_199:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_165
	jmp	.label_169
.label_169:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_165
	jmp	.label_174
.label_174:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_165
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_165
	jmp	.label_181
.label_181:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_165
	jmp	.label_184
.label_184:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_185
	jmp	.label_165
.label_165:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_176
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_186
	jmp	.label_192
.label_192:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_186
	jmp	.label_195
.label_195:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_171
	jmp	.label_198
.label_198:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_196
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_196:
	jmp	.label_171
.label_1223:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
	.section	.text
	.align	32
	#Procedure 0x403536

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_178
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_178
	jmp	.label_187
.label_193:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_168
.label_1227:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_163
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_163:
	jmp	.label_164
.label_164:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_168:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035f1
	.globl sub_4035f1
	.type sub_4035f1, @function
sub_4035f1:

	nop	dword ptr [rax + rax]
.label_180:
	mov	dword ptr [rbp - 0x4c], 1
.label_175:
	jmp	.label_183
.label_183:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_166
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_168
.label_189:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_175
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_180
	mov	dword ptr [rbp - 4], 4
	jmp	.label_168
.label_1233:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_200:
	jmp	.label_183
.label_1229:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_162
.label_167:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_170
.label_170:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_189
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_193
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_193
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_193
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_200
.label_187:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_167
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_170
.label_1232:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_162
.label_209:
	jmp	.label_205
.label_205:
	jmp	.label_202
.label_210:
	jmp	.label_214
.label_214:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1a], cl
	je	.label_215
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edi, byte ptr [rax]
	call	field_sep
	mov	byte ptr [rbp - 0x1a], al
.label_215:
	mov	al, byte ptr [rbp - 0x1a]
	test	al, 1
	jne	.label_207
	jmp	.label_212
.label_207:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_214
.label_204:
	jmp	.label_202
.label_202:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037a0
	.globl sub_4037a0
	.type sub_4037a0, @function
sub_4037a0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037ad

	.globl next_field
	.type next_field, @function
next_field:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	je	.label_210
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	je	.label_205
	jmp	.label_208
.label_208:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_213
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	setne	dl
	mov	byte ptr [rbp - 0x19], dl
.label_213:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_206
	jmp	.label_209
.label_206:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_208
.label_212:
	jmp	.label_201
.label_201:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1b], cl
	je	.label_203
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edi, byte ptr [rax]
	call	field_sep
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1b], al
.label_203:
	mov	al, byte ptr [rbp - 0x1b]
	test	al, 1
	jne	.label_211
	jmp	.label_204
.label_211:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_201
	.section	.text
	.align	32
	#Procedure 0x403890
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038af
	.globl sub_4038af
	.type sub_4038af, @function
sub_4038af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4038b0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_216
	test	byte ptr [rbp - 0x13], 1
	je	.label_217
	test	byte ptr [rbp - 0x11], 1
	jne	.label_216
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_217
.label_216:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_218
	call	__errno_location
	mov	dword ptr [rax], 0
.label_218:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_219
.label_217:
	mov	dword ptr [rbp - 4], 0
.label_219:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403959
	.globl sub_403959
	.type sub_403959, @function
sub_403959:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403960

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_221
	movabs	rax, OFFSET FLAT:label_220
	mov	qword ptr [rbp - 8], rax
.label_221:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_222
	movabs	rax, OFFSET FLAT:label_223
	mov	qword ptr [rbp - 8], rax
.label_222:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039b7
	.globl sub_4039b7
	.type sub_4039b7, @function
sub_4039b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039c0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_224
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_224:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039fd
	.globl sub_4039fd
	.type sub_4039fd, @function
sub_4039fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a28
	.globl sub_403a28
	.type sub_403a28, @function
sub_403a28:

	nop	dword ptr [rax + rax]
.label_226:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a4b
	.globl sub_403a4b
	.type sub_403a4b, @function
sub_403a4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a50
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_226
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_225
.label_236:
	movabs	rsi, OFFSET FLAT:label_233
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_235
	movabs	rax, OFFSET FLAT:label_231
	movabs	rcx, OFFSET FLAT:label_232
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_227
.label_234:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_228
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_236
	movabs	rax, OFFSET FLAT:label_237
	movabs	rcx, OFFSET FLAT:label_238
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_227
.label_235:
	movabs	rax, OFFSET FLAT:label_229
	movabs	rcx, OFFSET FLAT:label_230
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_227:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b31
	.globl sub_403b31
	.type sub_403b31, @function
sub_403b31:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b39

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_234
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_227
	.section	.text
	.align	32
	#Procedure 0x403b70

	.globl simple_round_ceiling
	.type simple_round_ceiling, @function
simple_round_ceiling:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fnstcw	word ptr [rbp - 0x2a]
	mov	ax, word ptr [rbp - 0x2a]
	mov	word ptr [rbp - 0x2a], 0xc7f
	fldcw	word ptr [rbp - 0x2a]
	mov	word ptr [rbp - 0x2a], ax
	fistp	qword ptr [rbp - 0x28]
	fldcw	word ptr [rbp - 0x2a]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], rcx
	fild	qword ptr [rbp - 0x20]
	fld	xword ptr [rbp - 0x10]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_239
	jmp	.label_240
.label_240:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_239:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bc9
	.globl sub_403bc9
	.type sub_403bc9, @function
sub_403bc9:

	nop	dword ptr [rax]
.label_256:
	mov	qword ptr [word ptr [padding_width]],  0
.label_259:
	jmp	.label_249
.label_249:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_241
	movabs	rsi, OFFSET FLAT:label_245
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx,  qword ptr [word ptr [padding_width]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_241:
	jmp	.label_243
.label_243:
	jmp	.label_248
.label_248:
	lea	rsi, [rbp - 0x50]
	fldz	
	fstp	xword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	call	parse_human_number
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_242
	test	byte ptr [byte ptr [debug]],  1
	je	.label_242
	movabs	rdi, OFFSET FLAT:label_246
	call	gettext
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb8], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_242:
	cmp	qword ptr [word ptr [from_unit_size]],  1
	jne	.label_244
	cmp	qword ptr [word ptr [to_unit_size]],  1
	je	.label_250
.label_244:
	fld	xword ptr [rbp - 0x50]
	mov	rax,  qword ptr [word ptr [rip + from_unit_size]]
	mov	qword ptr [rbp - 0x68], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_251]]
	fild	qword ptr [rbp - 0x68]
	faddp	st(1)
	fmulp	st(1)
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	mov	qword ptr [rbp - 0x60], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_251]]
	fild	qword ptr [rbp - 0x60]
	faddp	st(1)
	fdivp	st(1)
	fstp	xword ptr [rbp - 0x50]
.label_250:
	mov	al, 1
	fld	xword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	fstp	xword ptr [rcx]
	cmp	dword ptr [rbp - 0x54], 0
	mov	byte ptr [rbp - 0xb9], al
	je	.label_247
	cmp	dword ptr [rbp - 0x54], 1
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_247:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d2f
	.globl sub_403d2f
	.type sub_403d2f, @function
sub_403d2f:

	nop	word ptr [rax + rax]
.label_268:
	jmp	.label_262
.label_262:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_263
	movabs	rsi, OFFSET FLAT:label_253
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x98], eax
.label_263:
	jmp	.label_258
.label_258:
	jmp	.label_260
.label_260:
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_257:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x99], cl
	je	.label_264
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xa8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x99], dl
.label_264:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_254
	jmp	.label_252
.label_254:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_257
.label_252:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	edx, eax
	mov	dword ptr [rbp - 0x34], edx
	cmp	dword ptr [dword ptr [auto_padding]],  0
	je	.label_248
	cmp	dword ptr [rbp - 0x34], 0
	ja	.label_255
	cmp	qword ptr [rbp - 0x20], 1
	jle	.label_256
.label_255:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [word ptr [padding_width]],  rax
	mov	rdi,  qword ptr [word ptr [padding_width]]
	call	setup_padding_buffer
	jmp	.label_259
	.section	.text
	.align	32
	#Procedure 0x403e4d

	.globl process_suffixed_number
	.type process_suffixed_number, @function
process_suffixed_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [word ptr [suffix]],  0
	je	.label_261
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	rdi,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x70], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x70]
	cmp	rdi, rax
	jbe	.label_261
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0x80], rdx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, rax
	mov	rdi,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x88], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rcx, rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi,  qword ptr [word ptr [suffix]]
	mov	rsi, qword ptr [rbp - 0x28]
	call	strcmp
	cmp	eax, 0
	jne	.label_268
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_265
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_267
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
.label_265:
	jmp	.label_266
.label_266:
	jmp	.label_260
.label_269:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], -1
	jae	.label_270
	mov	rsi, -1
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rdi, rax
	call	add_range_pair
.label_270:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fb4
	.globl sub_403fb4
	.type sub_403fb4, @function
sub_403fb4:

	nop	
.label_273:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	mov	rdi, rax
	mov	rsi, rcx
	call	add_range_pair
.label_271:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_272
	.section	.text
	.align	32
	#Procedure 0x403ffc

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [word ptr [frp]],  0
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 1
	jbe	.label_274
	mov	eax, 1
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	mov	rsi, rcx
	call	add_range_pair
.label_274:
	mov	qword ptr [rbp - 0x18], 1
.label_272:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jne	.label_273
	jmp	.label_271
	.section	.text
	.align	32
	#Procedure 0x4040b0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_275
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_275
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_275
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_277
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_276
.label_277:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_276
.label_275:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_276:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404172
	.globl sub_404172
	.type sub_404172, @function
sub_404172:

	nop	word ptr cs:[rax + rax]
.label_279:
	mov	byte ptr [rbp - 1], 0
.label_280:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40418e
	.globl sub_40418e
	.type sub_40418e, @function
sub_40418e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40419c
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_279
	jmp	.label_278
.label_278:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_280
	.section	.text
	.align	32
	#Procedure 0x4041c0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041f6
	.globl sub_4041f6
	.type sub_4041f6, @function
sub_4041f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404200

	.globl sub_404200
	.type sub_404200, @function
sub_404200:
	mov	dword ptr [rbp - 4], 5
	jmp	.label_281
	.section	.text
	.align	32
	#Procedure 0x40420c

	.globl sub_40420c
	.type sub_40420c, @function
sub_40420c:
	mov	dword ptr [rbp - 4], 3
	jmp	.label_281
	.section	.text
	.align	32
	#Procedure 0x404218

	.globl suffix_power
	.type suffix_power, @function
suffix_power:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movsx	edi, byte ptr [rbp - 5]
	add	edi, -0x45
	mov	ecx, edi
	sub	edi, 0x15
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_282
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_283]]
	jmp	rcx
.label_1123:
	mov	dword ptr [rbp - 4], 6
	jmp	.label_281
.label_1128:
	mov	dword ptr [rbp - 4], 7
	jmp	.label_281
.label_1125:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_281
.label_1124:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_281
.label_1127:
	mov	dword ptr [rbp - 4], 8
	jmp	.label_281
.label_282:
	mov	dword ptr [rbp - 4], 0
.label_281:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	nop	dword ptr [rax]
.label_1126:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_281
	.section	.text
	.align	32
	#Procedure 0x4042a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042d8
	.globl sub_4042d8
	.type sub_4042d8, @function
sub_4042d8:

	nop	dword ptr [rax + rax]
.label_285:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_284:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042fe
	.globl sub_4042fe
	.type sub_4042fe, @function
sub_4042fe:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404306

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_286
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_285
.label_286:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_284
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl include_field
	.type include_field, @function
include_field:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [frp]]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_287
	cmp	qword ptr [rbp - 0x10], 1
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_291
.label_290:
	mov	byte ptr [rbp - 1], 0
.label_291:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40437f
	.globl sub_40437f
	.type sub_40437f, @function
sub_40437f:

	nop	
.label_289:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_288
.label_287:
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], -1
	je	.label_290
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_289
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_289
	mov	byte ptr [rbp - 1], 1
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x4043d0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043eb
	.globl sub_4043eb
	.type sub_4043eb, @function
sub_4043eb:

	nop	dword ptr [rax + rax]
.label_295:
	jmp	.label_294
.label_293:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043ff
	.globl sub_4043ff
	.type sub_4043ff, @function
sub_4043ff:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404403
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], 0
.label_294:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_293
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_292
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_293
.label_292:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9d, dword ptr [rbp - 0x18]
	call	mbsalign
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_295
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_293
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40451e
	.globl sub_40451e
	.type sub_40451e, @function
sub_40451e:

	nop	
.label_298:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404543
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_296:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_298
	jmp	.label_297
.label_297:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_296
	.section	.text
	.align	32
	#Procedure 0x404590
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045bf
	.globl sub_4045bf
	.type sub_4045bf, @function
sub_4045bf:

	nop	
.label_306:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax], 1
	je	.label_299
	fld	xword ptr [rbp - 0x40]
	fchs	
	fstp	xword ptr [rbp - 0x40]
.label_299:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_300
	fld	xword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x20]
	fstp	xword ptr [rax]
.label_300:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_304:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045f8
	.globl sub_4045f8
	.type sub_4045f8, @function
sub_4045f8:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4045fa

	.globl simple_strtod_int
	.type simple_strtod_int, @function
simple_strtod_int:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], 0
	fldz	
	fstp	xword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x44], 0
	mov	byte ptr [rbp - 0x45], 0
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x2d
	jne	.label_311
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 1
	jmp	.label_310
.label_311:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
.label_310:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_301:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x51], cl
	je	.label_308
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_308:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_313
	jmp	.label_305
.label_313:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x30
	mov	dword ptr [rbp - 0x4c], ecx
	mov	byte ptr [rbp - 0x45], 1
	fld	xword ptr [rbp - 0x40]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_302
	jnp	.label_312
	jmp	.label_302
.label_312:
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_303
.label_302:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
.label_303:
	cmp	dword ptr [rbp - 0x44], 0x12
	jbe	.label_307
	mov	dword ptr [rbp - 0x2c], 1
.label_307:
	cmp	dword ptr [rbp - 0x44], 0x1b
	jbe	.label_309
	mov	dword ptr [rbp - 4], 2
	jmp	.label_304
.label_309:
	fld	xword ptr [rbp - 0x40]
	fld	dword ptr [dword ptr [rip + label_66]]
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	fild	dword ptr [rbp - 0x50]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	qword ptr [rcx], rdx
	jmp	.label_301
.label_305:
	test	byte ptr [rbp - 0x45], 1
	jne	.label_306
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	call	strncmp
	cmp	eax, 0
	je	.label_306
	mov	dword ptr [rbp - 4], 3
	jmp	.label_304
	.section	.text
	.align	32
	#Procedure 0x404770

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_314
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_314:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047ab
	.globl sub_4047ab
	.type sub_4047ab, @function
sub_4047ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047b0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047ea
	.globl sub_4047ea
	.type sub_4047ea, @function
sub_4047ea:

	nop	word ptr [rax + rax]
.label_322:
	mov	byte ptr [byte ptr [dev_debug]],  1
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_321
.label_366:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_318
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_318
	movabs	rdi, OFFSET FLAT:label_336
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_321:
	jmp	.label_349
	.section	.text
	.align	32
	#Procedure 0x404853

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_220
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_408
	movabs	rsi, OFFSET FLAT:label_409
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_408
	mov	qword ptr [rbp - 0x48], rax
	call	textdomain
	mov	edi, 0x10000
	mov	qword ptr [rbp - 0x50], rax
	call	rpl_nl_langinfo
	mov	qword ptr [word ptr [decimal_point]],  rax
	cmp	qword ptr [word ptr [decimal_point]],  0
	je	.label_407
	mov	rdi,  qword ptr [word ptr [decimal_point]]
	call	strlen
	cmp	rax, 0
	jne	.label_411
.label_407:
	movabs	rax, OFFSET FLAT:label_410
	mov	qword ptr [word ptr [decimal_point]],  rax
.label_411:
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rax,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [dword ptr [decimal_point_length]],  ecx
	mov	rdi, qword ptr [rbp - 0x58]
	call	atexit
	mov	dword ptr [rbp - 0x5c], eax
.label_349:
	movabs	rdx, OFFSET FLAT:label_351
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_362
	jmp	.label_365
.label_406:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_368
	mov	edi, 0x10001
	call	rpl_nl_langinfo
	mov	rdi, rax
	call	strlen
	cmp	rax, 0
	jne	.label_368
	movabs	rdi, OFFSET FLAT:label_383
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_368:
	jmp	.label_394
.label_394:
	mov	rdi,  qword ptr [word ptr [padding_width]]
	call	setup_padding_buffer
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [word ptr [padding_width]],  0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_400
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_400:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [dword ptr [auto_padding]],  ecx
	cmp	dword ptr [dword ptr [inval_style]],  0
	je	.label_326
	mov	dword ptr [dword ptr [conv_exit_code]],  0
.label_326:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jle	.label_359
	test	byte ptr [byte ptr [debug]],  1
	je	.label_348
	cmp	qword ptr [word ptr [header]],  0
	je	.label_348
	movabs	rdi, OFFSET FLAT:label_356
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_348:
	jmp	.label_367
.label_367:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_371
	mov	esi, 1
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	process_line
	and	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_367
.label_357:
	cmp	qword ptr [word ptr [n_frp]],  0
	je	.label_337
	movabs	rdi, OFFSET FLAT:label_398
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_403:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_325
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_332
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_325:
	jmp	.label_372
.label_372:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_347
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_347
	movabs	rdi, OFFSET FLAT:label_353
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_347:
	mov	dword ptr [rbp - 0x40], 0
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_327
	cmp	dword ptr [dword ptr [inval_style]],  2
	je	.label_327
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_327
	mov	dword ptr [rbp - 0x40], 2
.label_327:
	mov	eax, dword ptr [rbp - 0x40]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bc3
	.globl sub_404bc3
	.type sub_404bc3, @function
sub_404bc3:

	nop	dword ptr [rax]
.label_334:
	movabs	rdi, OFFSET FLAT:label_386
	movabs	rdx, OFFSET FLAT:scale_from_args
	movabs	rax, OFFSET FLAT:scale_from_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + scale_from_types]]
	mov	dword ptr [dword ptr [scale_from]],  r10d
	jmp	.label_321
.label_323:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	movabs	rcx, OFFSET FLAT:padding_width
	movabs	r8, OFFSET FLAT:label_220
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtol
	cmp	eax, 0
	jne	.label_344
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_388
.label_344:
	movabs	rdi, OFFSET FLAT:label_335
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_320:
	movabs	rdi, OFFSET FLAT:label_373
	movabs	rdx, OFFSET FLAT:round_args
	movabs	rax, OFFSET FLAT:round_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + round_types]]
	mov	dword ptr [dword ptr [round_style]],  r10d
	jmp	.label_321
.label_401:
	movabs	rdi, OFFSET FLAT:label_361
	movabs	rdx, OFFSET FLAT:inval_args
	movabs	rax, OFFSET FLAT:inval_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + inval_types]]
	mov	dword ptr [dword ptr [inval_style]],  r10d
	jmp	.label_321
.label_404:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [to_unit_size]],  rax
	jmp	.label_321
.label_362:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	je	.label_352
	jmp	.label_358
.label_358:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x68], eax
	je	.label_360
	jmp	.label_364
.label_364:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_366
	jmp	.label_374
.label_374:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x70], eax
	je	.label_378
	jmp	.label_381
.label_381:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x74], eax
	je	.label_334
	jmp	.label_385
.label_385:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x78], eax
	je	.label_380
	jmp	.label_395
.label_395:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_396
	jmp	.label_402
.label_402:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x80], eax
	je	.label_404
	jmp	.label_316
.label_316:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x84], eax
	je	.label_320
	jmp	.label_330
.label_330:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x88], eax
	je	.label_387
	jmp	.label_338
.label_338:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_342
	jmp	.label_379
.label_379:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x90], eax
	je	.label_323
	jmp	.label_354
.label_354:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x88
	mov	dword ptr [rbp - 0x94], eax
	je	.label_357
	jmp	.label_363
.label_363:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x89
	mov	dword ptr [rbp - 0x98], eax
	je	.label_333
	jmp	.label_375
.label_375:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8a
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_322
	jmp	.label_376
.label_376:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_346
	jmp	.label_389
.label_389:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8c
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_393
	jmp	.label_331
.label_331:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8d
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_401
	jmp	.label_350
.label_396:
	movabs	rdi, OFFSET FLAT:label_315
	movabs	rdx, OFFSET FLAT:scale_to_args
	movabs	rax, OFFSET FLAT:scale_to_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + scale_to_types]]
	mov	dword ptr [dword ptr [scale_to]],  r10d
	jmp	.label_321
.label_365:
	cmp	qword ptr [word ptr [format_str]],  0
	je	.label_341
	cmp	dword ptr [dword ptr [grouping]],  0
	je	.label_341
	movabs	rdi, OFFSET FLAT:label_397
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_371:
	jmp	.label_372
.label_387:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [suffix]],  rax
	jmp	.label_321
.label_318:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [dword ptr [delimiter]],  ecx
	jmp	.label_321
.label_360:
	xor	edi, edi
	call	usage
.label_393:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [format_str]],  rax
	jmp	.label_321
.label_380:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [from_unit_size]],  rax
	jmp	.label_321
.label_342:
	mov	dword ptr [dword ptr [grouping]],  1
	jmp	.label_321
.label_378:
	mov	byte ptr [byte ptr [line_delim]],  0
	jmp	.label_321
.label_350:
	mov	edi, 1
	call	usage
.label_341:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_328
	test	byte ptr [rbp - 0x15], 1
	jne	.label_328
	movabs	rdi, OFFSET FLAT:label_340
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_328:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_319
	cmp	dword ptr [dword ptr [scale_from]],  0
	jne	.label_319
	cmp	dword ptr [dword ptr [scale_to]],  0
	jne	.label_319
	cmp	dword ptr [dword ptr [grouping]],  0
	jne	.label_319
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_319
	cmp	qword ptr [word ptr [format_str]],  0
	jne	.label_319
	movabs	rdi, OFFSET FLAT:label_382
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_319:
	cmp	qword ptr [word ptr [format_str]],  0
	je	.label_390
	mov	rdi,  qword ptr [word ptr [format_str]]
	call	parse_format_string
.label_390:
	cmp	dword ptr [dword ptr [grouping]],  0
	je	.label_394
	cmp	dword ptr [dword ptr [scale_to]],  0
	je	.label_406
	movabs	rdi, OFFSET FLAT:label_317
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_333:
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_321
.label_405:
	mov	qword ptr [word ptr [header]],  1
.label_377:
	jmp	.label_321
.label_337:
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_fields
	jmp	.label_321
.label_388:
	cmp	qword ptr [word ptr [padding_width]],  0
	jge	.label_329
	xor	eax, eax
	mov	ecx, eax
	mov	dword ptr [dword ptr [padding_alignment]],  0
	sub	rcx,  qword ptr [word ptr [padding_width]]
	mov	qword ptr [word ptr [padding_width]],  rcx
.label_329:
	jmp	.label_321
.label_352:
	movabs	rsi, OFFSET FLAT:label_369
	movabs	rdx, OFFSET FLAT:label_17
	movabs	r8, OFFSET FLAT:label_370
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_391:
	jmp	.label_392
.label_392:
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x30]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	mov	rcx,  qword ptr [word ptr [stdin]]
	call	getdelim
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jle	.label_403
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	movzx	esi,  byte ptr [byte ptr [line_delim]]
	cmp	edx, esi
	sete	dil
	and	dil, 1
	mov	byte ptr [rbp - 0x39], dil
	test	byte ptr [rbp - 0x39], 1
	je	.label_343
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
.label_343:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	esi, al
	call	process_line
	and	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_392
.label_359:
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
.label_399:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [header]]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [word ptr [header]],  rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0xba], cl
	je	.label_355
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x30]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	mov	rcx,  qword ptr [word ptr [stdin]]
	call	getdelim
	cmp	rax, 0
	setg	r8b
	mov	byte ptr [rbp - 0xba], r8b
.label_355:
	mov	al, byte ptr [rbp - 0xba]
	test	al, 1
	jne	.label_384
	jmp	.label_391
.label_384:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_399
.label_339:
	jmp	.label_377
.label_346:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_405
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	movabs	rcx, OFFSET FLAT:header
	movabs	r8, OFFSET FLAT:label_220
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	cmp	eax, 0
	jne	.label_324
	cmp	qword ptr [word ptr [header]],  0
	jne	.label_339
.label_324:
	movabs	rdi, OFFSET FLAT:label_345
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb8], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x405380
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rdi, rax
	call	free
	mov	qword ptr [word ptr [frp]],  0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053ba
	.globl sub_4053ba
	.type sub_4053ba, @function
sub_4053ba:

	nop	
	nop	dword ptr [rax]
.label_413:
	mov	byte ptr [rbp - 1], 0
.label_414:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053ce
	.globl sub_4053ce
	.type sub_4053ce, @function
sub_4053ce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053dc
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_413
	jmp	.label_412
.label_412:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_414
	.section	.text
	.align	32
	#Procedure 0x405400
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_415
	jmp	.label_417
.label_417:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_415
	jmp	.label_416
.label_416:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_418
	jmp	.label_415
.label_415:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_419
.label_418:
	mov	byte ptr [rbp - 1], 0
.label_419:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405465
	.globl sub_405465
	.type sub_405465, @function
sub_405465:

	nop	word ptr cs:[rax + rax]
.label_420:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	setg	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1c], eax
.label_421:
	mov	eax, dword ptr [rbp - 0x1c]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405487
	.globl sub_405487
	.type sub_405487, @function
sub_405487:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405493

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	eax, esi
	mov	dword ptr [rbp - 0x14], eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	eax, esi
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	jge	.label_420
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_421
	.section	.text
	.align	32
	#Procedure 0x4054d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_422
	call	xalloc_die
.label_422:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405518
	.globl sub_405518
	.type sub_405518, @function
sub_405518:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405520

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_423
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_423:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405684
	.globl sub_405684
	.type sub_405684, @function
sub_405684:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405690

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_432:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_434
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_430
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_427
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_429
.label_425:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_429:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405738
	.globl sub_405738
	.type sub_405738, @function
sub_405738:

	nop	word ptr cs:[rax + rax]
.label_433:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_424
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_435
.label_424:
	mov	byte ptr [rbp - 0x41], 1
.label_435:
	jmp	.label_426
.label_426:
	jmp	.label_428
.label_428:
	jmp	.label_430
.label_430:
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_432
.label_427:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_433
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_426
.label_434:
	test	byte ptr [rbp - 0x41], 1
	je	.label_425
	mov	qword ptr [rbp - 8], -2
	jmp	.label_429
	.section	.text
	.align	32
	#Procedure 0x4057e0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_436
	jmp	.label_438
.label_438:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_437
.label_436:
	mov	byte ptr [rbp - 1], 0
.label_437:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405812
	.globl sub_405812
	.type sub_405812, @function
sub_405812:

	nop	word ptr cs:[rax + rax]
.label_440:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [word ptr [padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	mov	rsi,  qword ptr [word ptr [padding_buffer_size]]
	call	xrealloc
	mov	qword ptr [word ptr [padding_buffer]],  rax
.label_439:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405853
	.globl sub_405853
	.type sub_405853, @function
sub_405853:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40585d

	.globl setup_padding_buffer
	.type setup_padding_buffer, @function
setup_padding_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [padding_buffer_size]]
	cmp	rdi, qword ptr [rbp - 8]
	jbe	.label_440
	jmp	.label_439
.label_442:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_443
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_443
	call	xalloc_die
.label_443:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_441:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058be
	.globl sub_4058be
	.type sub_4058be, @function
sub_4058be:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_442
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_442
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_441
	.section	.text
	.align	32
	#Procedure 0x405900

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_444
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_450
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_450
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_449
	mov	eax, 2
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	ja	.label_449
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax - 1]
	call	c_isdigit
	test	al, 1
	jne	.label_449
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	jmp	.label_448
.label_451:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059f9
	.globl sub_4059f9
	.type sub_4059f9, @function
sub_4059f9:

	nop	word ptr cs:[rax + rax]
.label_449:
	movabs	rax, OFFSET FLAT:label_446
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	byte ptr [rcx + 1], 0x42
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	byte ptr [rcx + 1], 0
	mov	qword ptr [rbp - 0x40], rax
.label_448:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_450:
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x40]
	call	xstrtoumax
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_445
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_445
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_451
.label_445:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	movabs	rdi, OFFSET FLAT:label_447
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_453:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_452:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405adb
	.globl sub_405adb
	.type sub_405adb, @function
sub_405adb:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405adf

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_453
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_452
.label_454:
	fld	xword ptr [rbp - 0x10]
	fld	dword ptr [dword ptr [rip + label_458]]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x24]
.label_457:
	fld	xword ptr [rbp - 0x24]
	fnstcw	word ptr [rbp - 0x1a]
	mov	ax, word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], 0xc7f
	fldcw	word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], ax
	fistp	qword ptr [rbp - 0x18]
	fldcw	word ptr [rbp - 0x1a]
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b51
	.globl sub_405b51
	.type sub_405b51, @function
sub_405b51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b60

	.globl simple_round_nearest
	.type simple_round_nearest, @function
simple_round_nearest:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_454
	jmp	.label_455
.label_455:
	fld	xword ptr [rbp - 0x10]
	fld	dword ptr [dword ptr [rip + label_456]]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x24]
	jmp	.label_457
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_459:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_463
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_461
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_460
.label_461:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_460:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_463:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_465
	jmp	.label_464
.label_465:
	jmp	.label_462
.label_462:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_459
.label_464:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c99
	.globl sub_405c99
	.type sub_405c99, @function
sub_405c99:

	nop	dword ptr [rax]
.label_467:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cad
	.globl sub_405cad
	.type sub_405cad, @function
sub_405cad:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cbb

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_469:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_466
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x19], cl
.label_466:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_468
	jmp	.label_467
.label_468:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
	jmp	.label_469
	.section	.text
	.align	32
	#Procedure 0x405d20
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_470
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_472]]
	jmp	rcx
.label_470:
	mov	byte ptr [rbp - 1], 0
.label_471:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_1292:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_471
	.section	.text
	.align	32
	#Procedure 0x405d70

	.globl print_padded_number
	.type print_padded_number, @function
print_padded_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	qword ptr [word ptr [format_str_prefix]],  0
	je	.label_473
	mov	rdi,  qword ptr [word ptr [format_str_prefix]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
.label_473:
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	mov	dword ptr [rbp - 8], eax
	je	.label_474
	mov	rdi,  qword ptr [word ptr [format_str_suffix]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
.label_474:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405de4
	.globl sub_405de4
	.type sub_405de4, @function
sub_405de4:

	nop	word ptr cs:[rax + rax]
.label_478:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_475
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_38]],  rax
.label_475:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_476
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_476:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e76
	.globl sub_405e76
	.type sub_405e76, @function
sub_405e76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e82
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_477:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_478
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_477
	.section	.text
	.align	32
	#Procedure 0x405ed0

	.globl simple_round
	.type simple_round, @function
simple_round:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], edi
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_479]]
	fdiv	st(1), st(0)
	fnstcw	word ptr [rbp - 0x5a]
	mov	ax, word ptr [rbp - 0x5a]
	mov	word ptr [rbp - 0x5a], 0xc7f
	fldcw	word ptr [rbp - 0x5a]
	mov	word ptr [rbp - 0x5a], ax
	fxch	st(1)
	fistp	qword ptr [rbp - 0x48]
	fldcw	word ptr [rbp - 0x5a]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], rcx
	fild	qword ptr [rbp - 0x40]
	fmulp	st(1)
	fld	xword ptr [rbp - 0x20]
	fsubrp	st(1)
	fstp	xword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x24]
	mov	ecx, edi
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x70], rdx
	ja	.label_480
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_483]]
	jmp	rcx
.label_480:
	fldz	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_482
.label_1298:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_to_zero
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_481
.label_1299:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_nearest
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_481
.label_1296:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_floor
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_481
.label_481:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	fild	qword ptr [rbp - 0x58]
	fld	xword ptr [word ptr [rip + label_479]]
	fmulp	st(1)
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	fild	qword ptr [rbp - 0x50]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x10]
.label_482:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405fc7
	.globl sub_405fc7
	.type sub_405fc7, @function
sub_405fc7:

	nop	word ptr cs:[rax + rax]
.label_1297:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_from_zero
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_481
	.section	.text
	.align	32
	#Procedure 0x405fea

	.globl sub_405fea
	.type sub_405fea, @function
sub_405fea:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_481
	.section	.text
	.align	32
	#Procedure 0x406000

	.globl valid_suffix
	.type valid_suffix, @function
valid_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	rdi,  qword ptr [word ptr [valid_suffix.valid_suffixes]]
	movsx	esi, byte ptr [rbp - 1]
	call	strchr
	cmp	rax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406032
	.globl sub_406032
	.type sub_406032, @function
sub_406032:

	nop	word ptr cs:[rax + rax]
.label_484:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406049
	.globl sub_406049
	.type sub_406049, @function
sub_406049:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40604c

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_485:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_484
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_485
.label_489:
	jmp	.label_486
.label_486:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_490
	.section	.text
	.align	32
	#Procedure 0x4060a6
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_490:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_488
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_489
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_487
.label_488:
	mov	qword ptr [rbp - 8], 0
.label_487:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406129
	.globl sub_406129
	.type sub_406129, @function
sub_406129:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406130

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_491
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406160
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_492
	jmp	.label_494
.label_494:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_495
	jmp	.label_492
.label_492:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_493
.label_495:
	mov	byte ptr [rbp - 1], 0
.label_493:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061a8
	.globl sub_4061a8
	.type sub_4061a8, @function
sub_4061a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061e7
	.globl sub_4061e7
	.type sub_4061e7, @function
sub_4061e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
.label_497:
	movsxd	rax, dword ptr [rbp - 0x1c]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.label_496
	.section	.text
	.align	32
	#Procedure 0x40621d

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x1c], 0
.label_496:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.label_499
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	wcwidth
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_498
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xfffd
	mov	dword ptr [rbp - 0x1c], 1
.label_498:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_497
	jmp	.label_499
.label_499:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062a0

	.globl default_scale_base
	.type default_scale_base, @function
default_scale_base:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 3
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_500
	jmp	.label_503
.label_503:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -3
	sub	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_501
	jmp	.label_504
.label_504:
	mov	dword ptr [rbp - 4], 0x400
	jmp	.label_502
.label_500:
	jmp	.label_501
.label_501:
	mov	dword ptr [rbp - 4], 0x3e8
.label_502:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062f1
	.globl sub_4062f1
	.type sub_4062f1, @function
sub_4062f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406300

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40633f
	.globl sub_40633f
	.type sub_40633f, @function
sub_40633f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406340

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406368
	.globl sub_406368
	.type sub_406368, @function
sub_406368:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406370

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
.label_506:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40639a
	.globl sub_40639a
	.type sub_40639a, @function
sub_40639a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063a4
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_505
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_506
.label_505:
	call	xalloc_die
.label_519:
	cmp	dword ptr [rbp - 0xbc], 0x1a
	jbe	.label_526
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_528
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:label_511
	mov	edx, ecx
	mov	dword ptr [rbp - 0xf4], edi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0xf8], eax
	call	gettext
	fld	xword ptr [rbp - 0x20]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, dword ptr [rbp - 0xf4]
	mov	byte ptr [rbp - 0xf9], sil
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0xf9]
	call	error
.label_528:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_516
	.section	.text
	.align	32
	#Procedure 0x406464

	.globl prepare_padded_number
	.type prepare_padded_number, @function
prepare_padded_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdi
	cmp	qword ptr [word ptr [user_precision]],  -1
	jne	.label_521
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_509
.label_521:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0xd0], rax
.label_509:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xb8], rax
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	mov	edi, 0xa
	lea	rsi, [rbp - 0xbc]
	call	expld
	cmp	dword ptr [dword ptr [scale_to]],  0
	fstp	xword ptr [rbp - 0xdc]
	jne	.label_519
	mov	eax, dword ptr [rbp - 0xbc]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0xb8]
	cmp	rcx, 0x12
	jbe	.label_519
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_527
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_510
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:label_514
	mov	edx, ecx
	mov	dword ptr [rbp - 0xe0], edi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0xe4], eax
	call	gettext
	fld	xword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	xor	esi, esi
	mov	r8b, sil
	mov	edi, dword ptr [rbp - 0xe0]
	mov	rdx, rax
	mov	al, r8b
	call	error
	jmp	.label_523
.label_510:
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:label_524
	mov	edx, ecx
	mov	dword ptr [rbp - 0xe8], edi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0xec], eax
	call	gettext
	fld	xword ptr [rbp - 0x20]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, dword ptr [rbp - 0xe8]
	mov	byte ptr [rbp - 0xed], sil
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0xed]
	call	error
.label_523:
	jmp	.label_527
.label_527:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_516
.label_517:
	lea	rdi, [rbp - 0xb0]
	call	strlen
	add	rax, 1
	mov	rdi, rax
	call	setup_padding_buffer
	lea	rsi, [rbp - 0xb0]
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	call	strcpy
	mov	qword ptr [rbp - 0x168], rax
.label_512:
	mov	dword ptr [rbp - 4], 1
.label_516:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406608
	.globl sub_406608
	.type sub_406608, @function
sub_406608:

	nop	word ptr [rax + rax]
.label_526:
	lea	rsi, [rbp - 0xb0]
	fld	xword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, eax
	mov	edx,  dword ptr [dword ptr [scale_to]]
	mov	r8d,  dword ptr [dword ptr [grouping]]
	mov	r9d,  dword ptr [dword ptr [round_style]]
	mov	rax, rsp
	fstp	xword ptr [rax]
	mov	edi, 0x80
	mov	eax, edi
	mov	edi, ecx
	mov	dword ptr [rbp - 0x100], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x100]
	call	double_to_human
	cmp	qword ptr [word ptr [suffix]],  0
	je	.label_522
	mov	eax, 0x80
	mov	ecx, eax
	lea	rdx, [rbp - 0xb0]
	mov	rsi,  qword ptr [word ptr [suffix]]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x108], rcx
	mov	qword ptr [rbp - 0x110], rdx
	mov	qword ptr [rbp - 0x118], rsi
	call	strlen
	mov	rcx, qword ptr [rbp - 0x108]
	sub	rcx, rax
	sub	rcx, 1
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, rcx
	call	strncat
	mov	qword ptr [rbp - 0x120], rax
.label_522:
	jmp	.label_518
.label_518:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_520
	lea	rdi, [rbp - 0xb0]
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x20]
	fstp	xword ptr [rbp - 0x12c]
	mov	qword ptr [rbp - 0x138], rax
	call	quote
	movabs	rdi, OFFSET FLAT:label_507
	mov	rcx, rsp
	fld	xword ptr [rbp - 0x12c]
	fstp	xword ptr [rcx]
	mov	edx, OFFSET FLAT:label_507
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rcx, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x140], rdi
	mov	rdi, rcx
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0x144], eax
.label_520:
	jmp	.label_513
.label_513:
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_517
	lea	rdi, [rbp - 0xb0]
	call	strlen
	cmp	rax,  qword ptr [word ptr [padding_width]]
	jae	.label_517
	lea	rcx, [rbp - 0xc8]
	mov	r9d, 2
	lea	rdi, [rbp - 0xb0]
	mov	rax,  qword ptr [word ptr [padding_width]]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsi,  qword ptr [word ptr [padding_buffer]]
	mov	rdx,  qword ptr [word ptr [padding_buffer_size]]
	mov	r8d,  dword ptr [dword ptr [padding_alignment]]
	call	mbsalign
	mov	qword ptr [rbp - 0x150], rax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_515
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [padding_buffer]]
	mov	qword ptr [rbp - 0x158], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_525
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_515:
	jmp	.label_508
.label_508:
	jmp	.label_512
.label_532:
	cmp	dword ptr [rbp - 0x58], 1
	jne	.label_530
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x30], eax
.label_530:
	test	byte ptr [rbp - 0x51], 1
	je	.label_533
	mov	dword ptr [rbp - 4], 3
	jmp	.label_538
.label_533:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	fld	xword ptr [rbp - 0x50]
	mov	edi, dword ptr [rbp - 0x60]
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_66]]
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0x6c]
	call	powerld
	fld	xword ptr [rbp - 0x6c]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x50]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_529
	test	byte ptr [rbp - 0x29], 1
	je	.label_537
	fld	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	fsubrp	st(1)
	fstp	xword ptr [rax]
	jmp	.label_539
.label_537:
	fld	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	faddp	st(1)
	fstp	xword ptr [rax]
.label_539:
	jmp	.label_529
.label_529:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_535
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_535:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_534:
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 4], eax
.label_538:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068d5
	.globl sub_4068d5
	.type sub_4068d5, @function
sub_4068d5:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4068d6

	.globl simple_strtod_float
	.type simple_strtod_float, @function
simple_strtod_float:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x30], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_531
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_531:
	lea	rcx, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	simple_strtod_int
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_536
	cmp	dword ptr [rbp - 0x30], 1
	je	.label_536
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_538
.label_536:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	call	strncmp
	cmp	eax, 0
	jne	.label_534
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x50]
	lea	rcx, [rbp - 0x51]
	fldz	
	fstp	xword ptr [rbp - 0x50]
	mov	eax,  dword ptr [dword ptr [decimal_point_length]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rdi]
	movsxd	r9, eax
	add	r8, r9
	mov	qword ptr [rdi], r8
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	call	simple_strtod_int
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_532
	cmp	dword ptr [rbp - 0x58], 1
	je	.label_532
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_538
.label_541:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_540
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_540
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_544
	movabs	rdi, OFFSET FLAT:label_543
	mov	eax,  dword ptr [dword ptr [conv_exit_code]]
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	call	quote_n
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	al, 0
	call	error
.label_544:
	mov	dword ptr [rbp - 0x2c], 5
.label_540:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_542:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a50
	.globl sub_406a50
	.type sub_406a50, @function
sub_406a50:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a56

	.globl parse_human_number
	.type parse_human_number, @function
parse_human_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d,  dword ptr [dword ptr [scale_from]]
	mov	rsi, rax
	call	simple_strtod_human
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_541
	cmp	dword ptr [rbp - 0x2c], 1
	je	.label_541
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_strtod_fatal
	mov	edi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], edi
	jmp	.label_542
	.section	.text
	.align	32
	#Procedure 0x406ac0

	.globl simple_round_from_zero
	.type simple_round_from_zero, @function
simple_round_from_zero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_545
	jmp	.label_546
.label_546:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_floor
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_547
.label_545:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	mov	qword ptr [rbp - 0x18], rax
.label_547:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b12
	.globl sub_406b12
	.type sub_406b12, @function
sub_406b12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b20

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b53
	.globl sub_406b53
	.type sub_406b53, @function
sub_406b53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b60

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_548
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_550:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_552
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_555
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_553
.label_555:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_549
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_551
.label_553:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_554
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_551:
	jmp	.label_556
.label_556:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_550
.label_552:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cb0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_557
	jmp	.label_560
.label_560:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_558
	jmp	.label_557
.label_557:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_559
.label_558:
	mov	byte ptr [rbp - 1], 0
.label_559:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cfe
	.globl sub_406cfe
	.type sub_406cfe, @function
sub_406cfe:

	nop	
.label_561:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d0a
	.globl sub_406d0a
	.type sub_406d0a, @function
sub_406d0a:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406d0c

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_561
	cmp	qword ptr [rbp - 8], 0
	je	.label_561
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406d40

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d72
	.globl sub_406d72
	.type sub_406d72, @function
sub_406d72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d80
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_562
	jmp	.label_564
.label_564:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_563
.label_562:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_563:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406db7
	.globl sub_406db7
	.type sub_406db7, @function
sub_406db7:

	nop	word ptr [rax + rax]
.label_567:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_566:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ddb
	.globl sub_406ddb
	.type sub_406ddb, @function
sub_406ddb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406de8

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	push	rbp
	mov	rbp, rsp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_565
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_566
.label_565:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_567
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_566
.label_590:
	cmp	qword ptr [word ptr [n_frp]],  0
	jne	.label_598
	jmp	.label_603
.label_603:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_640
	movabs	rdi, OFFSET FLAT:label_609
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_617
.label_577:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_635
	jmp	.label_593
.label_593:
	movabs	rdi, OFFSET FLAT:label_628
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_572:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 2
	cmp	eax, 0
	je	.label_637
	call	complement_rp
.label_637:
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, 1
	mov	qword ptr [word ptr [n_frp]],  rax
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [word ptr [frp]],  rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	sub	rax, 1
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rax + 8], -1
	mov	rax,  qword ptr [word ptr [n_frp]]
	sub	rax, 1
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rax], -1
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f81
	.globl sub_406f81
	.type sub_406f81, @function
sub_406f81:

	nop	word ptr cs:[rax + rax]
.label_605:
	test	byte ptr [rbp - 0x21], 1
	je	.label_607
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_611
.label_612:
	movabs	rdi, OFFSET FLAT:label_618
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
.label_610:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	edi, 1
	call	usage
.label_607:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_611
.label_611:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_569
.label_631:
	jmp	.label_576
.label_576:
	test	byte ptr [rbp - 0x22], 1
	jne	.label_577
	mov	rsi, -1
	mov	rdi, qword ptr [rbp - 0x18]
	call	add_range_pair
	jmp	.label_582
.label_606:
	movabs	rdi, OFFSET FLAT:label_584
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
.label_583:
	mov	rax, qword ptr [rbp - 0x50]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_579:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_597
.label_635:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
.label_582:
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_634
.label_629:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_613
	jmp	.label_619
.label_619:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_620
	movabs	rdi, OFFSET FLAT:label_625
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_630
.label_598:
	mov	eax, 0x10
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:compare_ranges
	mov	rsi,  qword ptr [word ptr [frp]]
	mov	rdi,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0xa8]
	call	qsort
	mov	qword ptr [rbp - 0x40], 0
.label_642:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_572
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_602:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_580
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	ja	.label_585
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_595
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_614
.label_596:
	mov	byte ptr [rbp - 0x21], 1
.label_601:
	movabs	rax, 0x1999999999999999
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_627
	imul	rax, qword ptr [rbp - 0x20], 0xa
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	movsxd	rcx, edx
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_638
.label_627:
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_639
.label_585:
	jmp	.label_580
.label_640:
	movabs	rdi, OFFSET FLAT:label_568
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
.label_617:
	mov	rax, qword ptr [rbp - 0xa0]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_613:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
	mov	qword ptr [rbp - 0x20], 0
.label_634:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_588
	jmp	.label_590
.label_597:
	jmp	.label_586
.label_586:
	jmp	.label_569
.label_569:
	jmp	.label_594
.label_624:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	je	.label_615
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar_0
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	jne	.label_615
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_623
.label_615:
	mov	byte ptr [rbp - 0x24], 0
	test	byte ptr [rbp - 0x23], 1
	je	.label_629
	mov	byte ptr [rbp - 0x23], 0
	test	byte ptr [rbp - 0x21], 1
	jne	.label_576
	test	byte ptr [rbp - 0x22], 1
	jne	.label_576
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 1
	cmp	eax, 0
	je	.label_636
	mov	qword ptr [rbp - 0x18], 1
	jmp	.label_631
.label_574:
	movabs	rdi, OFFSET FLAT:label_575
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
.label_632:
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_623:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_581
	test	byte ptr [rbp - 0x24], 1
	je	.label_587
	cmp	qword ptr [word ptr [set_fields.num_start]],  0
	jne	.label_589
.label_587:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [set_fields.num_start]],  rax
.label_589:
	mov	byte ptr [rbp - 0x24], 1
	test	byte ptr [rbp - 0x23], 1
	je	.label_596
	mov	byte ptr [rbp - 0x22], 1
	jmp	.label_601
.label_622:
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_605
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_605
	jmp	.label_641
.label_641:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_574
	movabs	rdi, OFFSET FLAT:label_625
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_632
.label_608:
	movabs	rdi, OFFSET FLAT:label_633
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_621:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x407423

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], 1
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	mov	byte ptr [rbp - 0x23], 0
	mov	byte ptr [rbp - 0x24], 0
	mov	esi, dword ptr [rbp - 0xc]
	and	esi, 1
	cmp	esi, 0
	je	.label_643
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:label_644
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_643
	mov	qword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_643:
	jmp	.label_594
.label_594:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_624
	mov	byte ptr [rbp - 0x24], 0
	test	byte ptr [rbp - 0x23], 1
	je	.label_622
	jmp	.label_626
.label_626:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_606
	movabs	rdi, OFFSET FLAT:label_571
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_583
.label_638:
	mov	eax, 1
	imul	rcx, qword ptr [rbp - 0x20], 0xa
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	sub	esi, 0x30
	movsxd	rdx, esi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x74], eax
.label_639:
	mov	eax, dword ptr [rbp - 0x74]
	cmp	eax, 0
	je	.label_570
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_579
.label_570:
	movabs	rsi, OFFSET FLAT:label_578
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	call	strspn
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	mov	rsi, qword ptr [rbp - 0x30]
	call	xstrndup
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0xc]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_612
	movabs	rdi, OFFSET FLAT:label_591
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_610
.label_599:
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_602
.label_581:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_608
	movabs	rdi, OFFSET FLAT:label_616
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_621
.label_588:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	jmp	.label_586
.label_580:
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_642
.label_636:
	jmp	.label_592
.label_592:
	movabs	rdi, OFFSET FLAT:label_604
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_595:
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
.label_614:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rdx, 4
	add	rcx, rdx
	add	rcx, 0x10
	mov	rdx,  qword ptr [word ptr [n_frp]]
	sub	rdx, qword ptr [rbp - 0x48]
	sub	rdx, 1
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rcx,  qword ptr [word ptr [n_frp]]
	add	rcx, -1
	mov	qword ptr [word ptr [n_frp]],  rcx
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, -1
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_599
.label_620:
	movabs	rdi, OFFSET FLAT:label_575
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
.label_630:
	mov	rax, qword ptr [rbp - 0x70]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4076f0

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
.label_645:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax], 0
	je	.label_646
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax]
	call	iswprint
	cmp	eax, 0
	jne	.label_647
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xfffd
	mov	byte ptr [rbp - 9], 1
.label_647:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_645
.label_646:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407756
	.globl sub_407756
	.type sub_407756, @function
sub_407756:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407760

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407793
	.globl sub_407793
	.type sub_407793, @function
sub_407793:

	nop	word ptr cs:[rax + rax]
.label_652:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_648
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_649
.label_648:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_649
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_649:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_650
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_650:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_651:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40782d
	.globl sub_40782d
	.type sub_40782d, @function
sub_40782d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40782f

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_652
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_651
	.section	.text
	.align	32
	#Procedure 0x407870

	.globl sub_407870
	.type sub_407870, @function
sub_407870:
	movabs	rax, OFFSET FLAT:label_653
	mov	qword ptr [rbp - 8], rax
	jmp	.label_654
	.section	.text
	.align	32
	#Procedure 0x407883

	.globl sub_407883
	.type sub_407883, @function
sub_407883:
	movabs	rax, OFFSET FLAT:label_220
	mov	qword ptr [rbp - 8], rax
	jmp	.label_654
	.section	.text
	.align	32
	#Procedure 0x407896

	.globl sub_407896
	.type sub_407896, @function
sub_407896:
	movabs	rax, OFFSET FLAT:label_655
	mov	qword ptr [rbp - 8], rax
	jmp	.label_654
	.section	.text
	.align	32
	#Procedure 0x4078a9

	.globl sub_4078a9
	.type sub_4078a9, @function
sub_4078a9:
	movabs	rax, OFFSET FLAT:label_656
	mov	qword ptr [rbp - 8], rax
	jmp	.label_654
	.section	.text
	.align	32
	#Procedure 0x4078bc

	.globl sub_4078bc
	.type sub_4078bc, @function
sub_4078bc:
	movabs	rax, OFFSET FLAT:label_657
	mov	qword ptr [rbp - 8], rax
	jmp	.label_654
	.section	.text
	.align	32
	#Procedure 0x4078cf

	.globl suffix_power_char
	.type suffix_power_char, @function
suffix_power_char:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, edi
	mov	rcx, rax
	sub	rcx, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rcx
	ja	.label_664
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_658]]
	jmp	rcx
.label_1279:
	movabs	rax, OFFSET FLAT:label_663
	mov	qword ptr [rbp - 8], rax
	jmp	.label_654
.label_1278:
	movabs	rax, OFFSET FLAT:label_659
	mov	qword ptr [rbp - 8], rax
	jmp	.label_654
.label_664:
	movabs	rax, OFFSET FLAT:label_660
	mov	qword ptr [rbp - 8], rax
.label_654:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	nop	
.label_1277:
	movabs	rax, OFFSET FLAT:label_661
	mov	qword ptr [rbp - 8], rax
	jmp	.label_654
.label_1276:
	movabs	rax, OFFSET FLAT:label_662
	mov	qword ptr [rbp - 8], rax
	jmp	.label_654
	.section	.text
	.align	32
	#Procedure 0x407960
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a0d
	.globl sub_407a0d
	.type sub_407a0d, @function
sub_407a0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a10

	.globl process_field
	.type process_field, @function
process_field:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	fldz	
	fstp	xword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x29], 1
	mov	rdi, qword ptr [rbp - 0x10]
	call	include_field
	test	al, 1
	jne	.label_669
	jmp	.label_666
.label_669:
	lea	rsi, [rbp - 0x20]
	lea	rdx, [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	process_suffixed_number
	cmp	eax, 0
	setne	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x29], r8b
	test	byte ptr [rbp - 0x29], 1
	je	.label_670
	fld	xword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	prepare_padded_number
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
.label_670:
	test	byte ptr [rbp - 0x29], 1
	je	.label_668
	call	print_padded_number
	jmp	.label_665
.label_666:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_667:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ac8
	.globl sub_407ac8
	.type sub_407ac8, @function
sub_407ac8:

	nop	word ptr cs:[rax + rax]
.label_668:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x30], eax
.label_665:
	jmp	.label_667
.label_672:
	mov	byte ptr [rbp - 1], 0
.label_673:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407afe
	.globl sub_407afe
	.type sub_407afe, @function
sub_407afe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b0c

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_672
	jmp	.label_671
.label_671:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_673
	.section	.text
	.align	32
	#Procedure 0x407b30
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b55
	.globl sub_407b55
	.type sub_407b55, @function
sub_407b55:

	nop	word ptr cs:[rax + rax]
.label_674:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b66
	.globl sub_407b66
	.type sub_407b66, @function
sub_407b66:

	nop	
	nop	dword ptr [rax + rax]
.label_676:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_674
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x407b91

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_676
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_678
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_676
.label_678:
	movabs	rdi, OFFSET FLAT:label_677
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_680
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_679
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_675
.label_680:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_26
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_675:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x407c50
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_681
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_682
.label_681:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d15
	.globl sub_407d15
	.type sub_407d15, @function
sub_407d15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d20

	.globl absld
	.type absld, @function
absld:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_683
	jmp	.label_684
.label_684:
	fld	xword ptr [rbp - 0x10]
	fchs	
	fstp	xword ptr [rbp - 0x1c]
	jmp	.label_685
.label_683:
	fld	xword ptr [rbp - 0x10]
	fstp	xword ptr [rbp - 0x1c]
.label_685:
	fld	xword ptr [rbp - 0x1c]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d55
	.globl sub_407d55
	.type sub_407d55, @function
sub_407d55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d60
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_686
	jmp	.label_689
.label_689:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_686
	jmp	.label_687
.label_687:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_688
	jmp	.label_686
.label_686:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_690
.label_688:
	mov	byte ptr [rbp - 1], 0
.label_690:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407dc5
	.globl sub_407dc5
	.type sub_407dc5, @function
sub_407dc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dd0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407dfd
	.globl sub_407dfd
	.type sub_407dfd, @function
sub_407dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e00

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [n_frp]]
	cmp	rsi,  qword ptr [word ptr [n_frp_allocated]]
	jne	.label_691
	movabs	rsi, OFFSET FLAT:n_frp_allocated
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [frp]],  rax
.label_691:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, 1
	mov	qword ptr [word ptr [n_frp]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ea0

	.globl simple_strtod_human
	.type simple_strtod_human, @function
simple_strtod_human:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	dword ptr [rbp - 0x30], 0
	mov	edi, dword ptr [rbp - 0x2c]
	call	default_scale_base
	mov	dword ptr [rbp - 0x34], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_711
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	call	quote_n
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x68], rax
	call	quote_n
	movabs	rsi, OFFSET FLAT:label_696
	mov	r8d, 0x12
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
.label_711:
	jmp	.label_705
.label_705:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	simple_strtod_float
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	je	.label_710
	cmp	dword ptr [rbp - 0x38], 1
	je	.label_710
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_699
.label_717:
	jmp	.label_713
.label_713:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	fild	dword ptr [rbp - 0x54]
	mov	edi, dword ptr [rbp - 0x30]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	call	powerld
	fstp	xword ptr [rbp - 0x50]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_694
	movabs	rax, OFFSET FLAT:label_700
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	edx, dword ptr [rbp - 0x34]
	mov	ecx, dword ptr [rbp - 0x30]
	fld	xword ptr [rbp - 0x50]
	mov	rsi, rsp
	fstp	xword ptr [rsi]
	mov	r8d, OFFSET FLAT:label_700
	mov	esi, r8d
	xor	r8d, r8d
	mov	r9b, r8b
	mov	qword ptr [rbp - 0x98], rax
	mov	al, r9b
	call	fprintf
	mov	dword ptr [rbp - 0x9c], eax
.label_694:
	jmp	.label_704
.label_704:
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	fld	xword ptr [rbp - 0x50]
	fmulp	st(1)
	fstp	xword ptr [rax]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_714
	movabs	rax, OFFSET FLAT:label_718
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x20]
	fld	xword ptr [rcx]
	fld	st(0)
	mov	rcx, rsp
	fxch	st(1)
	fstp	xword ptr [rcx + 0x10]
	fstp	xword ptr [rcx]
	mov	edx, OFFSET FLAT:label_718
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0xa8], rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_714:
	jmp	.label_707
.label_707:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
.label_699:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408057
	.globl sub_408057
	.type sub_408057, @function
sub_408057:

	nop	word ptr cs:[rax + rax]
.label_701:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	valid_suffix
	cmp	eax, 0
	jne	.label_716
	mov	dword ptr [rbp - 4], 5
	jmp	.label_699
.label_710:
	jmp	.label_695
.label_695:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_698
	movabs	rax, OFFSET FLAT:label_702
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x20]
	fld	xword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:label_702
	xor	r8d, r8d
	mov	r9b, r8b
	mov	qword ptr [rbp - 0x78], rax
	mov	al, r9b
	call	fprintf
	mov	dword ptr [rbp - 0x7c], eax
.label_698:
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_708
	jmp	.label_706
.label_706:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x88], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x88]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	je	.label_701
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_706
.label_697:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	suffix_power
	mov	dword ptr [rbp - 0x30], eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	qword ptr [rcx], rdx
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_693
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_693
	mov	dword ptr [rbp - 0x34], 0x400
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_692
	movabs	rsi, OFFSET FLAT:label_703
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	edx, dword ptr [rbp - 0x34]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x8c], eax
.label_692:
	jmp	.label_709
.label_709:
	jmp	.label_693
.label_693:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_708:
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_713
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_715
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_717
.label_716:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_697
	mov	dword ptr [rbp - 4], 4
	jmp	.label_699
.label_715:
	mov	dword ptr [rbp - 4], 6
	jmp	.label_699
.label_719:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40824b
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_719
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408280

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40828e
	.globl sub_40828e
	.type sub_40828e, @function
sub_40828e:

	pop	rbp
	ret	
.label_721:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_722:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082a2
	.globl sub_4082a2
	.type sub_4082a2, @function
sub_4082a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082b1

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_720
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_720:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_721
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_721
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_721
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_722
	.section	.text
	.align	32
	#Procedure 0x408340
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40835a
	.globl sub_40835a
	.type sub_40835a, @function
sub_40835a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408360

	.globl simple_round_floor
	.type simple_round_floor, @function
simple_round_floor:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fchs	
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	xor	ecx, ecx
	mov	edx, ecx
	sub	rdx, rax
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40838c
	.globl sub_40838c
	.type sub_40838c, @function
sub_40838c:

	nop	dword ptr [rax]
.label_727:
	test	byte ptr [rbp - 0x31], 1
	je	.label_728
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [zero_padding_width]],  rax
	jmp	.label_730
.label_728:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [padding_width]],  rax
.label_730:
	jmp	.label_725
.label_725:
	jmp	.label_732
.label_732:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_742
	movabs	rdi, OFFSET FLAT:label_760
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x60], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_731:
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x28], rax
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_743
	movabs	rdi, OFFSET FLAT:label_747
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_733:
	movabs	rax, OFFSET FLAT:label_220
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_740
.label_740:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	edi, 2
	mov	rsi, rax
	call	quote_n
	movabs	rsi, OFFSET FLAT:label_734
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r8, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rbp - 0xa0]
	mov	r10, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xc4], eax
.label_737:
	jmp	.label_764
.label_764:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084ff
	.globl sub_4084ff
	.type sub_4084ff, @function
sub_4084ff:

	nop	word ptr [rax + rax]
.label_768:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_766:
	movabs	rsi, OFFSET FLAT:label_729
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strspn
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0x27
	jne	.label_738
	mov	dword ptr [dword ptr [grouping]],  1
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_745
.label_759:
	jmp	.label_763
.label_763:
	jmp	.label_745
.label_745:
	jmp	.label_766
.label_738:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_767
	mov	byte ptr [rbp - 0x31], 1
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_763
.label_742:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2e
	jne	.label_736
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strtol
	mov	qword ptr [word ptr [user_precision]],  rax
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_723
	cmp	qword ptr [word ptr [user_precision]],  0
	jl	.label_723
	mov	rax, -1
	cmp	rax,  qword ptr [word ptr [user_precision]]
	jb	.label_723
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	movsxd	rax, edx
	mov	qword ptr [rbp - 0x68], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	jne	.label_723
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2b
	jne	.label_753
.label_723:
	movabs	rdi, OFFSET FLAT:label_761
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x70], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x40869c

	.globl parse_format_string
	.type parse_format_string, @function
parse_format_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x31], 0
	mov	qword ptr [rbp - 0x10], 0
.label_769:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rsi + rdx]
	cmp	eax, 0x25
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_773
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x25
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_773:
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	test	al, 1
	jne	.label_770
	jmp	.label_768
.label_770:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	byte ptr [rcx + rax], 0
	jne	.label_771
	movabs	rdi, OFFSET FLAT:label_772
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_746:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_755
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrndup
	mov	qword ptr [word ptr [format_str_prefix]],  rax
.label_755:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	je	.label_765
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [word ptr [format_str_suffix]],  rax
.label_765:
	jmp	.label_735
.label_735:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_737
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x88], rax
	call	quote_n
	movabs	rsi, OFFSET FLAT:label_748
	movabs	rcx, OFFSET FLAT:label_749
	movabs	rdx, OFFSET FLAT:label_750
	movabs	r8, OFFSET FLAT:label_751
	cmp	dword ptr [dword ptr [grouping]],  0
	cmovne	rdx, r8
	mov	r8,  qword ptr [word ptr [padding_width]]
	cmp	dword ptr [dword ptr [padding_alignment]],  0
	cmove	rsi, rcx
	cmp	qword ptr [word ptr [format_str_prefix]],  0
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	je	.label_752
	mov	rax,  qword ptr [word ptr [format_str_prefix]]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_739
.label_741:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_757
.label_752:
	movabs	rax, OFFSET FLAT:label_220
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_739
.label_739:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	edi, 1
	mov	rsi, rax
	call	quote_n
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_733
	mov	rax,  qword ptr [word ptr [format_str_suffix]]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_740
.label_771:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_769
.label_743:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rbp - 0x10]
	cmp	rax, rcx
	je	.label_732
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_732
	test	byte ptr [byte ptr [debug]],  1
	je	.label_744
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_744
	test	byte ptr [rbp - 0x31], 1
	je	.label_754
	cmp	qword ptr [rbp - 0x28], 0
	jg	.label_744
.label_754:
	movabs	rdi, OFFSET FLAT:label_762
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_744:
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_727
	xor	eax, eax
	mov	ecx, eax
	mov	dword ptr [dword ptr [padding_alignment]],  0
	sub	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [padding_width]],  rcx
	jmp	.label_725
.label_724:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_757:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	je	.label_746
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	jne	.label_741
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x25
	je	.label_741
	movabs	rdi, OFFSET FLAT:label_726
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_753:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_736:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x66
	je	.label_724
	movabs	rdi, OFFSET FLAT:label_758
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x78], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_767:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_759
	jmp	.label_731
.label_774:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408abe

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_776
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_776:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_775
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_774
.label_775:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408b10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b26
	.globl sub_408b26
	.type sub_408b26, @function
sub_408b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b30
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_777
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_777:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b5a
	.globl sub_408b5a
	.type sub_408b5a, @function
sub_408b5a:

	nop	word ptr [rax + rax]
.label_1131:
	movabs	rdi, OFFSET FLAT:label_778
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_779
.label_1137:
	movabs	rdi, OFFSET FLAT:label_793
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_779
.label_786:
	movabs	rsi, OFFSET FLAT:label_792
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_790:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_783
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_782
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_789
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_794]]
	jmp	rcx
.label_1130:
	jmp	.label_779
.label_789:
	movabs	rdi, OFFSET FLAT:label_784
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_779:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d8a
	.globl sub_408d8a
	.type sub_408d8a, @function
sub_408d8a:

	nop	
.label_1132:
	movabs	rdi, OFFSET FLAT:label_780
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_779
.label_1135:
	movabs	rdi, OFFSET FLAT:label_795
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_779
.label_1134:
	movabs	rdi, OFFSET FLAT:label_796
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_779
.label_1136:
	movabs	rdi, OFFSET FLAT:label_785
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_779
.label_1139:
	movabs	rdi, OFFSET FLAT:label_788
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_779
	.section	.text
	.align	32
	#Procedure 0x408fd2

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_786
	movabs	rsi, OFFSET FLAT:label_781
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_790
.label_1138:
	movabs	rdi, OFFSET FLAT:label_791
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_779
.label_1133:
	movabs	rdi, OFFSET FLAT:label_787
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_779
.label_798:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_797
.label_797:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409193
	.globl sub_409193
	.type sub_409193, @function
sub_409193:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091a1

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_798
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_797
	.section	.text
	.align	32
	#Procedure 0x4091d0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409245
	.globl sub_409245
	.type sub_409245, @function
sub_409245:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409250

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0xb8
	mov	dword ptr [rbp - 0xc], edi
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_818
	jmp	.label_825
.label_825:
	movabs	rdi, OFFSET FLAT:label_827
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_806
.label_818:
	movabs	rdi, OFFSET FLAT:label_809
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_816
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x24], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_828
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_803
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_808
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_820
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_804
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_805
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_823
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_811
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_830
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_807
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_814
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_824
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_800
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_810
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_817
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_826
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_802
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_812
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_819
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_829
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_801
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_813
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_822
	mov	dword ptr [rbp - 0x7c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_831
	mov	dword ptr [rbp - 0x80], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_821
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_815
	mov	dword ptr [rbp - 0x88], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_799
	mov	dword ptr [rbp - 0x8c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	r8,  qword ptr [word ptr [program_name]]
	mov	r9,  qword ptr [word ptr [program_name]]
	mov	rdi,  qword ptr [word ptr [program_name]]
	mov	r10,  qword ptr [word ptr [program_name]]
	mov	r11,  qword ptr [word ptr [program_name]]
	mov	rbx,  qword ptr [word ptr [program_name]]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], rbx
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_369
	mov	dword ptr [rbp - 0x9c], eax
	call	emit_ancillary_info
.label_806:
	mov	edi, dword ptr [rbp - 0xc]
	call	exit
.label_832:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40973a
	.globl sub_40973a
	.type sub_40973a, @function
sub_40973a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409746

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_832
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409780
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_833
	jmp	.label_835
.label_835:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_834
.label_833:
	mov	byte ptr [rbp - 1], 0
.label_834:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097b2
	.globl sub_4097b2
	.type sub_4097b2, @function
sub_4097b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097c0

	.globl simple_round_to_zero
	.type simple_round_to_zero, @function
simple_round_to_zero:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fld	st(0)
	fnstcw	word ptr [rbp - 0x1a]
	mov	ax, word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], 0xc7f
	fldcw	word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], ax
	fxch	st(1)
	fistp	qword ptr [rbp - 0x18]
	fldcw	word ptr [rbp - 0x1a]
	mov	rax, qword ptr [rbp - 0x18]
	fstp	xword ptr [rbp - 0x24]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097f3
	.globl sub_4097f3
	.type sub_4097f3, @function
sub_4097f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409800
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40982a
	.globl sub_40982a
	.type sub_40982a, @function
sub_40982a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409830

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strndup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_836
	call	xalloc_die
.label_836:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40986b
	.globl sub_40986b
	.type sub_40986b, @function
sub_40986b:

	nop	dword ptr [rax + rax]
.label_862:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x78]
	call	mbstowcs
	cmp	rax, 0
	je	.label_837
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x6a], 1
	mov	rdi, qword ptr [rbp - 0x48]
	call	wc_ensure_printable
	and	al, 1
	mov	byte ptr [rbp - 0x69], al
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x78]
	call	wcswidth
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
.label_837:
	jmp	.label_851
.label_851:
	test	byte ptr [rbp - 0x6a], 1
	je	.label_852
	test	byte ptr [rbp - 0x69], 1
	jne	.label_855
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_852
.label_855:
	test	byte ptr [rbp - 0x69], 1
	je	.label_858
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	mov	rdx, rcx
	call	wcstombs
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_858:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_842
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_845
	jmp	.label_844
.label_857:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_856:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x88]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0xc8], rax
.label_848:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 0
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
.label_853:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099c8
	.globl sub_4099c8
	.type sub_4099c8, @function
sub_4099c8:

	nop	word ptr cs:[rax + rax]
.label_846:
	jmp	.label_850
.label_850:
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_849:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 4
	cmp	eax, 0
	je	.label_838
	mov	qword ptr [rbp - 0x80], 0
.label_838:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	je	.label_841
	mov	qword ptr [rbp - 0x88], 0
.label_841:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_848
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	jae	.label_857
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_856
.label_859:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_849
.label_845:
	jmp	.label_853
.label_840:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_849
	.section	.text
	.align	32
	#Procedure 0x409ae9

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x6a], 0
	mov	r8d, dword ptr [rbp - 0x28]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_851
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_851
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_863
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_861
	jmp	.label_844
.label_863:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 2
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_862
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_860
	jmp	.label_844
.label_842:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	wc_truncate
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	call	wcstombs
	mov	qword ptr [rbp - 0x60], rax
.label_852:
	jmp	.label_844
.label_844:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_847
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_847:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_854
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
.label_854:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	test	edx, edx
	mov	dword ptr [rbp - 0x9c], edx
	je	.label_859
	jmp	.label_839
.label_839:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 1
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_840
	jmp	.label_843
.label_843:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 2
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_846
	jmp	.label_850
.label_861:
	jmp	.label_853
.label_860:
	jmp	.label_853
.label_865:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_866:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409cdb
	.globl sub_409cdb
	.type sub_409cdb, @function
sub_409cdb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ce4

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_865
	jmp	.label_864
.label_864:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_866
	.section	.text
	.align	32
	#Procedure 0x409d10
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d37
	.globl sub_409d37
	.type sub_409d37, @function
sub_409d37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d40

	.globl expld
	.type expld, @function
expld:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x24], 0
	fld	xword ptr [rbp - 0x10]
	fld	xword ptr [word ptr [rip + label_867]]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_868
	jmp	.label_873
.label_873:
	fld	xword ptr [rbp - 0x10]
	fld	xword ptr [word ptr [rip + label_874]]
	fucomip	st(1)
	fstp	st(0)
	jb	.label_868
	jmp	.label_872
.label_872:
	jmp	.label_870
.label_870:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	fld	st(0)
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x30], rax
	fild	qword ptr [rbp - 0x30]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	fstp	xword ptr [rbp - 0x44]
	jb	.label_869
	jmp	.label_875
.label_875:
	mov	eax, dword ptr [rbp - 0x24]
	inc	eax
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	fild	qword ptr [rbp - 0x38]
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_870
.label_869:
	jmp	.label_868
.label_868:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_871
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_871:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e05
	.globl sub_409e05
	.type sub_409e05, @function
sub_409e05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e10

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_877
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_876
.label_877:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_876:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e98
	.globl sub_409e98
	.type sub_409e98, @function
sub_409e98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ea0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_878
	jmp	.label_880
.label_880:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_879
.label_878:
	jmp	.label_879
.label_879:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409eea
	.globl sub_409eea
	.type sub_409eea, @function
sub_409eea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ef0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
.label_966:
	jmp	.label_908
.label_908:
	jmp	.label_901
.label_986:
	jmp	.label_1044
.label_1044:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1045
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1045
	jmp	.label_1049
.label_1049:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1050
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1050:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1055
.label_1055:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1059
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1059:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1045:
	jmp	.label_1067
.label_1067:
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1069
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1069:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_1074
.label_1077:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1078
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1078:
	jmp	.label_883
.label_883:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_898
	jmp	.label_902
.label_1026:
	jmp	.label_958
.label_958:
	jmp	.label_905
.label_905:
	jmp	.label_908
.label_1184:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_910
	test	byte ptr [rbp - 0x7b], 1
	je	.label_912
	jmp	.label_914
.label_956:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_968:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_920
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_920
	test	byte ptr [rbp - 0x7b], 1
	je	.label_932
	jmp	.label_914
.label_914:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_972
	test	byte ptr [rbp - 0x79], 1
	je	.label_972
	mov	dword ptr [rbp - 0x34], 4
.label_972:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_981:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a166
	.globl sub_40a166
	.type sub_40a166, @function
sub_40a166:

	nop	dword ptr [rax + rax]
.label_945:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_963
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_963
	test	byte ptr [rbp - 0x7b], 1
	je	.label_963
	jmp	.label_914
.label_993:
	jmp	.label_970
.label_1220:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_971
	movabs	rdi, OFFSET FLAT:label_975
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_229
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_971:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_983
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1000:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_987
	jmp	.label_991
.label_991:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_992
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_992:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_996
.label_996:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1000
.label_1032:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1003
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1003:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1008
.label_1008:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1014
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1014:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1020
.label_1020:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1023
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1023:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1027
.label_1027:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_927
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_927:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_958
.label_1011:
	jmp	.label_891
.label_891:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1040
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1053
.label_922:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1009
	jmp	.label_914
.label_1219:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_909
.label_932:
	mov	byte ptr [rbp - 0x81], 1
.label_920:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_1052
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1060]]
	jmp	rcx
.label_985:
	jmp	.label_970
.label_1180:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_891
.label_1043:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1068
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1068
	jmp	.label_1072
.label_1072:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_982
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_982:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_942
.label_942:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1030
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1030:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1061
.label_1061:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1081
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1081:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1068:
	jmp	.label_886
.label_886:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_887
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_887:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_895
.label_895:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_899
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_899
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_899
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_899
	jmp	.label_916
.label_916:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_919
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_919:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_925
.label_925:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_928
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_928:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_899
.label_899:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_937
.label_1040:
	jmp	.label_901
.label_1181:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_939
.label_955:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_943
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_943
	jmp	.label_948
.label_948:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_949
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_949:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_953
.label_953:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_957
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_957:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_965
.label_965:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1029
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1029:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_943:
	jmp	.label_979
.label_979:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_980
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_980:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_984
.label_984:
	jmp	.label_988
.label_988:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_989
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_989:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_995
.label_995:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_999
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_999:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_969
.label_898:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1010
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_902
.label_1002:
	call	abort
.label_1187:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1019
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_967
	jmp	.label_1022
.label_1179:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_891
.label_918:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1024
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1024
	jmp	.label_1028
.label_1028:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1031
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1031:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1036
.label_1036:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1038
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1038:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_946
.label_946:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1048
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1048:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1024:
	jmp	.label_1056
.label_1056:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1058
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1058:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1063
.label_1063:
	jmp	.label_970
.label_970:
	jmp	.label_1005
.label_1005:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1033
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1033
	jmp	.label_978
.label_978:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1073
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1073:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1075
.label_1075:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1076
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1076:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1033:
	jmp	.label_1080
.label_1080:
	jmp	.label_1082
.label_1082:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_881
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_881:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_885
	mov	byte ptr [rbp - 0x7e], 0
.label_885:
	jmp	.label_892
.label_892:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_894
.label_1183:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_901
.label_987:
	jmp	.label_983
.label_983:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_909
.label_1035:
	jmp	.label_911
.label_911:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_913
	mov	byte ptr [rbp - 0x91], 0
.label_913:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_917
.label_917:
	jmp	.label_924
.label_924:
	jmp	.label_926
.label_926:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_883
.label_902:
	jmp	.label_933
.label_933:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_935
	test	byte ptr [rbp - 0x79], 1
	je	.label_941
	test	byte ptr [rbp - 0x91], 1
	jne	.label_941
.label_935:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1074:
	test	byte ptr [rbp - 0x79], 1
	je	.label_950
	test	byte ptr [rbp - 0x91], 1
	jne	.label_950
	jmp	.label_952
.label_952:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_955
	jmp	.label_914
.label_1178:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_939
.label_1064:
	jmp	.label_959
.label_959:
	jmp	.label_962
.label_962:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_964
.label_1019:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_967
.label_1022:
	jmp	.label_901
.label_938:
	jmp	.label_904
.label_904:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_974
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_974:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_981
.label_1186:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_998
	test	byte ptr [rbp - 0x7b], 1
	je	.label_985
	jmp	.label_914
.label_941:
	jmp	.label_901
.label_901:
	test	byte ptr [rbp - 0x79], 1
	je	.label_990
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1066
.label_990:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_994
.label_1066:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_994
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_997
.label_994:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_997
	jmp	.label_970
.label_1215:
	mov	byte ptr [rbp - 0x79], 1
.label_1214:
	mov	byte ptr [rbp - 0x7b], 1
.label_1216:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1007
	mov	byte ptr [rbp - 0x79], 1
.label_1007:
	jmp	.label_1012
.label_1012:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1013
	jmp	.label_1015
.label_1015:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1018
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1018:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1013
.label_1013:
	movabs	rax, OFFSET FLAT:label_229
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_909
.label_944:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_911
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_911
	mov	qword ptr [rbp - 0xb8], 1
.label_964:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1035
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_884
	jmp	.label_1051
.label_1051:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_884
	jmp	.label_1057
.label_1057:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_884
	jmp	.label_1062
.label_1062:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1064
	jmp	.label_884
.label_884:
	jmp	.label_914
.label_1037:
	jmp	.label_1070
.label_1070:
	mov	byte ptr [rbp - 0x83], 1
.label_1182:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1071
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1071
	jmp	.label_914
.label_1052:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1077
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_933
.label_912:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_882
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_882
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_882:
	jmp	.label_888
.label_888:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_889
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_889:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_897
.label_897:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_900
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_900:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1046
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1046:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_910:
	jmp	.label_901
.label_1047:
	jmp	.label_921
.label_921:
	jmp	.label_923
.label_923:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_904
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_904
	jmp	.label_930
.label_930:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_938
	jmp	.label_934
.label_934:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_936
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_936:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_940
.label_940:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_930
.label_1177:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_939
.label_1218:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1217:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_960
	jmp	.label_951
.label_951:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_954
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_954:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_960
.label_960:
	movabs	rax, OFFSET FLAT:label_230
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_909
.label_950:
	test	byte ptr [rbp - 0x81], 1
	je	.label_973
	jmp	.label_976
.label_976:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_977
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_977:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_973:
	jmp	.label_969
.label_969:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_986
	jmp	.label_993
.label_893:
	jmp	.label_902
.label_1213:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_909
.label_931:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_905
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_905
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_905
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_961
	jmp	.label_1004
.label_1004:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_961
	jmp	.label_1017
.label_1017:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_961
	jmp	.label_1021
.label_1021:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_961
	jmp	.label_1025
.label_1025:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1026
	jmp	.label_961
.label_961:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1032
	jmp	.label_914
.label_967:
	jmp	.label_1034
.label_1034:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1037
	jmp	.label_901
.label_1174:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1039
	jmp	.label_1041
.label_1041:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1043
	jmp	.label_914
.label_1065:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1047
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1047
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1042
.label_1039:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1054
	jmp	.label_892
.label_963:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_923
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_923
	test	byte ptr [rbp - 0x7d], 1
	je	.label_923
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1065
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_981
.label_1175:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_891
.label_1054:
	jmp	.label_937
.label_937:
	jmp	.label_901
.label_1176:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_891
.label_1010:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_944
	mov	byte ptr [rbp - 0x91], 0
.label_896:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1079
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1079:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_890
	jmp	.label_893
.label_890:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_896
.label_1071:
	jmp	.label_901
.label_909:
	mov	qword ptr [rbp - 0x58], 0
.label_894:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_903
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_906
.label_997:
	jmp	.label_1053
.label_1053:
	jmp	.label_915
.label_915:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_918
	jmp	.label_914
.label_1009:
	jmp	.label_908
.label_1185:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_922
	jmp	.label_929
.label_929:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_931
	jmp	.label_966
.label_903:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_906:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1001
	jmp	.label_945
.label_1001:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_920
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_920
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_920
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_956
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_956
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_968
	.section	.text
	.align	32
	#Procedure 0x40b19a

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_1042:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1002
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1006]]
	jmp	rcx
.label_1016:
	jmp	.label_939
.label_939:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1011
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1011
	jmp	.label_914
.label_998:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1016
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1016
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1016
	jmp	.label_970
.label_1086:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1088
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1089
	.section	.text
	.align	32
	#Procedure 0x40b2ce

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1086
	movabs	rdi, OFFSET FLAT:label_1083
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1088:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1089:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1085
	movabs	rsi, OFFSET FLAT:label_1084
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1085
	movabs	rsi, OFFSET FLAT:label_1087
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1090
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_1090:
	jmp	.label_1085
.label_1085:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3b9
	.globl sub_40b3b9
	.type sub_40b3b9, @function
sub_40b3b9:

	nop	dword ptr [rax]
.label_1099:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_1091
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1091:
	movabs	rdi, OFFSET FLAT:label_1098
	call	gettext
	movabs	rsi, OFFSET FLAT:label_17
	movabs	rdx, OFFSET FLAT:label_18
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1092
	movabs	rsi, OFFSET FLAT:label_1094
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_1092
	movabs	rdi, OFFSET FLAT:label_1095
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_1092:
	movabs	rdi, OFFSET FLAT:label_1096
	call	gettext
	movabs	rsi, OFFSET FLAT:label_18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1097
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_220
	movabs	rsi, OFFSET FLAT:label_1093
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4e5
	.globl sub_40b4e5
	.type sub_40b4e5, @function
sub_40b4e5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b4ec

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_1102:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_1101
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_1101:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1100
	jmp	.label_1099
.label_1100:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1102
	.section	.text
	.align	32
	#Procedure 0x40b560

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b597
	.globl sub_40b597
	.type sub_40b597, @function
sub_40b597:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5a0

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	mov	byte ptr [rbp - 0x11], dl
	jne	.label_1103
	movzx	eax, byte ptr [rbp - 1]
	cmp	eax, 0xa
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_1103:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5f5
	.globl sub_40b5f5
	.type sub_40b5f5, @function
sub_40b5f5:

	nop	word ptr cs:[rax + rax]
.label_1110:
	jmp	.label_1104
.label_1112:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	process_field
	test	al, 1
	jne	.label_1106
	mov	byte ptr [rbp - 0x21], 0
.label_1106:
	jmp	.label_1111
.label_1109:
	mov	eax,  dword ptr [dword ptr [delimiter]]
	mov	dword ptr [rbp - 0x28], eax
.label_1108:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	edi, eax
	call	fputc_unlocked
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 1
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_1110
.label_1111:
	test	byte ptr [rbp - 9], 1
	je	.label_1107
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
.label_1107:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b67b
	.globl sub_40b67b
	.type sub_40b67b, @function
sub_40b67b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b689

	.globl process_line
	.type process_line, @function
process_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 1
.label_1104:
	lea	rdi, [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	call	next_field
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1112
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	process_field
	test	al, 1
	jne	.label_1105
	mov	byte ptr [rbp - 0x21], 0
.label_1105:
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	jne	.label_1109
	mov	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1108
	.section	.text
	.align	32
	#Procedure 0x40b775
	.globl sub_40b775
	.type sub_40b775, @function
sub_40b775:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b782
	.globl sub_40b782
	.type sub_40b782, @function
sub_40b782:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7a6
	.globl sub_40b7a6
	.type sub_40b7a6, @function
sub_40b7a6:

	nop	word ptr cs:[rax + rax]
