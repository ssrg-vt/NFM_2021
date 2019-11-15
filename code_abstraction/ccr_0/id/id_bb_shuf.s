	.section	.text
	.align	16
	#Procedure 0x4017d9
	.globl sub_4017d9
	.type sub_4017d9, @function
sub_4017d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4017da
	.globl sub_4017da
	.type sub_4017da, @function
sub_4017da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401812
	.globl sub_401812
	.type sub_401812, @function
sub_401812:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40185a
	.globl sub_40185a
	.type sub_40185a, @function
sub_40185a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40187c
	.globl sub_40187c
	.type sub_40187c, @function
sub_40187c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40188d
	.globl sub_40188d
	.type sub_40188d, @function
sub_40188d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018a6
	.globl sub_4018a6
	.type sub_4018a6, @function
sub_4018a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0
	.globl freecon
	.type freecon, @function
freecon:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018ba
	.globl sub_4018ba
	.type sub_4018ba, @function
sub_4018ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018c0

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
	.align	16
	#Procedure 0x4018e8
	.globl sub_4018e8
	.type sub_4018e8, @function
sub_4018e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0
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
	.align	16
	#Procedure 0x401918
	.globl sub_401918
	.type sub_401918, @function
sub_401918:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401920
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
	ja	.label_9
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_11]]
	jmp	rcx
.label_829:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_10
.label_9:
	mov	byte ptr [rbp - 1], 0
.label_10:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401961
	.globl sub_401961
	.type sub_401961, @function
sub_401961:

	nop	word ptr cs:[rax + rax]
.label_12:
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
	.align	16
	#Procedure 0x40199a
	.globl sub_40199a
	.type sub_40199a, @function
sub_40199a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019a6

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
	jne	.label_12
	call	abort
.label_18:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_13:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_17:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_19
	jmp	.label_14
.label_19:
	jmp	.label_15
.label_15:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_16
.label_14:
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
	.align	16
	#Procedure 0x401a6c
	.globl sub_401a6c
	.type sub_401a6c, @function
sub_401a6c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a73

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
.label_16:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_17
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_18
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x401af0

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
	je	.label_20
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_20:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b2b
	.globl sub_401b2b
	.type sub_401b2b, @function
sub_401b2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b30
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b5b
	.globl sub_401b5b
	.type sub_401b5b, @function
sub_401b5b:

	nop	dword ptr [rax + rax]
.label_22:
	jmp	.label_21
.label_21:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b73
	.globl sub_401b73
	.type sub_401b73, @function
sub_401b73:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b79

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
	ja	.label_22
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_21
	.section	.text
	.align	16
	#Procedure 0x401bb0
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bd4
	.globl sub_401bd4
	.type sub_401bd4, @function
sub_401bd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401be0

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x60], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rcx]
	mov	dword ptr [rbp - 0x64], eax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_53
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xac], ecx
	jmp	.label_29
.label_57:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x68], ecx
.label_24:
	call	endgrent
	mov	rdi, qword ptr [rbp - 0x58]
	call	xstrdup
	mov	qword ptr [rbp - 0x60], rax
.label_37:
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_45
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_28
	mov	eax, dword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_28:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_58
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x50], 0
.label_58:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_32
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x60], 0
.label_32:
	jmp	.label_45
.label_45:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_40
	mov	rdi, qword ptr [rbp - 0x38]
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_38
.label_41:
	lea	rsi, [rbp - 0xa0]
	mov	eax, dword ptr [rbp - 0x68]
	mov	edi, eax
	call	umaxtostr
	mov	qword ptr [rbp - 0xd0], rax
.label_59:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x60], rax
	call	endgrent
.label_43:
	jmp	.label_33
.label_33:
	call	endpwent
.label_54:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_37
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_37
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_44
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd8], rcx
	jmp	.label_47
.label_56:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
.label_60:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_54
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_61
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_30
.label_49:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_36
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	rsi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	byte ptr [rsi + rax], 0
.label_36:
	jmp	.label_26
.label_26:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_52
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	jne	.label_56
.label_52:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_60
.label_53:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_29
.label_29:
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 0x68], eax
	mov	qword ptr [rbp - 0x38], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_35
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_35:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_46
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_46:
	mov	qword ptr [rbp - 0x50], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_49
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_25
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x50], rax
.label_25:
	jmp	.label_26
.label_40:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_38
.label_38:
	mov	rax, qword ptr [rbp - 0xe0]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401eaa
	.globl sub_401eaa
	.type sub_401eaa, @function
sub_401eaa:

	nop	word ptr cs:[rax + rax]
.label_34:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x64], ecx
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_43
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_43
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x68], ecx
	mov	edi, dword ptr [rbp - 0x68]
	call	getgrgid
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_41
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_59
.label_61:
	mov	rdi, qword ptr [rbp - 0x50]
	call	getpwnam
	mov	qword ptr [rbp - 0xc0], rax
.label_30:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_34
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xc1], cl
	je	.label_42
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0xc1], al
.label_42:
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	test	byte ptr [rbp - 0x71], 1
	je	.label_48
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_bad_spec]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_55
.label_31:
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_invalid_group]]
	mov	qword ptr [rbp - 0x38], rax
.label_50:
	jmp	.label_24
.label_48:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x80]
	movabs	r8, OFFSET FLAT:label_27
	mov	rdi, qword ptr [rbp - 0x50]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_39
	mov	eax, 0xffffffff
	mov	ecx, eax
	cmp	qword ptr [rbp - 0x80], rcx
	ja	.label_39
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_39
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x64], ecx
	jmp	.label_51
.label_44:
	mov	rdi, qword ptr [rbp - 0x58]
	call	getgrnam
	mov	qword ptr [rbp - 0xd8], rax
.label_47:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_57
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0xa8]
	movabs	r8, OFFSET FLAT:label_27
	mov	rdi, qword ptr [rbp - 0x58]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_31
	mov	eax, 0xffffffff
	mov	ecx, eax
	cmp	qword ptr [rbp - 0xa8], rcx
	ja	.label_31
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_31
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x68], ecx
	jmp	.label_50
.label_39:
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_invalid_user]]
	mov	qword ptr [rbp - 0x38], rax
.label_51:
	jmp	.label_55
.label_55:
	jmp	.label_33
.label_62:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_63:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40209c
	.globl sub_40209c
	.type sub_40209c, @function
sub_40209c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020aa

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
	jne	.label_62
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_62
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_62
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_64
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_63
.label_64:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_63
	.section	.text
	.align	16
	#Procedure 0x402150

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
	jne	.label_65
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_65:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_67
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_66
.label_67:
	call	abort
.label_66:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
.label_69:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021ca
	.globl sub_4021ca
	.type sub_4021ca, @function
sub_4021ca:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021d4
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
	jb	.label_68
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_69
.label_68:
	call	xalloc_die
.label_71:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_72:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40222b
	.globl sub_40222b
	.type sub_40222b, @function
sub_40222b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402234
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_71
	jmp	.label_70
.label_70:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_72
	.section	.text
	.align	16
	#Procedure 0x402260
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_73
	jmp	.label_74
.label_74:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_75
.label_73:
	mov	byte ptr [rbp - 1], 0
.label_75:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40228f
	.globl sub_40228f
	.type sub_40228f, @function
sub_40228f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402290

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
	.align	16
	#Procedure 0x402305
	.globl sub_402305
	.type sub_402305, @function
sub_402305:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402310

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
	.align	16
	#Procedure 0x402330

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
	.align	16
	#Procedure 0x4023a2
	.globl sub_4023a2
	.type sub_4023a2, @function
sub_4023a2:

	nop	word ptr cs:[rax + rax]
.label_85:
	movabs	rdi, OFFSET FLAT:label_76
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_77
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_78
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_79
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_80
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_81
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_82
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_ancillary_info
.label_83:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402495
	.globl sub_402495
	.type sub_402495, @function
sub_402495:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40249d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_85
	jmp	.label_84
.label_84:
	movabs	rdi, OFFSET FLAT:label_86
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_83
	.section	.text
	.align	16
	#Procedure 0x4024f0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402518
	.globl sub_402518
	.type sub_402518, @function
sub_402518:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402520
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402548
	.globl sub_402548
	.type sub_402548, @function
