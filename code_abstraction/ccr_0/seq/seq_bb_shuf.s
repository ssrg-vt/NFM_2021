	.section	.text
	.align	32
	#Procedure 0x4016a9
	.globl sub_4016a9
	.type sub_4016a9, @function
sub_4016a9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4016aa
	.globl sub_4016aa
	.type sub_4016aa, @function
sub_4016aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016e2
	.globl sub_4016e2
	.type sub_4016e2, @function
sub_4016e2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40172a
	.globl sub_40172a
	.type sub_40172a, @function
sub_40172a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40174c
	.globl sub_40174c
	.type sub_40174c, @function
sub_40174c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40175d
	.globl sub_40175d
	.type sub_40175d, @function
sub_40175d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401776
	.globl sub_401776
	.type sub_401776, @function
sub_401776:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401780

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
	#Procedure 0x4017b3
	.globl sub_4017b3
	.type sub_4017b3, @function
sub_4017b3:

	nop	word ptr cs:[rax + rax]
.label_10:
	mov	byte ptr [rbp - 1], 0
.label_12:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4017ce
	.globl sub_4017ce
	.type sub_4017ce, @function
sub_4017ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4017d0
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
	jb	.label_9
	jmp	.label_11
.label_11:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_10
	jmp	.label_9
.label_9:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_12
.label_13:
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
	#Procedure 0x40182b
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
	jae	.label_13
	call	xalloc_die
.label_17:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x48], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rax], ecx
	fld	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x10]
.label_15:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40187f
	.globl sub_40187f
	.type sub_40187f, @function
sub_40187f:

	nop	dword ptr [rax]
.label_19:
	mov	rdi, qword ptr [rbp - 0x38]
	call	uselocale
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_14
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_16
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_16:
	fldz	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_15
.label_14:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strtold
	fstp	xword ptr [rbp - 0x30]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	call	uselocale
	cmp	rax, 0
	jne	.label_17
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4018ec

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	call	c_locale
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_19
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_18
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_18:
	fldz	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_15
	.section	.text
	.align	32
	#Procedure 0x401930
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
	jb	.label_20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_21
.label_20:
	call	xalloc_die
.label_21:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401986
	.globl sub_401986
	.type sub_401986, @function
sub_401986:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401990

	.globl incr
	.type incr, @function
incr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rsi, qword ptr [rdi]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
.label_23:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	dl, cl
	add	dl, 1
	mov	byte ptr [rax], dl
	movsx	esi, cl
	cmp	esi, 0x39
	jge	.label_24
	jmp	.label_22
.label_24:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0x30
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_23
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rax], rdx
	mov	byte ptr [rcx - 1], 0x31
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
.label_22:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a1d
	.globl sub_401a1d
	.type sub_401a1d, @function
sub_401a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a20

	.globl cmp
	.type cmp, @function
cmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jae	.label_25
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_26
.label_25:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_27
	mov	dword ptr [rbp - 4], 1
	jmp	.label_26
.label_27:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	mov	dword ptr [rbp - 4], eax
.label_26:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a85
	.globl sub_401a85
	.type sub_401a85, @function
sub_401a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a90
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_28
	jmp	.label_30
.label_30:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_29
.label_28:
	mov	byte ptr [rbp - 1], 0
.label_29:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ac2
	.globl sub_401ac2
	.type sub_401ac2, @function
sub_401ac2:

	nop	word ptr cs:[rax + rax]
.label_32:
	mov	byte ptr [rbp - 1], 0
.label_34:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ade
	.globl sub_401ade
	.type sub_401ade, @function
sub_401ade:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ae6
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
	jb	.label_31
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_32
	jmp	.label_31
.label_31:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_34
	.section	.text
	.align	32
	#Procedure 0x401b20

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
	je	.label_35
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_36
.label_35:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_36
.label_36:
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
	#Procedure 0x401bc2
	.globl sub_401bc2
	.type sub_401bc2, @function
sub_401bc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bd0

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
	#Procedure 0x401c45
	.globl sub_401c45
	.type sub_401c45, @function
sub_401c45:

	nop	word ptr cs:[rax + rax]
.label_41:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_39
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_38
.label_39:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_38
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_38:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_37
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_37:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_40:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cdd
	.globl sub_401cdd
	.type sub_401cdd, @function
sub_401cdd:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401cdf

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
	jge	.label_41
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_40
.label_44:
	movabs	rsi, OFFSET FLAT:label_42
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_43
	movabs	rax, OFFSET FLAT:label_48
	movabs	rcx, OFFSET FLAT:label_49
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_50
.label_43:
	movabs	rax, OFFSET FLAT:label_46
	movabs	rcx, OFFSET FLAT:label_47
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_50:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d91
	.globl sub_401d91
	.type sub_401d91, @function
sub_401d91:

	nop	dword ptr [rax + rax]
.label_53:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_45
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_44
	movabs	rax, OFFSET FLAT:label_51
	movabs	rcx, OFFSET FLAT:label_52
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_50
	.section	.text
	.align	32
	#Procedure 0x401de9

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
	je	.label_53
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_50
	.section	.text
	.align	32
	#Procedure 0x401e20

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	jne	.label_54
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:label_55
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_54:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e60
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_56
	jmp	.label_58
.label_58:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_57
.label_56:
	mov	byte ptr [rbp - 1], 0
.label_57:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e92
	.globl sub_401e92
	.type sub_401e92, @function
sub_401e92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_59
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_60
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401edf
	.globl sub_401edf
	.type sub_401edf, @function
sub_401edf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401ee0
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
	#Procedure 0x401ef6
	.globl sub_401ef6
	.type sub_401ef6, @function
sub_401ef6:

	nop	word ptr cs:[rax + rax]
.label_63:
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
	#Procedure 0x401f23
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
.label_62:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_63
	jmp	.label_61
.label_61:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_62
	.section	.text
	.align	32
	#Procedure 0x401f70
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
	#Procedure 0x40201d
	.globl sub_40201d
	.type sub_40201d, @function
sub_40201d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402020
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
	#Procedure 0x402048
	.globl sub_402048
	.type sub_402048, @function
sub_402048:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402050
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
	ja	.label_64
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_66]]
	jmp	rcx
.label_703:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_65
.label_64:
	mov	byte ptr [rbp - 1], 0
.label_65:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402091
	.globl sub_402091
	.type sub_402091, @function
sub_402091:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020a0
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
	#Procedure 0x4020ca
	.globl sub_4020ca
	.type sub_4020ca, @function
sub_4020ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0
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
	#Procedure 0x4020ef
	.globl sub_4020ef
	.type sub_4020ef, @function
sub_4020ef:

	nop	
.label_68:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_67
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402111

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
	jne	.label_68
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_71
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
.label_71:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_70
	call	xalloc_die
.label_67:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_69:
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
	#Procedure 0x4021d2
	.globl sub_4021d2
	.type sub_4021d2, @function
sub_4021d2:

	nop	word ptr [rax + rax]
.label_70:
	jmp	.label_69
	.section	.text
	.align	32
	#Procedure 0x4021e0

	.globl trim_leading_zeros
	.type trim_leading_zeros, @function
trim_leading_zeros:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_73:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_72
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_73
.label_72:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	jne	.label_74
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_74
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
.label_74:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40223e
	.globl sub_40223e
	.type sub_40223e, @function
sub_40223e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402240

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
	je	.label_75
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
.label_75:
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
	#Procedure 0x4023a4
	.globl sub_4023a4
	.type sub_4023a4, @function
