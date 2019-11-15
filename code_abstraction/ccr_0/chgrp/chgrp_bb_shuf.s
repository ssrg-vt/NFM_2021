	.section	.text
	.align	32
	#Procedure 0x401a29
	.globl sub_401a29
	.type sub_401a29, @function
sub_401a29:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401a2a
	.globl sub_401a2a
	.type sub_401a2a, @function
sub_401a2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a62
	.globl sub_401a62
	.type sub_401a62, @function
sub_401a62:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401aaa
	.globl sub_401aaa
	.type sub_401aaa, @function
sub_401aaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401acc
	.globl sub_401acc
	.type sub_401acc, @function
sub_401acc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401add
	.globl sub_401add
	.type sub_401add, @function
sub_401add:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401af6
	.globl sub_401af6
	.type sub_401af6, @function
sub_401af6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b00

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	je	.label_9
	call	abort
.label_9:
	jmp	.label_10
.label_10:
	mov	eax, 1
	mov	ecx, 2
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	eax, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0xa8], rsi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b56
	.globl sub_401b56
	.type sub_401b56, @function
sub_401b56:

	nop	word ptr cs:[rax + rax]
.label_26:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_11
.label_13:
	mov	word ptr [rbp - 2], 1
	jmp	.label_12
.label_24:
	jmp	.label_16
.label_16:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_15
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_21
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_18
.label_21:
	mov	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_20
.label_15:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_17
	mov	word ptr [rbp - 2], 0xc
	jmp	.label_12
.label_17:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_19
	mov	word ptr [rbp - 2], 8
	jmp	.label_12
.label_18:
	mov	eax, 2
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi + 0x48]
	and	edi, 0x20
	cmp	edi, 0
	cmovne	eax, ecx
	movsxd	rsi, eax
	sub	rdx, rsi
	mov	qword ptr [rbp - 0x30], rdx
.label_20:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax + 0x108]
	cmp	edx, 0x2e
	jne	.label_13
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_14
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x109]
	cmp	ecx, 0x2e
	jne	.label_13
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_13
.label_14:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	mov	word ptr [rbp - 2], si
	jmp	.label_12
.label_19:
	mov	word ptr [rbp - 2], 3
.label_12:
	movzx	eax, word ptr [rbp - 2]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cc3
	.globl sub_401cc3
	.type sub_401cc3, @function
sub_401cc3:

	nop	word ptr [rax + rax]
.label_23:
	jmp	.label_16
	.section	.text
	.align	32
	#Procedure 0x401cce

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x58], 0
	jne	.label_22
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 1
	cmp	ecx, 0
	je	.label_22
	mov	byte ptr [rbp - 0x19], 1
.label_22:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_27
	test	byte ptr [rbp - 0x19], 1
	je	.label_25
.label_27:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	call	stat
	cmp	eax, 0
	je	.label_23
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_26
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	jne	.label_26
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	word ptr [rbp - 2], 0xd
	jmp	.label_12
.label_25:
	mov	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	call	fstatat
	cmp	eax, 0
	je	.label_24
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
.label_11:
	xor	esi, esi
	mov	eax, 0x90
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memset
	mov	word ptr [rbp - 2], 0xa
	jmp	.label_12
.label_30:
	mov	eax, 0x20
	mov	edi, eax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_32
	mov	byte ptr [rbp - 1], 0
	jmp	.label_28
	.section	.text
	.align	32
	#Procedure 0x401e0c

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_30
	mov	eax, 0x1f
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:AD_hash
	movabs	rcx, OFFSET FLAT:AD_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_31
	mov	byte ptr [rbp - 1], 0
	jmp	.label_28
.label_32:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_29:
	mov	byte ptr [rbp - 1], 1
.label_28:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e9a
	.globl sub_401e9a
	.type sub_401e9a, @function
sub_401e9a:

	nop	
.label_31:
	jmp	.label_29
	.section	.text
	.align	32
	#Procedure 0x401ea0
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
	je	.label_33
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_34
.label_33:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_34
.label_34:
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
	#Procedure 0x401f65
	.globl sub_401f65
	.type sub_401f65, @function
sub_401f65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f70

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
	jne	.label_35
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_35:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_37
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_36
.label_37:
	call	abort
.label_36:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
.label_38:
	mov	byte ptr [rbp - 1], 0
.label_42:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fee
	.globl sub_401fee
	.type sub_401fee, @function
sub_401fee:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ff9
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
	jb	.label_39
	jmp	.label_41
.label_41:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_39
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_38
	jmp	.label_39
.label_39:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_42
	.section	.text
	.align	32
	#Procedure 0x402050

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
	je	.label_48
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_45
.label_51:
	movabs	rsi, OFFSET FLAT:label_47
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_52
	movabs	rax, OFFSET FLAT:label_43
	movabs	rcx, OFFSET FLAT:label_44
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_45
.label_52:
	movabs	rax, OFFSET FLAT:label_49
	movabs	rcx, OFFSET FLAT:label_50
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_45:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020f8
	.globl sub_4020f8
	.type sub_4020f8, @function
sub_4020f8:

	nop	dword ptr [rax + rax]
.label_48:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_46
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_51
	movabs	rax, OFFSET FLAT:label_53
	movabs	rcx, OFFSET FLAT:label_54
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_45
.label_57:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_55
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_58
	.section	.text
	.align	32
	#Procedure 0x402167

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_57
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_56
.label_55:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_58:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_56:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021bc
	.globl sub_4021bc
	.type sub_4021bc, @function
sub_4021bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021c0

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
	jne	.label_59
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_59:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_60
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_60
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_60
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_61
.label_60:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_61:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402261
	.globl sub_402261
	.type sub_402261, @function
sub_402261:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402270

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_62
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 1
	cmp	edx, 0
	mov	byte ptr [rbp - 0x11], al
	je	.label_64
.label_62:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0x12], cl
	je	.label_63
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x12], cl
	je	.label_63
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	setne	cl
	mov	byte ptr [rbp - 0x12], cl
.label_63:
	mov	al, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0x11], al
.label_64:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022fa
	.globl sub_4022fa
	.type sub_4022fa, @function
sub_4022fa:

	nop	word ptr [rax + rax]
.label_67:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_65:
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
	#Procedure 0x40233a
	.globl sub_40233a
	.type sub_40233a, @function
sub_40233a:

	nop	word ptr [rax + rax]
.label_69:
	jmp	.label_65
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
	#Procedure 0x402369

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
	jne	.label_66
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
.label_66:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_69
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4023f0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_76:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_75
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_70
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_74:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_73
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_74
.label_75:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402469
	.globl sub_402469
	.type sub_402469, @function
sub_402469:

	nop	word ptr [rax + rax]
.label_73:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_72
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_72:
	jmp	.label_70
.label_70:
	jmp	.label_71
.label_71:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_76
	.section	.text
	.align	32
	#Procedure 0x4024a0

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	add	rdx, 0x10f
	and	rdx, 0xfffffffffffffff8
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_78
	mov	qword ptr [rbp - 8], 0
	jmp	.label_77
.label_78:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rax + 0x108], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	word ptr [rax + 0x72], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	word ptr [rax + 0x74], 3
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_77:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402596
	.globl sub_402596
	.type sub_402596, @function
sub_402596:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025a0
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
	#Procedure 0x4025ca
	.globl sub_4025ca
	.type sub_4025ca, @function
sub_4025ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025d0

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
	#Procedure 0x402642
	.globl sub_402642
	.type sub_402642, @function
sub_402642:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402650

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_86
	jmp	.label_88
.label_88:
	movabs	rdi, OFFSET FLAT:label_89
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
.label_86:
	movabs	rdi, OFFSET FLAT:label_87
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_79
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_90
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_80
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_92
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
	movabs	rdi, OFFSET FLAT:label_93
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_82
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_94
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_84
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_95
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_85
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_91
	mov	dword ptr [rbp - 0x44], eax
	call	emit_ancillary_info
.label_83:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402866
	.globl sub_402866
	.type sub_402866, @function
sub_402866:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028a2
	.globl sub_4028a2
	.type sub_4028a2, @function
sub_4028a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028b0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	add	esi, ecx
	and	esi, 3
	mov	dword ptr [rbp - 0x10], esi
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdx + rdi*4]
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	esi, dword ptr [rbp - 0x10]
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x14], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	cmp	ecx, dword ptr [rdx + 0x18]
	jne	.label_96
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x1c]
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	add	ecx, esi
	and	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x18], ecx
.label_96:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 0
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402940

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x1c]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402956
	.globl sub_402956
	.type sub_402956, @function
sub_402956:

	nop	word ptr cs:[rax + rax]
.label_99:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_97
	.section	.text
	.align	32
	#Procedure 0x402986

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
	jne	.label_98
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_98
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_98
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_99
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_97
.label_98:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_97:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a22
	.globl sub_402a22
	.type sub_402a22, @function
sub_402a22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a30

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a59
	.globl sub_402a59
	.type sub_402a59, @function
sub_402a59:

	nop	dword ptr [rax]
.label_113:
	jmp	.label_100
.label_100:
	jmp	.label_102
.label_102:
	jmp	.label_103
.label_103:
	jmp	.label_104
.label_104:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_101
.label_111:
	mov	dword ptr [rbp - 4], 1
.label_101:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a90
	.globl sub_402a90
	.type sub_402a90, @function
sub_402a90:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a9d

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	filesystem_type
	mov	rdi, rax
	test	rax, rax
	mov	qword ptr [rbp - 0x20], rdi
	je	.label_113
	jmp	.label_106
.label_106:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0x28], rax
	je	.label_103
	jmp	.label_112
.label_112:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0x30], rax
	je	.label_104
	jmp	.label_110
.label_110:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x38], rax
	je	.label_108
	jmp	.label_109
.label_109:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x40], rax
	je	.label_100
	jmp	.label_107
.label_107:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x48], rax
	je	.label_108
	jmp	.label_105
.label_105:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x50], rdx
	je	.label_102
	jmp	.label_111
.label_108:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_101
	.section	.text
	.align	32
	#Procedure 0x402b70

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ba4
	.globl sub_402ba4
	.type sub_402ba4, @function
sub_402ba4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bb0
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
	jb	.label_114
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_115
.label_114:
	call	xalloc_die
.label_115:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c06
	.globl sub_402c06
	.type sub_402c06, @function
sub_402c06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rdi + 0x48]
	and	esi, 0x200
	cmp	esi, 0
	jne	.label_125
	mov	qword ptr [rbp - 8], 0
	jmp	.label_119
.label_121:
	jmp	.label_123
.label_123:
	jmp	.label_126
.label_118:
	jmp	.label_124
.label_124:
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_128
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x14]
	call	fstatfs
	cmp	eax, 0
	je	.label_117
.label_128:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_119
.label_125:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_122
	mov	eax, 0xd
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_type_hash
	movabs	rcx, OFFSET FLAT:dev_type_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x28], rax
.label_122:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_124
	lea	rax, [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_118
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_119
.label_127:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	call	free
.label_126:
	jmp	.label_129
.label_129:
	jmp	.label_116
.label_116:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 8], rax
.label_119:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d5e
	.globl sub_402d5e
	.type sub_402d5e, @function
sub_402d5e:

	nop	dword ptr [rax + rax]
.label_117:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_116
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	je	.label_129
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_127
	jmp	.label_120
.label_120:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_121
	call	abort
.label_130:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dfa
	.globl sub_402dfa
	.type sub_402dfa, @function
sub_402dfa:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402dfc

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
	jne	.label_130
	cmp	qword ptr [rbp - 8], 0
	je	.label_130
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402e30
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_131
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_131:
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
	#Procedure 0x402e6d
	.globl sub_402e6d
	.type sub_402e6d, @function
sub_402e6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e70

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e82
	.globl sub_402e82
	.type sub_402e82, @function
sub_402e82:

	nop	word ptr cs:[rax + rax]
.label_134:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_133:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ec2

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	movabs	rax, OFFSET FLAT:label_132
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	lstat
	cmp	eax, 0
	je	.label_134
	mov	qword ptr [rbp - 8], 0
	jmp	.label_133
	.section	.text
	.align	32
	#Procedure 0x402f00
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_135
	jmp	.label_137
.label_137:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_136
.label_135:
	mov	byte ptr [rbp - 1], 0
.label_136:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f32
	.globl sub_402f32
	.type sub_402f32, @function
sub_402f32:

	nop	word ptr cs:[rax + rax]
.label_145:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_138
	jmp	.label_140
.label_142:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_145
	jmp	.label_140
.label_141:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_144
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_144:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_142
	jmp	.label_140
.label_140:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_139:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ff0
	.globl sub_402ff0
	.type sub_402ff0, @function
sub_402ff0:

	nop	dword ptr [rax]
.label_138:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x40306a

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_143
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_143:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_146
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_146:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_141
	mov	qword ptr [rbp - 8], 0
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x4030e0

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	filesystem_type
	mov	rdi, rax
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rax
	je	.label_148
	jmp	.label_151
.label_151:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x30], rax
	je	.label_148
	jmp	.label_147
.label_147:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
	jne	.label_150
	jmp	.label_148
.label_148:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_149
.label_150:
	mov	byte ptr [rbp - 1], 1
.label_149:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403165
	.globl sub_403165
	.type sub_403165, @function
sub_403165:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403170

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	getpwuid
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_152
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_153
.label_152:
	lea	rsi, [rbp - 0x20]
	mov	eax, dword ptr [rbp - 4]
	mov	edi, eax
	call	umaxtostr
	mov	qword ptr [rbp - 0x30], rax
.label_153:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	xstrdup
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031c6
	.globl sub_4031c6
	.type sub_4031c6, @function
sub_4031c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031d0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403212
	.globl sub_403212
	.type sub_403212, @function
sub_403212:

	nop	word ptr cs:[rax + rax]
.label_159:
	jmp	.label_154
.label_154:
	jmp	.label_156
.label_156:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_158
.label_160:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_158:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_157
	call	abort
.label_155:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403267
	.globl sub_403267
	.type sub_403267, @function
sub_403267:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40326a
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_160
	mov	qword ptr [rbp - 8], 0
	jmp	.label_155
.label_157:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_159
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_155
	.section	.text
	.align	32
	#Procedure 0x4032b0

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
	#Procedure 0x4032d8
	.globl sub_4032d8
	.type sub_4032d8, @function
sub_4032d8:

	nop	dword ptr [rax + rax]
.label_163:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_161
.label_161:
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
	je	.label_162
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_162:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403403
	.globl sub_403403
	.type sub_403403, @function