sub_402548:

	nop	dword ptr [rax + rax]
.label_91:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_87
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_89]],  rax
.label_87:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_88
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_88:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025d6
	.globl sub_4025d6
	.type sub_4025d6, @function
sub_4025d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025e2
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_90:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_91
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_90
	.section	.text
	.align	16
	#Procedure 0x402630

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
	.align	16
	#Procedure 0x402667
	.globl sub_402667
	.type sub_402667, @function
sub_402667:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402698
	.globl sub_402698
	.type sub_402698, @function
sub_402698:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026a0
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
	jb	.label_92
	jmp	.label_94
.label_94:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_95
	jmp	.label_92
.label_92:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_93
.label_95:
	mov	byte ptr [rbp - 1], 0
.label_93:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026e8
	.globl sub_4026e8
	.type sub_4026e8, @function
sub_4026e8:

	nop	dword ptr [rax + rax]
.label_99:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_98
.label_98:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_with_separator
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_97
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_97
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_97
	mov	esi, 0x2e
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_96
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_with_separator
	cmp	rax, 0
	jne	.label_96
	mov	qword ptr [rbp - 0x38], 0
.label_96:
	jmp	.label_97
.label_97:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027a2

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_99
	mov	esi, 0x3a
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_98
	.section	.text
	.align	16
	#Procedure 0x4027e0

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
	jge	.label_107
	call	abort
.label_102:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_104:
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
	je	.label_101
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_89]]
	mov	qword ptr [rax + 8], rcx
.label_101:
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
.label_103:
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
	ja	.label_106
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_100
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_100:
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
.label_106:
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
	.align	16
	#Procedure 0x4029fd
	.globl sub_4029fd
	.type sub_4029fd, @function
sub_4029fd:

	nop	word ptr cs:[rax + rax]
.label_107:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_103
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_105
	call	xalloc_die
.label_105:
	test	byte ptr [rbp - 0x31], 1
	je	.label_102
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_104
.label_108:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_112
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_109:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_115:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a90
	.globl sub_402a90
	.type sub_402a90, @function
sub_402a90:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a99

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_110
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_114
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_110
.label_114:
	movabs	rdi, OFFSET FLAT:label_113
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_108
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_111
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_109
.label_110:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_115
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402b50
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
	.align	16
	#Procedure 0x402b81
	.globl sub_402b81
	.type sub_402b81, @function
sub_402b81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90
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
	jae	.label_116
	call	xalloc_die
.label_116:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402be0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_117
	jmp	.label_119
.label_119:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_118
.label_117:
	mov	byte ptr [rbp - 1], 0
.label_118:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c12
	.globl sub_402c12
	.type sub_402c12, @function
sub_402c12:

	nop	word ptr cs:[rax + rax]
.label_244:
	jmp	.label_125
.label_286:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_130
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_130
	jmp	.label_133
.label_133:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_135
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_135:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_139
.label_139:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_263
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_263:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_151
.label_151:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_153
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_153:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_130:
	jmp	.label_163
.label_163:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_164
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_164:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_193
.label_193:
	jmp	.label_173
.label_173:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_174
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_174:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_183
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_183:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_212
.label_252:
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_199
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_199:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_203
.label_725:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_129
.label_157:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_208
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_160
.label_721:
	mov	byte ptr [rbp - 0x79], 1
.label_720:
	mov	byte ptr [rbp - 0x7b], 1
.label_722:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_217
	mov	byte ptr [rbp - 0x79], 1
.label_217:
	jmp	.label_248
.label_248:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_224
	jmp	.label_230
.label_230:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_232
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_224
.label_224:
	movabs	rax, OFFSET FLAT:label_238
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_129
.label_246:
	jmp	.label_243
.label_243:
	jmp	.label_234
.label_234:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_197
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_197
	jmp	.label_249
.label_249:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_252
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_272
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_272:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_249
.label_753:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_134
.label_309:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_270
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_270
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
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_281
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_281:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_294
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_294:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_270:
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_298
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_298:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_302
.label_302:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_127
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_127
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_127
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_127
	jmp	.label_317
.label_317:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_318
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_318:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_322
.label_322:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_122
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_122:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_127
.label_127:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_131
.label_316:
	jmp	.label_134
.label_134:
	test	byte ptr [rbp - 0x79], 1
	je	.label_205
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_137
.label_191:
	jmp	.label_137
.label_137:
	jmp	.label_140
.label_140:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_143
	jmp	.label_146
.label_751:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_147
.label_146:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_149
	test	byte ptr [rbp - 0x79], 1
	je	.label_149
	mov	dword ptr [rbp - 0x34], 4
.label_149:
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
.label_203:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030f6
	.globl sub_4030f6
	.type sub_4030f6, @function
sub_4030f6:

	nop	dword ptr [rax + rax]
.label_184:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_175
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_175
	test	byte ptr [rbp - 0x7b], 1
	je	.label_175
	jmp	.label_146
.label_273:
	jmp	.label_123
.label_123:
	test	byte ptr [rbp - 0x79], 1
	je	.label_179
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_181
.label_179:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_185
.label_181:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_185
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
	jne	.label_191
.label_185:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_191
	jmp	.label_125
.label_311:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_201
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_201:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_216
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_216:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_226
.label_226:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_233
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_233:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_239
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_239:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_152
.label_752:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_147
.label_194:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_220:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_188
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_188
	test	byte ptr [rbp - 0x7b], 1
	je	.label_262
	jmp	.label_146
.label_180:
	jmp	.label_264
.label_264:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_266
	jmp	.label_123
.label_303:
	jmp	.label_123
.label_208:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_271
	mov	byte ptr [rbp - 0x91], 0
.label_319:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_182
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_182:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_285
	jmp	.label_279
.label_285:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_319
.label_749:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_134
.label_236:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_246
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_246
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_297
.label_266:
	jmp	.label_301
.label_301:
	mov	byte ptr [rbp - 0x83], 1
.label_756:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_303
	test	byte ptr [rbp - 0x7b], 1
	je	.label_303
	jmp	.label_146
.label_256:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_310
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
	jmp	.label_265
.label_279:
	jmp	.label_160
.label_299:
	jmp	.label_321
.label_321:
	jmp	.label_320
.label_320:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_120
.label_757:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_123
.label_310:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_132
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_132:
	jmp	.label_144
.label_144:
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
	jne	.label_157
	jmp	.label_160
.label_755:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_147
.label_719:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_129
.label_759:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_165
	jmp	.label_168
.label_168:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_170
	jmp	.label_176
.label_257:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_260:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_269
	jmp	.label_184
.label_269:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_188
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_188
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_188
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_194
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_194
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_220
.label_210:
	jmp	.label_156
.label_165:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_210
	jmp	.label_146
.label_760:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_287
	test	byte ptr [rbp - 0x7b], 1
	je	.label_219
	jmp	.label_146
.label_280:
	test	byte ptr [rbp - 0x81], 1
	je	.label_225
	jmp	.label_228
.label_228:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_231
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_231:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_225:
	jmp	.label_212
.label_212:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_241
	jmp	.label_244
.label_251:
	jmp	.label_131
.label_131:
	jmp	.label_123
.label_276:
	jmp	.label_247
.label_247:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_250
	mov	byte ptr [rbp - 0x91], 0
.label_250:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_254
.label_254:
	jmp	.label_258
.label_258:
	jmp	.label_259
.label_259:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_144
.label_160:
	jmp	.label_265
.label_265:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_268
	test	byte ptr [rbp - 0x79], 1
	je	.label_273
	test	byte ptr [rbp - 0x91], 1
	jne	.label_273
.label_268:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_218:
	test	byte ptr [rbp - 0x79], 1
	je	.label_280
	test	byte ptr [rbp - 0x91], 1
	jne	.label_280
	jmp	.label_284
.label_284:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_286
	jmp	.label_146
.label_726:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_289
	movabs	rdi, OFFSET FLAT:label_291
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_238
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_289:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_142
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_313:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_300
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_304
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_227
.label_227:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_313
.label_159:
	jmp	.label_147
.label_147:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_316
	test	byte ptr [rbp - 0x7b], 1
	je	.label_316
	jmp	.label_146