sub_4023a4:

	nop	word ptr cs:[rax + rax]
.label_76:
	mov	byte ptr [rbp - 1], 0
.label_79:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023be
	.globl sub_4023be
	.type sub_4023be, @function
sub_4023be:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023c9
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
	jb	.label_77
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_77
	jmp	.label_80
.label_80:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_76
	jmp	.label_77
.label_77:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_79
	.section	.text
	.align	32
	#Procedure 0x402420

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
	jne	.label_82
	movabs	rax, OFFSET FLAT:label_81
	mov	qword ptr [rbp - 8], rax
.label_82:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_83
	movabs	rax, OFFSET FLAT:label_84
	mov	qword ptr [rbp - 8], rax
.label_83:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402477
	.globl sub_402477
	.type sub_402477, @function
sub_402477:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402480

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
	#Procedure 0x4024a8
	.globl sub_4024a8
	.type sub_4024a8, @function
sub_4024a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_85
	jmp	.label_86
.label_86:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_87
.label_85:
	mov	byte ptr [rbp - 1], 0
.label_87:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024df
	.globl sub_4024df
	.type sub_4024df, @function
sub_4024df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4024e0

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
	#Procedure 0x402517
	.globl sub_402517
	.type sub_402517, @function
sub_402517:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402520

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
	je	.label_88
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_89
.label_88:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_89
.label_89:
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
	je	.label_90
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_90:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402674
	.globl sub_402674
	.type sub_402674, @function
sub_402674:

	nop	word ptr cs:[rax + rax]
.label_92:
	mov	dword ptr [rbp - 4], 0
.label_91:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402690
	.globl sub_402690
	.type sub_402690, @function
sub_402690:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402697

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
	jne	.label_93
	test	byte ptr [rbp - 0x13], 1
	je	.label_92
	test	byte ptr [rbp - 0x11], 1
	jne	.label_93
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_92
.label_93:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_94
	call	__errno_location
	mov	dword ptr [rax], 0
.label_94:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_91
	.section	.text
	.align	32
	#Procedure 0x402730
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
	#Procedure 0x402755
	.globl sub_402755
	.type sub_402755, @function
sub_402755:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402760
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
	jb	.label_95
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_96
	jmp	.label_95
.label_95:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_97
.label_96:
	mov	byte ptr [rbp - 1], 0
.label_97:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027ab
	.globl sub_4027ab
	.type sub_4027ab, @function
sub_4027ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027b0
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
	je	.label_99
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_100
.label_99:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_100
.label_100:
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
	#Procedure 0x402875
	.globl sub_402875
	.type sub_402875, @function
sub_402875:

	nop	word ptr cs:[rax + rax]
.label_101:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40288a
	.globl sub_40288a
	.type sub_40288a, @function
sub_40288a:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40288c

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
	jne	.label_101
	cmp	qword ptr [rbp - 8], 0
	je	.label_101
	call	xalloc_die
.label_129:
	jmp	.label_112
.label_112:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x88], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x88]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	mov	byte ptr [rbp - 0x89], dl
	jne	.label_125
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	sete	dl
	mov	byte ptr [rbp - 0x89], dl
.label_125:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_106
	jmp	.label_111
.label_106:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_112
	.section	.text
	.align	32
	#Procedure 0x40293f

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:cl_strtold
	lea	r8, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x60], rax
	call	xstrtold
	test	al, 1
	jne	.label_132
	movabs	rdi, OFFSET FLAT:label_108
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_132:
	fld	xword ptr [rbp - 0x30]
	fucomip	st(0)
	jnp	.label_129
	jmp	.label_121
.label_121:
	movabs	rdi, OFFSET FLAT:label_123
	call	gettext
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:label_128
	mov	qword ptr [rbp - 0x70], rax
	call	quote_n
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x78], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x7c], edi
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_102:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_113
	cmp	dword ptr [rbp - 0x18], 0
	jne	.label_113
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_113
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_113:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_126
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_119
.label_111:
	mov	esi, 0x2e
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x18], 0x7fffffff
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_104
	mov	esi, 0x70
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	cmp	rax, 0
	jne	.label_104
	mov	dword ptr [rbp - 0x18], 0
.label_104:
	movabs	rsi, OFFSET FLAT:label_117
	mov	rdi, qword ptr [rbp - 8]
	call	strcspn
	mov	rsi, qword ptr [rbp - 8]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_114
	fld	xword ptr [rbp - 0x30]
	fldz	
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_114
	jnp	.label_134
	jmp	.label_114
.label_134:
	mov	qword ptr [rbp - 0x40], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_103
	movabs	rsi, OFFSET FLAT:label_107
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	rdi, rax
	call	strcspn
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0x7fffffff
	ja	.label_115
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x18], ecx
.label_115:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_124
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_127
.label_124:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x91], al
	je	.label_130
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x91], dl
.label_130:
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x90], ecx
.label_127:
	mov	eax, dword ptr [rbp - 0x90]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rcx
.label_103:
	mov	esi, 0x65
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_122
	mov	esi, 0x45
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
.label_122:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_131
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	rdi, rcx
	call	strtol
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jge	.label_105
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_120
.label_126:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
.label_119:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x50], rcx
.label_135:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_131:
	jmp	.label_114
.label_114:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c93
	.globl sub_402c93
	.type sub_402c93, @function
sub_402c93:

	nop	
.label_105:
	movsxd	rax, dword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_118
	movsxd	rax, dword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_109
.label_133:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_110:
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_135
.label_118:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_109:
	mov	rax, qword ptr [rbp - 0xa8]
	xor	ecx, ecx
	mov	edx, ecx
	sub	rdx, rax
	mov	qword ptr [rbp - 0xa0], rdx
.label_120:
	mov	rax, qword ptr [rbp - 0xa0]
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rcx, rax
	mov	edx, ecx
	mov	dword ptr [rbp - 0x18], edx
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 8]
	sub	rcx, rdi
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x50], 0
	jge	.label_102
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_133
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 1
	cmp	rax, rcx
	jne	.label_116
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_116:
	jmp	.label_110
	.section	.text
	.align	32
	#Procedure 0x402d60
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
	#Procedure 0x402d9a
	.globl sub_402d9a
	.type sub_402d9a, @function
sub_402d9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402da0

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
	ja	.label_136
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_137
.label_136:
	jmp	.label_137
.label_137:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dea
	.globl sub_402dea
	.type sub_402dea, @function
sub_402dea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402df0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_139
	jmp	.label_141
.label_141:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_140
.label_139:
	mov	byte ptr [rbp - 1], 0
.label_140:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e22
	.globl sub_402e22
	.type sub_402e22, @function
sub_402e22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e30
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
	je	.label_142
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_143
.label_142:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_143
.label_143:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e77
	.globl sub_402e77
	.type sub_402e77, @function
sub_402e77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e80
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
	#Procedure 0x402eaf
	.globl sub_402eaf
	.type sub_402eaf, @function
sub_402eaf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl seq_fast
	.type seq_fast, @function
seq_fast:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_153
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 8]
	call	trim_leading_zeros
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	trim_leading_zeros
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [rbp - 0x11], 1
	je	.label_144
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_149
.label_157:
	mov	eax, 1
	mov	edx, eax
	mov	cl,  byte ptr [byte ptr [terminator]]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 0x78], rdi
	mov	byte ptr [rsi], cl
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	r8, qword ptr [rbp - 0x68]
	sub	rsi, r8
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_158
	call	io_error