sub_403403:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40340f

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
	je	.label_163
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_161
	.section	.text
	.align	32
	#Procedure 0x403440
	.globl chopt_free
	.type chopt_free, @function
chopt_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40346c
	.globl sub_40346c
	.type sub_40346c, @function
sub_40346c:

	nop	dword ptr [rax]
.label_180:
	mov	dword ptr [rbp - 0x1c], 2
	jmp	.label_174
.label_191:
	mov	dword ptr [rbp - 0x1c], 0x10
.label_192:
	mov	eax, 2
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x20], 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x38], dl
	mov	esi, dword ptr [rbp - 8]
	sub	esi,  dword ptr [dword ptr [optind]]
	cmp	qword ptr [word ptr [reference_file]],  0
	cmovne	eax, ecx
	cmp	esi, eax
	jge	.label_194
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_206
	movabs	rdi, OFFSET FLAT:label_203
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_213
.label_206:
	movabs	rdi, OFFSET FLAT:label_182
	call	gettext
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x150], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_213:
	mov	edi, 1
	call	usage
.label_198:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rdx, qword ptr [rbp - 0xe8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	je	.label_183
	mov	rdi, qword ptr [rbp - 0xe8]
	call	xstrdup
	mov	qword ptr [rbp - 0x168], rax
	jmp	.label_167
.label_184:
	mov	dword ptr [rbp - 0x48], 0
	jmp	.label_174
.label_175:
	mov	dword ptr [rbp - 0x1c], 0x11
	jmp	.label_174
.label_172:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_174
.label_181:
	mov	byte ptr [rbp - 0x37], 1
	jmp	.label_174
.label_185:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [reference_file]],  rax
	jmp	.label_174
.label_211:
	mov	dword ptr [rbp - 0x20], 0
	jmp	.label_174
.label_188:
	mov	dword ptr [rbp - 0x1c], 0x10
	jmp	.label_174
.label_195:
	mov	byte ptr [rbp - 0x44], 1
	jmp	.label_174
.label_201:
	mov	dword ptr [rbp - 0x48], 1
	jmp	.label_174
.label_186:
	jmp	.label_170
.label_170:
	mov	eax, 0xffffffff
	lea	rcx, [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x1c]
	or	edx, 0x400
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	shl	rdi, 3
	add	rsi, rdi
	mov	edx, dword ptr [rbp - 0x1c]
	mov	r8d, dword ptr [rbp - 0x18]
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, eax
	mov	qword ptr [rbp - 0x180], rcx
	mov	ecx, r8d
	mov	r8d, eax
	mov	r9d, eax
	mov	r10, qword ptr [rbp - 0x180]
	mov	qword ptr [rsp], r10
	call	chown_files
	mov	ecx, 1
	xor	edx, edx
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	cmovne	ecx, edx
	mov	eax, ecx
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40366f
	.globl sub_40366f
	.type sub_40366f, @function
sub_40366f:

	nop	
.label_178:
	mov	edi, 1
	call	usage
.label_214:
	test	byte ptr [rbp - 0x44], 1
	je	.label_191
	cmp	dword ptr [rbp - 0x1c], 0x10
	jne	.label_196
	cmp	dword ptr [rbp - 0x20], 1
	jne	.label_197
	movabs	rdi, OFFSET FLAT:label_199
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_215:
	movabs	rsi, OFFSET FLAT:label_91
	movabs	rdx, OFFSET FLAT:label_207
	movabs	r8, OFFSET FLAT:label_208
	movabs	r9, OFFSET FLAT:label_209
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_165:
	mov	dword ptr [rbp - 0x20], 1
	jmp	.label_174
	.section	.text
	.align	32
	#Procedure 0x403721

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 0
	mov	dword ptr [rbp - 0x1c], 0x10
	mov	dword ptr [rbp - 0x20], 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_217
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_218
	movabs	rsi, OFFSET FLAT:label_219
	mov	qword ptr [rbp - 0xf0], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_218
	mov	qword ptr [rbp - 0xf8], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x100], rax
	call	atexit
	lea	rdi, [rbp - 0x48]
	mov	dword ptr [rbp - 0x104], eax
	call	chopt_init
.label_166:
	movabs	rdx, OFFSET FLAT:label_202
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x50], eax
	cmp	eax, -1
	je	.label_214
	mov	eax, dword ptr [rbp - 0x50]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x108], eax
	mov	dword ptr [rbp - 0x10c], ecx
	je	.label_215
	jmp	.label_168
.label_168:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x110], eax
	je	.label_169
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x114], eax
	je	.label_175
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x118], eax
	je	.label_180
	jmp	.label_187
.label_187:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_188
	jmp	.label_193
.label_193:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x120], eax
	je	.label_195
	jmp	.label_200
.label_200:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x124], eax
	je	.label_201
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x128], eax
	je	.label_181
	jmp	.label_210
.label_210:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x12c], eax
	je	.label_211
	jmp	.label_189
.label_189:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x130], eax
	je	.label_184
	jmp	.label_164
.label_164:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x134], eax
	je	.label_165
	jmp	.label_171
.label_171:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x138], eax
	je	.label_172
	jmp	.label_176
.label_176:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_177
	jmp	.label_216
.label_216:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x140], eax
	je	.label_185
	jmp	.label_178
.label_197:
	mov	dword ptr [rbp - 0x20], 0
.label_196:
	jmp	.label_192
.label_169:
	xor	edi, edi
	call	usage
.label_177:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_174
.label_194:
	cmp	qword ptr [word ptr [reference_file]],  0
	je	.label_198
	lea	rsi, [rbp - 0xe0]
	mov	rdi,  qword ptr [word ptr [reference_file]]
	call	stat
	cmp	eax, 0
	je	.label_205
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_190
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [reference_file]]
	mov	qword ptr [rbp - 0x160], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x154]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_174:
	jmp	.label_166
.label_183:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x168], rcx
	jmp	.label_167
.label_167:
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0xe8]
	call	parse_group
	mov	dword ptr [rbp - 0x18], eax
.label_212:
	test	byte ptr [rbp - 0x44], 1
	je	.label_170
	test	byte ptr [rbp - 0x11], 1
	je	.label_170
	movabs	rdi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_186
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_190
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x16c], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_132
	mov	qword ptr [rbp - 0x178], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_205:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	dword ptr [rbp - 0x18], eax
	mov	edi, dword ptr [rbp - 0xc0]
	call	gid_to_name
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_212
	.section	.text
	.align	32
	#Procedure 0x403ae0
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b17
	.globl sub_403b17
	.type sub_403b17, @function
sub_403b17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b20

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
	je	.label_220
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_223
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_224
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_221
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_222
.label_224:
	mov	byte ptr [rbp - 5], 0
.label_222:
	jmp	.label_220
.label_220:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b93
	.globl sub_403b93
	.type sub_403b93, @function
sub_403b93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ba0
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bc7
	.globl sub_403bc7
	.type sub_403bc7, @function
sub_403bc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bd0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_225
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_225
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_227
.label_226:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_227:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c1e
	.globl sub_403c1e
	.type sub_403c1e, @function
sub_403c1e:

	nop	word ptr [rax + rax]
.label_225:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_226
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_226
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c50

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_229:
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_empty
	xor	al, 0xff
	test	al, 1
	jne	.label_228
	jmp	.label_231
.label_228:
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc], eax
	cmp	ecx, dword ptr [rbp - 0xc]
	jg	.label_230
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_230:
	jmp	.label_229
.label_231:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ca1
	.globl sub_403ca1
	.type sub_403ca1, @function
sub_403ca1:

	nop	word ptr cs:[rax + rax]
.label_236:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x20]
	movabs	r8, OFFSET FLAT:label_217
	mov	rdi, qword ptr [rbp - 8]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_234
	mov	eax, 0xffffffff
	mov	ecx, eax
	cmp	qword ptr [rbp - 0x20], rcx
	jbe	.label_232
.label_234:
	movabs	rdi, OFFSET FLAT:label_233
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_232:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xc], ecx
.label_237:
	call	endgrent
.label_235:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d32
	.globl sub_403d32
	.type sub_403d32, @function
sub_403d32:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d39

	.globl parse_group
	.type parse_group, @function
parse_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0xffffffff
	mov	rdi, qword ptr [rbp - 8]
	cmp	byte ptr [rdi], 0
	je	.label_235
	mov	rdi, qword ptr [rbp - 8]
	call	getgrnam
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_236
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0xc], ecx
	jmp	.label_237
.label_239:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_238
.label_238:
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
	#Procedure 0x403df3
	.globl sub_403df3
	.type sub_403df3, @function
sub_403df3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e01

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
	je	.label_239
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_238
.label_246:
	jmp	.label_256
.label_256:
	jmp	.label_244
.label_244:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_259
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_245
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_240
.label_260:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_241
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_241:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_248:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_250]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_251
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_240
.label_254:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_252
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_255
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_255:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_240
.label_251:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_249]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_242
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_240
.label_245:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_240
.label_252:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_253
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_253:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_257
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_257:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_244
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_258
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_258:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_247
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_247:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_256
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_260
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_243
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_243:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_248
.label_242:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_246
	call	abort
.label_259:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_240:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40429c
	.globl sub_40429c
	.type sub_40429c, @function
sub_40429c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042a9

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_254
	call	abort
.label_263:
	jmp	.label_261
.label_261:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042e3
	.globl sub_4042e3
	.type sub_4042e3, @function
sub_4042e3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042e9

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
	ja	.label_263
	jmp	.label_262
.label_262:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_261
	.section	.text
	.align	32
	#Procedure 0x404320

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	dec	esi
	mov	edi, esi
	sub	esi, 0xb
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x1c], esi
	ja	.label_264
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_266]]
	jmp	rcx
.label_1447:
	mov	dword ptr [rbp - 0x10], 0xc000
	jmp	.label_265
.label_1445:
	mov	dword ptr [rbp - 0x10], 0x8000
	jmp	.label_265
.label_1441:
	mov	dword ptr [rbp - 0x10], 0x1000
	jmp	.label_265
.label_1444:
	mov	dword ptr [rbp - 0x10], 0x6000
	jmp	.label_265
.label_264:
	mov	dword ptr [rbp - 0x10], 0
.label_265:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_1442:
	mov	dword ptr [rbp - 0x10], 0x2000
	jmp	.label_265
.label_1443:
	mov	dword ptr [rbp - 0x10], 0x4000
	jmp	.label_265
.label_1446:
	mov	dword ptr [rbp - 0x10], 0xa000
	jmp	.label_265
	.section	.text
	.align	32
	#Procedure 0x4043c0

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
	#Procedure 0x4043db
	.globl sub_4043db
	.type sub_4043db, @function
sub_4043db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0
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
	#Procedure 0x40440d
	.globl sub_40440d
	.type sub_40440d, @function
sub_40440d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404410
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
	#Procedure 0x404437
	.globl sub_404437
	.type sub_404437, @function
sub_404437:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404440
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
	#Procedure 0x40446f
	.globl sub_40446f
	.type sub_40446f, @function
sub_40446f:

	nop	
.label_267:
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
	#Procedure 0x40449a
	.globl sub_40449a
	.type sub_40449a, @function
sub_40449a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a6

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
	jne	.label_267
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4044e0

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
	jne	.label_268
	movabs	rax, OFFSET FLAT:label_217
	mov	qword ptr [rbp - 8], rax
.label_268:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_269
	movabs	rax, OFFSET FLAT:label_270
	mov	qword ptr [rbp - 8], rax
.label_269:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404537
	.globl sub_404537
	.type sub_404537, @function
sub_404537:

	nop	word ptr [rax + rax]
.label_1370:
	movabs	rdi, OFFSET FLAT:label_271
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
	jmp	.label_272
.label_1371:
	movabs	rdi, OFFSET FLAT:label_289
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
	jmp	.label_272
.label_1368:
	jmp	.label_272
.label_1372:
	movabs	rdi, OFFSET FLAT:label_278
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
	jmp	.label_272
.label_1375:
	movabs	rdi, OFFSET FLAT:label_282
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
	jmp	.label_272
.label_1376:
	movabs	rdi, OFFSET FLAT:label_273
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
	jmp	.label_272
.label_1374:
	movabs	rdi, OFFSET FLAT:label_284
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
	jmp	.label_272
.label_1373:
	movabs	rdi, OFFSET FLAT:label_286
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
	jmp	.label_272
.label_274:
	movabs	rsi, OFFSET FLAT:label_283
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_279:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_276
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
	mov	ecx, OFFSET FLAT:label_288
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
	ja	.label_280
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_287]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x404902

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
	je	.label_274
	movabs	rsi, OFFSET FLAT:label_285
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_279
.label_1377:
	movabs	rdi, OFFSET FLAT:label_281
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
	jmp	.label_272
.label_1369:
	movabs	rdi, OFFSET FLAT:label_277
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
	jmp	.label_272
.label_280:
	movabs	rdi, OFFSET FLAT:label_275
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
.label_272:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404aff
	.globl sub_404aff
	.type sub_404aff, @function
sub_404aff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b22
	.globl sub_404b22
	.type sub_404b22, @function
sub_404b22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b30
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b57
	.globl sub_404b57
	.type sub_404b57, @function
sub_404b57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b60

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
	#Procedure 0x404b9f
	.globl sub_404b9f
	.type sub_404b9f, @function
sub_404b9f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bb2
	.globl sub_404bb2
	.type sub_404bb2, @function
sub_404bb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl lchownat
	.type lchownat, @function
lchownat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8d, 0x100
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	call	fchownat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bf3
	.globl sub_404bf3
	.type sub_404bf3, @function
sub_404bf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c00

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
.label_294:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0xb8]
	jne	.label_304
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_291
.label_304:
	mov	dword ptr [rbp - 0x2c], 4
	jmp	.label_290
.label_291:
	cmp	dword ptr [rbp - 0x24], -1
	je	.label_299
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 0xa4]
	jne	.label_293
.label_299:
	cmp	dword ptr [rbp - 0x28], -1
	je	.label_303
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax, dword ptr [rbp - 0xa0]
	jne	.label_293
.label_303:
	mov	edi, dword ptr [rbp - 0xc8]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	edx, dword ptr [rbp - 0x20]
	call	fchown
	cmp	eax, 0
	jne	.label_300
	mov	edi, dword ptr [rbp - 0xc8]
	call	close
	mov	edi, 6
	mov	ecx, 2
	cmp	eax, 0
	cmove	edi, ecx
	mov	dword ptr [rbp - 0x2c], edi
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_297
.label_305:
	mov	dword ptr [rbp - 4], 5
	jmp	.label_297
	.section	.text
	.align	32
	#Procedure 0x404ce6

	.globl restricted_chown
	.type restricted_chown, @function