.label_724:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_723:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_124
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_121
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_121:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_124
.label_124:
	movabs	rax, OFFSET FLAT:label_128
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_129
.label_754:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_134
.label_758:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_138
	test	byte ptr [rbp - 0x7b], 1
	je	.label_145
	jmp	.label_146
.label_145:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_148
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_148:
	jmp	.label_155
.label_155:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_158
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_158:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_162
.label_162:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_166
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_166:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_222
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_222:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_138:
	jmp	.label_123
.label_136:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_180
.label_314:
	jmp	.label_123
.label_241:
	jmp	.label_187
.label_187:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_189
	test	byte ptr [rbp - 0x82], 1
	jne	.label_189
	jmp	.label_192
.label_192:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_126
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_126:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_312
.label_312:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_189:
	jmp	.label_207
.label_207:
	jmp	.label_242
.label_242:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_211
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_211:
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
	jmp	.label_218
.label_175:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_234
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_234
	test	byte ptr [rbp - 0x7d], 1
	je	.label_234
	test	byte ptr [rbp - 0x7e], 1
	je	.label_236
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
	jmp	.label_203
.label_306:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_251
	jmp	.label_196
.label_262:
	mov	byte ptr [rbp - 0x81], 1
.label_188:
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
	ja	.label_256
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_267]]
	jmp	rcx
.label_271:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_247
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_247
	mov	qword ptr [rbp - 0xb8], 1
.label_120:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_276
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
	jb	.label_177
	jmp	.label_290
.label_290:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_177
	jmp	.label_293
.label_293:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_177
	jmp	.label_315
.label_315:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_299
	jmp	.label_177
.label_177:
	jmp	.label_146
.label_219:
	jmp	.label_125
.label_748:
	test	byte ptr [rbp - 0x79], 1
	je	.label_306
	jmp	.label_308
.label_308:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_309
	jmp	.label_146
.label_761:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_136
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_180
	jmp	.label_314
	.section	.text
	.align	16
	#Procedure 0x403bcf

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
.label_297:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_141
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_150]]
	jmp	rcx
.label_141:
	call	abort
.label_307:
	jmp	.label_152
.label_152:
	jmp	.label_154
.label_154:
	jmp	.label_156
.label_287:
	test	byte ptr [rbp - 0x79], 1
	je	.label_159
	test	byte ptr [rbp - 0x7b], 1
	je	.label_159
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_159
	jmp	.label_125
.label_750:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_134
.label_143:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_167
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_167
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_172
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_172:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_178
.label_178:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_221
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_221:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_186
.label_186:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_190
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_190:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_167:
	jmp	.label_195
.label_195:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_198
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_198:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_202
.label_202:
	jmp	.label_125
.label_125:
	jmp	.label_204
.label_204:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_206
	test	byte ptr [rbp - 0x82], 1
	jne	.label_206
	jmp	.label_214
.label_214:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_215
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_215:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_223
.label_223:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_229
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_206:
	jmp	.label_161
.label_161:
	jmp	.label_237
.label_237:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_240
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_240:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_245
	mov	byte ptr [rbp - 0x7e], 0
.label_245:
	jmp	.label_196
.label_196:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_253
.label_176:
	jmp	.label_156
.label_156:
	jmp	.label_123
.label_129:
	mov	qword ptr [rbp - 0x58], 0
.label_253:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_260
.label_205:
	jmp	.label_123
.label_300:
	jmp	.label_142
.label_142:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_129
.label_170:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_154
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_154
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_154
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_283
	jmp	.label_292
.label_292:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_283
	jmp	.label_296
.label_296:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_283
	jmp	.label_209
.label_209:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_283
	jmp	.label_305
.label_305:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_307
	jmp	.label_283
.label_283:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_311
	jmp	.label_146
	.section	.text
	.align	16
	#Procedure 0x403fc0

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
	jne	.label_324
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_324:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_325
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_325
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_325
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_326
.label_325:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_326:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404061
	.globl sub_404061
	.type sub_404061, @function
sub_404061:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070

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
	.align	16
	#Procedure 0x4040a2
	.globl sub_4040a2
	.type sub_4040a2, @function
sub_4040a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0
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
	.align	16
	#Procedure 0x4040c6
	.globl sub_4040c6
	.type sub_4040c6, @function
sub_4040c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

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
	je	.label_333
	movabs	rsi, OFFSET FLAT:label_327
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_337
.label_800:
	movabs	rdi, OFFSET FLAT:label_339
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
	jmp	.label_335
.label_802:
	movabs	rdi, OFFSET FLAT:label_330
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
	jmp	.label_335
.label_794:
	movabs	rdi, OFFSET FLAT:label_343
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
	jmp	.label_335
.label_793:
	jmp	.label_335
.label_799:
	movabs	rdi, OFFSET FLAT:label_340
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
	jmp	.label_335
.label_338:
	movabs	rdi, OFFSET FLAT:label_345
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
.label_335:
	add	rsp, 0x180
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

	nop	
.label_801:
	movabs	rdi, OFFSET FLAT:label_344
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
	jmp	.label_335
.label_797:
	movabs	rdi, OFFSET FLAT:label_336
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
	jmp	.label_335
.label_796:
	movabs	rdi, OFFSET FLAT:label_342
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
	jmp	.label_335
.label_795:
	movabs	rdi, OFFSET FLAT:label_329
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
	jmp	.label_335
.label_798:
	movabs	rdi, OFFSET FLAT:label_332
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
	jmp	.label_335
.label_333:
	movabs	rsi, OFFSET FLAT:label_341
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_337:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_334
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
	mov	ecx, OFFSET FLAT:label_331
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
	ja	.label_338
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_328]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x404690
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
	.align	16
	#Procedure 0x4046ba
	.globl sub_4046ba
	.type sub_4046ba, @function
sub_4046ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046c0

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
.label_355:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_354
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_354:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_349
	jmp	.label_352
.label_349:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_355
.label_352:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_357
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_357:
	movabs	rdi, OFFSET FLAT:label_348
	call	gettext
	movabs	rsi, OFFSET FLAT:label_358
	movabs	rdx, OFFSET FLAT:label_356
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
	je	.label_347
	movabs	rsi, OFFSET FLAT:label_351
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_347
	movabs	rdi, OFFSET FLAT:label_359
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_347:
	movabs	rdi, OFFSET FLAT:label_353
	call	gettext
	movabs	rsi, OFFSET FLAT:label_356
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_346
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_27
	movabs	rsi, OFFSET FLAT:label_350
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
	.align	16
	#Procedure 0x404859
	.globl sub_404859
	.type sub_404859, @function
sub_404859:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404860

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
	je	.label_360
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_363
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_364
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_361
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_362
.label_364:
	mov	byte ptr [rbp - 5], 0
.label_362:
	jmp	.label_360
.label_360:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048d3
	.globl sub_4048d3
	.type sub_4048d3, @function
sub_4048d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0

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
	.align	16
	#Procedure 0x40490c
	.globl sub_40490c
	.type sub_40490c, @function
sub_40490c:

	nop	dword ptr [rax]
.label_367:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_365
.label_365:
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
	je	.label_366
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_366:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a33
	.globl sub_404a33
	.type sub_404a33, @function
sub_404a33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a3f

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
	je	.label_367
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_365
.label_368:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_372
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_370
.label_372:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_370
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_370:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_369
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_369:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_371:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404afd
	.globl sub_404afd
	.type sub_404afd, @function
sub_404afd:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404aff

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
	jge	.label_368
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_371
	.section	.text
	.align	16
	#Procedure 0x404b40
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
	.align	16
	#Procedure 0x404b6f
	.globl sub_404b6f
	.type sub_404b6f, @function
sub_404b6f:

	nop	
.label_373:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b79
	.globl sub_404b79
	.type sub_404b79, @function
sub_404b79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b7d

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mgetgroups
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_373
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_373
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404bc0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_374
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_112
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404bff
	.globl sub_404bff
	.type sub_404bff, @function
sub_404bff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404c00
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
	jae	.label_375
	call	xalloc_die
.label_375:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c48
	.globl sub_404c48
	.type sub_404c48, @function
sub_404c48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
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
	.align	16
	#Procedure 0x404c8a
	.globl sub_404c8a
	.type sub_404c8a, @function
sub_404c8a:

	nop	word ptr [rax + rax]