.label_148:
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x48], 0
.label_165:
	mov	al, 1
	test	byte ptr [rbp - 0x11], 1
	mov	byte ptr [rbp - 0xc1], al
	jne	.label_166
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	call	cmp
	cmp	eax, 0
	setle	r8b
	mov	byte ptr [rbp - 0xc1], r8b
.label_166:
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	test	byte ptr [rbp - 0x51], 1
	je	.label_145
	mov	eax, 0x2000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, 1
	shl	rdx, 1
	cmp	rcx, rdx
	jbe	.label_155
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_156
.label_146:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x78], rax
.label_162:
	jmp	.label_161
.label_144:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x88], rax
.label_149:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x28]
	jbe	.label_160
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_152
.label_167:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x98], rax
.label_147:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_151
.label_160:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x90], rax
.label_152:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, 0x1f
	jbe	.label_163
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x28]
	jbe	.label_167
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_147
.label_163:
	mov	eax, 0x1f
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_151
.label_151:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	xor	ecx, ecx
	mov	edi, ecx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	sub	rdi, qword ptr [rbp - 0x20]
	add	rax, rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 1
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x11], 1
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	xor	ecx, ecx
	mov	edi, ecx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	sub	rdi, qword ptr [rbp - 0x28]
	add	rax, rdi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, 1
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_165
.label_158:
	jmp	.label_145
.label_145:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031ac
	.globl sub_4031ac
	.type sub_4031ac, @function
sub_4031ac:

	nop	word ptr cs:[rax + rax]
.label_155:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	shl	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
.label_156:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x60]
	call	xmalloc
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	call	mempcpy
	mov	qword ptr [rbp - 0x78], rax
.label_161:
	mov	al, 1
	test	byte ptr [rbp - 0x11], 1
	mov	byte ptr [rbp - 0xd1], al
	jne	.label_150
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	call	cmp
	cmp	eax, 0
	setl	r8b
	mov	byte ptr [rbp - 0xd1], r8b
.label_150:
	mov	al, byte ptr [rbp - 0xd1]
	test	al, 1
	jne	.label_154
	jmp	.label_157
.label_154:
	lea	rdi, [rbp - 0x40]
	lea	rsi, [rbp - 0x20]
	mov	rax,  qword ptr [word ptr [separator]]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x78], rdx
	mov	byte ptr [rax], cl
	call	incr
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_164
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 1
	mov	qword ptr [rbp - 0xe0], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe8], rax
	call	memmove
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x30]
	add	rdi, 1
	shl	rdi, 1
	cmp	rsi, rdi
	mov	qword ptr [rbp - 0xf0], rax
	jae	.label_159
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	shl	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	call	xrealloc
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x78], rax
.label_159:
	jmp	.label_164
.label_164:
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	call	mempcpy
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 1
	sub	rdx, rsi
	add	rax, rdx
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_162
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x68]
	sub	rcx, rsi
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0xf8]
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_146
	call	io_error
	.section	.text
	.align	32
	#Procedure 0x4033d0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_168
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
	#Procedure 0x403400

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
	je	.label_169
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_169:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40343b
	.globl sub_40343b
	.type sub_40343b, @function
sub_40343b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403440
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_170
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_170:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40346a
	.globl sub_40346a
	.type sub_40346a, @function
sub_40346a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403470

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x18]
	call	strtold
	fstp	xword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	byte ptr [rsi], 0
	je	.label_172
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x40]
	call	c_strtold
	fstp	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_174
	fld	xword ptr [rbp - 0x50]
	fstp	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_171
.label_174:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rax], ecx
.label_171:
	jmp	.label_172
.label_172:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_173
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_173:
	fld	xword ptr [rbp - 0x30]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40350c
	.globl sub_40350c
	.type sub_40350c, @function
sub_40350c:

	nop	dword ptr [rax]
.label_215:
	mov	eax, 3
	cmp	eax, dword ptr [rbp - 0x9c]
	jae	.label_179
	movabs	rdi, OFFSET FLAT:label_181
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 3
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x158], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_204:
	lea	rax, [rbp - 0x120]
	movabs	rcx, OFFSET FLAT:label_193
	fld	xword ptr [rbp - 0x80]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	esi, OFFSET FLAT:label_193
	xor	edi, edi
	mov	r8b, dil
	lea	rdi, [rbp - 0x120]
	mov	qword ptr [rbp - 0x180], rax
	mov	al, r8b
	mov	qword ptr [rbp - 0x188], rcx
	call	asprintf
	cmp	eax, 0
	jge	.label_200
	call	xalloc_die
.label_200:
	jmp	.label_196
.label_196:
	mov	rax, qword ptr [rbp - 0x118]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	je	.label_176
	mov	rax, qword ptr [rbp - 0x120]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	je	.label_176
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsi, qword ptr [rbp - 0x120]
	call	seq_fast
	test	al, 1
	jne	.label_208
	jmp	.label_176
.label_208:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_178
.label_209:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_214
.label_192:
	jmp	.label_175
.label_175:
	lea	rdi, [rbp - 0xd0]
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	call	scan_arg
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x68], rdx
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_184
	lea	rdi, [rbp - 0xf0]
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx,  dword ptr [dword ptr [optind]]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [dword ptr [optind]],  edx
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + rax*8]
	call	scan_arg
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x68], rax
	mov	ecx,  dword ptr [dword ptr [optind]]
	cmp	ecx, dword ptr [rbp - 8]
	jge	.label_206
	movaps	xmm0, xmmword ptr [rbp - 0x80]
	movaps	xmm1, xmmword ptr [rbp - 0x70]
	movaps	xmmword ptr [rbp - 0x50], xmm1
	movaps	xmmword ptr [rbp - 0x60], xmm0
	fld	xword ptr [rbp - 0x60]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_180
	jnp	.label_188
	jmp	.label_180
.label_188:
	movabs	rdi, OFFSET FLAT:label_191
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	sub	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x168], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_176:
	mov	rdi, qword ptr [rbp - 0x118]
	call	free
	mov	rdi, qword ptr [rbp - 0x120]
	call	free
.label_185:
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_199
	lea	rax, [rbp - 0x40]
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x80]
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rsp], rsi
	mov	rsi, qword ptr [rax + 8]
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x10], rsi
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	mov	rax, qword ptr [rdx + 0x18]
	mov	qword ptr [rsp + 0x58], rax
	call	get_default_format
	mov	qword ptr [rbp - 0x98], rax
.label_199:
	mov	rdi, qword ptr [rbp - 0x98]
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x60]
	fld	xword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rax, rsp
	fstp	xword ptr [rax + 0x20]
	fstp	xword ptr [rax + 0x10]
	fstp	xword ptr [rax]
	call	print_numbers
	mov	dword ptr [rbp - 4], 0
.label_178:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403880
	.globl sub_403880
	.type sub_403880, @function
sub_403880:

	nop	word ptr [rax + rax]
.label_214:
	jmp	.label_213
.label_221:
	xor	edi, edi
	call	usage
.label_212:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x9c], eax
	cmp	dword ptr [rbp - 0x9c], 1
	jae	.label_215
	movabs	rdi, OFFSET FLAT:label_227
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_182:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	all_digits_p
	test	al, 1
	jne	.label_207
	jmp	.label_175
.label_207:
	cmp	dword ptr [rbp - 0x9c], 1
	je	.label_183
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	all_digits_p
	test	al, 1
	jne	.label_183
	jmp	.label_175
.label_183:
	cmp	dword ptr [rbp - 0x9c], 3
	jb	.label_186
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:label_189
	mov	edi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_175
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 2
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	all_digits_p
	test	al, 1
	jne	.label_186
	jmp	.label_175