restricted_chown:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	eax, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	dword ptr [rbp - 0x20], r8d
	mov	dword ptr [rbp - 0x24], r9d
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], 2
	mov	dword ptr [rbp - 0xc4], 0x900
	cmp	dword ptr [rbp - 0x24], -1
	jne	.label_302
	cmp	dword ptr [rbp - 0x28], -1
	jne	.label_302
	mov	dword ptr [rbp - 4], 5
	jmp	.label_297
.label_295:
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 0xc8]
	call	fstat
	cmp	eax, 0
	je	.label_294
	mov	dword ptr [rbp - 0x2c], 6
	jmp	.label_298
.label_302:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_301
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_305
	mov	eax, dword ptr [rbp - 0xc4]
	or	eax, 0x10000
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_296
.label_300:
	mov	dword ptr [rbp - 0x2c], 6
	jmp	.label_293
.label_293:
	jmp	.label_290
.label_290:
	jmp	.label_298
.label_298:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], ecx
	mov	edi, dword ptr [rbp - 0xc8]
	call	close
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xd0], eax
	mov	dword ptr [rbp - 0xd4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xd4]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], ecx
.label_297:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e0c
	.globl sub_404e0c
	.type sub_404e0c, @function
sub_404e0c:

	nop	dword ptr [rax + rax]
.label_296:
	jmp	.label_301
.label_301:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0xc4]
	or	eax, 0
	mov	edx, eax
	mov	al, 0
	call	openat
	xor	edx, edx
	mov	dword ptr [rbp - 0xc8], eax
	cmp	edx, dword ptr [rbp - 0xc8]
	jle	.label_295
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	jne	.label_292
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_292
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0xc4]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	openat
	xor	edx, edx
	mov	dword ptr [rbp - 0xc8], eax
	cmp	edx, eax
	jle	.label_295
.label_292:
	call	__errno_location
	mov	ecx, 6
	mov	edx, 5
	cmp	dword ptr [rax], 0xd
	cmove	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_297
.label_317:
	jmp	.label_310
.label_310:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_309:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_306
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_307:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_314
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_307
.label_306:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_318:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_313
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_318
	.section	.text
	.align	32
	#Procedure 0x404f4a

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_310
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_310
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_316:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_317
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_311
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_308:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_315
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_308
.label_313:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ff5
	.globl sub_404ff5
	.type sub_404ff5, @function
sub_404ff5:

	nop	word ptr cs:[rax + rax]
.label_314:
	jmp	.label_319
.label_319:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_309
.label_315:
	jmp	.label_311
.label_311:
	jmp	.label_312
.label_312:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_316
.label_323:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405066
	.globl sub_405066
	.type sub_405066, @function
sub_405066:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405069

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_320:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_322
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_322:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_321
	jmp	.label_323
.label_321:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_320
.label_331:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40510e
	.globl sub_40510e
	.type sub_40510e, @function
sub_40510e:

	nop	dword ptr [rax]
.label_325:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_330
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_330:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_326:
	jmp	.label_327
.label_327:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_328
	.section	.text
	.align	32
	#Procedure 0x405162
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_328:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_331
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_326
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_329:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_325
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_324
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_324:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_329
	.section	.text
	.align	32
	#Procedure 0x405210
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_332
	call	gettext
	movabs	rsi, OFFSET FLAT:label_334
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_335
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_207
	movabs	rdx, OFFSET FLAT:label_336
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_333
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
	#Procedure 0x405296
	.globl sub_405296
	.type sub_405296, @function
sub_405296:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0

	.globl sub_4052a0
	.type sub_4052a0, @function
sub_4052a0:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_337
.label_339:
	mov	byte ptr [rbp - 1], 0
.label_337:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052b7
	.globl sub_4052b7
	.type sub_4052b7, @function
sub_4052b7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052c6
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
	ja	.label_339
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_338]]
	jmp	rcx
.label_341:
	mov	qword ptr [rbp - 8], 0
.label_340:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405302
	.globl sub_405302
	.type sub_405302, @function
sub_405302:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405308

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_343
	mov	qword ptr [rbp - 8], 0
	jmp	.label_340
.label_346:
	jmp	.label_342
.label_342:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_344
.label_343:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_344:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_341
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_345
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_345
	jmp	.label_346
.label_345:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_340
.label_352:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_353:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_358
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_348
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_348
	jmp	.label_359
.label_348:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_347
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_347:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_351
.label_359:
	jmp	.label_355
.label_355:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_353
.label_354:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_349
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_349
	jmp	.label_352
.label_349:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_350
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_357
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_356
	.section	.text
	.align	32
	#Procedure 0x4054f2

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_354
	mov	qword ptr [rbp - 8], 0
	jmp	.label_351
.label_357:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_356:
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_351
.label_358:
	mov	qword ptr [rbp - 8], 0
.label_351:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405573
	.globl sub_405573
	.type sub_405573, @function
sub_405573:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405580

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_360
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_360:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055d7
	.globl sub_4055d7
	.type sub_4055d7, @function
sub_4055d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_361
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_362
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, rax
	add	rdi, 1
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	stpcpy
	mov	ecx, OFFSET FLAT:label_365
	mov	esi, ecx
	mov	rdi, rax
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	stpcpy
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_363
.label_361:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_366
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
.label_366:
	jmp	.label_364
.label_364:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405694
	.globl sub_405694
	.type sub_405694, @function
sub_405694:

	nop	
	nop	dword ptr [rax + rax]
.label_362:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
.label_363:
	jmp	.label_364
.label_369:
	mov	dword ptr [rbp - 4], 0
.label_368:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056c0
	.globl sub_4056c0
	.type sub_4056c0, @function
sub_4056c0:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056c7

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
	jne	.label_367
	test	byte ptr [rbp - 0x13], 1
	je	.label_369
	test	byte ptr [rbp - 0x11], 1
	jne	.label_367
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_369
.label_367:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_370
	call	__errno_location
	mov	dword ptr [rax], 0
.label_370:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_368
.label_371:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40577b
	.globl sub_40577b
	.type sub_40577b, @function
sub_40577b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405780
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_371
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_372
	.section	.text
	.align	32
	#Procedure 0x4057a0

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
.label_374:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_373
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_374
.label_373:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057ed
	.globl sub_4057ed
	.type sub_4057ed, @function
sub_4057ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4057f0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_375
	cmp	dword ptr [rbp - 0x1c], 1
	je	.label_375
	cmp	dword ptr [rbp - 0x1c], 2
	je	.label_375
	cmp	dword ptr [rbp - 0x1c], 3
	je	.label_375
	cmp	dword ptr [rbp - 0x1c], 4
	je	.label_375
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 1
	jmp	.label_376
.label_375:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	word ptr [rdx + 0x74], cx
	mov	dword ptr [rbp - 4], 0
.label_376:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40586a
	.globl sub_40586a
	.type sub_40586a, @function
sub_40586a:

	nop	word ptr [rax + rax]
.label_378:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_377:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405882
	.globl sub_405882
	.type sub_405882, @function
sub_405882:

	nop	word ptr cs:[rax + rax]
.label_381:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_249]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_380:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_378
	mov	qword ptr [rbp - 8], 0
	jmp	.label_377
	.section	.text
	.align	32
	#Procedure 0x4058f3

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_380
	movss	xmm0,  dword ptr [dword ptr [rip + label_250]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_379
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_379:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_381
	mov	qword ptr [rbp - 8], 0
	jmp	.label_377
.label_383:
	mov	byte ptr [rbp - 1], 0
.label_384:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40599e
	.globl sub_40599e
	.type sub_40599e, @function
sub_40599e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059ac
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_383
	jmp	.label_382
.label_382:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_384
.label_386:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x10], eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059dc
	.globl sub_4059dc
	.type sub_4059dc, @function
sub_4059dc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059ea

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x1c], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0x10], 0
.label_385:
	cmp	dword ptr [rbp - 0x10], 4
	jge	.label_386
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x405a40

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
	#Procedure 0x405a6c
	.globl sub_405a6c
	.type sub_405a6c, @function
sub_405a6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a70

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_387
	cmp	dword ptr [rbp - 4], 2
	jg	.label_387
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_387:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405acf
	.globl sub_405acf
	.type sub_405acf, @function
sub_405acf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405ad0
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
	#Procedure 0x405b0a
	.globl sub_405b0a
	.type sub_405b0a, @function
sub_405b0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b10

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	dword ptr [rbp - 0x164], edi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	dword ptr [rbp - 0x184], edx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_388
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_388:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	esi, dword ptr [rbp - 0x184]
	mov	rdi, qword ptr [rbp - 0x190]
	mov	r8d, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0x40
	cmp	esi, 0
	je	.label_390
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x18
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_389
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_391
.label_389:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_391:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_390:
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	xor	eax, eax
	mov	r8b, al
	mov	al, r8b
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d06
	.globl sub_405d06
	.type sub_405d06, @function
sub_405d06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d10
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_392
	jmp	.label_394
.label_394:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_393
.label_392:
	mov	byte ptr [rbp - 1], 0
.label_393:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d42
	.globl sub_405d42
	.type sub_405d42, @function
sub_405d42:

	nop	word ptr cs:[rax + rax]
.label_397:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x30]
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_395
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	mov	byte ptr [rbp - 1], 0
	jmp	.label_396
.label_395:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	byte ptr [rbp - 1], 1
.label_396:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405dc0
	.globl sub_405dc0
	.type sub_405dc0, @function
sub_405dc0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405dca

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x30]
	add	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x100
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x30]
	jae	.label_397
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	byte ptr [rbp - 1], 0
	jmp	.label_396
	.section	.text
	.align	32
	#Procedure 0x405e30
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
	#Procedure 0x405e58
	.globl sub_405e58
	.type sub_405e58, @function
sub_405e58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e60
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_399:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_398
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_399
.label_398:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405eb7
	.globl sub_405eb7
	.type sub_405eb7, @function
sub_405eb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ec0

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
.label_403:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_400
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_405
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_404
.label_405:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_404:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_400:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_406
	jmp	.label_401
.label_406:
	jmp	.label_402
.label_402:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_403
.label_401:
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
	#Procedure 0x405fc9
	.globl sub_405fc9
	.type sub_405fc9, @function
sub_405fc9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405fd0

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0x2f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x60]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x108
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	rdx, rcx
	mov	dword ptr [rbp - 0x24], eax
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x108
	mov	rdi, rcx
	mov	esi, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rax
	call	strrchr
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_408
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x108
	cmp	rax, rcx
	jne	.label_407
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_408
.label_407:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 1
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0x38]
	call	memmove
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x60], rdx
	mov	qword ptr [rbp - 0x40], rax
.label_408:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060dc
	.globl sub_4060dc
	.type sub_4060dc, @function
sub_4060dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060fe
	.globl sub_4060fe
	.type sub_4060fe, @function
sub_4060fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406100
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406136
	.globl sub_406136
	.type sub_406136, @function
sub_406136:

	nop	word ptr cs:[rax + rax]
.label_409:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_410:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40615a
	.globl sub_40615a
	.type sub_40615a, @function
sub_40615a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406164

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_409
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_410
	.section	.text
	.align	32
	#Procedure 0x4061a0

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
	#Procedure 0x4061d6
	.globl sub_4061d6
	.type sub_4061d6, @function
sub_4061d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0
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
	je	.label_411
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_412
.label_411:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_412
.label_412:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406227
	.globl sub_406227
	.type sub_406227, @function
sub_406227:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406230
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406267
	.globl sub_406267
	.type sub_406267, @function
sub_406267:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406270
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
	jae	.label_413
	call	xalloc_die
.label_413:
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
	#Procedure 0x4062c0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_414]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_415]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062ef
	.globl sub_4062ef
	.type sub_4062ef, @function
sub_4062ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4062f0

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
	#Procedure 0x406315
	.globl sub_406315
	.type sub_406315, @function
sub_406315:

	nop	word ptr cs:[rax + rax]
.label_420:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_416
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_418]],  rax
.label_416:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_417
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_417:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4063a6
	.globl sub_4063a6
	.type sub_4063a6, @function
sub_4063a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063b2
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_419:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_420
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_419
	.section	.text
	.align	32
	#Procedure 0x406400
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_421
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_421:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40642a
	.globl sub_40642a
	.type sub_40642a, @function
sub_40642a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406430

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406469
	.globl sub_406469
	.type sub_406469, @function
sub_406469:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406470

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_422
	jmp	.label_424
.label_424:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_423
.label_422:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_423:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064a7
	.globl sub_4064a7
	.type sub_4064a7, @function
sub_4064a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064b0
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
	#Procedure 0x4064e1
	.globl sub_4064e1
	.type sub_4064e1, @function
sub_4064e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406525
	.globl sub_406525
	.type sub_406525, @function
sub_406525:

	nop	word ptr cs:[rax + rax]
.label_428:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_425
.label_430:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_429
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_429
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx], rax
.label_429:
	jmp	.label_432
.label_432:
	jmp	.label_426
.label_426:
	jmp	.label_425
.label_425:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065af
	.globl sub_4065af
	.type sub_4065af, @function
sub_4065af:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065ba

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_431
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x58]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_428
	call	abort
.label_431:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_426
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	jg	.label_426
	jmp	.label_427
.label_427:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_430
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406670
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
	#Procedure 0x406686
	.globl sub_406686
	.type sub_406686, @function
sub_406686:

	nop	word ptr cs:[rax + rax]
.label_436:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_437:
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
	je	.label_435
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_418]]
	mov	qword ptr [rax + 8], rcx
.label_435:
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
.label_440:
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
	ja	.label_433
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_434
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_434:
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
.label_433:
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
	#Procedure 0x40686e
	.globl sub_40686e
	.type sub_40686e, @function
sub_40686e:

	nop	word ptr cs:[rax + rax]
.label_439:
	test	byte ptr [rbp - 0x31], 1
	je	.label_436
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_437
	.section	.text
	.align	32
	#Procedure 0x406892

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
	jge	.label_438
	call	abort
.label_438:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_440
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_439
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406910

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
.label_441:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_442
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_443
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	dword ptr [rbp - 0x14], eax
.label_443:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	free
	jmp	.label_441
.label_442:
	add	rsp, 0x20
	pop	rbp
	ret	
.label_445:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_454
	jmp	.label_446
.label_455:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_456:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_453:
	jmp	.label_446
.label_446:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_450
.label_448:
	mov	byte ptr [rbp - 1], 1
.label_449:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069f4
	.globl sub_4069f4
	.type sub_4069f4, @function