.label_386:
	test	byte ptr [byte ptr [just_context]],  1
	je	.label_381
	mov	rdi,  qword ptr [word ptr [context]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_382
.label_381:
	mov	rdi, qword ptr [rbp - 8]
	call	print_full_info
.label_382:
	jmp	.label_377
.label_377:
	jmp	.label_379
.label_379:
	jmp	.label_380
.label_380:
	test	byte ptr [byte ptr [opt_zero]],  1
	je	.label_376
	test	byte ptr [byte ptr [just_group_list]],  1
	je	.label_376
	test	byte ptr [byte ptr [multiple_users]],  1
	je	.label_376
	xor	edi, edi
	call	putchar_unlocked
	xor	edi, edi
	mov	dword ptr [rbp - 0x18], eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_378
.label_387:
	mov	eax,  dword ptr [dword ptr [egid]]
	mov	dword ptr [rbp - 0x10], eax
.label_389:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl,  byte ptr [byte ptr [use_name]]
	and	cl, 1
	mov	edi, eax
	movzx	esi, cl
	call	print_group
	and	al, 1
	movzx	esi, al
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	edi, al
	and	edi, esi
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_379
.label_376:
	mov	eax, 0xa
	xor	ecx, ecx
	mov	dl,  byte ptr [byte ptr [opt_zero]]
	test	dl, 1
	cmovne	eax, ecx
	mov	edi, eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_378:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d82
	.globl sub_404d82
	.type sub_404d82, @function
sub_404d82:

	nop	word ptr cs:[rax + rax]
.label_384:
	mov	eax,  dword ptr [dword ptr [euid]]
	mov	dword ptr [rbp - 0xc], eax
.label_388:
	mov	eax, dword ptr [rbp - 0xc]
	mov	edi, eax
	call	print_user
	jmp	.label_380
	.section	.text
	.align	16
	#Procedure 0x404daa

	.globl print_stuff
	.type print_stuff, @function
print_stuff:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	test	byte ptr [byte ptr [just_user]],  1
	je	.label_385
	test	byte ptr [byte ptr [use_real]],  1
	je	.label_384
	mov	eax,  dword ptr [dword ptr [ruid]]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_388
.label_385:
	test	byte ptr [byte ptr [just_group]],  1
	je	.label_383
	test	byte ptr [byte ptr [use_real]],  1
	je	.label_387
	mov	eax,  dword ptr [dword ptr [rgid]]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_389
.label_383:
	test	byte ptr [byte ptr [just_group_list]],  1
	je	.label_386
	mov	eax, 0x20
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [ruid]]
	mov	edx,  dword ptr [dword ptr [rgid]]
	mov	r8d,  dword ptr [dword ptr [egid]]
	mov	r9b,  byte ptr [byte ptr [use_name]]
	mov	r10b,  byte ptr [byte ptr [opt_zero]]
	test	r10b, 1
	cmovne	eax, ecx
	mov	r10b, al
	and	r9b, 1
	mov	ecx, r8d
	movzx	r8d, r9b
	movsx	r9d, r10b
	call	print_group_list
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_377
	.section	.text
	.align	16
	#Procedure 0x404e90

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
	.align	16
	#Procedure 0x404ec3
	.globl sub_404ec3
	.type sub_404ec3, @function
sub_404ec3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ef5
	.globl sub_404ef5
	.type sub_404ef5, @function
sub_404ef5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00
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
	.align	16
	#Procedure 0x404f1f
	.globl sub_404f1f
	.type sub_404f1f, @function
sub_404f1f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404f20
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f44
	.globl sub_404f44
	.type sub_404f44, @function
sub_404f44:

	nop	word ptr cs:[rax + rax]
.label_399:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_390
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_392
	movabs	rax, OFFSET FLAT:label_397
	movabs	rcx, OFFSET FLAT:label_398
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_395
.label_396:
	movabs	rax, OFFSET FLAT:label_238
	movabs	rcx, OFFSET FLAT:label_128
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_395:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fca
	.globl sub_404fca
	.type sub_404fca, @function
sub_404fca:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fd2

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
	je	.label_399
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_395
.label_392:
	movabs	rsi, OFFSET FLAT:label_391
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_396
	movabs	rax, OFFSET FLAT:label_393
	movabs	rcx, OFFSET FLAT:label_394
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_395
.label_400:
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
	.align	16
	#Procedure 0x405073
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
.label_402:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_400
	jmp	.label_401
.label_401:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_402
	.section	.text
	.align	16
	#Procedure 0x4050c0

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
	.align	16
	#Procedure 0x4050fe
	.globl sub_4050fe
	.type sub_4050fe, @function
sub_4050fe:

	nop	
.label_420:
	cmp	dword ptr [rbp - 0x28], 0
	jle	.label_403
	movabs	rdi, OFFSET FLAT:label_409
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x88], eax
.label_403:
	mov	dword ptr [rbp - 0x2c], 0
.label_408:
	mov	eax, dword ptr [rbp - 0x2c]
	cmp	eax, dword ptr [rbp - 0x28]
	jge	.label_412
	cmp	dword ptr [rbp - 0x2c], 0
	jle	.label_404
	mov	edi, 0x2c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x8c], eax
.label_404:
	movsxd	rax, dword ptr [rbp - 0x2c]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	gidtostr_ptr
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movsxd	rsi, dword ptr [rbp - 0x2c]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rdi + rsi*4]
	mov	dword ptr [rbp - 0x90], eax
	call	getgrgid
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_411
	movabs	rdi, OFFSET FLAT:label_410
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x94], eax
.label_411:
	jmp	.label_405
.label_405:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_408
	.section	.text
	.align	16
	#Procedure 0x4051d6

	.globl print_full_info
	.type print_full_info, @function
print_full_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	movabs	rax, OFFSET FLAT:label_428
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	gettext
	movabs	rdi, OFFSET FLAT:ruid
	mov	qword ptr [rbp - 0x38], rax
	call	uidtostr_ptr
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	edi,  dword ptr [dword ptr [ruid]]
	mov	dword ptr [rbp - 0x3c], eax
	call	getpwuid
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_417
	movabs	rdi, OFFSET FLAT:label_410
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x40], eax
.label_417:
	movabs	rdi, OFFSET FLAT:label_425
	call	gettext
	movabs	rdi, OFFSET FLAT:rgid
	mov	qword ptr [rbp - 0x48], rax
	call	gidtostr_ptr
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	edi,  dword ptr [dword ptr [rgid]]
	mov	dword ptr [rbp - 0x4c], eax
	call	getgrgid
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_416
	movabs	rdi, OFFSET FLAT:label_410
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x50], eax
.label_416:
	mov	eax,  dword ptr [dword ptr [euid]]
	cmp	eax,  dword ptr [dword ptr [ruid]]
	je	.label_418
	movabs	rdi, OFFSET FLAT:label_427
	call	gettext
	movabs	rdi, OFFSET FLAT:euid
	mov	qword ptr [rbp - 0x58], rax
	call	uidtostr_ptr
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	edi,  dword ptr [dword ptr [euid]]
	mov	dword ptr [rbp - 0x5c], eax
	call	getpwuid
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_414
	movabs	rdi, OFFSET FLAT:label_410
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x60], eax
.label_414:
	jmp	.label_418
.label_418:
	mov	eax,  dword ptr [dword ptr [egid]]
	cmp	eax,  dword ptr [dword ptr [rgid]]
	je	.label_419
	movabs	rdi, OFFSET FLAT:label_424
	call	gettext
	movabs	rdi, OFFSET FLAT:egid
	mov	qword ptr [rbp - 0x68], rax
	call	gidtostr_ptr
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	edi,  dword ptr [dword ptr [egid]]
	mov	dword ptr [rbp - 0x6c], eax
	call	getgrgid
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_415
	movabs	rdi, OFFSET FLAT:label_410
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x70], eax
.label_415:
	jmp	.label_419
.label_419:
	cmp	qword ptr [rbp - 8], 0
	je	.label_421
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_423
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x74], ecx
	jmp	.label_426
.label_423:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_426
.label_426:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_430
.label_412:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	cmp	qword ptr [word ptr [context]],  0
	je	.label_407
	movabs	rdi, OFFSET FLAT:label_406
	call	gettext
	mov	rsi,  qword ptr [word ptr [context]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x98], eax