.label_186:
	test	byte ptr [byte ptr [equal_width]],  1
	jne	.label_175
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_175
	mov	rdi,  qword ptr [word ptr [separator]]
	call	strlen
	cmp	rax, 1
	jne	.label_175
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_201
	movabs	rax, OFFSET FLAT:label_189
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_203
.label_218:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [separator]],  rax
	jmp	.label_214
.label_179:
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_205
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x98]
	call	long_double_format
	mov	qword ptr [rbp - 0x98], rax
.label_205:
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_182
	test	byte ptr [byte ptr [equal_width]],  1
	je	.label_182
	movabs	rdi, OFFSET FLAT:label_194
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_210:
	mov	edi, 1
	call	usage
.label_229:
	movabs	rdx, OFFSET FLAT:label_226
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_216
	jmp	.label_212
.label_211:
	movabs	rsi, OFFSET FLAT:label_223
	movabs	rdx, OFFSET FLAT:label_224
	movabs	r8, OFFSET FLAT:label_225
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_201:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x160], rax
.label_203:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0xa8], rax
	mov	ecx,  dword ptr [dword ptr [optind]]
	mov	edx, dword ptr [rbp - 0x9c]
	sub	edx, 1
	add	ecx, edx
	mov	ecx, ecx
	mov	eax, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rsi + rax*8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	seq_fast
	test	al, 1
	jne	.label_190
	jmp	.label_192
.label_190:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_178
.label_228:
	mov	byte ptr [byte ptr [equal_width]],  1
	jmp	.label_214
	.section	.text
	.align	32
	#Procedure 0x403b6c

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	xor	eax, eax
	mov	ecx, 0x10
	mov	edx, ecx
	lea	r8, [rbp - 0x90]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [label_234]]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi,  qword ptr [word ptr [label_235]]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi,  qword ptr [word ptr [label_236]]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi,  qword ptr [word ptr [label_237]]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi,  qword ptr [word ptr [label_234]]
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsi,  qword ptr [word ptr [label_235]]
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsi,  qword ptr [word ptr [label_236]]
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsi,  qword ptr [word ptr [label_237]]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, r8
	mov	esi, eax
	call	memset
	mov	qword ptr [rbp - 0x98], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_81
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_232
	movabs	rsi, OFFSET FLAT:label_233
	cmp	rax, 0
	setne	r9b
	xor	r9b, 0xff
	xor	r9b, 0xff
	and	r9b, 1
	mov	byte ptr [byte ptr [locale_ok]],  r9b
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_232
	mov	qword ptr [rbp - 0x128], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x130], rax
	call	atexit
	movabs	rdx, OFFSET FLAT:label_231
	mov	byte ptr [byte ptr [equal_width]],  0
	mov	qword ptr [word ptr [separator]],  rdx
	mov	dword ptr [rbp - 0x134], eax
.label_213:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_212
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_229
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	mov	dword ptr [rbp - 0x14], edx
	cmp	edx, 0x2e
	je	.label_217
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_229
.label_217:
	jmp	.label_212
.label_202:
	fld	xword ptr [rbp - 0x80]
	fldz	
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_177
	jp	.label_177
	jmp	.label_204
.label_177:
	movabs	rdi, OFFSET FLAT:label_153
	call	xstrdup
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_196
.label_216:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x138], eax
	mov	dword ptr [rbp - 0x13c], ecx
	je	.label_211
	jmp	.label_219
.label_219:
	mov	eax, dword ptr [rbp - 0x138]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x140], eax
	je	.label_221
	jmp	.label_230
.label_230:
	mov	eax, dword ptr [rbp - 0x138]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x144], eax
	je	.label_209
	jmp	.label_220
.label_220:
	mov	eax, dword ptr [rbp - 0x138]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x148], eax
	je	.label_218
	jmp	.label_222
.label_222:
	mov	eax, dword ptr [rbp - 0x138]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x14c], eax
	je	.label_228
	jmp	.label_210
.label_180:
	lea	rdi, [rbp - 0x110]
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	call	scan_arg
	mov	rdx, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x68], rdx
.label_206:
	jmp	.label_184
.label_184:
	fld	xword ptr [rbp - 0x40]
	fldz	
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_185
	jnp	.label_187
	jmp	.label_185
.label_187:
	cmp	dword ptr [rbp - 0x28], 0
	jne	.label_185
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_185
	cmp	dword ptr [rbp - 0x68], 0
	jne	.label_185
	fld	xword ptr [rbp - 0x40]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_185
	jmp	.label_195
.label_195:
	fld	xword ptr [rbp - 0x60]
	fld1	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_185
	jnp	.label_197
	jmp	.label_185
.label_197:
	fld	xword ptr [rbp - 0x80]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_185
	jmp	.label_198
.label_198:
	test	byte ptr [byte ptr [equal_width]],  1
	jne	.label_185
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_185
	mov	rdi,  qword ptr [word ptr [separator]]
	call	strlen
	cmp	rax, 1
	jne	.label_185
	lea	rax, [rbp - 0x118]
	movabs	rcx, OFFSET FLAT:label_193
	fld	xword ptr [rbp - 0x40]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	esi, OFFSET FLAT:label_193
	xor	edi, edi
	mov	r8b, dil
	lea	rdi, [rbp - 0x118]
	mov	qword ptr [rbp - 0x170], rax
	mov	al, r8b
	mov	qword ptr [rbp - 0x178], rcx
	call	asprintf
	cmp	eax, 0
	jge	.label_202
	call	xalloc_die
.label_293:
	call	abort
.label_259:
	jmp	.label_294
.label_294:
	jmp	.label_408
.label_408:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_418
	jmp	.label_267
.label_348:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_410
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_410:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_420
.label_420:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_424
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_424:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_426
.label_426:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_431
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_431:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_435
.label_435:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_437
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_437:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_239
.label_432:
	jmp	.label_245
.label_245:
	jmp	.label_247
.label_256:
	jmp	.label_249
.label_249:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_250
	jmp	.label_247
.label_418:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_253
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_253
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_346
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_346:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_266
.label_266:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_270
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_270:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_275
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_275:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_253:
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_295
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_295:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_287
.label_287:
	jmp	.label_251
.label_251:
	jmp	.label_291
.label_291:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_292
	test	byte ptr [rbp - 0x82], 1
	jne	.label_292
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_300
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_300:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_308
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_308:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_292:
	jmp	.label_317
.label_317:
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_319
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_319:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_338
	mov	byte ptr [rbp - 0x7e], 0
.label_338:
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_334
.label_742:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_741:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_340
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_345
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_345:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_340
.label_340:
	movabs	rax, OFFSET FLAT:label_47
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_268
.label_322:
	jmp	.label_360
.label_360:
	jmp	.label_363
.label_363:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_243
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_243
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_367
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_373
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_373:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_400
.label_400:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_366
.label_378:
	test	byte ptr [rbp - 0x81], 1
	je	.label_386
	jmp	.label_389
.label_389:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_390
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_390:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_386:
	jmp	.label_327
.label_327:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_396
	jmp	.label_339
.label_415:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_398
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_398
	jmp	.label_404
.label_404:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_405
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_434
.label_434:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_255
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_284
.label_284:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_304
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_398:
	jmp	.label_427
.label_427:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_430
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_430:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_433
.label_433:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_238
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_238
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_238
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_238
	jmp	.label_297
.label_297:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_254
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_254:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_264
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_264:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_238
.label_238:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_245
.label_416:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_419:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_276
	jmp	.label_280