sub_4069f4:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069fa

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_450:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_448
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_453
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_444:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_445
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_452
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_451
.label_454:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_455
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_447
	mov	byte ptr [rbp - 1], 0
	jmp	.label_449
.label_447:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_456
.label_452:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_451:
	jmp	.label_457
.label_457:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_444
.label_463:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_464:
	jmp	.label_459
	.section	.text
	.align	32
	#Procedure 0x406b6e

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_461
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x78
	mov	qword ptr [rbp - 0x20], rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_460
	mov	byte ptr [rbp - 1], 0
	jmp	.label_458
.label_461:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_462
	jmp	.label_465
.label_462:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_465:
	jmp	.label_459
.label_459:
	mov	byte ptr [rbp - 1], 1
.label_458:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c14
	.globl sub_406c14
	.type sub_406c14, @function
sub_406c14:

	nop	word ptr cs:[rax + rax]
.label_460:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_464
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_463
	mov	byte ptr [rbp - 1], 0
	jmp	.label_458
.label_473:
	mov	rdi, qword ptr [rbp - 0x38]
	call	rpl_fts_close
	cmp	eax, 0
	je	.label_472
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_468
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x29], 0
.label_472:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cdc
	.globl sub_406cdc
	.type sub_406cdc, @function
sub_406cdc:

	nop	word ptr [rax + rax]
.label_467:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r8d, dword ptr [rbp - 0x18]
	mov	r9d, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	call	change_file_owner
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	jmp	.label_469
	.section	.text
	.align	32
	#Procedure 0x406d27

	.globl chown_files
	.type chown_files, @function
chown_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rax, qword ptr [rbp + 0x10]
	mov	r10b, 1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], ecx
	mov	dword ptr [rbp - 0x18], r8d
	mov	dword ptr [rbp - 0x1c], r9d
	mov	qword ptr [rbp - 0x28], rax
	mov	byte ptr [rbp - 0x29], 1
	cmp	dword ptr [rbp - 0x18], -1
	mov	byte ptr [rbp - 0x41], r10b
	jne	.label_474
	mov	al, 1
	cmp	dword ptr [rbp - 0x1c], -1
	mov	byte ptr [rbp - 0x41], al
	jne	.label_474
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x10], 1
	mov	byte ptr [rbp - 0x41], al
	jne	.label_474
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 2
	setne	cl
	mov	byte ptr [rbp - 0x41], cl
.label_474:
	mov	al, byte ptr [rbp - 0x41]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 8
	xor	esi, esi
	test	al, 1
	cmovne	ecx, esi
	mov	dword ptr [rbp - 0x30], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0xc]
	or	ecx, dword ptr [rbp - 0x30]
	mov	esi, ecx
	call	xfts_open
	mov	qword ptr [rbp - 0x38], rax
.label_469:
	mov	rdi, qword ptr [rbp - 0x38]
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_467
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_471
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x11], 1
	jne	.label_466
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_470
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_466:
	mov	byte ptr [rbp - 0x29], 0
.label_471:
	jmp	.label_473
	.section	.text
	.align	32
	#Procedure 0x406e20

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e62
	.globl sub_406e62
	.type sub_406e62, @function
sub_406e62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e70

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
	#Procedure 0x406f1d
	.globl sub_406f1d
	.type sub_406f1d, @function
sub_406f1d:

	nop	dword ptr [rax]
.label_488:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_480
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_476
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:label_484
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_476
.label_480:
	lea	rsi, [rbp - 0xc8]
	mov	edi, dword ptr [rbp - 0x34]
	call	fstat
	cmp	eax, 0
	je	.label_483
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_475
	.section	.text
	.align	32
	#Procedure 0x406f7b

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	xor	eax, eax
	mov	r8b, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0xcd], r8b
	je	.label_491
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:label_484
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xcd], cl
.label_491:
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 4
	cmp	edx, 0
	je	.label_485
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_489
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_489
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	dword ptr [rbp - 0xd4], eax
.label_489:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_478
.label_481:
	jmp	.label_476
.label_476:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_482
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x34]
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	call	cwd_advance_fd
	mov	dword ptr [rbp - 4], 0
	jmp	.label_478
.label_485:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_487
	test	byte ptr [rbp - 0x2d], 1
	je	.label_487
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_487
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_486
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	mov	byte ptr [rbp - 0x2d], 1
	cmp	ecx, dword ptr [rbp - 0x38]
	jg	.label_490
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x1c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_490:
	jmp	.label_486
.label_486:
	jmp	.label_487
.label_487:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_488
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	diropen
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, 0
	jge	.label_488
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_478
.label_483:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_477
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x80]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_481
.label_477:
	call	__errno_location
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_475
.label_482:
	mov	edi, dword ptr [rbp - 0x34]
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_475:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_479
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], ecx
	mov	edi, dword ptr [rbp - 0x34]
	call	close
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xd8], eax
	mov	dword ptr [rbp - 0xdc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rax], ecx
.label_479:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_478:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071ae
	.globl sub_4071ae
	.type sub_4071ae, @function
sub_4071ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4071b0
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
	jb	.label_492
	jmp	.label_495
.label_495:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_494
	jmp	.label_492
.label_492:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_493
.label_494:
	mov	byte ptr [rbp - 1], 0
.label_493:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071fb
	.globl sub_4071fb
	.type sub_4071fb, @function
sub_4071fb:

	nop	dword ptr [rax + rax]
.label_500:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_499:
	jmp	.label_498
.label_498:
	jmp	.label_496
.label_496:
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_505:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407230
	.globl sub_407230
	.type sub_407230, @function
sub_407230:

	nop	word ptr cs:[rax + rax]
.label_506:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_502
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_502:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_510:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_249]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_499
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_501:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_500
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_501
.label_504:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_497
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_508
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_508:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_507
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_507:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_496
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_511
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_511:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_509
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_509:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_498
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_506
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_503
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_503:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_510
	.section	.text
	.align	32
	#Procedure 0x4075bb

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_504
	mov	qword ptr [rbp - 8], 0
	jmp	.label_505
	.section	.text
	.align	32
	#Procedure 0x407600

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_512
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_513
.label_512:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_514
.label_513:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_514:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407658
	.globl sub_407658
	.type sub_407658, @function
sub_407658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407660

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40768b
	.globl sub_40768b
	.type sub_40768b, @function
sub_40768b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407690

	.globl chopt_init
	.type chopt_init, @function
chopt_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 2
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x10], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 4], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x11], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x20], 0
	pop	rbp
	ret	
.label_523:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_521
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_521:
	jmp	.label_515
.label_515:
	jmp	.label_517
.label_522:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_517:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_518
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_518
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_516
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_520
.label_516:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_520:
	jmp	.label_518
.label_518:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077aa
	.globl sub_4077aa
	.type sub_4077aa, @function
sub_4077aa:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077b5

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_522
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_519
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_523
.label_519:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_515
	.section	.text
	.align	32
	#Procedure 0x407810

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
.label_525:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_524
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_527
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_527:
	jmp	.label_526
.label_526:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	qword ptr [rbp - 8], rax
	jmp	.label_525
.label_524:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407878
	.globl sub_407878
	.type sub_407878, @function
sub_407878:

	nop	dword ptr [rax + rax]
.label_529:
	mov	byte ptr [rbp - 1], 0
.label_530:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40788e
	.globl sub_40788e
	.type sub_40788e, @function
sub_40788e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40789c
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_529
	jmp	.label_528
.label_528:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_530
	.section	.text
	.align	32
	#Procedure 0x4078c0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	and	rdi, rax
	cmp	rdi, 0
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078e6
	.globl sub_4078e6
	.type sub_4078e6, @function
sub_4078e6:

	nop	word ptr cs:[rax + rax]
.label_572:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	r8d, dword ptr [rbp - 0x20]
	mov	r9d, dword ptr [rbp - 0x24]
	mov	r10d, dword ptr [rbp - 0x28]
	mov	rax, rsp
	mov	dword ptr [rax], r10d
	call	restricted_chown
	mov	dword ptr [rbp - 0xec], eax
	add	eax, -2
	mov	edx, eax
	sub	eax, 4
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	dword ptr [rbp - 0x1ac], eax
	ja	.label_537
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_543]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x40794b

	.globl sub_40794b
	.type sub_40794b, @function
sub_40794b:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x11], 1
	jne	.label_570
	movabs	rdi, OFFSET FLAT:label_576
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x40]
	mov	dword ptr [rbp - 0x144], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x150], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x144]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_570:
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_563
.label_552:
	mov	eax, 2
	mov	ecx, 4
	mov	dl, byte ptr [rbp - 0xed]
	xor	dl, 0xff
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1cc], eax
.label_556:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	dword ptr [rbp - 0x1c8], eax
.label_531:
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	dword ptr [rbp - 0xf4], eax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_539
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x1c]
	call	uid_to_name
	mov	qword ptr [rbp - 0x1d8], rax
	jmp	.label_533
	.section	.text
	.align	32
	#Procedure 0x407a09

	.globl sub_407a09
	.type sub_407a09, @function
sub_407a09:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	sub_40794b
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	jne	sub_40794b
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rpl_fts_set
	mov	byte ptr [rbp - 1], 1
	mov	dword ptr [rbp - 0x140], eax
	jmp	.label_564
.label_540:
	jmp	.label_547
.label_547:
	test	byte ptr [rbp - 0xda], 1
	je	.label_542
	test	byte ptr [rbp - 0xd9], 1
	jne	.label_542
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x11], 1
	jne	.label_542
	call	__errno_location
	mov	esi, dword ptr [rax]
	cmp	dword ptr [rbp - 0x1c], -1
	mov	dword ptr [rbp - 0x1b0], esi
	je	.label_532
	movabs	rdi, OFFSET FLAT:label_536
	call	gettext
	mov	qword ptr [rbp - 0x1b8], rax
	jmp	.label_553
.label_579:
	movabs	rdi, OFFSET FLAT:label_574
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	movabs	rdx, OFFSET FLAT:label_132
	mov	qword ptr [rbp - 0x1a0], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_565:
	movabs	rdi, OFFSET FLAT:label_561
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_564
.label_1359:
	jmp	.label_540
.label_1360:
	mov	byte ptr [rbp - 0xda], 0
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_540
.label_537:
	call	abort
.label_1361:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	ecx, dword ptr [rbp - 0x20]
	call	chownat
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0xd9], r8b
	jmp	.label_540
.label_566:
	cmp	dword ptr [rbp - 0x24], -1
	jne	.label_559
	cmp	dword ptr [rbp - 0x28], -1
	jne	.label_559
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 2
	jne	.label_559
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_559
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	jne	.label_559
	mov	byte ptr [rbp - 0xda], 1
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x78
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_568
.label_548:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1e0], rcx
	jmp	.label_549
.label_549:
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	qword ptr [rbp - 0x108], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rax + 0x20]
	call	describe_change
	mov	rdi, qword ptr [rbp - 0x100]
	call	free
	mov	rdi, qword ptr [rbp - 0x108]
	call	free
.label_550:
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 4], 1
	jne	.label_544
	mov	edx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rpl_fts_set
	mov	dword ptr [rbp - 0x1e4], eax
.label_544:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_564:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c87
	.globl sub_407c87
	.type sub_407c87, @function
sub_407c87:

	nop	
.label_539:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	qword ptr [rbp - 0x100], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_548
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x20]
	call	gid_to_name
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_549
.label_532:
	movabs	rdi, OFFSET FLAT:label_545
	call	gettext
	mov	qword ptr [rbp - 0x1b8], rax
.label_553:
	mov	rax, qword ptr [rbp - 0x1b8]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_542:
	jmp	.label_535
.label_535:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 2
	je	.label_538
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xda], 1
	mov	byte ptr [rbp - 0x1c1], cl
	je	.label_541
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd9], 1
	mov	byte ptr [rbp - 0x1c1], cl
	je	.label_541
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xdb], 1
	mov	byte ptr [rbp - 0x1c1], cl
	je	.label_541
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_551
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 0x1c]
	mov	byte ptr [rbp - 0x1c2], cl
	jne	.label_555
.label_551:
	mov	al, 1
	cmp	dword ptr [rbp - 0x20], -1
	mov	byte ptr [rbp - 0x1c3], al
	je	.label_534
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rcx + 0x20]
	sete	dl
	mov	byte ptr [rbp - 0x1c3], dl
.label_534:
	mov	al, byte ptr [rbp - 0x1c3]
	mov	byte ptr [rbp - 0x1c2], al
.label_555:
	mov	al, byte ptr [rbp - 0x1c2]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1c1], al
.label_541:
	mov	al, byte ptr [rbp - 0x1c1]
	and	al, 1
	mov	byte ptr [rbp - 0xed], al
	test	byte ptr [rbp - 0xed], 1
	jne	.label_546
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	jne	.label_550
.label_546:
	test	byte ptr [rbp - 0xd9], 1
	jne	.label_554
	mov	eax, 3
	mov	dword ptr [rbp - 0x1c8], eax
	jmp	.label_531
	.section	.text
	.align	32
	#Procedure 0x407e14

	.globl sub_407e14
	.type sub_407e14, @function
sub_407e14:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_564
	.section	.text
	.align	32
	#Procedure 0x407e1d

	.globl sub_407e1d
	.type sub_407e1d, @function
sub_407e1d:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 4], 1
	jne	.label_582
	mov	byte ptr [rbp - 1], 1
	jmp	.label_564
	.section	.text
	.align	32
	#Procedure 0x407e34

	.globl sub_407e34
	.type sub_407e34, @function
sub_407e34:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 4], 1
	je	.label_585
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	sub_407e14
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	jne	sub_407e14
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx + 8]
	jne	sub_407e14
	jmp	.label_583
.label_583:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax, OFFSET FLAT:label_132
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_586
	movabs	rdi, OFFSET FLAT:label_581
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x120], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x124], edi
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_584
.label_554:
	test	byte ptr [rbp - 0xdb], 1
	jne	.label_552
	mov	eax, 1
	mov	dword ptr [rbp - 0x1cc], eax
	jmp	.label_556
	.section	.text
	.align	32
	#Procedure 0x407f0a

	.globl sub_407f0a
	.type sub_407f0a, @function
sub_407f0a:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x11], 1
	jne	.label_588
	movabs	rdi, OFFSET FLAT:label_587
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x40]
	mov	dword ptr [rbp - 0x158], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x160], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x158]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_588:
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_563
.label_582:
	jmp	.label_563
	.section	.text
	.align	32
	#Procedure 0x407f73

	.globl sub_407f73
	.type sub_407f73, @function
sub_407f73:
	jmp	.label_563