.label_407:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405446
	.globl sub_405446
	.type sub_405446, @function
sub_405446:

	nop	word ptr [rax + rax]
.label_422:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_431
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x84], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x84]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_413:
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	ecx, al
	and	ecx, 0
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_407
.label_421:
	mov	eax,  dword ptr [dword ptr [egid]]
	mov	dword ptr [rbp - 0x24], eax
.label_430:
	lea	rdx, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x24]
	call	xgetgroups
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_420
	cmp	qword ptr [rbp - 8], 0
	je	.label_422
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_429
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x78], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_413
.label_439:
	mov	al, 1
	test	byte ptr [byte ptr [just_user]],  1
	mov	byte ptr [rbp - 0xa1], al
	jne	.label_435
	mov	al, 1
	test	byte ptr [byte ptr [just_group]],  1
	mov	byte ptr [rbp - 0xa1], al
	jne	.label_435
	mov	al, 1
	test	byte ptr [byte ptr [just_group_list]],  1
	mov	byte ptr [rbp - 0xa1], al
	jne	.label_435
	mov	al,  byte ptr [byte ptr [just_context]]
	mov	byte ptr [rbp - 0xa1], al
.label_435:
	mov	al, byte ptr [rbp - 0xa1]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	test	byte ptr [rbp - 0x31], 1
	je	.label_475
	test	byte ptr [byte ptr [use_real]],  1
	jne	.label_470
	test	byte ptr [byte ptr [use_name]],  1
	je	.label_475
.label_470:
	movabs	rdi, OFFSET FLAT:label_480
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_496:
	mov	byte ptr [byte ptr [use_real]],  1
	jmp	.label_443
.label_482:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	dword ptr [rbp - 0x50], 0xffffffff
	test	byte ptr [byte ptr [just_user]],  1
	je	.label_491
	test	byte ptr [byte ptr [use_real]],  1
	jne	.label_469
	jmp	.label_498
.label_495:
	mov	byte ptr [byte ptr [just_group]],  1
	jmp	.label_443
.label_436:
	mov	edi, 1
	call	usage
.label_503:
	mov	byte ptr [byte ptr [opt_zero]],  1
	jmp	.label_443
.label_461:
	mov	byte ptr [byte ptr [just_group_list]],  1
	jmp	.label_443
.label_449:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_442
	test	byte ptr [byte ptr [just_context]],  1
	je	.label_442
	movabs	rdi, OFFSET FLAT:label_454
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x405669

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x18], 0
	call	is_smack_enabled
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_27
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_489
	movabs	rsi, OFFSET FLAT:label_490
	mov	qword ptr [rbp - 0x58], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_489
	mov	qword ptr [rbp - 0x60], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x68], rax
	call	atexit
	mov	dword ptr [rbp - 0x6c], eax
.label_441:
	movabs	rdx, OFFSET FLAT:label_432
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_449
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x70], eax
	mov	dword ptr [rbp - 0x74], ecx
	je	.label_448
	jmp	.label_455
.label_455:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x78], eax
	je	.label_457
	jmp	.label_463
.label_463:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_461
	jmp	.label_467
.label_467:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x80], eax
	je	.label_472
	jmp	.label_476
.label_476:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x84], eax
	je	.label_478
	jmp	.label_484
.label_484:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x88], eax
	je	.label_495
	jmp	.label_488
.label_488:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_462
	jmp	.label_492
.label_492:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x90], eax
	je	.label_496
	jmp	.label_459
.label_459:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x94], eax
	je	.label_497
	jmp	.label_502
.label_502:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x98], eax
	je	.label_503
	jmp	.label_436
.label_442:
	mov	al,  byte ptr [byte ptr [just_user]]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [just_group]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	mov	al,  byte ptr [byte ptr [just_group_list]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	mov	al,  byte ptr [byte ptr [just_context]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	cmp	ecx, 1
	jle	.label_439
	movabs	rdi, OFFSET FLAT:label_460
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_485:
	jmp	.label_469
.label_469:
	test	byte ptr [byte ptr [just_user]],  1
	je	.label_473
	test	byte ptr [byte ptr [use_real]],  1
	jne	.label_477
	jmp	.label_474
.label_475:
	test	byte ptr [rbp - 0x31], 1
	je	.label_483
	test	byte ptr [byte ptr [opt_zero]],  1
	je	.label_483
	movabs	rdi, OFFSET FLAT:label_487
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_497:
	mov	byte ptr [byte ptr [just_user]],  1
	jmp	.label_443
.label_483:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_437
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_499
	test	byte ptr [rbp - 0x31], 1
	je	.label_437
	movabs	rdi, OFFSET FLAT:label_438
	call	getenv
	cmp	rax, 0
	jne	.label_437
.label_499:
	cmp	dword ptr [rbp - 0x18], 0
	je	.label_440
	movabs	rdi, OFFSET FLAT:context
	call	getcon
	cmp	eax, 0
	je	.label_440
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_452
.label_440:
	test	byte ptr [rbp - 0x19], 1
	je	.label_456
	movabs	rdi, OFFSET FLAT:context
	call	smack_new_label_from_self
	cmp	rax, 0
	jge	.label_456
	test	byte ptr [byte ptr [just_context]],  1
	je	.label_456
.label_452:
	movabs	rdi, OFFSET FLAT:label_500
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_478:
	jmp	.label_443
.label_453:
	jmp	.label_481
.label_481:
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_stuff
.label_494:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl,  byte ptr [byte ptr [ok]]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059cd
	.globl sub_4059cd
	.type sub_4059cd, @function
sub_4059cd:

	nop	dword ptr [rax]
.label_473:
	test	byte ptr [byte ptr [just_group]],  1
	jne	.label_474
	test	byte ptr [byte ptr [just_group_list]],  1
	jne	.label_477
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_474
.label_477:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getuid
	mov	dword ptr [dword ptr [ruid]],  eax
	mov	eax,  dword ptr [dword ptr [ruid]]
	cmp	eax, dword ptr [rbp - 0x4c]
	jne	.label_434
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_434
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_451
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_472:
	cmp	dword ptr [rbp - 0x18], 0
	jne	.label_479
	movabs	rdi, OFFSET FLAT:label_466
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_434:
	jmp	.label_474
.label_474:
	test	byte ptr [byte ptr [just_user]],  1
	jne	.label_481
	test	byte ptr [byte ptr [just_group]],  1
	jne	.label_486
	test	byte ptr [byte ptr [just_group_list]],  1
	jne	.label_486
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_481
.label_486:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getegid
	mov	dword ptr [dword ptr [egid]],  eax
	mov	eax,  dword ptr [dword ptr [egid]]
	cmp	eax, dword ptr [rbp - 0x50]
	jne	.label_444
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_444
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_468
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xcc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_448:
	movabs	rsi, OFFSET FLAT:label_82
	movabs	rdx, OFFSET FLAT:label_358
	movabs	r8, OFFSET FLAT:label_446
	movabs	r9, OFFSET FLAT:label_447
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_491:
	test	byte ptr [byte ptr [just_group]],  1
	jne	.label_469
	test	byte ptr [byte ptr [just_group_list]],  1
	jne	.label_469
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_469
.label_498:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	geteuid
	mov	dword ptr [dword ptr [euid]],  eax
	mov	eax,  dword ptr [dword ptr [euid]]
	cmp	eax, dword ptr [rbp - 0x4c]
	jne	.label_485
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_485
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_501
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_443:
	jmp	.label_441
.label_462:
	mov	byte ptr [byte ptr [use_name]],  1
	jmp	.label_443
.label_444:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getgid
	mov	dword ptr [dword ptr [rgid]],  eax
	mov	eax,  dword ptr [dword ptr [rgid]]
	cmp	eax, dword ptr [rbp - 0x50]
	jne	.label_453
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_453
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_471
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xd0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_456:
	jmp	.label_437
.label_437:
	cmp	qword ptr [rbp - 0x30], 1
	jb	.label_482
	xor	eax, eax
	mov	ecx, 1
	cmp	qword ptr [rbp - 0x30], 1
	cmova	eax, ecx
	cmp	eax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [byte ptr [multiple_users]],  dl
	movsxd	rsi,  dword ptr [dword ptr [optind]]
	add	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rsi
.label_465:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_493
	mov	qword ptr [rbp - 0x40], 0
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax], 0
	je	.label_458
	movabs	rsi, OFFSET FLAT:euid
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	mov	qword ptr [rbp - 0xb0], rcx
	mov	r8, qword ptr [rbp - 0xb0]
	call	parse_user_spec
	cmp	rax, 0
	jne	.label_450
	mov	edi,  dword ptr [dword ptr [euid]]
	call	getpwuid
	mov	qword ptr [rbp - 0x40], rax
.label_450:
	jmp	.label_458
.label_458:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_433
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_464
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb4], esi
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0xc0], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	esi, al
	and	esi, 0
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_445
.label_493:
	jmp	.label_494