.label_276:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_281
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_281
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_281
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_288
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_288
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_302
.label_672:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_305
	jmp	.label_309
.label_309:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_311
	jmp	.label_313
.label_739:
	mov	byte ptr [rbp - 0x79], 1
.label_738:
	mov	byte ptr [rbp - 0x7b], 1
.label_740:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_289
	mov	byte ptr [rbp - 0x79], 1
.label_289:
	jmp	.label_320
.label_320:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_321
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_326
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_326:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_321
.label_321:
	movabs	rax, OFFSET FLAT:label_46
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_268
.label_666:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_333
.label_414:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_349
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_349:
	jmp	.label_354
.label_354:
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
	jne	.label_375
	jmp	.label_336
.label_406:
	mov	byte ptr [rbp - 0x81], 1
.label_281:
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
	ja	.label_380
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_391]]
	jmp	rcx
.label_663:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_333
.label_339:
	jmp	.label_251
.label_670:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_247
.label_288:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_302:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_281
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_281
	test	byte ptr [rbp - 0x7b], 1
	je	.label_406
	jmp	.label_267
.label_375:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_409
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_336
.label_380:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_414
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
	jmp	.label_361
.label_316:
	jmp	.label_247
.label_305:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_428
	jmp	.label_267
.label_411:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_432
	jmp	.label_332
.label_355:
	jmp	.label_251
.label_428:
	jmp	.label_244
.label_665:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_385
.label_370:
	jmp	.label_247
.label_247:
	test	byte ptr [rbp - 0x79], 1
	je	.label_438
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_439
.label_438:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_240
.label_439:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_240
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
	jne	.label_259
.label_240:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_259
	jmp	.label_251
.label_356:
	jmp	.label_263
.label_263:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x40487c

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
.label_329:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_293
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_301]]
	jmp	rcx
.label_311:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_307
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_307
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_307
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_315
	jmp	.label_323
.label_323:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_315
	jmp	.label_330
.label_330:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_315
	jmp	.label_335
.label_335:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_315
	jmp	.label_342
.label_342:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_344
	jmp	.label_315
.label_315:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_348
	jmp	.label_267
.label_673:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_331
	test	byte ptr [rbp - 0x7b], 1
	je	.label_355
	jmp	.label_267
.label_265:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_312
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_312
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_312:
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_371
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_371:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_376
.label_376:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_379
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_379:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_384
.label_384:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_388
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_388:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_262:
	jmp	.label_247
.label_242:
	jmp	.label_385
.label_385:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_394
	test	byte ptr [rbp - 0x7b], 1
	je	.label_394
	jmp	.label_267
.label_250:
	jmp	.label_397
.label_397:
	mov	byte ptr [rbp - 0x83], 1
.label_669:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_399
	test	byte ptr [rbp - 0x7b], 1
	je	.label_399
	jmp	.label_267
.label_328:
	jmp	.label_401
.label_401:
	jmp	.label_407
.label_407:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_412
.label_661:
	test	byte ptr [rbp - 0x79], 1
	je	.label_411
	jmp	.label_248
.label_248:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_415
	jmp	.label_267
.label_268:
	mov	qword ptr [rbp - 0x58], 0
.label_334:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_416
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_419
.label_377:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_363
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_363
	test	byte ptr [rbp - 0x7d], 1
	je	.label_363
	test	byte ptr [rbp - 0x7e], 1
	je	.label_381
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
	jmp	.label_241
.label_367:
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_246
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_246:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_241
.label_396:
	jmp	.label_257
.label_257:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_258
	test	byte ptr [rbp - 0x82], 1
	jne	.label_258
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_357
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_357:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_272
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_258:
	jmp	.label_277
.label_277:
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_279
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_279:
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
	jmp	.label_436
.label_394:
	jmp	.label_333
.label_333:
	test	byte ptr [rbp - 0x79], 1
	je	.label_316
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_294
.label_267:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_296
	test	byte ptr [rbp - 0x79], 1
	je	.label_296
	mov	dword ptr [rbp - 0x34], 4
.label_296:
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
.label_241:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d96
	.globl sub_404d96
	.type sub_404d96, @function
sub_404d96:

	nop	dword ptr [rax + rax]
.label_381:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_322
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_322
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_329
.label_662:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_333
.label_743:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_268
.label_299:
	jmp	.label_290
.label_290:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_421
	mov	byte ptr [rbp - 0x91], 0
.label_421:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_347
.label_347:
	jmp	.label_350
.label_350:
	jmp	.label_352
.label_352:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_354
.label_336:
	jmp	.label_361
.label_361:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_364
	test	byte ptr [rbp - 0x79], 1
	je	.label_370
	test	byte ptr [rbp - 0x91], 1
	jne	.label_370
.label_364:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_436:
	test	byte ptr [rbp - 0x79], 1
	je	.label_378
	test	byte ptr [rbp - 0x91], 1
	jne	.label_378
	jmp	.label_382
.label_382:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_383
	jmp	.label_267
.label_383:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_387
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_387
	jmp	.label_392
.label_392:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_393
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_393:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_395
.label_395:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_353
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_402
.label_402:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_403
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_403:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_387:
	jmp	.label_413
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_429
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_429:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_417
.label_417:
	jmp	.label_422
.label_422:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_423
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_423:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_359
.label_359:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_425
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_425:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_327
.label_331:
	test	byte ptr [rbp - 0x79], 1
	je	.label_242
	test	byte ptr [rbp - 0x7b], 1
	je	.label_242
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_242
	jmp	.label_251
.label_674:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_252
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_256
	jmp	.label_260
.label_671:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_262
	test	byte ptr [rbp - 0x7b], 1
	je	.label_265
	jmp	.label_267
.label_313:
	jmp	.label_244
.label_244:
	jmp	.label_247
.label_409:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_271
	mov	byte ptr [rbp - 0x91], 0
.label_286:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_273
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_273:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_283
	jmp	.label_285
.label_283:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_286
.label_737:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_268
.label_271:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_290
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_290
	mov	qword ptr [rbp - 0xb8], 1
.label_412:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_299
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
	jb	.label_303
	jmp	.label_314
.label_314:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_303
	jmp	.label_310
.label_310:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_303
	jmp	.label_325
.label_325:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_328
	jmp	.label_303
.label_303:
	jmp	.label_267
.label_667:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_333
.label_285:
	jmp	.label_336
.label_252:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_256
.label_260:
	jmp	.label_247
.label_744:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_341
	movabs	rdi, OFFSET FLAT:label_358
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_46
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_341:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_263
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_374:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_356
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_365
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_365:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_374
.label_280:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_377
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_377
	test	byte ptr [rbp - 0x7b], 1
	je	.label_377
	jmp	.label_267
.label_399:
	jmp	.label_247
.label_668:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_385
.label_664:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_385
.label_344:
	jmp	.label_239
.label_239:
	jmp	.label_307
.label_307:
	jmp	.label_244
	.section	.text
	.align	32
	#Procedure 0x4052d0
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
	#Procedure 0x405301
	.globl sub_405301
	.type sub_405301, @function
sub_405301:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405310
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
	#Procedure 0x40532a
	.globl sub_40532a
	.type sub_40532a, @function
sub_40532a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

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
	#Procedure 0x40534f
	.globl sub_40534f
	.type sub_40534f, @function
sub_40534f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405350
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
	jb	.label_440
	jmp	.label_443
.label_443:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_440
	jmp	.label_441
.label_441:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_442
	jmp	.label_440