.label_585:
	jmp	.label_563
.label_1362:
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_540
.label_586:
	movabs	rdi, OFFSET FLAT:label_574
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x130], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	movabs	rdx, OFFSET FLAT:label_132
	mov	qword ptr [rbp - 0x138], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	r8, rax
	mov	al, 0
	call	error
.label_584:
	movabs	rdi, OFFSET FLAT:label_561
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rpl_fts_set
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x13c], eax
	call	rpl_fts_read
	mov	qword ptr [rbp - 0xe8], rax
	mov	byte ptr [rbp - 1], 0
	jmp	.label_564
.label_594:
	jmp	.label_563
.label_563:
	test	byte ptr [rbp - 0xd9], 1
	jne	.label_566
	mov	byte ptr [rbp - 0xda], 0
	mov	qword ptr [rbp - 0x48], 0
	jmp	.label_567
	.section	.text
	.align	32
	#Procedure 0x408061

	.globl sub_408061
	.type sub_408061, @function
sub_408061:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	cycle_warning_required
	test	al, 1
	jne	.label_591
	jmp	sub_407f73
.label_591:
	jmp	.label_590
.label_590:
	movabs	rdi, OFFSET FLAT:label_589
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x168], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_564
.label_558:
	test	byte ptr [rbp - 0xda], 1
	je	.label_535
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	jne	.label_572
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	ecx, dword ptr [rbp - 0x20]
	call	lchownat
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0xd9], r8b
	test	byte ptr [rbp - 0xd9], 1
	jne	.label_562
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	jne	.label_562
	mov	byte ptr [rbp - 0xd9], 1
	mov	byte ptr [rbp - 0xdb], 0
.label_562:
	jmp	.label_547
	.section	.text
	.align	32
	#Procedure 0x408135

	.globl sub_408135
	.type sub_408135, @function
sub_408135:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x11], 1
	jne	.label_593
	xor	edi, edi
	mov	esi, 3
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x154], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_592
	mov	esi, dword ptr [rbp - 0x154]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_593:
	mov	byte ptr [rbp - 0xd9], 0
	jmp	.label_563
.label_559:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x78
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_560
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_560
	lea	rdx, [rbp - 0xd8]
	xor	ecx, ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x40]
	call	fstatat
	cmp	eax, 0
	je	.label_573
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x11], 1
	jne	.label_577
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_580
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x16c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x178], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_577:
	mov	byte ptr [rbp - 0xd9], 0
.label_573:
	lea	rax, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x48], rax
.label_560:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd9], 1
	mov	byte ptr [rbp - 0x179], cl
	je	.label_569
	cmp	dword ptr [rbp - 0x24], -1
	je	.label_578
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 0x1c]
	mov	byte ptr [rbp - 0x179], cl
	jne	.label_569
.label_578:
	mov	al, 1
	cmp	dword ptr [rbp - 0x28], -1
	mov	byte ptr [rbp - 0x17a], al
	je	.label_557
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rcx + 0x20]
	sete	dl
	mov	byte ptr [rbp - 0x17a], dl
.label_557:
	mov	al, byte ptr [rbp - 0x17a]
	mov	byte ptr [rbp - 0x179], al
.label_569:
	mov	al, byte ptr [rbp - 0x179]
	and	al, 1
	mov	byte ptr [rbp - 0xda], al
.label_568:
	jmp	.label_567
.label_567:
	test	byte ptr [rbp - 0xd9], 1
	je	.label_558
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	je	.label_571
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 2
	je	.label_571
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 6
	je	.label_571
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	jne	.label_558
.label_571:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_558
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	jne	.label_558
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_558
	jmp	.label_575
.label_575:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	eax, OFFSET FLAT:label_132
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_579
	movabs	rdi, OFFSET FLAT:label_581
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x188], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x18c], edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_565
	.section	.text
	.align	32
	#Procedure 0x4083be

	.globl change_file_owner
	.type change_file_owner, @function
change_file_owner:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x20], ecx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0xd9], 1
	mov	byte ptr [rbp - 0xdb], 1
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	dec	ecx
	mov	eax, ecx
	sub	ecx, 9
	mov	qword ptr [rbp - 0x110], rax
	mov	dword ptr [rbp - 0x114], ecx
	ja	.label_594
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_595]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x408440

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
	je	.label_596
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_596:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40847b
	.globl sub_40847b
	.type sub_40847b, @function
sub_40847b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408480

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
.label_606:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_605
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_605:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_600
	jmp	.label_603
.label_600:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_606
.label_603:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_607
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_607:
	movabs	rdi, OFFSET FLAT:label_599
	call	gettext
	movabs	rsi, OFFSET FLAT:label_207
	movabs	rdx, OFFSET FLAT:label_336
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
	je	.label_598
	movabs	rsi, OFFSET FLAT:label_602
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_598
	movabs	rdi, OFFSET FLAT:label_608
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_598:
	movabs	rdi, OFFSET FLAT:label_604
	call	gettext
	movabs	rsi, OFFSET FLAT:label_336
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_597
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_217
	movabs	rsi, OFFSET FLAT:label_601
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
	#Procedure 0x408619
	.globl sub_408619
	.type sub_408619, @function
sub_408619:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408620
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
	#Procedure 0x408657
	.globl sub_408657
	.type sub_408657, @function
sub_408657:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408660
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
	#Procedure 0x408687
	.globl sub_408687
	.type sub_408687, @function
sub_408687:

	nop	word ptr [rax + rax]
.label_613:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_609
	jmp	.label_610
.label_609:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_611
.label_610:
	call	abort
.label_611:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_612:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086ff
	.globl sub_4086ff
	.type sub_4086ff, @function
sub_4086ff:

	nop	dword ptr [rax]
.label_617:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_614
	mov	byte ptr [rbp - 1], 0
	jmp	.label_612
	.section	.text
	.align	32
	#Procedure 0x408739

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_616
	mov	byte ptr [rbp - 1], 0
	jmp	.label_612
.label_616:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_617
	mov	byte ptr [rbp - 1], 1
	jmp	.label_612
.label_614:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_615
	jmp	.label_613
.label_615:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_612
	.section	.text
	.align	32
	#Procedure 0x4088a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_618
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_592
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4088df
	.globl sub_4088df
	.type sub_4088df, @function
sub_4088df:

	nop	
.label_620:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_619
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_621:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_592
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_623:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40892c

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_620
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_624
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_620
.label_624:
	movabs	rdi, OFFSET FLAT:label_622
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_621
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_625
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_623
.label_619:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089c7
	.globl sub_4089c7
	.type sub_4089c7, @function
sub_4089c7:

	nop	
	nop	dword ptr [rax + rax]
.label_636:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_626:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_629
	jmp	.label_628
.label_628:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_630
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
.label_630:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_631
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_627
	.section	.text
	.align	32
	#Procedure 0x408a56

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_634:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_636
	jmp	.label_632
.label_632:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_635
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
.label_635:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_633
.label_633:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_634
.label_629:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408aec
	.globl sub_408aec
	.type sub_408aec, @function
sub_408aec:

	nop	word ptr cs:[rax + rax]
.label_631:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
.label_627:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_626
.label_638:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 4
	sub	ecx, 1
	and	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_640:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b30
	.globl sub_408b30
	.type sub_408b30, @function
sub_408b30:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b3e

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_empty
	test	al, 1
	jne	.label_637
	jmp	.label_639
.label_637:
	call	abort
.label_639:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdx + rax*4]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x14]
	mov	eax, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	cmp	ecx, dword ptr [rax + 0x18]
	jne	.label_638
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 1
	jmp	.label_640
	.section	.text
	.align	32
	#Procedure 0x408bb0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_641
	mov	qword ptr [rbp - 8], 0xa
.label_641:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_643:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_645
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_645:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_642
	jmp	.label_644
.label_642:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_643
.label_644:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c2c
	.globl sub_408c2c
	.type sub_408c2c, @function
sub_408c2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c30
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
	#Procedure 0x408c4a
	.globl sub_408c4a
	.type sub_408c4a, @function
sub_408c4a:

	nop	word ptr [rax + rax]
.label_660:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_650
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_646
.label_658:
	mov	dword ptr [rbp - 0x14], 1
.label_657:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_648
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_648
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_654
.label_648:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_646
.label_654:
	movabs	rsi, OFFSET FLAT:label_649
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jge	.label_656
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_646
.label_650:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	je	.label_647
	mov	qword ptr [rbp - 8], 0
	jmp	.label_646
.label_656:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x48]
	and	esi, 0x200
	cmp	esi, 0
	je	.label_652
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x24]
	call	cwd_advance_fd
	jmp	.label_655
.label_653:
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_655:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_646:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d83
	.globl sub_408d83
	.type sub_408d83, @function
sub_408d83:

	nop	word ptr cs:[rax + rax]
.label_652:
	mov	edi, dword ptr [rbp - 0x24]
	call	fchdir
	cmp	eax, 0
	je	.label_653
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	mov	dword ptr [rbp - 0x30], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_646
	.section	.text
	.align	32
	#Procedure 0x408dd4
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_659
	cmp	dword ptr [rbp - 0x14], 0x1000
	je	.label_659
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_646
.label_647:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_651
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_651:
	cmp	dword ptr [rbp - 0x14], 0x1000
	jne	.label_658
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	dword ptr [rax + 0x48], ecx
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_657
.label_659:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_660
	mov	qword ptr [rbp - 8], 0
	jmp	.label_646
	.section	.text
	.align	32
	#Procedure 0x408e90

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
	#Procedure 0x408ec3
	.globl sub_408ec3
	.type sub_408ec3, @function
sub_408ec3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ed0

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
	#Procedure 0x408f0e
	.globl sub_408f0e
	.type sub_408f0e, @function
sub_408f0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408f10

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
	#Procedure 0x408f2f
	.globl sub_408f2f
	.type sub_408f2f, @function
sub_408f2f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408f30
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f62
	.globl sub_408f62
	.type sub_408f62, @function
sub_408f62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f70

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
	#Procedure 0x408fa3
	.globl sub_408fa3
	.type sub_408fa3, @function
sub_408fa3:

	nop	word ptr cs:[rax + rax]
.label_662:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_664
.label_668:
	jmp	.label_667
.label_667:
	jmp	.label_661
.label_661:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_663
.label_665:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_666:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409008
	.globl sub_409008
	.type sub_409008, @function
sub_409008:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40900f
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_663:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_665
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_667
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_664:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_668
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_662
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_666
.label_670:
	mov	byte ptr [rbp - 1], 0
.label_671:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40908e
	.globl sub_40908e
	.type sub_40908e, @function
sub_40908e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40909c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_670
	jmp	.label_669
.label_669:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_671
.label_672:
	mov	byte ptr [rbp - 1], 0
.label_676:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090ce
	.globl sub_4090ce
	.type sub_4090ce, @function
sub_4090ce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090d9
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
	jb	.label_673
	jmp	.label_675
.label_675:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_673
	jmp	.label_674
.label_674:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_672
	jmp	.label_673
.label_673:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_676
.label_707:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x20
	cmp	ecx, 0
	jne	.label_716
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_716
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x14], 0
	je	.label_679
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_716
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_716
.label_679:
	jmp	.label_734
.label_724:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xd8], rax
.label_726:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_735
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rax], 0x2f
	jmp	.label_742
.label_746:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x20]
	mov	word ptr [rsi + 0x70], ax
.label_700:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_748
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_681
.label_731:
	jmp	.label_683
.label_740:
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:label_484
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax + 8]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_687
.label_743:
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_690
.label_735:
	mov	qword ptr [rbp - 0x70], 0
.label_742:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x46], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
.label_734:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_694
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	readdir
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_707
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_712
	call	__errno_location
	mov	cl, 1
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], edx
	test	byte ptr [rbp - 0x81], 1
	mov	byte ptr [rbp - 0xd9], cl
	jne	.label_715
	cmp	qword ptr [rbp - 0x30], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_715:
	mov	al, byte ptr [rbp - 0xd9]
	mov	ecx, 4
	mov	edx, 7
	test	al, 1
	cmovne	ecx, edx
	mov	si, cx
	mov	rdi, qword ptr [rbp - 0x80]
	mov	word ptr [rdi + 0x70], si
.label_712:
	jmp	.label_694
.label_687:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_696
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_732
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_732
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	je	.label_732
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 6
.label_732:
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_690
.label_714:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_736
.label_736:
	mov	eax, dword ptr [rbp - 0xb4]
	xor	ecx, ecx
	mov	dl, cl
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	mov	dword ptr [rbp - 0xb8], eax
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rbp - 0xc1], dl
	je	.label_744
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc2], cl
	je	.label_680
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0xc2], cl
.label_680:
	mov	al, byte ptr [rbp - 0xc2]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc1], al
.label_744:
	mov	al, byte ptr [rbp - 0xc1]
	lea	rcx, [rbp - 0x74]
	xor	edx, edx
	mov	esi, 0x20000
	test	al, 1
	cmovne	edx, esi
	mov	edi, dword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xc0]
	call	opendirat
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + 0x18], rax
	cmp	rax, 0
	jne	.label_692
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_719
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_719:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_690
.label_747:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0x48]
	and	edx, 4
	cmp	edx, 0
	je	.label_697
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_721
.label_716:
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 0x13
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	fts_alloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_733
	jmp	.label_686
.label_684:
	jmp	.label_734
.label_701:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	cmp	ecx, 0
	je	.label_728
	jmp	.label_718
.label_718:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	leave_dir
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fts_stat
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	word ptr [rbp - 0xc4], ax
	call	enter_dir
	test	al, 1
	jne	.label_725
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_690
.label_733:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_677
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsi, rax
	call	fts_palloc
	test	al, 1
	jne	.label_685
	jmp	.label_686
.label_686:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xe0], eax
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xe4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xe4]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_690
.label_748:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_681:
	cmp	qword ptr [rbp - 0x30], 0x2710
	jne	.label_703
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_703
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	dirent_inode_sort_may_be_useful
	and	al, 1
	mov	byte ptr [rbp - 0x82], al
.label_703:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_684
	jmp	.label_713
.label_699:
	mov	byte ptr [rbp - 0x45], 1
.label_723:
	jmp	.label_691
.label_691:
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x38]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	jne	.label_724
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_726
.label_710:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_714
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_714
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	mov	dword ptr [rbp - 0xb4], ecx
	jmp	.label_736
.label_688:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x14], 2
	mov	byte ptr [rbp - 0xc5], cl
	je	.label_739
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	je	.label_682
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	je	.label_682
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x20
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_682
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdx + 0x88], 2
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_682
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	leaf_optimization
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xc6], cl
.label_682:
	mov	al, byte ptr [rbp - 0xc6]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc5], al