.label_433:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax]
	call	xstrdup
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [dword ptr [euid]],  ecx
	mov	dword ptr [dword ptr [ruid]],  ecx
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [dword ptr [egid]],  ecx
	mov	dword ptr [dword ptr [rgid]],  ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_stuff
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
.label_445:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_465
.label_479:
	mov	byte ptr [byte ptr [just_context]],  1
	jmp	.label_443
.label_457:
	xor	edi, edi
	call	usage
.label_504:
	mov	byte ptr [rbp - 1], 0
.label_508:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e5e
	.globl sub_405e5e
	.type sub_405e5e, @function
sub_405e5e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e69
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
	jb	.label_507
	jmp	.label_505
.label_505:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_507
	jmp	.label_506
.label_506:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_504
	jmp	.label_507
.label_507:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_508
	.section	.text
	.align	16
	#Procedure 0x405ec0

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
.label_510:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_509
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_510
.label_509:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f0d
	.globl sub_405f0d
	.type sub_405f0d, @function
sub_405f0d:

	nop	dword ptr [rax]
.label_518:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_516
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_514
	.section	.text
	.align	16
	#Procedure 0x405f3e

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_518
	movabs	rdi, OFFSET FLAT:label_517
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_516:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_514:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_513
	movabs	rsi, OFFSET FLAT:label_515
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_513
	movabs	rsi, OFFSET FLAT:label_511
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_512
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_512:
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406029
	.globl sub_406029
	.type sub_406029, @function
sub_406029:

	nop	dword ptr [rax]
.label_818:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_820:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_548:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_530
.label_817:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_555:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_530
.label_523:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_553
	mov	dword ptr [rbp - 4], 4
	jmp	.label_530
.label_521:
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
	je	.label_519
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_519:
	jmp	.label_520
.label_520:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_530:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40610a
	.globl sub_40610a
	.type sub_40610a, @function
sub_40610a:

	nop	dword ptr [rax + rax]
.label_813:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_541:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_524
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_534
	mov	dword ptr [rbp - 4], 4
	jmp	.label_530
.label_814:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_815:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_540:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_552:
	jmp	.label_538
.label_538:
	jmp	.label_551
.label_551:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_555
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_559]]
	jmp	rcx
.label_810:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_546:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_520
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_526
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_530
.label_557:
	jmp	.label_544
.label_528:
	movabs	rdi, OFFSET FLAT:label_535
	movabs	rsi, OFFSET FLAT:label_536
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_537
	call	__assert_fail
.label_534:
	mov	dword ptr [rbp - 0x4c], 1
.label_524:
	jmp	.label_544
.label_544:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_546
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_530
.label_532:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_554
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_543
.label_812:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_554:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_543
.label_543:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_529:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_523
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_529
.label_816:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_553:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_541
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_548
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_548
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_548
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_557
.label_809:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
.label_811:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_521
	.section	.text
	.align	16
	#Procedure 0x4063f7

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
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
	jg	.label_528
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_528
	jmp	.label_532
.label_526:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_525
	jmp	.label_539
.label_539:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_525
	jmp	.label_542
.label_542:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_525
	jmp	.label_547
.label_547:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_525
	jmp	.label_550
.label_550:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_525
	jmp	.label_556
.label_556:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_525
	jmp	.label_560
.label_560:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_525
	jmp	.label_533
.label_533:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_525
	jmp	.label_558
.label_558:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_525
	jmp	.label_522
.label_522:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_525
	jmp	.label_527
.label_527:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_551
	jmp	.label_525
.label_525:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_538
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_540
	jmp	.label_561
.label_561:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_540
	jmp	.label_549
.label_549:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_552
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_531
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_531:
	jmp	.label_552
.label_819:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_521
	.section	.text
	.align	16
	#Procedure 0x4065e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_562
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_562
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_564
.label_563:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_564:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40662e
	.globl sub_40662e
	.type sub_40662e, @function
sub_40662e:

	nop	word ptr [rax + rax]
.label_562:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_563
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_563
	call	xalloc_die
.label_566:
	jmp	.label_565
.label_565:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_565
	jmp	.label_567
.label_567:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066b8
	.globl sub_4066b8
	.type sub_4066b8, @function
sub_4066b8:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066c1

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_566
	jmp	.label_568
.label_568:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_568
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_567
	.section	.text
	.align	16
	#Procedure 0x406760

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
	je	.label_569
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
.label_569:
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
	.align	16
	#Procedure 0x4068c4
	.globl sub_4068c4
	.type sub_4068c4, @function
sub_4068c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068d0

	.globl gidtostr_ptr_0
	.type gidtostr_ptr_0, @function
gidtostr_ptr_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:gidtostr_ptr.buf
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	call	umaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068f9
	.globl sub_4068f9
	.type sub_4068f9, @function
sub_4068f9:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406900
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_570
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_570:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40692a
	.globl sub_40692a
	.type sub_40692a, @function
sub_40692a:

	nop	word ptr [rax + rax]
.label_574:
	lea	rdi, [rbp - 4]
	call	gidtostr_ptr_0
	mov	qword ptr [rbp - 0x30], rax
.label_572:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	cl, byte ptr [rbp - 0x11]
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, edx
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40696a
	.globl sub_40696a
	.type sub_40696a, @function
sub_40696a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406970

	.globl print_group
	.type print_group, @function
print_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	dword ptr [rbp - 4], edi
	and	al, 1
	mov	byte ptr [rbp - 5], al
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 1
	test	byte ptr [rbp - 5], 1
	je	.label_571
	mov	edi, dword ptr [rbp - 4]
	call	getgrgid
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_575
	movabs	rdi, OFFSET FLAT:label_573
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 4]
	mov	edi, edx
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
.label_575:
	jmp	.label_571
.label_571:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_574
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_572
.label_577:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_576:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a1b
	.globl sub_406a1b
	.type sub_406a1b, @function
sub_406a1b:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a1f

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
	jae	.label_577
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_576
	.section	.text
	.align	16
	#Procedure 0x406a60
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_578
	jmp	.label_580
.label_580:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_579
.label_578:
	mov	byte ptr [rbp - 1], 0
.label_579:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a92
	.globl sub_406a92
	.type sub_406a92, @function
sub_406a92:

	nop	word ptr cs:[rax + rax]
.label_604:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_593
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	call	getugroups
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_592
.label_599:
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_594
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_595
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_595
.label_594:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
.label_595:
	xor	eax, eax
	mov	edi, eax
	movsxd	rsi, dword ptr [rbp - 0x24]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_596
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_583
.label_600:
	jmp	.label_605
.label_605:
	lea	rcx, [rbp - 0x24]
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x30]
	call	getgrouplist
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_601
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x24]
	jne	.label_601
	mov	eax, dword ptr [rbp - 0x24]
	shl	eax, 1
	mov	dword ptr [rbp - 0x24], eax
.label_601:
	mov	rdi, qword ptr [rbp - 0x30]
	movsxd	rsi, dword ptr [rbp - 0x24]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_603
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x5c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_583
.label_597:
	mov	eax, dword ptr [rbp - 0x24]
	cmp	dword ptr [rbp - 0x14], -1
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	dword ptr [rbp - 0x14], -1
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rdi, edx
	shl	rdi, 2
	add	rsi, rdi
	mov	edi, eax
	call	getgroups
	mov	dword ptr [rbp - 0x64], eax
.label_582:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_587
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x68], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x68]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_583
.label_586:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 0x30], rdx
	mov	dword ptr [rax + 4], ecx