.label_440:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_444
.label_442:
	mov	byte ptr [rbp - 1], 0
.label_444:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053b5
	.globl sub_4053b5
	.type sub_4053b5, @function
sub_4053b5:

	nop	word ptr cs:[rax + rax]
.label_449:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_452:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_446
	movabs	rsi, OFFSET FLAT:label_447
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_446
	movabs	rsi, OFFSET FLAT:label_448
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_445
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_445:
	jmp	.label_446
.label_446:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405475
	.globl sub_405475
	.type sub_405475, @function
sub_405475:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40547c

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_451
	movabs	rdi, OFFSET FLAT:label_450
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_451:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_449
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_452
	.section	.text
	.align	32
	#Procedure 0x4054e0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_453
	jmp	.label_455
.label_455:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_454
.label_453:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_454:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405517
	.globl sub_405517
	.type sub_405517, @function
sub_405517:

	nop	word ptr [rax + rax]
.label_457:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_456
.label_458:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_459:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40555e
	.globl sub_40555e
	.type sub_40555e, @function
sub_40555e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40556d

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
	jne	.label_460
	mov	dword ptr [rbp - 4], 0
	jmp	.label_459
.label_460:
	jmp	.label_456
.label_456:
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
	jne	.label_457
	jmp	.label_458
	.section	.text
	.align	32
	#Procedure 0x4055e0

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
	#Procedure 0x405652
	.globl sub_405652
	.type sub_405652, @function
sub_405652:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405660

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_464
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_467
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_464
.label_467:
	movabs	rdi, OFFSET FLAT:label_466
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_462
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_465
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_463
.label_464:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_461
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_462:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_60
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_463:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_461:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405747
	.globl sub_405747
	.type sub_405747, @function
sub_405747:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405750

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
	#Procedure 0x405788
	.globl sub_405788
	.type sub_405788, @function
sub_405788:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405790

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
	jne	.label_468
	call	abort
.label_468:
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
	#Procedure 0x4057f4
	.globl sub_4057f4
	.type sub_4057f4, @function
sub_4057f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405800

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
	#Procedure 0x40581b
	.globl sub_40581b
	.type sub_40581b, @function
sub_40581b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405820
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_469
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_469:
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
	#Procedure 0x40585d
	.globl sub_40585d
	.type sub_40585d, @function
sub_40585d:

	nop	dword ptr [rax]
.label_484:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x4c], ecx
.label_483:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0x7fffffff
	je	.label_472
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x18], 0x7fffffff
	je	.label_472
	test	byte ptr [byte ptr [equal_width]],  1
	je	.label_474
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x10]
	mov	edx, dword ptr [rbp - 0xc]
	sub	edx, dword ptr [rax + 0x18]
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rbp - 0xc]
	sub	edx, dword ptr [rcx + 0x18]
	movsxd	rdi, edx
	add	rsi, rdi
	mov	qword ptr [rbp - 0x20], rsi
	cmp	dword ptr [rcx + 0x18], 0
	je	.label_478
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_478
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_478:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x18], 0
	jne	.label_480
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_480
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_480:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0x18], 0
	jne	.label_476
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_476
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_476:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jbe	.label_482
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_470
.label_481:
	jmp	.label_475
.label_474:
	movabs	rdi, OFFSET FLAT:get_default_format.format_buf
	movabs	rsi, OFFSET FLAT:label_477
	mov	edx, dword ptr [rbp - 0xc]
	mov	al, 0
	call	sprintf
	movabs	rsi, OFFSET FLAT:get_default_format.format_buf
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_479
.label_475:
	jmp	.label_472
.label_472:
	movabs	rax, OFFSET FLAT:label_473
	mov	qword ptr [rbp - 8], rax
.label_479:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059a5
	.globl sub_4059a5
	.type sub_4059a5, @function
sub_4059a5:

	nop	
.label_482:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
.label_470:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0x7fffffff
	ja	.label_481
	movabs	rdi, OFFSET FLAT:get_default_format.format_buf
	movabs	rsi, OFFSET FLAT:label_471
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edx, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	al, 0
	call	sprintf
	movabs	rsi, OFFSET FLAT:get_default_format.format_buf
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_479
	.section	.text
	.align	32
	#Procedure 0x405a05

	.globl get_default_format
	.type get_default_format, @function
get_default_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp + 0x50]
	lea	rcx, [rbp + 0x30]
	lea	rdx, [rbp + 0x10]
	mov	esi, dword ptr [rdx + 0x18]
	cmp	esi, dword ptr [rcx + 0x18]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rdx
	jle	.label_484
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x4c], ecx
	jmp	.label_483
.label_489:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_485
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_488]],  rax
.label_485:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_487
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_487:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ac6
	.globl sub_405ac6
	.type sub_405ac6, @function
sub_405ac6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad2
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_486:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_489
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_486
	.section	.text
	.align	32
	#Procedure 0x405b20
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_490
	jmp	.label_492
.label_492:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_491
.label_490:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_491:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b57
	.globl sub_405b57
	.type sub_405b57, @function
sub_405b57:

	nop	word ptr [rax + rax]
.label_493:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b77
	.globl sub_405b77
	.type sub_405b77, @function
sub_405b77:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b7f
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
	jae	.label_493
	call	xalloc_die
.label_496:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_495
.label_494:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_495:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bf2
	.globl sub_405bf2
	.type sub_405bf2, @function
sub_405bf2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c00

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
	jne	.label_494
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_494
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_494
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_496
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_495
	.section	.text
	.align	32
	#Procedure 0x405c80
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_497
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_498
.label_497:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_498
.label_498:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cbb
	.globl sub_405cbb
	.type sub_405cbb, @function
sub_405cbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0
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
	#Procedure 0x405ce7
	.globl sub_405ce7
	.type sub_405ce7, @function
sub_405ce7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_499
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_500
.label_499:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_501
.label_500:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_501:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d48
	.globl sub_405d48
	.type sub_405d48, @function
sub_405d48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d50

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
	#Procedure 0x405d86
	.globl sub_405d86
	.type sub_405d86, @function
sub_405d86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90

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
	#Procedure 0x405dcf
	.globl sub_405dcf
	.type sub_405dcf, @function
sub_405dcf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405dd0

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
	.section	.text
	.align	32
	#Procedure 0x405df0

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
.label_507:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_502
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_506
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_504
.label_503:
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
	#Procedure 0x405e93
	.globl sub_405e93
	.type sub_405e93, @function
sub_405e93:

	nop	dword ptr [rax]
.label_506:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_504:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_502:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_508
	jmp	.label_503
.label_508:
	jmp	.label_505
.label_505:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_507
.label_512:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_509
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_511
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405f3f

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
	jge	.label_512
	call	abort
.label_511:
	test	byte ptr [rbp - 0x31], 1
	je	.label_516
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_510
.label_516:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_510:
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
	je	.label_515
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_488]]
	mov	qword ptr [rax + 8], rcx
.label_515:
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
.label_509:
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
	ja	.label_513
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_514
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_514:
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
.label_513:
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
	#Procedure 0x406173
	.globl sub_406173
	.type sub_406173, @function
sub_406173:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406180

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
	#Procedure 0x4061b2
	.globl sub_4061b2
	.type sub_4061b2, @function
sub_4061b2:

	nop	word ptr cs:[rax + rax]
.label_517:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_518:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061d2
	.globl sub_4061d2
	.type sub_4061d2, @function
sub_4061d2:

	nop	word ptr [rax + rax]