.label_739:
	mov	al, byte ptr [rbp - 0xc5]
	and	al, 1
	mov	byte ptr [rbp - 0x45], al
	test	byte ptr [rbp - 0x45], 1
	jne	.label_689
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_691
.label_689:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_693
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x74]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x74], eax
.label_693:
	cmp	dword ptr [rbp - 0x74], 0
	jl	.label_695
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x74]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_699
.label_695:
	test	byte ptr [rbp - 0x45], 1
	je	.label_702
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_702
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_702:
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	byte ptr [rbp - 0x45], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xcc], eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_711
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x74]
	jg	.label_711
	mov	edi, dword ptr [rbp - 0x74]
	call	close
	mov	dword ptr [rbp - 0xd0], eax
.label_711:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rax + 0x18], 0
	jmp	.label_723
.label_725:
	jmp	.label_728
.label_728:
	jmp	.label_705
.label_705:
	jmp	.label_683
.label_683:
	mov	eax, 0x186a0
	mov	ecx, eax
	mov	rdx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 0x40], 0
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x90], rcx
	test	byte ptr [rbp - 0x81], 1
	je	.label_688
	mov	byte ptr [rbp - 0x45], 1
	jmp	.label_720
.label_685:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_738
	mov	byte ptr [rbp - 0x46], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_741
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
.label_741:
	jmp	.label_738
.label_738:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_677:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_747
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xe8], eax
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rbp - 8], 0
	jmp	.label_690
.label_696:
	test	byte ptr [rbp - 0x82], 1
	je	.label_704
	movabs	rax, OFFSET FLAT:fts_compare_ino
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fts_sort
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x40], 0
.label_704:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_698
	cmp	qword ptr [rbp - 0x30], 1
	jbe	.label_698
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fts_sort
	mov	qword ptr [rbp - 0x28], rax
.label_698:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_690:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b00
	.globl sub_409b00
	.type sub_409b00, @function
sub_409b00:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b0f

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdi + 0x18], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x81], al
	mov	byte ptr [rbp - 0x82], 0
	test	byte ptr [rbp - 0x81], 1
	je	.label_710
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x98]
	call	dirfd
	mov	dword ptr [rbp - 0x74], eax
	cmp	dword ptr [rbp - 0x74], 0
	jge	.label_731
	jmp	.label_708
.label_708:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xb0], eax
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_729
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_729:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_690
.label_697:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
.label_721:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_745
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_746
.label_745:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_678
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_678
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa8]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_678
	mov	rax, qword ptr [rbp - 0xa8]
	movzx	ecx, byte ptr [rax + 0x12]
	cmp	ecx, 4
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0xf1], dl
.label_678:
	mov	al, byte ptr [rbp - 0xf1]
	and	al, 1
	mov	byte ptr [rbp - 0xa9], al
	mov	rcx, qword ptr [rbp - 0x20]
	mov	word ptr [rcx + 0x70], 0xb
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x78
	mov	rdx, qword ptr [rbp - 0xa8]
	movzx	esi, byte ptr [rdx + 0x12]
	mov	rdi, rcx
	call	set_stat_type
	mov	rdi, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rbp - 0xa9]
	xor	al, 0xff
	and	al, 1
	movzx	esi, al
	call	fts_set_stat_required
	jmp	.label_700
.label_692:
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	jne	.label_701
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x80]
	mov	word ptr [rsi + 0x70], ax
	jmp	.label_705
.label_694:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_706
	jmp	.label_709
.label_709:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xf8], eax
	jmp	.label_706
.label_706:
	jmp	.label_713
.label_713:
	test	byte ptr [rbp - 0x46], 1
	je	.label_717
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	fts_padjust
.label_717:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_722
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_727
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_730
.label_727:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	qword ptr [rbp - 0x70], rax
.label_730:
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_722:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_687
	test	byte ptr [rbp - 0x45], 1
	je	.label_687
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_737
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_687
.label_737:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_740
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	jne	.label_743
	jmp	.label_687
.label_775:
	mov	edi, dword ptr [rbp - 0x58]
	call	close
	mov	dword ptr [rbp - 0x74], eax
.label_777:
	jmp	.label_753
.label_753:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_maxarglen
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	qword ptr [rbp - 0x60], 0x1000
	mov	qword ptr [rbp - 0x80], rdi
	jbe	.label_781
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_755
.label_763:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x58], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x30], rax
	test	byte ptr [rbp - 0x51], 1
	je	.label_758
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_758
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x30]
	call	fts_set_stat_required
	jmp	.label_749
.label_781:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_755
.label_755:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	call	fts_palloc
	test	al, 1
	jne	.label_759
	jmp	.label_761
.label_783:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x68], -1
.label_776:
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x89], al
	je	.label_773
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x89], dl
.label_773:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
.label_779:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_754
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x800
	cmp	ecx, 0
	jne	.label_750
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	rcx, qword ptr [rbp - 0x68]
	jae	.label_768
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	jne	.label_768
	jmp	.label_770
.label_770:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x8a], cl
	jae	.label_782
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 2
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x8a], sil
.label_782:
	mov	al, byte ptr [rbp - 0x8a]
	test	al, 1
	jne	.label_764
	jmp	.label_769
.label_764:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_770
.label_766:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
.label_751:
	jmp	.label_757
.label_757:
	jmp	.label_760
.label_760:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_779
.label_769:
	jmp	.label_768
.label_768:
	jmp	.label_750
.label_750:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x68]
	call	fts_alloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jne	.label_763
	jmp	.label_762
.label_785:
	mov	eax, 0x80
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_784
	mov	qword ptr [rbp - 8], 0
	jmp	.label_778
.label_762:
	mov	rdi, qword ptr [rbp - 0x38]
	call	fts_lfree
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_752:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_761:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_778:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0ab
	.globl sub_40a0ab
	.type sub_40a0ab, @function
sub_40a0ab:

	nop	dword ptr [rax]
.label_784:
	xor	esi, esi
	mov	eax, 0x80
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 0x48], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 0x48]
	and	eax, 2
	cmp	eax, 0
	je	.label_771
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xfffffdff
	mov	dword ptr [rax + 0x48], ecx
.label_771:
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_753
	mov	al, 1
	test	al, 1
	jne	.label_753
	jmp	.label_765
.label_765:
	movabs	rdi, OFFSET FLAT:label_649
	xor	esi, esi
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_775
	jmp	.label_777
.label_774:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_756
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	jne	.label_756
	movabs	rsi, OFFSET FLAT:label_649
	mov	rdi, qword ptr [rbp - 0x28]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_756
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
.label_756:
	mov	esi, 0xffffffff
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_init
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_778
.label_754:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_780
	cmp	qword ptr [rbp - 0x40], 1
	jbe	.label_780
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	fts_sort
	mov	qword ptr [rbp - 0x38], rax
.label_780:
	movabs	rsi, OFFSET FLAT:label_217
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx], rax
	cmp	rax, 0
	jne	.label_767
	jmp	.label_762
.label_758:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x30]
	mov	word ptr [rsi + 0x70], ax
.label_749:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_772
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_757
.label_772:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_766
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_751
.label_767:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, qword ptr [rbp - 0x28]
	call	setup_dir
	test	al, 1
	jne	.label_774
	jmp	.label_762
.label_759:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_776
	movabs	rsi, OFFSET FLAT:label_217
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	jne	.label_783
	jmp	.label_752
.label_786:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x12
	cmp	eax, 0
	jne	.label_785
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_778
	.section	.text
	.align	32
	#Procedure 0x40a338

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0xfffff000
	cmp	esi, 0
	je	.label_787
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_778
.label_787:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_786
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_786
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_778
.label_789:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_790:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3cb
	.globl sub_40a3cb
	.type sub_40a3cb, @function
sub_40a3cb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3d4
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_789
	jmp	.label_788
.label_788:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_790
.label_792:
	lea	rsi, [rbp - 0x20]
	mov	eax, dword ptr [rbp - 4]
	mov	edi, eax
	call	umaxtostr
	mov	qword ptr [rbp - 0x30], rax
.label_791:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	xstrdup
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a424
	.globl sub_40a424
	.type sub_40a424, @function
sub_40a424:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a42e

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	getgrgid
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_792
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_791
	.section	.text
	.align	32
	#Procedure 0x40a460

	.globl chownat
	.type chownat, @function
chownat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	r8d, r8d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	call	fchownat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a490

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
	jae	.label_793
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_794
.label_793:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_794:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4ec
	.globl sub_40a4ec
	.type sub_40a4ec, @function
sub_40a4ec:

	nop	dword ptr [rax]
.label_795:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a508
	.globl sub_40a508
	.type sub_40a508, @function
sub_40a508:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a514

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_795
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a560

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
	#Procedure 0x40a598
	.globl sub_40a598
	.type sub_40a598, @function
sub_40a598:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_796
	movabs	rdi, OFFSET FLAT:label_803
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_796:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_797
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_801
.label_797:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_801:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_798
	movabs	rsi, OFFSET FLAT:label_799
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_798
	movabs	rsi, OFFSET FLAT:label_800
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_802
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_802:
	jmp	.label_798
.label_798:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6b9
	.globl sub_40a6b9
	.type sub_40a6b9, @function
sub_40a6b9:

	nop	dword ptr [rax]
.label_806:
	mov	byte ptr [rbp - 1], 0
.label_805:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6ce
	.globl sub_40a6ce
	.type sub_40a6ce, @function
sub_40a6ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a6cf
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_806
	jmp	.label_804
.label_804:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_805
.label_813:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_814
.label_814:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	jbe	.label_809
	movabs	rax, 0x1fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x28
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	jb	.label_815
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	jne	.label_810
.label_815:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_808
.label_810:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_809:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_807:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_811
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_807
.label_811:
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x58]
	call	qsort
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
.label_812:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_816
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_812
	.section	.text
	.align	32
	#Procedure 0x40a86d

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rax
	cmp	rax, rdx
	jne	.label_813
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_814
.label_816:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_808:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a8c3
	.globl sub_40a8c3
	.type sub_40a8c3, @function
sub_40a8c3:

	nop	word ptr cs:[rax + rax]
.label_818:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_819:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a8f0
	.globl sub_40a8f0
	.type sub_40a8f0, @function
sub_40a8f0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8fc

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_820
	mov	byte ptr [rbp - 1], 1
	jmp	.label_819
.label_820:
	movss	xmm0,  dword ptr [dword ptr [rip + label_821]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_818
	movss	xmm0,  dword ptr [dword ptr [rip + label_817]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_818
	movss	xmm0,  dword ptr [dword ptr [rip + label_817]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_818
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_818
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_818
	movss	xmm0,  dword ptr [dword ptr [rip + label_817]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_818
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_818
	mov	byte ptr [rbp - 1], 1
	jmp	.label_819
	.section	.text
	.align	32
	#Procedure 0x40aa00

	.globl free_dir
	.type free_dir, @function
free_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_822
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_823
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x58]
	call	hash_free
.label_823:
	jmp	.label_824
.label_822:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
.label_824:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa58
	.globl sub_40aa58
	.type sub_40aa58, @function
sub_40aa58:

	nop	dword ptr [rax + rax]
.label_827:
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
	#Procedure 0x40aa83
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
.label_826:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_827
	jmp	.label_825
.label_825:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_826
	.section	.text
	.align	32
	#Procedure 0x40aad0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x48]
	and	eax, 4
	cmp	eax, 0
	mov	byte ptr [rbp - 0xd], cl
	jne	.label_830
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_832
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	mov	qword ptr [rbp - 0x18], rdi
	je	.label_829
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_828
.label_829:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x1c], ecx
.label_828:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, eax
	call	cwd_advance_fd
	xor	eax, eax
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_833
.label_832:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_834
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_831
.label_834:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_831:
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x20], eax
.label_833:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xd], cl
.label_830:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x60
	mov	rdi, rdx
	call	fd_ring_clear
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40abc8
	.globl sub_40abc8
	.type sub_40abc8, @function
sub_40abc8:

	nop	dword ptr [rax + rax]
.label_838:
	jmp	.label_835
.label_835:
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
	jne	.label_835
	jmp	.label_836
.label_836:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac28
	.globl sub_40ac28
	.type sub_40ac28, @function
sub_40ac28:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac31

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
	jae	.label_838
	jmp	.label_837
.label_837:
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
	jne	.label_837
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_836
	.section	.text
	.align	32
	#Procedure 0x40acd0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ace2
	.globl sub_40ace2
	.type sub_40ace2, @function
sub_40ace2:

	nop	word ptr cs:[rax + rax]
.label_875:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_841
	movabs	rdi, OFFSET FLAT:label_842
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_839
.label_876:
	call	abort
.label_860:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_854
	movabs	rdi, OFFSET FLAT:label_856
	call	gettext
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_861
.label_871:
	movabs	rdi, OFFSET FLAT:label_850
	call	gettext
	mov	qword ptr [rbp - 0xb0], rax
.label_878:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xa8], rax
.label_861:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_881:
	jmp	.label_840
.label_873:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_851
	movabs	rdi, OFFSET FLAT:label_852
	call	gettext
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_857
.label_847:
	movabs	rdi, OFFSET FLAT:label_846
	call	gettext
	mov	qword ptr [rbp - 0xc0], rax
.label_845:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xb8], rax
.label_857:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_840
.label_855:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_875
	movabs	rdi, OFFSET FLAT:label_879
	call	gettext
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_848
.label_862:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_869
	movabs	rdi, OFFSET FLAT:label_853
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_877
.label_880:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	user_group_str
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_863
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_874
.label_840:
	mov	edi, 4
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc8], rax
	call	quotearg_style
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0xcc], eax
	call	free
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_867:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aeb0
	.globl sub_40aeb0
	.type sub_40aeb0, @function
sub_40aeb0:

	nop	word ptr [rax + rax]
.label_851:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_847
	movabs	rdi, OFFSET FLAT:label_844
	call	gettext
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_845
.label_869:
	movabs	rdi, OFFSET FLAT:label_850
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
.label_877:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x98], rax
.label_870:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_881
.label_858:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_849
.label_849:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, rax
	call	user_group_str
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	edx, ecx
	sub	edx, 2
	mov	dword ptr [rbp - 0x74], ecx
	mov	dword ptr [rbp - 0x78], edx
	je	.label_855
	jmp	.label_865
.label_865:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 3
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_866
	jmp	.label_872
.label_872:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 4
	mov	dword ptr [rbp - 0x80], eax
	je	.label_873
	jmp	.label_876
	.section	.text
	.align	32
	#Procedure 0x40af75

	.globl describe_change
	.type describe_change, @function