.label_588:
	jmp	.label_590
.label_590:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 4
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_591
.label_598:
	jmp	.label_589
.label_589:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_583:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c5e
	.globl sub_406c5e
	.type sub_406c5e, @function
sub_406c5e:

	nop	word ptr cs:[rax + rax]
.label_596:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_597
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	call	getugroups
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_582
	.section	.text
	.align	16
	#Procedure 0x406c8e

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_604
	xor	eax, eax
	mov	edi, eax
	mov	dword ptr [rbp - 0x24], 0xa
	movsxd	rsi, dword ptr [rbp - 0x24]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_600
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_583
.label_602:
	jmp	.label_605
.label_585:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_583
.label_593:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	getgroups
	mov	dword ptr [rbp - 0x60], eax
.label_592:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jge	.label_599
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_585
	xor	eax, eax
	mov	edi, eax
	mov	eax, 1
	mov	esi, eax
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	je	.label_585
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax], edx
	cmp	dword ptr [rbp - 0x14], -1
	setne	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 4], edx
	jmp	.label_583
.label_603:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	eax, dword ptr [rbp - 0x28]
	jg	.label_602
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_583
.label_587:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_584
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_584
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
.label_584:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rcx
	cmp	eax, dword ptr [rbp - 0x28]
	jge	.label_589
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rdx, dword ptr [rbp - 0x28]
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 4
	mov	qword ptr [rbp - 0x50], rax
.label_591:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_598
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 0x48]
	je	.label_581
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	ecx, dword ptr [rax]
	jne	.label_586
.label_581:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, -1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_588
	.section	.text
	.align	16
	#Procedure 0x406e30
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
	.align	16
	#Procedure 0x406e67
	.globl sub_406e67
	.type sub_406e67, @function
sub_406e67:

	nop	word ptr [rax + rax]
.label_607:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_606
.label_608:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_609:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406eae
	.globl sub_406eae
	.type sub_406eae, @function
sub_406eae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ebd

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
	jne	.label_610
	mov	dword ptr [rbp - 4], 0
	jmp	.label_609
.label_610:
	jmp	.label_606
.label_606:
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
	jne	.label_607
	jmp	.label_608
	.section	.text
	.align	16
	#Procedure 0x406f30

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
	je	.label_611
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_612
.label_611:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_612
.label_612:
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
	.align	16
	#Procedure 0x406fd2
	.globl sub_406fd2
	.type sub_406fd2, @function
sub_406fd2:

	nop	word ptr cs:[rax + rax]
.label_614:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_613
.label_613:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ffe
	.globl sub_406ffe
	.type sub_406ffe, @function
sub_406ffe:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407007
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
	je	.label_614
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_613
	.section	.text
	.align	16
	#Procedure 0x407030
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
	.align	16
	#Procedure 0x407055
	.globl sub_407055
	.type sub_407055, @function
sub_407055:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407060
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
	jb	.label_615
	jmp	.label_618
.label_618:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_616
	jmp	.label_615
.label_615:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_617
.label_616:
	mov	byte ptr [rbp - 1], 0
.label_617:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070ae
	.globl sub_4070ae
	.type sub_4070ae, @function
sub_4070ae:

	nop	
.label_621:
	mov	dword ptr [rbp - 4], 0
.label_620:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070c0
	.globl sub_4070c0
	.type sub_4070c0, @function
sub_4070c0:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070c7

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
	jne	.label_619
	test	byte ptr [rbp - 0x13], 1
	je	.label_621
	test	byte ptr [rbp - 0x11], 1
	jne	.label_619
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_621
.label_619:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_622
	call	__errno_location
	mov	dword ptr [rax], 0
.label_622:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_620
	.section	.text
	.align	16
	#Procedure 0x407160

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_623
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_624
.label_623:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 8], rax
.label_624:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071c1
	.globl sub_4071c1
	.type sub_4071c1, @function
sub_4071c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071d0

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
	jne	.label_625
	movabs	rax, OFFSET FLAT:label_27
	mov	qword ptr [rbp - 8], rax
.label_625:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_626
	movabs	rax, OFFSET FLAT:label_627
	mov	qword ptr [rbp - 8], rax
.label_626:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407227
	.globl sub_407227
	.type sub_407227, @function
sub_407227:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407230
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_628
	call	gettext
	movabs	rsi, OFFSET FLAT:label_630
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_631
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_358
	movabs	rdx, OFFSET FLAT:label_356
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_629
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
	.align	16
	#Procedure 0x4072b6
	.globl sub_4072b6
	.type sub_4072b6, @function
sub_4072b6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072c0
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072e8
	.globl sub_4072e8
	.type sub_4072e8, @function
sub_4072e8:

	nop	dword ptr [rax + rax]
.label_632:
	mov	byte ptr [rbp - 1], 0
.label_635:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072fe
	.globl sub_4072fe
	.type sub_4072fe, @function
sub_4072fe:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407303
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
	jb	.label_633
	jmp	.label_634
.label_634:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_632
	jmp	.label_633
.label_633:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_635
.label_643:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x10]
	movsxd	rax, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + rax*4], ecx
.label_645:
	cmp	dword ptr [rbp - 0x20], 0x7fffffff
	jne	.label_648
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_640
.label_650:
	mov	dword ptr [rbp - 0x34], 0
.label_652:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x20]
	jge	.label_639
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_637
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	edx, dword ptr [rax + 0x10]
	jne	.label_637
	jmp	.label_639
.label_648:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
.label_641:
	jmp	.label_651
.label_651:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_654
.label_639:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x20]
	jne	.label_641
	cmp	dword ptr [rbp - 4], 0
	je	.label_645
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_643
	jmp	.label_640
.label_637:
	jmp	.label_649
.label_649:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_652
.label_642:
	jmp	.label_638
.label_644:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_654:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_642
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_650
	jmp	.label_651
	.section	.text
	.align	16
	#Procedure 0x407440

	.globl getugroups
	.type getugroups, @function
getugroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	dword ptr [rbp - 0x20], 0
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_636
	cmp	dword ptr [rbp - 4], 0
	je	.label_646
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + rcx*4], eax
.label_646:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
.label_636:
	call	setgrent
.label_638:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getgrent
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_644
	jmp	.label_647
.label_647:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_653
	mov	dword ptr [rbp - 0x20], 0xffffffff
.label_653:
	jmp	.label_640
.label_640:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], ecx
	call	endgrent
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x3c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074f3
	.globl sub_4074f3
	.type sub_4074f3, @function
sub_4074f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407500
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407527
	.globl sub_407527
	.type sub_407527, @function
sub_407527:

	nop	word ptr [rax + rax]
.label_670:
	mov	dword ptr [rbp - 0x38], 0
.label_658:
	mov	eax, dword ptr [rbp - 0x38]
	cmp	eax, dword ptr [rbp - 0x34]
	jge	.label_655
	movsxd	rax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x18]
	je	.label_656
	movsxd	rax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x1c]
	je	.label_656
	movsx	edi, byte ptr [rbp - 0x1e]
	call	putchar_unlocked
	movsxd	rcx, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rdx + rcx*4]
	mov	sil, byte ptr [rbp - 0x1d]
	and	sil, 1
	movzx	esi, sil
	mov	dword ptr [rbp - 0x60], eax
	call	print_group
	test	al, 1
	jne	.label_659
	mov	byte ptr [rbp - 0x1f], 0
.label_659:
	jmp	.label_656
.label_656:
	jmp	.label_657
.label_657:
	mov	eax, dword ptr [rbp - 0x38]
	add	eax, 1
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_658
.label_661:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_431
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_663:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_668
	.section	.text
	.align	16
	#Procedure 0x4075e8

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, r9b
	mov	r10b, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], edx
	mov	dword ptr [rbp - 0x1c], ecx
	and	r10b, 1
	mov	byte ptr [rbp - 0x1d], r10b
	mov	byte ptr [rbp - 0x1e], al
	mov	byte ptr [rbp - 0x1f], 1
	mov	qword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_660
	mov	edi, dword ptr [rbp - 0x14]
	call	getpwuid
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_664
	mov	byte ptr [rbp - 0x1f], 0
.label_664:
	jmp	.label_660