.label_519:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_517
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_517
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406204

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_519
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_519
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_518
	.section	.text
	.align	32
	#Procedure 0x406240
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_520
	call	gettext
	movabs	rsi, OFFSET FLAT:label_522
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_523
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_224
	movabs	rdx, OFFSET FLAT:label_524
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_521
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
	#Procedure 0x4062c6
	.globl sub_4062c6
	.type sub_4062c6, @function
sub_4062c6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062d0

	.globl xstrtold
	.type xstrtold, @function
xstrtold:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x39], 1
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x38]
	call	rax
	fstp	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 8]
	je	.label_526
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_525
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_525
.label_526:
	mov	byte ptr [rbp - 0x39], 0
	jmp	.label_527
.label_525:
	fld	xword ptr [rbp - 0x30]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_528
	jp	.label_528
	jmp	.label_530
.label_528:
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_530
	mov	byte ptr [rbp - 0x39], 0
.label_530:
	jmp	.label_527
.label_527:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_529
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_529:
	fld	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	fstp	xword ptr [rax]
	mov	cl, byte ptr [rbp - 0x39]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40639b
	.globl sub_40639b
	.type sub_40639b, @function
sub_40639b:

	nop	dword ptr [rax + rax]
.label_532:
	mov	byte ptr [rbp - 1], 0
.label_533:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4063ae
	.globl sub_4063ae
	.type sub_4063ae, @function
sub_4063ae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063bc
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_532
	jmp	.label_531
.label_531:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_533
	.section	.text
	.align	32
	#Procedure 0x4063e0
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
	je	.label_534
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_535
.label_534:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_535
.label_535:
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
	#Procedure 0x406452
	.globl sub_406452
	.type sub_406452, @function
sub_406452:

	nop	word ptr cs:[rax + rax]
.label_545:
	movabs	rdi, OFFSET FLAT:label_536
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_538
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_540
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_539
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_541
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_542
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_537
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_223
	mov	dword ptr [rbp - 0x30], eax
	call	emit_ancillary_info
.label_543:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40657c
	.globl sub_40657c
	.type sub_40657c, @function
sub_40657c:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40657d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_545
	jmp	.label_544
.label_544:
	movabs	rdi, OFFSET FLAT:label_546
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_543
.label_693:
	movabs	rdi, OFFSET FLAT:label_554
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
	jmp	.label_548
.label_692:
	movabs	rdi, OFFSET FLAT:label_557
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
	jmp	.label_548
.label_552:
	movabs	rdi, OFFSET FLAT:label_556
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
.label_548:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406717
	.globl sub_406717
	.type sub_406717, @function
sub_406717:

	nop	
.label_695:
	movabs	rdi, OFFSET FLAT:label_547
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
	jmp	.label_548
.label_698:
	movabs	rdi, OFFSET FLAT:label_551
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
	jmp	.label_548
.label_699:
	movabs	rdi, OFFSET FLAT:label_564
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
	jmp	.label_548
.label_694:
	movabs	rdi, OFFSET FLAT:label_559
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
	jmp	.label_548
.label_690:
	jmp	.label_548
.label_691:
	movabs	rdi, OFFSET FLAT:label_565
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
	jmp	.label_548
.label_697:
	movabs	rdi, OFFSET FLAT:label_563
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
	jmp	.label_548
.label_696:
	movabs	rdi, OFFSET FLAT:label_553
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
	jmp	.label_548
.label_549:
	movabs	rsi, OFFSET FLAT:label_555
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_550:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_558
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
	mov	ecx, OFFSET FLAT:label_562
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
	ja	.label_552
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_561]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x406b36

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
	je	.label_549
	movabs	rsi, OFFSET FLAT:label_560
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_550
	.section	.text
	.align	32
	#Procedure 0x406b90

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
	.section	.text
	.align	32
	#Procedure 0x406ba0

	.globl print_numbers
	.type print_numbers, @function
print_numbers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	fld	xword ptr [rbp + 0x30]
	fld	xword ptr [rbp + 0x20]
	fld	xword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x18], rdi
	fstp	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x40]
	fstp	xword ptr [rbp - 0x50]
	fld	xword ptr [rbp - 0x40]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_572
	jmp	.label_574
.label_574:
	fld	xword ptr [rbp - 0x30]
	fld	xword ptr [rbp - 0x50]
	fucomip	st(1)
	fstp	st(0)
	seta	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0xcc], ecx
	jmp	.label_582
.label_585:
	test	byte ptr [rbp - 0x51], 1
	je	.label_586
	jmp	.label_567
.label_575:
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0xb8]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x91], cl
	mov	rdi, qword ptr [rbp - 0xc8]
	call	free
.label_580:
	mov	rdi, qword ptr [rbp - 0xb8]
	call	free
	test	byte ptr [rbp - 0x91], 1
	jne	.label_579
	jmp	.label_567
.label_586:
	fld	xword ptr [rbp - 0x30]
	fld	xword ptr [rbp - 0x80]
	fld	xword ptr [rbp - 0x40]
	fmulp	st(1)
	faddp	st(1)
	fstp	xword ptr [rbp - 0x70]
	fld	xword ptr [rbp - 0x40]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_570
	jmp	.label_584
.label_584:
	fld	xword ptr [rbp - 0x70]
	fld	xword ptr [rbp - 0x50]
	fucomip	st(1)
	fstp	st(0)
	seta	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0xd0], ecx
	jmp	.label_588
.label_572:
	fld	xword ptr [rbp - 0x50]
	fld	xword ptr [rbp - 0x30]
	fucomip	st(1)
	fstp	st(0)
	seta	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0xcc], ecx
.label_582:
	mov	eax, dword ptr [rbp - 0xcc]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x51], cl
	test	byte ptr [rbp - 0x51], 1
	jne	.label_569
	fld	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x70]
	fld1	
	fstp	xword ptr [rbp - 0x80]
.label_566:
	fld	xword ptr [rbp - 0x70]
	fstp	xword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x18]
	fld	xword ptr [rbp - 0x70]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	printf
	cmp	eax, 0
	jge	.label_585
	call	io_error
.label_578:
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0xb0]
	movabs	rcx, OFFSET FLAT:cl_strtold
	movsxd	rdi, dword ptr [rbp - 0xbc]
	sub	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0xb8]
	mov	byte ptr [r8 + rdi], 0
	mov	rdi, qword ptr [rbp - 0xb8]
	add	rdi, qword ptr [rbp - 0x10]
	call	xstrtold
	test	al, 1
	jne	.label_576
	jmp	.label_580
.label_576:
	fld	xword ptr [rbp - 0xb0]
	fld	xword ptr [rbp - 0x50]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_580
	jnp	.label_583
	jmp	.label_580
.label_583:
	lea	rax, [rbp - 0xc8]
	mov	qword ptr [rbp - 0xc8], 0
	mov	rsi, qword ptr [rbp - 0x18]
	fld	xword ptr [rbp - 0x90]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	xor	edx, edx
	mov	dil, dl
	lea	rcx, [rbp - 0xc8]
	mov	byte ptr [rbp - 0xf1], dil
	mov	rdi, rcx
	mov	r8b, byte ptr [rbp - 0xf1]
	mov	qword ptr [rbp - 0x100], rax
	mov	al, r8b
	call	asprintf
	cmp	eax, 0
	jge	.label_575
	call	xalloc_die
.label_579:
	jmp	.label_568