describe_change:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_880
	movabs	rdi, OFFSET FLAT:label_864
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_867
.label_854:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_871
	movabs	rdi, OFFSET FLAT:label_868
	call	gettext
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_878
.label_841:
	movabs	rdi, OFFSET FLAT:label_843
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_839:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rax
.label_848:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_840
.label_866:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_860
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_862
	movabs	rdi, OFFSET FLAT:label_859
	call	gettext
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_870
.label_863:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_874
.label_874:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x68], rax
	je	.label_858
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_849
.label_889:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
	mov	rdi, rcx
	call	is_zero_or_power_of_two
	test	al, 1
	jne	.label_887
	jmp	.label_885
.label_887:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_891
	mov	byte ptr [rbp - 1], 1
	jmp	.label_886
.label_891:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_885:
	mov	byte ptr [rbp - 1], 0
.label_886:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b0fd
	.globl sub_40b0fd
	.type sub_40b0fd, @function
sub_40b0fd:

	nop	dword ptr [rax]
.label_890:
	movabs	rdi, OFFSET FLAT:label_882
	movabs	rsi, OFFSET FLAT:label_883
	mov	edx, 0x3c
	movabs	rcx, OFFSET FLAT:label_884
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40b128

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x18], 0x95f616
	jne	.label_890
	jmp	.label_888
.label_888:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_889
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_889
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_889
	mov	byte ptr [rbp - 1], 1
	jmp	.label_886
.label_895:
	jmp	.label_892
.label_892:
	jmp	.label_897
.label_897:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_898
.label_893:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_899
.label_894:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_896:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b1da
	.globl sub_40b1da
	.type sub_40b1da, @function
sub_40b1da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b1e0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_898:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_894
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_892
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_899:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_895
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_893
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_896
.label_1470:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_942
.label_1466:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1007
.label_970:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1029
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1029
	jmp	.label_1033
.label_1033:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1034
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1034:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1040
.label_1040:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1044
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1044:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1046
.label_1046:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1049
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1049:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1029:
	jmp	.label_1054
.label_1054:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1055
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1055:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1060
.label_1060:
	jmp	.label_943
.label_943:
	jmp	.label_1090
.label_1090:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1068
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1068
	jmp	.label_1082
.label_1082:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_930
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_930:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1079
.label_1079:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1083
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1083:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1068:
	jmp	.label_1091
.label_1091:
	jmp	.label_1092
.label_1092:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1042
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1042:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1073
	mov	byte ptr [rbp - 0x7e], 0
.label_1073:
	jmp	.label_901
.label_901:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_904
.label_1066:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_907
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_959
.label_1428:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1427:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_914
	jmp	.label_916
.label_916:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_918
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_918:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_914
.label_914:
	movabs	rax, OFFSET FLAT:label_50
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_928
.label_1051:
	jmp	.label_936
.label_936:
	jmp	.label_939
.label_939:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1093
.label_981:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_947
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_947
	test	byte ptr [rbp - 0x7b], 1
	je	.label_947
	jmp	.label_915
.label_1473:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_953
	test	byte ptr [rbp - 0x7b], 1
	je	.label_960
	jmp	.label_915
.label_947:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_962
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_962
	test	byte ptr [rbp - 0x7d], 1
	je	.label_962
	test	byte ptr [rbp - 0x7e], 1
	je	.label_967
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
	jmp	.label_908
.label_1465:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_909
.label_992:
	jmp	.label_977
.label_977:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_928
.label_1084:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_984
	jmp	.label_901
.label_1077:
	jmp	.label_1004
.label_1004:
	jmp	.label_991
.label_991:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_970
	jmp	.label_915
.label_986:
	jmp	.label_996
.label_996:
	jmp	.label_962
.label_962:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_902
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_902
	jmp	.label_1003
.label_1003:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1006
	jmp	.label_1008
.label_1008:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1063
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1063:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_926
.label_926:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1003
.label_1023:
	jmp	.label_959
.label_1464:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_909
.label_931:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_934
.label_940:
	jmp	.label_942
.label_1010:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_941
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_941
	mov	qword ptr [rbp - 0xb8], 1
.label_1093:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1027
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
	jb	.label_1032
	jmp	.label_929
.label_929:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1032
	jmp	.label_968
.label_968:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1032
	jmp	.label_1050
.label_1050:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1051
	jmp	.label_1032
.label_1032:
	jmp	.label_915
.label_1467:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1007
.label_912:
	jmp	.label_1007
.label_1007:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1058
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1004
.label_984:
	jmp	.label_1061
.label_1061:
	jmp	.label_942
.label_969:
	jmp	.label_942
.label_942:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1065
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1069
.label_1065:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_925
.label_1069:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_925
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
	jne	.label_1077
.label_925:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1077
	jmp	.label_943
.label_972:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1089
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
	jmp	.label_964
.label_1006:
	jmp	.label_902
.label_902:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_905
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_905:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_908
.label_953:
	test	byte ptr [rbp - 0x79], 1
	je	.label_911
	test	byte ptr [rbp - 0x7b], 1
	je	.label_911
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_911
	jmp	.label_943
.label_971:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_973:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_933
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_933
	test	byte ptr [rbp - 0x7b], 1
	je	.label_937
	jmp	.label_915
.label_924:
	jmp	.label_942
.label_1101:
	jmp	.label_943
.label_1056:
	jmp	.label_944
.label_1058:
	jmp	.label_942
.label_976:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_945:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_951
	jmp	.label_981
.label_951:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_933
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_933
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_933
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_971
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_971
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_973
.label_1430:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_975
	movabs	rdi, OFFSET FLAT:label_979
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_49
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_975:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_977
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1086:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_992
	jmp	.label_995
.label_995:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_997
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_997:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1005
.label_1005:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1086
.label_1087:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1011
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1011
	jmp	.label_1014
.label_1014:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1016
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1016:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1019
.label_1019:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1022
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1022:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1025
.label_1025:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1030
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1030:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1011:
	jmp	.label_1037
.label_1037:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1038
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1038:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1045
.label_1045:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_906
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_906
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_906
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_906
	jmp	.label_1071
.label_1071:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1057
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1057:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1062
.label_1062:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1067
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1067:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_906
.label_906:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1061
.label_1064:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1056
	jmp	.label_915
.label_1078:
	jmp	.label_944
.label_944:
	jmp	.label_942
.label_1461:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1084
	jmp	.label_1085
.label_1085:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1087
	jmp	.label_915
.label_1462:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1007
	.section	.text
	.align	32
	#Procedure 0x40bbc2

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
.label_1013:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_921
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_927]]
	jmp	rcx
.label_1429:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_928
.label_1002:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_935
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_935
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_935:
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
	jmp	.label_952
.label_952:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_958
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_958:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_963
.label_963:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_966
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_966:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_998:
	jmp	.label_942
.label_1423:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_928
.label_937:
	mov	byte ptr [rbp - 0x81], 1
.label_933:
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
	ja	.label_972
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_982]]
	jmp	rcx
.label_974:
	test	byte ptr [rbp - 0x81], 1
	je	.label_985
	jmp	.label_989
.label_989:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_990
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_990:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_985:
	jmp	.label_957
.label_957:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1001
	jmp	.label_1101
.label_907:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1010
	mov	byte ptr [rbp - 0x91], 0
.label_1024:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1012
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1012:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1020
	jmp	.label_1023
.label_1020:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1024
.label_1043:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1028
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1028:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1039
.label_1039:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1041
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1041:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_961
.label_961:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1047
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1047:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1052
.label_1052:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1053
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1053:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1059
.label_1095:
	jmp	.label_1059
.label_1059:
	jmp	.label_1009
.label_1009:
	jmp	.label_944
.label_1472:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1064
	jmp	.label_1072
.label_1072:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1075
	jmp	.label_1078
.label_921:
	call	abort
.label_1468:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_909
.label_980:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1081
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1081
	jmp	.label_1088
.label_1088:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1015
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1015:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1094
.label_1094:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1096
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1096:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1100
.label_1100:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_903
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_903:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1081:
	jmp	.label_910
.label_910:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_913
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_913:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_919
.label_919:
	jmp	.label_1036
.label_1036:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_923
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_923:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_932
.label_932:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_938
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_938:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_957
.label_915:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_955
	test	byte ptr [rbp - 0x79], 1
	je	.label_955
	mov	dword ptr [rbp - 0x34], 4
.label_955:
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
.label_908:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c15b
	.globl sub_40c15b
	.type sub_40c15b, @function
sub_40c15b:

	nop	dword ptr [rax + rax]
.label_928:
	mov	qword ptr [rbp - 0x58], 0
.label_904:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_976
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_945
.label_967:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_986
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_986
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1013
.label_1471:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_998
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1002
	jmp	.label_915
.label_1463:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1007
.label_1075:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1009
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1009
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1009
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1017
	jmp	.label_1021
.label_1021:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1017
	jmp	.label_1026
.label_1026:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1017
	jmp	.label_1031
.label_1031:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1017
	jmp	.label_1035
.label_1035:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1095
	jmp	.label_1017
.label_1017:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1043
	jmp	.label_915
.label_1089:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1048
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1048:
	jmp	.label_999
.label_999:
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
	jne	.label_1066
	jmp	.label_959
.label_1001:
	jmp	.label_1074
.label_1074:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1076
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1076
	jmp	.label_1070
.label_1070:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1080
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1080:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1000
.label_1000:
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
	mov	byte ptr [rbp - 0x7c], 0
.label_1076:
	jmp	.label_1097
.label_1097:
	jmp	.label_1098
.label_1098:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1099
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1099:
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
	jmp	.label_900
.label_911:
	jmp	.label_909
.label_909:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_912
	test	byte ptr [rbp - 0x7b], 1
	je	.label_912
	jmp	.label_915
.label_934:
	jmp	.label_917
.label_917:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_920
	jmp	.label_942
.label_920:
	jmp	.label_922
.label_922:
	mov	byte ptr [rbp - 0x83], 1
.label_1469:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_924
	test	byte ptr [rbp - 0x7b], 1
	je	.label_924
	jmp	.label_915
.label_1474:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_931
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_934
	jmp	.label_940
.label_1027:
	jmp	.label_941
.label_941:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_946
	mov	byte ptr [rbp - 0x91], 0
.label_946:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_950
.label_950:
	jmp	.label_954
.label_954:
	jmp	.label_956
.label_956:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_999
.label_959:
	jmp	.label_964
.label_964:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_965
	test	byte ptr [rbp - 0x79], 1
	je	.label_969
	test	byte ptr [rbp - 0x91], 1
	jne	.label_969
.label_965:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_900:
	test	byte ptr [rbp - 0x79], 1
	je	.label_974
	test	byte ptr [rbp - 0x91], 1
	jne	.label_974
	jmp	.label_978
.label_978:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_980
	jmp	.label_915
.label_1425:
	mov	byte ptr [rbp - 0x79], 1
.label_1424:
	mov	byte ptr [rbp - 0x7b], 1
.label_1426:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_983
	mov	byte ptr [rbp - 0x79], 1
.label_983:
	jmp	.label_987
.label_987:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_988
	jmp	.label_993
.label_993:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_994
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_994:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_988
.label_988:
	movabs	rax, OFFSET FLAT:label_49
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_928
.label_960:
	jmp	.label_943
.label_1105:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1103
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1104
.label_1103:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1104
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1104:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1106
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1106:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1102:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c68d
	.globl sub_40c68d
	.type sub_40c68d, @function
sub_40c68d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40c68f

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
	jge	.label_1105
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1102
	.section	.text
	.align	32
	#Procedure 0x40c6d0

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
	#Procedure 0x40c702
	.globl sub_40c702
	.type sub_40c702, @function
sub_40c702:

	nop	word ptr cs:[rax + rax]
.label_1108:
	mov	qword ptr [rbp - 8], 0
.label_1107:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c722
	.globl sub_40c722
	.type sub_40c722, @function
sub_40c722:

	nop	dword ptr [rax + rax]
.label_1110:
	jmp	.label_1109
.label_1111:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1112
	jmp	.label_1109
.label_1109:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1108
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1110
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1107
	.section	.text
	.align	32
	#Procedure 0x40c783
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1112:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1111
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1111
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1107
	.section	.text
	.align	32
	#Procedure 0x40c7e0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0x95f616
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c801
	.globl sub_40c801
	.type sub_40c801, @function
sub_40c801:

	nop	word ptr cs:[rax + rax]
.label_1115:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1114
	mov	eax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1113
	.section	.text
	.align	32
	#Procedure 0x40c835

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edx, dword ptr [rbp - 0x1c]
	or	edx, 0x90900
	mov	dword ptr [rbp - 0x2c], edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	al, 0
	call	openat_safer
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	jge	.label_1115
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1116
.label_1114:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x40], eax
	mov	dword ptr [rbp - 0x44], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rax], ecx
.label_1113:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1116:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c8b9
	.globl sub_40c8b9
	.type sub_40c8b9, @function
sub_40c8b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c8c0

	.globl diropen
	.type diropen, @function
diropen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rsi + 0x48]
	and	edx, 0x10
	cmp	edx, 0
	cmovne	eax, ecx
	or	eax, 0x90900
	mov	dword ptr [rbp - 0x14], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1117
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	al, 0
	call	openat_safer
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1118
.label_1117:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x1c], eax
.label_1118:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c941
	.globl sub_40c941
	.type sub_40c941, @function
sub_40c941:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c950

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
	je	.label_1119
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
.label_1119:
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
	#Procedure 0x40cab4
	.globl sub_40cab4
	.type sub_40cab4, @function
sub_40cab4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cac0
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
	#Procedure 0x40cadf
	.globl sub_40cadf
	.type sub_40cadf, @function
sub_40cadf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40cae0

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
.label_1121:
	mov	byte ptr [rbp - 1], 0
.label_1122:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb0e
	.globl sub_40cb0e
	.type sub_40cb0e, @function
sub_40cb0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40cb10
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
	jb	.label_1120
	jmp	.label_1123
.label_1123:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1121
	jmp	.label_1120
.label_1120:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1122
	.section	.text
	.align	32
	#Procedure 0x40cb50
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
	je	.label_1124
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1125
.label_1124:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1125
.label_1125:
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
	#Procedure 0x40cbc2
	.globl sub_40cbc2
	.type sub_40cbc2, @function
sub_40cbc2:

	nop	word ptr cs:[rax + rax]
.label_1149:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1126
	jmp	.label_1136
.label_1136:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1127
	jmp	.label_1145