.label_660:
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	movzx	esi, al
	call	print_group
	test	al, 1
	jne	.label_665
	mov	byte ptr [rbp - 0x1f], 0
.label_665:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_666
	movsx	edi, byte ptr [rbp - 0x1e]
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0x1c]
	mov	cl, byte ptr [rbp - 0x1d]
	and	cl, 1
	movzx	esi, cl
	mov	dword ptr [rbp - 0x3c], eax
	call	print_group
	test	al, 1
	jne	.label_662
	mov	byte ptr [rbp - 0x1f], 0
.label_662:
	jmp	.label_666
.label_666:
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x48], rdi
	je	.label_667
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x4c], ecx
	jmp	.label_669
.label_655:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	cl, byte ptr [rbp - 0x1f]
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_668:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076e0
	.globl sub_4076e0
	.type sub_4076e0, @function
sub_4076e0:

	nop	
.label_667:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x4c], eax
.label_669:
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdx, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, eax
	call	xgetgroups
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_670
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_661
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_429
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x50], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_663
	.section	.text
	.align	16
	#Procedure 0x407750

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
	.align	16
	#Procedure 0x40776b
	.globl sub_40776b
	.type sub_40776b, @function
sub_40776b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407770
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407794
	.globl sub_407794
	.type sub_407794, @function
sub_407794:

	nop	word ptr cs:[rax + rax]
.label_671:
	mov	byte ptr [rbp - 1], 0
.label_674:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077ae
	.globl sub_4077ae
	.type sub_4077ae, @function
sub_4077ae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077b9
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
	jb	.label_672
	jmp	.label_673
.label_673:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_672
	jmp	.label_675
.label_675:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_671
	jmp	.label_672
.label_672:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_674
.label_678:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_679:
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
	.align	16
	#Procedure 0x40784a
	.globl sub_40784a
	.type sub_40784a, @function
sub_40784a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407853

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
	jne	.label_676
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_680
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
.label_680:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_677
	call	xalloc_die
.label_676:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_678
	call	xalloc_die
.label_677:
	jmp	.label_679
	.section	.text
	.align	16
	#Procedure 0x407900
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_681
	jmp	.label_683
.label_683:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_682
.label_681:
	mov	byte ptr [rbp - 1], 0
.label_682:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407932
	.globl sub_407932
	.type sub_407932, @function
sub_407932:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407940

	.globl print_user
	.type print_user, @function
print_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], 0
	test	byte ptr [byte ptr [use_name]],  1
	je	.label_684
	mov	edi, dword ptr [rbp - 4]
	call	getpwuid
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_685
	movabs	rdi, OFFSET FLAT:label_688
	call	gettext
	lea	rdi, [rbp - 4]
	mov	qword ptr [rbp - 0x20], rax
	call	uidtostr_ptr
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	esi, al
	and	esi, 0
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
.label_685:
	jmp	.label_684
.label_684:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_686
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_687
.label_686:
	lea	rdi, [rbp - 4]
	call	uidtostr_ptr
	mov	qword ptr [rbp - 0x28], rax
.label_687:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a15
	.globl sub_407a15
	.type sub_407a15, @function
sub_407a15:

	nop	word ptr cs:[rax + rax]
.label_689:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a2a
	.globl sub_407a2a
	.type sub_407a2a, @function
sub_407a2a:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407a2c

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
	jne	.label_689
	cmp	qword ptr [rbp - 8], 0
	je	.label_689
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407a60

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
.label_691:
	mov	byte ptr [rbp - 1], 0
.label_692:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a7e
	.globl sub_407a7e
	.type sub_407a7e, @function
sub_407a7e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a8c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_691
	jmp	.label_690
.label_690:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_692
.label_694:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_695:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407abb
	.globl sub_407abb
	.type sub_407abb, @function
sub_407abb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ac4

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_694
	jmp	.label_693
.label_693:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_695
.label_697:
	mov	byte ptr [rbp - 1], 0
.label_698:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407afe
	.globl sub_407afe
	.type sub_407afe, @function
sub_407afe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b0c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_697
	jmp	.label_696
.label_696:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_698
	.section	.text
	.align	16
	#Procedure 0x407b30
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_699
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_699:
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
	.align	16
	#Procedure 0x407b6d
	.globl sub_407b6d
	.type sub_407b6d, @function
sub_407b6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407b70
	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b98
	.globl sub_407b98
	.type sub_407b98, @function
sub_407b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ba0
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
	.align	16
	#Procedure 0x407c4d
	.globl sub_407c4d
	.type sub_407c4d, @function
sub_407c4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407c50

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
	.align	16
	#Procedure 0x407c86
	.globl sub_407c86
	.type sub_407c86, @function
sub_407c86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c90
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cb4
	.globl sub_407cb4
	.type sub_407cb4, @function
sub_407cb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cc0

	.globl smack_new_label_from_self
	.type smack_new_label_from_self, @function
smack_new_label_from_self:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cd1
	.globl sub_407cd1
	.type sub_407cd1, @function
sub_407cd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ce0

	.globl gidtostr_ptr
	.type gidtostr_ptr, @function
gidtostr_ptr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	call	umaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d09
	.globl sub_407d09
	.type sub_407d09, @function
sub_407d09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d10
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
	je	.label_700
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_701
.label_700:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_701
.label_701:
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
	.align	16
	#Procedure 0x407dd5
	.globl sub_407dd5
	.type sub_407dd5, @function
sub_407dd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407de0

	.globl uidtostr_ptr
	.type uidtostr_ptr, @function
uidtostr_ptr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:uidtostr_ptr.buf
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	call	umaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e09
	.globl sub_407e09
	.type sub_407e09, @function
sub_407e09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407e10

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
	.align	16
	#Procedure 0x407e2f
	.globl sub_407e2f
	.type sub_407e2f, @function
sub_407e2f:

	nop	
.label_703:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_702:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e4e
	.globl sub_407e4e
	.type sub_407e4e, @function
sub_407e4e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e56

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_704
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_703
.label_704:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_702
	.section	.text
	.align	16
	#Procedure 0x407e90
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
	.align	16
	#Procedure 0x407eb7
	.globl sub_407eb7
	.type sub_407eb7, @function
sub_407eb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ec0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ee4
	.globl sub_407ee4
	.type sub_407ee4, @function
sub_407ee4:

	nop	word ptr cs:[rax + rax]
.label_706:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_705
.label_705:
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
	.align	16
	#Procedure 0x407f34
	.globl sub_407f34
	.type sub_407f34, @function
sub_407f34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f42
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
	je	.label_706
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_705
	.section	.text
	.align	16
	#Procedure 0x407f70

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
	.align	16
	#Procedure 0x407fa8
	.globl sub_407fa8
	.type sub_407fa8, @function
sub_407fa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fb0
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
	.align	16
	#Procedure 0x407fd7
	.globl sub_407fd7
	.type sub_407fd7, @function
sub_407fd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fe0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408007
	.globl sub_408007
	.type sub_408007, @function
sub_408007:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408010

	.globl getcon
	.type getcon, @function
getcon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408034
	.globl sub_408034
	.type sub_408034, @function
sub_408034:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408040
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
	.align	16
	#Procedure 0x40806d
	.globl sub_40806d
	.type sub_40806d, @function
sub_40806d:

	nop	dword ptr [rax]
.label_708:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_707
.label_707:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40808b
	.globl sub_40808b
	.type sub_40808b, @function
sub_40808b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408090
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_708
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_707
	.section	.text
	.align	16
	#Procedure 0x4080b0

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
	.align	16
	#Procedure 0x4080e3
	.globl sub_4080e3
	.type sub_4080e3, @function
sub_4080e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080f0

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
	.align	16
	#Procedure 0x40812f
	.globl sub_40812f
	.type sub_40812f, @function
sub_40812f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408130
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
	.align	16
	#Procedure 0x40814a
	.globl sub_40814a
	.type sub_40814a, @function
sub_40814a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408150
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408183
	.globl sub_408183
	.type sub_408183, @function
sub_408183:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081f5
	.globl sub_4081f5
	.type sub_4081f5, @function
sub_4081f5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408202
	.globl sub_408202
	.type sub_408202, @function
sub_408202:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408226
	.globl sub_408226
	.type sub_408226, @function
sub_408226:

	nop	word ptr cs:[rax + rax]