.label_568:
	mov	rdi,  qword ptr [word ptr [separator]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	cmp	eax, -1
	jne	.label_581
	call	io_error
.label_570:
	fld	xword ptr [rbp - 0x50]
	fld	xword ptr [rbp - 0x70]
	fucomip	st(1)
	fstp	st(0)
	seta	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0xd0], ecx
.label_588:
	mov	eax, dword ptr [rbp - 0xd0]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x51], cl
	test	byte ptr [rbp - 0x51], 1
	je	.label_568
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [byte ptr [locale_ok]],  1
	je	.label_573
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:label_55
	call	setlocale
	mov	qword ptr [rbp - 0xd8], rax
.label_573:
	lea	rax, [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	fld	xword ptr [rbp - 0x70]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	xor	edx, edx
	mov	dil, dl
	lea	rcx, [rbp - 0xb8]
	mov	byte ptr [rbp - 0xd9], dil
	mov	rdi, rcx
	mov	r8b, byte ptr [rbp - 0xd9]
	mov	qword ptr [rbp - 0xe8], rax
	mov	al, r8b
	call	asprintf
	mov	dword ptr [rbp - 0xbc], eax
	test	byte ptr [byte ptr [locale_ok]],  1
	je	.label_571
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:label_81
	call	setlocale
	mov	qword ptr [rbp - 0xf0], rax
.label_571:
	cmp	dword ptr [rbp - 0xbc], 0
	jge	.label_578
	call	xalloc_die
.label_567:
	movabs	rdi, OFFSET FLAT:terminator
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	cmp	eax, -1
	jne	.label_577
	call	io_error
.label_581:
	jmp	.label_587
.label_587:
	fld	xword ptr [rbp - 0x80]
	fld1	
	faddp	st(1)
	fstp	xword ptr [rbp - 0x80]
	jmp	.label_566
.label_577:
	jmp	.label_569
.label_569:
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f1d
	.globl sub_406f1d
	.type sub_406f1d, @function
sub_406f1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f20

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
	je	.label_589
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_55
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_592
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_590
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_591
.label_592:
	mov	byte ptr [rbp - 5], 0
.label_591:
	jmp	.label_589
.label_589:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f93
	.globl sub_406f93
	.type sub_406f93, @function
sub_406f93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fa0
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
	#Procedure 0x406fc7
	.globl sub_406fc7
	.type sub_406fc7, @function
sub_406fc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fd0

	.globl io_error
	.type io_error, @function
io_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_466
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_601:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_593
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_593:
	movabs	rdi, OFFSET FLAT:label_596
	call	gettext
	movabs	rsi, OFFSET FLAT:label_224
	movabs	rdx, OFFSET FLAT:label_524
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
	je	.label_595
	movabs	rsi, OFFSET FLAT:label_597
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_595
	movabs	rdi, OFFSET FLAT:label_599
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_595:
	movabs	rdi, OFFSET FLAT:label_600
	call	gettext
	movabs	rsi, OFFSET FLAT:label_524
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_594
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_81
	movabs	rsi, OFFSET FLAT:label_598
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
	#Procedure 0x407135
	.globl sub_407135
	.type sub_407135, @function
sub_407135:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40713c

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
.label_604:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_603
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_603:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_602
	jmp	.label_601
.label_602:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_604
	.section	.text
	.align	32
	#Procedure 0x4071b0

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
	jne	.label_605
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_605:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_606
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_606
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_606
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_607
.label_606:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_607:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407251
	.globl sub_407251
	.type sub_407251, @function
sub_407251:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407260

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
	#Procedure 0x40728c
	.globl sub_40728c
	.type sub_40728c, @function
sub_40728c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407290
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
	#Procedure 0x4072bd
	.globl sub_4072bd
	.type sub_4072bd, @function
sub_4072bd:

	nop	dword ptr [rax]
.label_608:
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
	#Procedure 0x4072de

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
	jne	.label_610
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_610:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_609
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_608
.label_609:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407330
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
	#Procedure 0x407367
	.globl sub_407367
	.type sub_407367, @function
sub_407367:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407370

	.globl long_double_format
	.type long_double_format, @function
long_double_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x18], 0
.label_630:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rsi + rdx]
	cmp	eax, 0x25
	mov	byte ptr [rbp - 0x49], cl
	jne	.label_623
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x25
	setne	sil
	mov	byte ptr [rbp - 0x49], sil
.label_623:
	mov	al, byte ptr [rbp - 0x49]
	xor	al, 0xff
	test	al, 1
	jne	.label_616
	jmp	.label_619
.label_616:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	byte ptr [rcx + rax], 0
	jne	.label_622
	movabs	rdi, OFFSET FLAT:label_629
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
.label_612:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx + rax], 0x4c
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rbp - 0x31]
	and	cl, 1
	movzx	r8d, cl
	movsxd	rsi, r8d
	add	rdx, rsi
	mov	rdi, rax
	mov	rsi, rdx
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, rdx
	add	rsp, 0x80
	pop	rbp
	ret	
.label_621:
	jmp	.label_614
.label_614:
	jmp	.label_627
.label_627:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_625
	.section	.text
	.align	32
	#Procedure 0x4074f3
	.globl sub_4074f3
	.type sub_4074f3, @function
sub_4074f3:

	nop	dword ptr [rax]
.label_622:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_630
.label_619:
	movabs	rsi, OFFSET FLAT:label_628
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strspn
	movabs	rsi, OFFSET FLAT:label_618
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strspn
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0x2e
	jne	.label_631
	movabs	rsi, OFFSET FLAT:label_618
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strspn
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_631:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x4c
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x31], sil
	mov	sil, byte ptr [rbp - 0x31]
	and	sil, 1
	movzx	edx, sil
	mov	eax, edx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_611
	movabs	rdi, OFFSET FLAT:label_617
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
.label_611:
	movabs	rdi, OFFSET FLAT:label_615
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx + rax]
	call	strchr
	cmp	rax, 0
	jne	.label_620
	movabs	rdi, OFFSET FLAT:label_624
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	movsx	r8d, byte ptr [rdx + rcx]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_620:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_625:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	jne	.label_613
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x25
	je	.label_613
	movabs	rdi, OFFSET FLAT:label_626
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
.label_613:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	byte ptr [rcx + rax], 0
	je	.label_612
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_621
	.section	.text
	.align	32
	#Procedure 0x407730

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
	#Procedure 0x40776e
	.globl sub_40776e
	.type sub_40776e, @function
sub_40776e:

	nop	
.label_633:
	mov	byte ptr [rbp - 1], 0
.label_634:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40777e
	.globl sub_40777e
	.type sub_40777e, @function
sub_40777e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40778c
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_633
	jmp	.label_632
.label_632:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_634
	.section	.text
	.align	32
	#Procedure 0x4077b0

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
	#Procedure 0x4077e3
	.globl sub_4077e3
	.type sub_4077e3, @function
sub_4077e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077f0

	.globl all_digits_p
	.type all_digits_p, @function
all_digits_p:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x11], cl
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax]
	sub	edx, 0x30
	cmp	edx, 9
	mov	cl, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x12], cl
	ja	.label_635
	movabs	rsi, OFFSET FLAT:label_618
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	strspn
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, rax
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_635:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40785f
	.globl sub_40785f
	.type sub_40785f, @function
sub_40785f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4078c5
	.globl sub_4078c5
	.type sub_4078c5, @function
sub_4078c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078d2
	.globl sub_4078d2
	.type sub_4078d2, @function
sub_4078d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078f6
	.globl sub_4078f6
	.type sub_4078f6, @function
sub_4078f6:

	nop	word ptr cs:[rax + rax]