.label_1145:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1126
	jmp	.label_1147
.label_1147:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1127
	jmp	.label_1142
.label_1142:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1126
	jmp	.label_1129
.label_1129:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1126
	jmp	.label_1137
.label_1137:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1127
	jmp	.label_1146
.label_1146:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1126
	jmp	.label_1133
.label_1133:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1127
	jmp	.label_1143
.label_1143:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1126
	jmp	.label_1131
.label_1131:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1127
	jmp	.label_1139
.label_1139:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1126
	jmp	.label_1135
.label_1135:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1126
	jmp	.label_1138
.label_1138:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1144
	jmp	.label_1127
.label_1127:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1132
.label_1140:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1128:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1132:
	jmp	.label_1134
.label_1134:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cdaa
	.globl sub_40cdaa
	.type sub_40cdaa, @function
sub_40cdaa:

	nop	dword ptr [rax + rax]
.label_1154:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1151:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1134
.label_1156:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1153
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1150
.label_1153:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1150:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1134
.label_1144:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1140
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1128
.label_1141:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1130:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1132
.label_1148:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1154
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1151
	.section	.text
	.align	32
	#Procedure 0x40cf31

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_1155
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
.label_1155:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_1148
	jmp	.label_1152
.label_1152:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1156
	jmp	.label_1149
.label_1126:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1141
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1130
	.section	.text
	.align	32
	#Procedure 0x40d0f0

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
	#Procedure 0x40d127
	.globl sub_40d127
	.type sub_40d127, @function
sub_40d127:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d130

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
	#Procedure 0x40d1a5
	.globl sub_40d1a5
	.type sub_40d1a5, @function
sub_40d1a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1b0

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rbp - 0x14], edx
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0xc]
	jne	.label_1162
	cmp	dword ptr [rbp - 0x14], -0x64
	je	.label_1162
	call	abort
.label_1162:
	jmp	.label_1158
.label_1158:
	test	byte ptr [rbp - 0xd], 1
	je	.label_1157
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x60
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdi, rax
	call	i_ring_push
	xor	esi, esi
	mov	dword ptr [rbp - 0x18], eax
	cmp	esi, dword ptr [rbp - 0x18]
	jg	.label_1161
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	dword ptr [rbp - 0x1c], eax
.label_1161:
	jmp	.label_1159
.label_1157:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1160
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_1163
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	dword ptr [rbp - 0x20], eax
.label_1163:
	jmp	.label_1160
.label_1160:
	jmp	.label_1159
.label_1159:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x2c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d26e
	.globl sub_40d26e
	.type sub_40d26e, @function
sub_40d26e:

	nop	
.label_1168:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1164
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1164
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1165
.label_1171:
	jmp	.label_1169
.label_1169:
	jmp	.label_1166
.label_1166:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1167
.label_1164:
	mov	byte ptr [rbp - 1], 0
.label_1165:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d2c6
	.globl sub_40d2c6
	.type sub_40d2c6, @function
sub_40d2c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2d5
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1167:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1168
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1169
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1170:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1171
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1170
.label_1173:
	mov	byte ptr [rbp - 1], 0
.label_1174:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d36e
	.globl sub_40d36e
	.type sub_40d36e, @function
sub_40d36e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d376
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
	jb	.label_1172
	jmp	.label_1175
.label_1175:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1173
	jmp	.label_1172
.label_1172:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1174
.label_1228:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rsi + 0x90]
	and	edx, 0xf000
	cmp	edx, 0x4000
	jne	.label_1196
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_1196
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rdx + 0x68]
	jae	.label_1196
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_1196
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x68]
	add	rcx, -1
	mov	qword ptr [rax + 0x68], rcx
.label_1196:
	jmp	.label_1200
.label_1200:
	jmp	.label_1206
.label_1187:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	fchdir
	cmp	eax, 0
	je	.label_1183
.label_1180:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_1183:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1186
.label_1201:
	jmp	.label_1219
.label_1219:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1197
.label_1190:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_1177
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1183
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1187
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x44]
	call	cwd_advance_fd
	xor	edx, edx
	mov	cl, dl
	test	cl, 1
	jne	.label_1180
	jmp	.label_1183
.label_1221:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_1226:
	jmp	.label_1209
.label_1209:
	jmp	.label_1194
.label_1246:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 0
	je	.label_1198
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_1198
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
.label_1198:
	jmp	.label_1207
.label_1207:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1197
.label_1179:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x68], rax
.label_1191:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 8], rax
.label_1197:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d568
	.globl sub_40d568
	.type sub_40d568, @function
sub_40d568:

	nop	
.label_1220:
	jmp	.label_1185
.label_1185:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	jne	.label_1188
	call	abort
.label_1241:
	jmp	.label_1215
.label_1203:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1225
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x1000
	cmp	ecx, 0
	je	.label_1225
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xffffefff
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1225:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1239
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x30]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_1193
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1212:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1244
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1212
.label_1245:
	jmp	.label_1216
.label_1216:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1218
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1218
	mov	esi, 3
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_build
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1235
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1241
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1197
.label_1236:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_load
	mov	rdi, qword ptr [rbp - 0x10]
	call	setup_dir
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1194
	.section	.text
	.align	32
	#Procedure 0x40d725

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	je	.label_1242
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1222
.label_1242:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1197
.label_1177:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_1182
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:label_484
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_1182
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_1182:
	jmp	.label_1186
.label_1186:
	jmp	.label_1176
.label_1176:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 2
	je	.label_1178
	mov	eax, 6
	mov	ecx, 7
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x40], 0
	cmovne	eax, ecx
	mov	si, ax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	word ptr [rdx + 0x70], si
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x40], 0
	jne	.label_1181
	jmp	.label_1192
.label_1192:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	jmp	.label_1181
.label_1181:
	jmp	.label_1178
.label_1178:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1179
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_1191
.label_1234:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	cmp	ecx, 2
	jne	.label_1214
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	jne	.label_1205
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1205
	movabs	rsi, OFFSET FLAT:label_649
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	jge	.label_1231
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	jmp	.label_1232
.label_1237:
	jmp	.label_1238
.label_1238:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_1240
	call	abort
.label_1188:
	jmp	.label_1189
.label_1189:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1190
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_1184
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_1184:
	jmp	.label_1176
.label_1224:
	jmp	.label_1215
.label_1215:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], -1
	jne	.label_1220
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1197
.label_1239:
	mov	esi, 3
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	jne	.label_1233
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1246
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1197
.label_1204:
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 2
	jne	.label_1202
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	je	.label_1195
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xd
	jne	.label_1202
.label_1195:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	jne	.label_1209
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1209
	movabs	rsi, OFFSET FLAT:label_649
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	jge	.label_1221
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	jmp	.label_1226
.label_1233:
	jmp	.label_1230
.label_1230:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1208
.label_1211:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	cmp	ecx, 4
	jne	.label_1234
	jmp	.label_1216
.label_1222:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	cx, word ptr [rax + 0x74]
	mov	word ptr [rbp - 0x22], cx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
	movzx	edx, word ptr [rbp - 0x22]
	cmp	edx, 1
	jne	.label_1204
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	jmp	.label_1197
.label_1210:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x50], rax
.label_1229:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rax], 0x2f
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	qword ptr [rbp - 0x58], rax
.label_1194:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_1223
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 2
	jne	.label_1237
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	jne	.label_1228
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_1228
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_1228
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_1228
	jmp	.label_1200
.label_1231:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_1232:
	jmp	.label_1205
.label_1205:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
.label_1214:
	jmp	.label_1208
.label_1208:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	rdx, qword ptr [rdx + 0x38]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x2f
	mov	qword ptr [rbp - 0x48], rax
	jne	.label_1210
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1229
.label_1218:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_1224
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1211
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_1236
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1197
.label_1244:
	jmp	.label_1193
.label_1193:
	jmp	.label_1230
.label_1202:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_1245
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 4
	je	.label_1199
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	je	.label_1203
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_1203
.label_1199:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_1213
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x3c], eax
.label_1213:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1217
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1217:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1197
.label_1235:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	jmp	.label_1208
.label_1240:
	jmp	.label_1227
.label_1227:
	jmp	.label_1206
.label_1206:
	jmp	.label_1223
.label_1223:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_1219
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1243
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_1243:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	enter_dir
	test	al, 1
	jne	.label_1201
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1197
	.section	.text
	.align	32
	#Procedure 0x40de30
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
	jae	.label_1247
	call	xalloc_die
.label_1247:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de78
	.globl sub_40de78
	.type sub_40de78, @function
sub_40de78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de80

	.globl fts_compar
	.type fts_compar, @function
fts_compar:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 0x50]
	mov	rsi, qword ptr [rsi + 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x28]
	call	rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40deca
	.globl sub_40deca
	.type sub_40deca, @function
sub_40deca:

	nop	word ptr [rax + rax]
.label_1251:
	jmp	.label_1248
.label_1248:
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
	jne	.label_1249
	jmp	.label_1250
	.section	.text
	.align	32
	#Procedure 0x40df09

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
	jne	.label_1251
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1252
.label_1249:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1248
.label_1250:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1252:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df81
	.globl sub_40df81
	.type sub_40df81, @function
sub_40df81:

	nop	word ptr cs:[rax + rax]
.label_1407:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1294:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1282
.label_1282:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1257:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1293
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1257
.label_1409:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1260:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1259
.label_1413:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1255
.label_1280:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1272
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1274
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1274
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1274
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1285
.label_1272:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1290
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1291
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1259
.label_1270:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1279:
	jmp	.label_1256
.label_1256:
	jmp	.label_1258
.label_1258:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_1260
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1265]]
	jmp	rcx
.label_1408:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1263:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1253
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1275
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1259
.label_1412:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1269:
	movabs	rdi, OFFSET FLAT:label_1287
	movabs	rsi, OFFSET FLAT:label_1288
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1289
	call	__assert_fail
.label_1293:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1280
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1259
.label_1414:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1411:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1406:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1285:
	jmp	.label_1262
	.section	.text
	.align	32
	#Procedure 0x40e255

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
	jg	.label_1269
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1269
	jmp	.label_1276
.label_1403:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1404:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1410:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1255:
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
	je	.label_1254
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1254:
	jmp	.label_1253
.label_1253:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1259:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e333
	.globl sub_40e333
	.type sub_40e333, @function
sub_40e333:

	nop	dword ptr [rax + rax]
.label_1275:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1266
	jmp	.label_1268
.label_1268:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1266
	jmp	.label_1271
.label_1271:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1266
	jmp	.label_1267
.label_1267:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1266
	jmp	.label_1278
.label_1278:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1266
	jmp	.label_1281
.label_1281:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1266
	jmp	.label_1286
.label_1286:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1266
	jmp	.label_1292
.label_1292:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1266
	jmp	.label_1295
.label_1295:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1266
	jmp	.label_1261
.label_1261:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1266
	jmp	.label_1264
.label_1264:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1258
	jmp	.label_1266
.label_1266:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1256
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1270
	jmp	.label_1273
.label_1273:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1270
	jmp	.label_1277
.label_1277:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1279
	jmp	.label_1283
.label_1283:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1284
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1284:
	jmp	.label_1279
.label_1405:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1255
.label_1276:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1294
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1282
.label_1274:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1259
.label_1291:
	mov	dword ptr [rbp - 0x4c], 1
.label_1290:
	jmp	.label_1262
.label_1262:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1263
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1259
.label_1297:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x80]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	cmp	rdx, qword ptr [rsi + 0x80]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_1296:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e56e
	.globl sub_40e56e
	.type sub_40e56e, @function
sub_40e56e:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e575

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 0x80]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	cmp	rsi, qword ptr [rdi + 0x80]
	jae	.label_1297
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1296
	.section	.text
	.align	32
	#Procedure 0x40e5b0
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e5e6
	.globl sub_40e5e6
	.type sub_40e5e6, @function
sub_40e5e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e5f0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1298
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1304
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_1299
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1301]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1302]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1303]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:label_1300
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e709
	.globl sub_40e709
	.type sub_40e709, @function
sub_40e709:

	nop	dword ptr [rax]
.label_1306:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1308:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1305:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e769
	.globl sub_40e769
	.type sub_40e769, @function
sub_40e769:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e774

	.globl open_safer
	.type open_safer, @function
open_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_1307
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_1307:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	cmp	edi, 0
	je	.label_1305
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_1306
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_1308
.label_1324:
	mov	dword ptr [rbp - 4], 0
.label_1311:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e920
	.globl sub_40e920
	.type sub_40e920, @function
sub_40e920:

	nop	dword ptr [rax]
.label_1322:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1316:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	jmp	.label_1310
.label_1318:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1313
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	cmp	eax, 0
	je	.label_1323
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_1323:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x28]
	call	close
	cmp	eax, 0
	je	.label_1320
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_1315
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_1315:
	jmp	.label_1320
.label_1320:
	jmp	.label_1313
.label_1313:
	jmp	.label_1312
.label_1312:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	fd_ring_clear
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x50], 0
	je	.label_1309
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x50]
	call	hash_free
.label_1309:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1324
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1311
.label_1317:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_1325:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1321
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_1321:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1318
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x2c]
	jg	.label_1319
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	cmp	eax, 0
	je	.label_1314
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_1314:
	jmp	.label_1319
.label_1319:
	jmp	.label_1312
	.section	.text
	.align	32
	#Procedure 0x40eaad

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x24], 0
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	je	.label_1325
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
.label_1310:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_1317
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1322
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1316
.label_1329:
	movabs	rdi, OFFSET FLAT:label_1326
	movabs	rsi, OFFSET FLAT:label_1327
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:label_1328
	call	__assert_fail
.label_1331:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb42
	.globl sub_40eb42
	.type sub_40eb42, @function
sub_40eb42:

	nop	word ptr cs:[rax + rax]
.label_1330:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40eb55

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	or	esi, 0x200
	mov	rdx, qword ptr [rbp - 0x18]
	call	rpl_fts_open
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1331
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1329
	jmp	.label_1330
	.section	.text
	.align	32
	#Procedure 0x40ec05
	.globl sub_40ec05
	.type sub_40ec05, @function
sub_40ec05:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec12
	.globl sub_40ec12
	.type sub_40ec12, @function
sub_40ec12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec36
	.globl sub_40ec36
	.type sub_40ec36, @function
sub_40ec36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec49
	.globl sub_40ec49
	.type sub_40ec49, @function
sub_40ec49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ec50

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40ec60

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x40ec6f
	.globl sub_40ec6f
	.type sub_40ec6f, @function
sub_40ec6f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40ec70

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x40ec80

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
