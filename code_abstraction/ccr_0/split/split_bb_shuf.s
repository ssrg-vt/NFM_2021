	.section	.text
	.align	32
	#Procedure 0x401c89
	.globl sub_401c89
	.type sub_401c89, @function
sub_401c89:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401c8a
	.globl sub_401c8a
	.type sub_401c8a, @function
sub_401c8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cc2
	.globl sub_401cc2
	.type sub_401cc2, @function
sub_401cc2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d0a
	.globl sub_401d0a
	.type sub_401d0a, @function
sub_401d0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d2c
	.globl sub_401d2c
	.type sub_401d2c, @function
sub_401d2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d3d
	.globl sub_401d3d
	.type sub_401d3d, @function
sub_401d3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d56
	.globl sub_401d56
	.type sub_401d56, @function
sub_401d56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d60

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
	#Procedure 0x401d88
	.globl sub_401d88
	.type sub_401d88, @function
sub_401d88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d90

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
	je	.label_10
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_13
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_12
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_11
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_14
.label_12:
	mov	byte ptr [rbp - 5], 0
.label_14:
	jmp	.label_10
.label_10:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e03
	.globl sub_401e03
	.type sub_401e03, @function
sub_401e03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e10

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
	#Procedure 0x401e43
	.globl sub_401e43
	.type sub_401e43, @function
sub_401e43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e50
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
	#Procedure 0x401e7d
	.globl sub_401e7d
	.type sub_401e7d, @function
sub_401e7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e80

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_15
	cmp	dword ptr [rbp - 4], 2
	jg	.label_15
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
.label_15:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
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

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401eeb
	.globl sub_401eeb
	.type sub_401eeb, @function
sub_401eeb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ef0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_16
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
	#Procedure 0x401f20

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f6e
	.globl sub_401f6e
	.type sub_401f6e, @function
sub_401f6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401f70

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
	#Procedure 0x401fa7
	.globl sub_401fa7
	.type sub_401fa7, @function
sub_401fa7:

	nop	word ptr [rax + rax]
.label_19:
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
	#Procedure 0x401fd3
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
.label_17:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_19
	jmp	.label_18
.label_18:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_17
.label_21:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
.label_20:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [suffix_length]],  rax
.label_31:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40203a
	.globl sub_40203a
	.type sub_40203a, @function
sub_40203a:

	nop	dword ptr [rax + rax]
.label_37:
	mov	eax, 2
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	jbe	.label_21
	mov	eax, 2
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_20
.label_26:
	mov	byte ptr [byte ptr [suffix_auto]],  0
	jmp	.label_31
	.section	.text
	.align	32
	#Procedure 0x40206d

	.globl set_suffix_length
	.type set_suffix_length, @function
set_suffix_length:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], 0
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_33
	mov	byte ptr [byte ptr [suffix_auto]],  0
.label_33:
	cmp	dword ptr [rbp - 0xc], 5
	je	.label_29
	cmp	dword ptr [rbp - 0xc], 6
	je	.label_29
	cmp	dword ptr [rbp - 0xc], 7
	jne	.label_34
.label_29:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_36
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x28]
	movabs	r8, OFFSET FLAT:label_27
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_25
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 8]
	cmp	rcx, rax
	ja	.label_25
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_28
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_28:
	jmp	.label_25
.label_25:
	jmp	.label_36
.label_36:
	mov	rdi,  qword ptr [word ptr [suffix_alphabet]]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	cmp	rdx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x39], sil
.label_35:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, rcx
	xor	edx, edx
	mov	rcx, qword ptr [rbp - 0x48]
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_35
.label_32:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [byte ptr [suffix_auto]],  0
.label_34:
	cmp	qword ptr [word ptr [suffix_length]],  0
	je	.label_37
	mov	rax,  qword ptr [word ptr [suffix_length]]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_26
	movabs	rdi, OFFSET FLAT:label_30
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_49:
	movabs	rdi, OFFSET FLAT:label_22
	movabs	rsi, OFFSET FLAT:label_23
	mov	edx, 0x3e0
	movabs	rcx, OFFSET FLAT:label_24
	call	__assert_fail
.label_44:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	safe_read
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_48
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x70], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_39:
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x78], rax
.label_47:
	mov	rax, qword ptr [rbp - 0x78]
	mov	edi, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x48]
	je	.label_46
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_46
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	movabs	rdx, OFFSET FLAT:label_43
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_46:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_38
.label_42:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x38]
	cmp	rax, rcx
	jae	.label_39
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_47
.label_45:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40233c
	.globl sub_40233c
	.type sub_40233c, @function
sub_40233c:

	nop	dword ptr [rax + rax]
.label_50:
	mov	qword ptr [rbp - 0x28], -1
.label_54:
	jmp	.label_38
.label_38:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jge	.label_45
	cmp	qword ptr [rbp - 0x28], -1
	je	.label_44
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x28], -1
	jmp	.label_40
.label_52:
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x50]
	imul	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_55
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_53
.label_51:
	xor	edi, edi
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x38]
	call	lseek
	cmp	rax, 0
	jge	.label_50
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x6c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_48:
	jmp	.label_40
.label_40:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_42
	jmp	.label_45
.label_55:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	imul	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
.label_53:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_51
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_54
	.section	.text
	.align	32
	#Procedure 0x402496

	.globl bytes_chunk_extract
	.type bytes_chunk_extract, @function
bytes_chunk_extract:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	cmp	qword ptr [rbp - 8], 0
	je	.label_49
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_49
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_49
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_49
	jmp	.label_52
.label_57:
	mov	byte ptr [rbp - 1], 0
.label_58:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024fe
	.globl sub_4024fe
	.type sub_4024fe, @function
sub_4024fe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40250c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_57
	jmp	.label_56
.label_56:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_58
	.section	.text
	.align	32
	#Procedure 0x402530
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_59
	jmp	.label_61
.label_61:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_60
.label_59:
	mov	byte ptr [rbp - 1], 0
.label_60:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402562
	.globl sub_402562
	.type sub_402562, @function
sub_402562:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402570
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_62
	call	gettext
	movabs	rsi, OFFSET FLAT:label_64
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_65
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_66
	movabs	rdx, OFFSET FLAT:label_67
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_63
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
	#Procedure 0x4025f6
	.globl sub_4025f6
	.type sub_4025f6, @function
sub_4025f6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402600
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
	jb	.label_68
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_70
	jmp	.label_68
.label_68:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_69
.label_70:
	mov	byte ptr [rbp - 1], 0
.label_69:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40264b
	.globl sub_40264b
	.type sub_40264b, @function
sub_40264b:

	nop	dword ptr [rax + rax]
.label_73:
	mov	byte ptr [rbp - 1], 0
.label_75:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40265e
	.globl sub_40265e
	.type sub_40265e, @function
sub_40265e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402666
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
	jb	.label_72
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_73
	jmp	.label_72
.label_72:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_76
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_76
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_76
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_76
.label_76:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402716
	.globl sub_402716
	.type sub_402716, @function
sub_402716:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402720
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
	#Procedure 0x40275a
	.globl sub_40275a
	.type sub_40275a, @function
sub_40275a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402760
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_77
	jmp	.label_79
.label_79:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_78
.label_77:
	mov	byte ptr [rbp - 1], 0
.label_78:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402792
	.globl sub_402792
	.type sub_402792, @function
sub_402792:

	nop	word ptr cs:[rax + rax]
.label_84:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_87:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_82
	movabs	rsi, OFFSET FLAT:label_81
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_82
	movabs	rsi, OFFSET FLAT:label_83
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_80
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_80:
	jmp	.label_82
.label_82:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402855
	.globl sub_402855
	.type sub_402855, @function
sub_402855:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40285c

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_86
	movabs	rdi, OFFSET FLAT:label_85
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_86:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_84
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_87
.label_88:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028c6
	.globl sub_4028c6
	.type sub_4028c6, @function
sub_4028c6:

	nop	word ptr [rax + rax]
.label_90:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_93:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_89:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_88
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40291b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_89
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_92
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_89
.label_92:
	movabs	rdi, OFFSET FLAT:label_91
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_90
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_94
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_93
	.section	.text
	.align	32
	#Procedure 0x4029b0

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029be
	.globl sub_4029be
	.type sub_4029be, @function
sub_4029be:

	nop	
.label_95:
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
	#Procedure 0x4029ea
	.globl sub_4029ea
	.type sub_4029ea, @function
sub_4029ea:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029f6

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
	jne	.label_95
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402a30

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a36
	.globl sub_402a36
	.type sub_402a36, @function
sub_402a36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40

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
	jne	.label_96
	movabs	rax, OFFSET FLAT:label_27
	mov	qword ptr [rbp - 8], rax
.label_96:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_97
	movabs	rax, OFFSET FLAT:label_98
	mov	qword ptr [rbp - 8], rax
.label_97:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a97
	.globl sub_402a97
	.type sub_402a97, @function
sub_402a97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402aae
	.globl sub_402aae
	.type sub_402aae, @function
sub_402aae:

	nop	
.label_103:
	jmp	.label_99
.label_100:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_99:
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
	#Procedure 0x402aef
	.globl sub_402aef
	.type sub_402aef, @function
sub_402aef:

	nop	word ptr [rax + rax]
.label_101:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_100
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402b19

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
	jne	.label_101
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_102
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
.label_102:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_103
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402ba0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_104
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_104
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_106
.label_105:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_106:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bee
	.globl sub_402bee
	.type sub_402bee, @function
sub_402bee:

	nop	word ptr [rax + rax]
.label_104:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_105
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_105
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402c20

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
	#Procedure 0x402c58
	.globl sub_402c58
	.type sub_402c58, @function
sub_402c58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_108:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_110
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_108
.label_110:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_111
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_109]],  rax
.label_111:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_107
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_107:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d34
	.globl sub_402d34
	.type sub_402d34, @function
sub_402d34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d40

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
	#Procedure 0x402d7e
	.globl sub_402d7e
	.type sub_402d7e, @function
sub_402d7e:

	nop	
.label_116:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_112
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_113
.label_112:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_113
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_113:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_114
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_114:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_115:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e0d
	.globl sub_402e0d
	.type sub_402e0d, @function
sub_402e0d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402e0f

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
	jge	.label_116
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_115
	.section	.text
	.align	32
	#Procedure 0x402e50
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
	je	.label_117
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_118
.label_117:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_118
.label_118:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e97
	.globl sub_402e97
	.type sub_402e97, @function
sub_402e97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0

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
	#Procedure 0x402ec0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_119
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_41
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402eff
	.globl sub_402eff
	.type sub_402eff, @function
sub_402eff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f00

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	set_binary_mode
	cmp	eax, 0
	jge	.label_120
	call	xset_binary_mode_error
.label_120:
	add	rsp, 0x10
	pop	rbp
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
	#Procedure 0x402fa5
	.globl sub_402fa5
	.type sub_402fa5, @function
sub_402fa5:

	nop	word ptr cs:[rax + rax]
.label_122:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_121:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fcc
	.globl sub_402fcc
	.type sub_402fcc, @function
sub_402fcc:

	nop	word ptr cs:[rax + rax]
.label_123:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_121
	.section	.text
	.align	32
	#Procedure 0x403000

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
	jne	.label_122
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_122
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_122
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_123
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_121
	.section	.text
	.align	32
	#Procedure 0x403080

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
	#Procedure 0x4030ab
	.globl sub_4030ab
	.type sub_4030ab, @function
sub_4030ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0

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
	je	.label_124
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_125
.label_124:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_125
.label_125:
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
	je	.label_126
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_126:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403204
	.globl sub_403204
	.type sub_403204, @function
sub_403204:

	nop	word ptr cs:[rax + rax]
.label_129:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40321a
	.globl sub_40321a
	.type sub_40321a, @function
sub_40321a:

	nop	word ptr cs:[rax + rax]
.label_127:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_130
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_129
	.section	.text
	.align	32
	#Procedure 0x403242

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_128:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_129
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_127
	jmp	.label_129
.label_130:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_128
	.section	.text
	.align	32
	#Procedure 0x4032c0

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
.label_134:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_131
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_136
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_135
.label_136:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_135:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_131:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_137
	jmp	.label_132
.label_137:
	jmp	.label_133
.label_133:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_134
.label_132:
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
	#Procedure 0x4033c9
	.globl sub_4033c9
	.type sub_4033c9, @function
sub_4033c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033d0
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
	#Procedure 0x4033ff
	.globl sub_4033ff
	.type sub_4033ff, @function
sub_4033ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403400

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
	#Procedure 0x403410

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
	#Procedure 0x40342b
	.globl sub_40342b
	.type sub_40342b, @function
sub_40342b:

	nop	dword ptr [rax + rax]
.label_139:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_138
.label_138:
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
	#Procedure 0x4034a3
	.globl sub_4034a3
	.type sub_4034a3, @function
sub_4034a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034b1

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
	je	.label_139
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_138
	.section	.text
	.align	32
	#Procedure 0x4034e0

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
.label_142:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_141
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_141:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_148
	jmp	.label_151
.label_148:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_142
.label_151:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_143
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_143:
	movabs	rdi, OFFSET FLAT:label_147
	call	gettext
	movabs	rsi, OFFSET FLAT:label_66
	movabs	rdx, OFFSET FLAT:label_67
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
	je	.label_144
	movabs	rsi, OFFSET FLAT:label_150
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_144
	movabs	rdi, OFFSET FLAT:label_145
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_144:
	movabs	rdi, OFFSET FLAT:label_140
	call	gettext
	movabs	rsi, OFFSET FLAT:label_67
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_146
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_27
	movabs	rsi, OFFSET FLAT:label_149
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
	#Procedure 0x403679
	.globl sub_403679
	.type sub_403679, @function
sub_403679:

	nop	dword ptr [rax]
.label_154:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403686
	.globl sub_403686
	.type sub_403686, @function
sub_403686:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40368c

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_157:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_152
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_157
.label_152:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_159:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_154
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_158
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_153
.label_158:
	test	byte ptr [rbp - 0x19], 1
	je	.label_156
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_156:
	jmp	.label_153
.label_153:
	jmp	.label_155
.label_155:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_159
.label_263:
	mov	eax, 1
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	mov	edx, dword ptr [rbp - 0x3c]
	sub	edx, 0x30
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0x1f4], eax
.label_271:
	mov	eax, dword ptr [rbp - 0x1f4]
	cmp	eax, 0
	jne	.label_251
	movabs	rdi, OFFSET FLAT:label_256
	call	gettext
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x200], rax
	call	umaxtostr
	mov	edi, 1
	xor	esi, esi
	mov	r8d, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x200]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1172:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	call	line_bytes_split
	jmp	.label_163
	.section	.text
	.align	32
	#Procedure 0x4037a7

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x350
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
	mov	qword ptr [rbp - 0x20], 0
	call	getpagesize
	movabs	rsi, 0x7fffffffffffffff
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_27
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_172
	movabs	rsi, OFFSET FLAT:label_173
	mov	qword ptr [rbp - 0x150], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_172
	mov	qword ptr [rbp - 0x158], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x160], rax
	call	atexit
	movabs	rdi, OFFSET FLAT:label_43
	mov	dword ptr [rbp - 0x164], eax
	call	bad_cast
	movabs	rdi, OFFSET FLAT:label_194
	mov	qword ptr [word ptr [infile]],  rax
	call	bad_cast
	mov	qword ptr [word ptr [outbase]],  rax
.label_232:
	cmp	dword ptr [dword ptr [optind]],  0
	je	.label_202
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x168], eax
	jmp	.label_164
.label_174:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jbe	.label_241
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x290], rax
	jmp	.label_214
.label_212:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_221
	mov	dword ptr [rbp - 0x14], 4
	mov	qword ptr [rbp - 0x38], 0
.label_221:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_231
	cmp	dword ptr [rbp - 0x14], 4
	je	.label_231
	jmp	.label_234
.label_234:
	movabs	rdi, OFFSET FLAT:label_189
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_231:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_193
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x4c]
	je	.label_193
	mov	qword ptr [rbp - 0x38], 0
.label_193:
	movabs	rax, 0x1999999999999999
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], ecx
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_258
	imul	rax, qword ptr [rbp - 0x38], 0xa
	mov	ecx, dword ptr [rbp - 0x3c]
	sub	ecx, 0x30
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_263
.label_258:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1f4], eax
	jmp	.label_271
.label_171:
	movabs	rdi, OFFSET FLAT:label_215
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [optarg]]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x228], rax
	mov	qword ptr [rbp - 0x230], rcx
	call	gettext
	mov	edx, 1
	mov	esi, edx
	movabs	rcx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x230]
	mov	rdx, qword ptr [rbp - 0x228]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_168
.label_236:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_295
	mov	dword ptr [rbp - 0x14], 3
	mov	qword ptr [rbp - 0x38], 0x3e8
.label_295:
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_166
	movabs	rdi, OFFSET FLAT:label_209
	call	gettext
	movabs	rdi, OFFSET FLAT:label_176
	mov	qword ptr [rbp - 0x240], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_94
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0x240]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_253:
	movabs	rdi, OFFSET FLAT:label_192
	call	gettext
	mov	qword ptr [rbp - 0x210], rax
.label_178:
	mov	rax, qword ptr [rbp - 0x210]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x218], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_198:
	jmp	.label_210
.label_210:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [eolchar]]
	jg	.label_213
	movsx	eax, byte ptr [rbp - 0x59]
	cmp	eax,  dword ptr [dword ptr [eolchar]]
	je	.label_213
	movabs	rdi, OFFSET FLAT:label_224
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_251:
	jmp	.label_168
.label_241:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x290], rax
.label_214:
	mov	rax, qword ptr [rbp - 0x290]
	mov	qword ptr [rbp - 0x48], rax
.label_227:
	cmp	qword ptr [word ptr [filter_command]],  0
	je	.label_242
	movabs	rdi, OFFSET FLAT:newblocked
	call	sigemptyset
	mov	edi, 0xd
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0x148]
	mov	dword ptr [rbp - 0x294], eax
	call	sigaction
	mov	ecx, 1
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x148], rdx
	mov	dword ptr [rbp - 0x298], eax
	je	.label_259
	movabs	rdi, OFFSET FLAT:newblocked
	mov	esi, 0xd
	call	sigaddset
	mov	dword ptr [rbp - 0x29c], eax
.label_259:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:newblocked
	movabs	rdx, OFFSET FLAT:oldblocked
	call	sigprocmask
	mov	dword ptr [rbp - 0x2a0], eax
.label_242:
	mov	eax, dword ptr [rbp - 0x14]
	dec	eax
	mov	ecx, eax
	sub	eax, 6
	mov	qword ptr [rbp - 0x2a8], rcx
	mov	dword ptr [rbp - 0x2ac], eax
	ja	.label_283
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_286]]
	jmp	rcx
.label_1175:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x90]
	mov	r9, qword ptr [rbp - 0x48]
	call	lines_chunk_split
	jmp	.label_163
.label_206:
	xor	edi, edi
	call	usage
.label_202:
	mov	eax, 1
	mov	dword ptr [rbp - 0x168], eax
	jmp	.label_164
.label_164:
	mov	eax, dword ptr [rbp - 0x168]
	movabs	rdx, OFFSET FLAT:label_170
	movabs	rcx, OFFSET FLAT:longopts
	xor	esi, esi
	mov	r8d, esi
	mov	dword ptr [rbp - 0x4c], eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], -1
	jne	.label_182
	jmp	.label_185
.label_179:
	cmp	qword ptr [rbp - 0x20], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	test	byte ptr [rbp - 0x71], 1
	jne	.label_187
	movabs	rax, OFFSET FLAT:in_stat_buf
	mov	ecx, OFFSET FLAT:in_stat_buf
	mov	esi, ecx
	mov	rdx, rsp
	mov	ecx, 0x12
	mov	rdi, rdx
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	qword ptr [rbp - 0x268], rax
	call	io_blksize
	mov	qword ptr [rbp - 0x20], rax
.label_187:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x28]
	call	ptr_align
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], -1
	cmp	dword ptr [rbp - 0x14], 5
	je	.label_216
	cmp	dword ptr [rbp - 0x14], 6
	jne	.label_227
.label_216:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:in_stat_buf
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	call	input_file_size
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jge	.label_238
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_223
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x26c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	qword ptr [rbp - 0x278], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x26c]
	mov	rdx, qword ptr [rbp - 0x278]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_197:
	movabs	rsi, OFFSET FLAT:label_265
	movabs	rdx, OFFSET FLAT:label_66
	movabs	r8, OFFSET FLAT:label_266
	movabs	r9, OFFSET FLAT:label_267
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x238], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_1174:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_287
	mov	rax, qword ptr [rbp - 0x48]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x2b8], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rdx, rax
	call	bytes_split
	jmp	.label_196
.label_203:
	xor	eax, eax
	mov	edi, eax
	mov	esi,  dword ptr [dword ptr [output_desc]]
	mov	edx,  dword ptr [dword ptr [filter_pid]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	call	closeout
	xor	eax, eax
	add	rsp, 0x350
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e45
	.globl sub_403e45
	.type sub_403e45, @function
sub_403e45:

	nop	dword ptr [rax]
.label_291:
	movabs	rdi, OFFSET FLAT:label_183
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1b8], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	movabs	rdx, 0x1fffffffffffffff
	movabs	rcx, OFFSET FLAT:label_27
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1b8]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [suffix_length]],  rax
	jmp	.label_168
.label_248:
	jmp	.label_276
.label_276:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x30
	mov	byte ptr [rbp - 0x219], cl
	jne	.label_205
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x219], dl
.label_205:
	mov	al, byte ptr [rbp - 0x219]
	test	al, 1
	jne	.label_219
	jmp	.label_225
.label_219:
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_276
.label_168:
	jmp	.label_232
.label_166:
	cmp	dword ptr [dword ptr [eolchar]],  0
	jge	.label_235
	mov	dword ptr [dword ptr [eolchar]],  0xa
.label_235:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x14]
	call	set_suffix_length
	mov	esi,  dword ptr [dword ptr [optind]]
	cmp	esi, dword ptr [rbp - 8]
	jge	.label_246
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [word ptr [infile]],  rdx
.label_246:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_262
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [word ptr [outbase]],  rdx
.label_262:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_277
	movabs	rdi, OFFSET FLAT:label_282
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x248], rax
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x248]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_245:
	cmp	dword ptr [rbp - 0x3c], 0x64
	jne	.label_294
	movabs	rax, OFFSET FLAT:label_161
	mov	qword ptr [word ptr [suffix_alphabet]],  rax
	jmp	.label_162
.label_249:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x280], rax
.label_292:
	mov	rax, qword ptr [rbp - 0x280]
	movabs	rcx, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x90], rax
	cmp	rcx, qword ptr [rbp - 0x38]
	jae	.label_174
	movabs	rdi, OFFSET FLAT:label_181
	call	gettext
	lea	rsi, [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x288], rax
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	edi, 1
	mov	esi, 0x4b
	movabs	rdx, OFFSET FLAT:label_94
	mov	rcx, qword ptr [rbp - 0x288]
	mov	r8, rax
	mov	al, 0
	call	error
.label_163:
	xor	edi, edi
	call	close
	cmp	eax, 0
	je	.label_203
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x2bc], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x2bc]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_294:
	movabs	rax, OFFSET FLAT:label_226
	mov	qword ptr [word ptr [suffix_alphabet]],  rax
.label_162:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_229
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strlen
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsi,  qword ptr [word ptr [suffix_alphabet]]
	mov	qword ptr [rbp - 0x208], rax
	call	strspn
	mov	rsi, qword ptr [rbp - 0x208]
	cmp	rsi, rax
	je	.label_248
	cmp	dword ptr [rbp - 0x3c], 0x64
	jne	.label_253
	movabs	rdi, OFFSET FLAT:label_288
	call	gettext
	mov	qword ptr [rbp - 0x210], rax
	jmp	.label_178
.label_1171:
	mov	rcx, -1
	xor	eax, eax
	mov	r8d, eax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	call	bytes_split
	jmp	.label_163
.label_252:
	movabs	rdi, OFFSET FLAT:label_209
	mov	dword ptr [rbp - 0x14], 3
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d0], rax
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_27
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_168
.label_207:
	movabs	rdi, OFFSET FLAT:label_181
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1e8], rax
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_27
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1e8]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
.label_217:
	jmp	.label_168
.label_284:
	mov	byte ptr [byte ptr [unbuffered]],  1
	jmp	.label_168
.label_275:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
	cmp	byte ptr [rbp - 0x59], 0
	jne	.label_180
	movabs	rdi, OFFSET FLAT:label_186
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_160:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [filter_command]],  rax
	jmp	.label_168
.label_274:
	mov	dword ptr [rbp - 0x14], 5
.label_278:
	jmp	.label_175
.label_175:
	mov	esi, 0x2f
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strchr
	mov	qword ptr [rbp - 0x58], rax
	cmp	rax, 0
	je	.label_207
	lea	rdi, [rbp - 0x30]
	lea	rsi, [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	parse_chunk
	jmp	.label_217
.label_225:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [numeric_suffix_start]],  rax
	jmp	.label_229
.label_229:
	jmp	.label_168
.label_269:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_228
	jmp	.label_230
.label_230:
	movabs	rdi, OFFSET FLAT:label_189
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_254:
	mov	byte ptr [byte ptr [elide_empty_files]],  1
	jmp	.label_168
.label_213:
	movsx	eax, byte ptr [rbp - 0x59]
	mov	dword ptr [dword ptr [eolchar]],  eax
	jmp	.label_168
.label_195:
	movabs	rdi, OFFSET FLAT:label_272
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1f0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1f0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_290:
	mov	byte ptr [byte ptr [verbose]],  1
	jmp	.label_168
.label_238:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_249
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_292
.label_1176:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	call	lines_rr
	jmp	.label_163
.label_257:
	movabs	rdi, OFFSET FLAT:label_200
	mov	dword ptr [rbp - 0x14], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1c8], rax
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	movabs	rdx, 0x7fffffffffffffff
	movabs	rcx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_168
.label_247:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [additional_suffix]],  rax
	jmp	.label_168
.label_287:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x90]
	mov	r9, qword ptr [rbp - 0x48]
	call	bytes_chunk_extract
.label_196:
	jmp	.label_163
.label_180:
	mov	rax,  qword ptr [word ptr [optarg]]
	cmp	byte ptr [rax + 1], 0
	je	.label_210
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:label_191
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_195
	mov	byte ptr [rbp - 0x59], 0
	jmp	.label_198
.label_1173:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	call	lines_split
	jmp	.label_163
.label_233:
	movabs	rdi, OFFSET FLAT:label_200
	mov	dword ptr [rbp - 0x14], 2
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d8], rax
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	movabs	rdx, 0x7fffffffffffffff
	movabs	rcx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_168
.label_222:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_233
	jmp	.label_239
.label_239:
	movabs	rdi, OFFSET FLAT:label_189
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_261:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_252
	jmp	.label_255
.label_255:
	movabs	rdi, OFFSET FLAT:label_189
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_280:
	movabs	rsi, OFFSET FLAT:label_218
	mov	eax, 2
	mov	edx, eax
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strncmp
	cmp	eax, 0
	jne	.label_274
	mov	dword ptr [rbp - 0x14], 6
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 2
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_278
.label_285:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	last_component
	cmp	rax,  qword ptr [word ptr [optarg]]
	je	.label_247
	movabs	rdi, OFFSET FLAT:label_190
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_201:
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:in_stat_buf
	call	fstat
	cmp	eax, 0
	je	.label_179
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x25c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x25c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_177:
	mov	rdi,  qword ptr [word ptr [infile]]
	mov	eax, OFFSET FLAT:label_43
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_201
	xor	eax, eax
	mov	rsi,  qword ptr [word ptr [infile]]
	mov	edi, eax
	mov	edx, eax
	mov	ecx, eax
	call	fd_reopen
	cmp	eax, 0
	jge	.label_201
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_211
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [infile]]
	mov	qword ptr [rbp - 0x258], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x24c]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_185:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_236
	cmp	qword ptr [word ptr [filter_command]],  0
	je	.label_236
	movabs	rdi, OFFSET FLAT:label_243
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_240:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_257
	jmp	.label_260
.label_260:
	movabs	rdi, OFFSET FLAT:label_189
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_293:
	movabs	rsi, OFFSET FLAT:label_270
	mov	eax, 2
	mov	edx, eax
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strncmp
	cmp	eax, 0
	jne	.label_280
	mov	dword ptr [rbp - 0x14], 7
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 2
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_175
.label_228:
	jmp	.label_167
.label_167:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x1e0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1e0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	je	.label_293
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_167
.label_283:
	call	abort
.label_277:
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_177
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	call	strlen
	cmp	rax,  qword ptr [word ptr [suffix_length]]
	jbe	.label_177
	movabs	rdi, OFFSET FLAT:label_188
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
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x16c], eax
	mov	dword ptr [rbp - 0x170], ecx
	je	.label_197
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x174], eax
	je	.label_206
	jmp	.label_208
.label_208:
	mov	eax, dword ptr [rbp - 0x16c]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x178], eax
	jb	.label_212
	jmp	.label_220
.label_220:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_222
	jmp	.label_250
.label_250:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x180], eax
	je	.label_291
	jmp	.label_237
.label_237:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x184], eax
	je	.label_240
	jmp	.label_244
.label_244:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x188], eax
	je	.label_245
	jmp	.label_165
.label_165:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x18c], eax
	je	.label_254
	jmp	.label_264
.label_264:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x190], eax
	je	.label_261
	jmp	.label_268
.label_268:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x194], eax
	je	.label_269
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x198], eax
	je	.label_275
	jmp	.label_281
.label_281:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x19c], eax
	je	.label_284
	jmp	.label_279
.label_279:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x1a0], eax
	je	.label_245
	jmp	.label_289
.label_289:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_290
	jmp	.label_296
.label_296:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x1a8], eax
	je	.label_160
	jmp	.label_169
.label_169:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x1ac], eax
	je	.label_171
	jmp	.label_199
.label_199:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x1b0], eax
	je	.label_285
	jmp	.label_184
.label_184:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x404a60
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
	#Procedure 0x404a76
	.globl sub_404a76
	.type sub_404a76, @function
sub_404a76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80

	.globl ignorable
	.type ignorable, @function
ignorable:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	cmp	qword ptr [word ptr [filter_command]],  0
	mov	byte ptr [rbp - 5], cl
	je	.label_297
	cmp	dword ptr [rbp - 4], 0x20
	sete	al
	mov	byte ptr [rbp - 5], al
.label_297:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ab1
	.globl sub_404ab1
	.type sub_404ab1, @function
sub_404ab1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0
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
	#Procedure 0x404ae8
	.globl sub_404ae8
	.type sub_404ae8, @function
sub_404ae8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_298
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
	#Procedure 0x404b20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_299
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_300
.label_299:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_301
.label_300:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_301:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b78
	.globl sub_404b78
	.type sub_404b78, @function
sub_404b78:

	nop	dword ptr [rax + rax]
.label_309:
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	sub	esi, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x38], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x34]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x38]
	add	edi, eax
	cmp	ecx, edi
	jg	.label_302
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_305
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_307
.label_302:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_306
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x48], rax
.label_307:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_304
	movabs	rsi, OFFSET FLAT:label_303
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	edx, dword ptr [rbp - 0x24]
	mov	rdi, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_304:
	mov	dword ptr [rbp - 4], 0
.label_308:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c2a
	.globl sub_404c2a
	.type sub_404c2a, @function
sub_404c2a:

	nop	dword ptr [rax]
.label_314:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x18], eax
	call	__libc_current_sigrtmax
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_310
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x1c]
	jle	.label_309
.label_310:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_308
.label_313:
	jmp	.label_311
.label_311:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_312
	.section	.text
	.align	32
	#Procedure 0x404c74

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_312:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_314
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 8]
	jne	.label_313
	movabs	rax, OFFSET FLAT:numname_table
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	mov	rsi, rax
	call	strcpy
	mov	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_308
	.section	.text
	.align	32
	#Procedure 0x404cf0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_315
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_315:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d1a
	.globl sub_404d1a
	.type sub_404d1a, @function
sub_404d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20
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
	#Procedure 0x404d4a
	.globl sub_404d4a
	.type sub_404d4a, @function
sub_404d4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d50

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
	#Procedure 0x404d82
	.globl sub_404d82
	.type sub_404d82, @function
sub_404d82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

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
	#Procedure 0x404dbc
	.globl sub_404dbc
	.type sub_404dbc, @function
sub_404dbc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404dc0

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
	#Procedure 0x404ddf
	.globl sub_404ddf
	.type sub_404ddf, @function
sub_404ddf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404de0

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
	jae	.label_316
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_317
.label_316:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_317:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e3c
	.globl sub_404e3c
	.type sub_404e3c, @function
sub_404e3c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e40
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
	#Procedure 0x404e77
	.globl sub_404e77
	.type sub_404e77, @function
sub_404e77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80

	.globl sub_404e80
	.type sub_404e80, @function
sub_404e80:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_318
.label_320:
	mov	byte ptr [rbp - 1], 0
.label_318:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e97
	.globl sub_404e97
	.type sub_404e97, @function
sub_404e97:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea6
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
	ja	.label_320
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_319]]
	jmp	rcx
.label_326:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_325
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_333
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], -1
	jmp	.label_321
.label_327:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_326
	mov	qword ptr [rbp - 8], -1
	jmp	.label_321
.label_323:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 2
	mov	edi, dword ptr [rbp - 0xc]
	call	lseek
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jge	.label_335
	mov	qword ptr [rbp - 8], -1
	jmp	.label_321
	.section	.text
	.align	32
	#Procedure 0x404f56

	.globl input_file_size
	.type input_file_size, @function
input_file_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r8d, eax
	mov	eax, 1
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, r8
	mov	edx, eax
	call	lseek
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_322
	call	__errno_location
	cmp	dword ptr [rax], 0x1d
	jne	.label_328
	call	__errno_location
	mov	dword ptr [rax], 0
.label_328:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_321
.label_333:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	usable_st_size
	test	al, 1
	jne	.label_324
	jmp	.label_323
.label_324:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	jg	.label_323
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_329
.label_331:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_334
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_334:
	jmp	.label_330
.label_330:
	jmp	.label_329
.label_329:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rcx
	cmp	qword ptr [rbp - 0x38], rax
	jne	.label_332
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], -1
	jmp	.label_321
.label_335:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_330
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x30]
	call	lseek
	cmp	rax, 0
	jge	.label_331
	mov	qword ptr [rbp - 8], -1
	jmp	.label_321
.label_332:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_321:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40509f
	.globl sub_40509f
	.type sub_40509f, @function
sub_40509f:

	nop	word ptr cs:[rax + rax]
.label_322:
	mov	qword ptr [rbp - 0x38], 0
.label_325:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	rdx, rcx
	call	safe_read
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_327
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_321
	.section	.text
	.align	32
	#Procedure 0x4050f0
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
	#Procedure 0x405117
	.globl sub_405117
	.type sub_405117, @function
sub_405117:

	nop	word ptr [rax + rax]
.label_350:
	call	abort
.label_505:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_401
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_401
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_411
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_411:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_415
.label_415:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_419
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_419:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_427
.label_427:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_429
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_429:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_401:
	jmp	.label_434
.label_434:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_435
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_435:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_441
.label_441:
	jmp	.label_446
.label_446:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_447
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_447:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_455
.label_455:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_456
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_456:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_452
.label_408:
	jmp	.label_339
.label_339:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_477
	test	byte ptr [rbp - 0x7b], 1
	je	.label_477
	jmp	.label_351
.label_496:
	test	byte ptr [rbp - 0x81], 1
	je	.label_530
	jmp	.label_487
.label_487:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_488
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_488:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_530:
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_493
	jmp	.label_502
.label_340:
	mov	qword ptr [rbp - 0x58], 0
.label_422:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_504
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_460
	.section	.text
	.align	32
	#Procedure 0x405330

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
.label_349:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_350
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_524]]
	jmp	rcx
.label_1184:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_389
.label_371:
	jmp	.label_368
.label_368:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_340
.label_342:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_343
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_343
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_349
.label_1132:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_353
	movabs	rdi, OFFSET FLAT:label_357
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_362
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_353:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_368
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_385:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_371
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_375
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_382
.label_382:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_385
.label_1185:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_389
.label_343:
	jmp	.label_390
.label_390:
	jmp	.label_337
.label_337:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_392
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_392
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_397
	jmp	.label_400
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_495
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_495:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_410
.label_410:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_396
.label_1196:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_416
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_432
	jmp	.label_424
.label_517:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_403
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_403
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_403
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_341
	jmp	.label_440
.label_440:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_341
	jmp	.label_449
.label_449:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_341
	jmp	.label_454
.label_454:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_341
	jmp	.label_457
.label_457:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_458
	jmp	.label_341
.label_341:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_465
	jmp	.label_351
.label_432:
	jmp	.label_466
.label_466:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_470
	jmp	.label_338
.label_409:
	mov	byte ptr [rbp - 0x81], 1
.label_405:
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
	ja	.label_478
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_489]]
	jmp	rcx
.label_372:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_381
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_381
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_381:
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_425
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_425:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_507
.label_507:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_511
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_511:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_516
.label_516:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_520
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_520:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_367:
	jmp	.label_338
.label_478:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_439
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
	jmp	.label_481
.label_426:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_509
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_509
	test	byte ptr [rbp - 0x7b], 1
	je	.label_509
	jmp	.label_351
.label_476:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_538
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_538
	jmp	.label_506
.label_506:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_336
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_383
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_348
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_348:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_359
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_538:
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_370
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_370:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_376
.label_376:
	jmp	.label_378
.label_378:
	jmp	.label_379
.label_379:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_380
	test	byte ptr [rbp - 0x82], 1
	jne	.label_380
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_387
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_387:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_391
.label_391:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_395:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_380:
	jmp	.label_404
.label_404:
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_407
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_407:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_414
	mov	byte ptr [rbp - 0x7e], 0
.label_414:
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_422
.label_358:
	jmp	.label_378
.label_479:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_402
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_402
	mov	qword ptr [rbp - 0xb8], 1
.label_393:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_430
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
	jb	.label_433
	jmp	.label_448
.label_448:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_433
	jmp	.label_453
.label_453:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_433
	jmp	.label_536
.label_536:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_442
	jmp	.label_433
.label_433:
	jmp	.label_351
.label_388:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_384
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_363
.label_528:
	jmp	.label_472
.label_472:
	jmp	.label_474
.label_474:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_476
	jmp	.label_351
.label_384:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_479
	mov	byte ptr [rbp - 0x91], 0
.label_501:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_485
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_485:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_494
	jmp	.label_498
.label_494:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_501
.label_1127:
	mov	byte ptr [rbp - 0x79], 1
.label_1126:
	mov	byte ptr [rbp - 0x7b], 1
.label_1128:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_467
	mov	byte ptr [rbp - 0x79], 1
.label_467:
	jmp	.label_512
.label_512:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_513
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_519
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_519:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_513
.label_513:
	movabs	rax, OFFSET FLAT:label_362
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_340
.label_1186:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_339
.label_1183:
	test	byte ptr [rbp - 0x79], 1
	je	.label_531
	jmp	.label_417
.label_417:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_534
	jmp	.label_351
.label_416:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_432
.label_424:
	jmp	.label_338
.label_521:
	jmp	.label_461
.label_461:
	jmp	.label_338
.label_502:
	jmp	.label_378
.label_352:
	test	byte ptr [rbp - 0x79], 1
	je	.label_408
	test	byte ptr [rbp - 0x7b], 1
	je	.label_408
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_408
	jmp	.label_378
.label_477:
	jmp	.label_389
.label_389:
	test	byte ptr [rbp - 0x79], 1
	je	.label_539
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_472
.label_1187:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_339
.label_346:
	jmp	.label_338
.label_1192:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_338
.label_539:
	jmp	.label_338
.label_470:
	jmp	.label_344
.label_344:
	mov	byte ptr [rbp - 0x83], 1
.label_1191:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_346
	test	byte ptr [rbp - 0x7b], 1
	je	.label_346
	jmp	.label_351
.label_1195:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_352
	test	byte ptr [rbp - 0x7b], 1
	je	.label_358
	jmp	.label_351
.label_439:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_500
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_500:
	jmp	.label_377
.label_377:
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
	jne	.label_388
	jmp	.label_363
.label_493:
	jmp	.label_443
.label_443:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_394
	test	byte ptr [rbp - 0x82], 1
	jne	.label_394
	jmp	.label_398
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_399
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_399:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_412
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_412:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_394:
	jmp	.label_420
.label_420:
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_423
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_423:
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
	jmp	.label_428
.label_1130:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1129:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_436
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_438
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_438:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_436
.label_436:
	movabs	rax, OFFSET FLAT:label_451
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_340
.label_1190:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_339
.label_430:
	jmp	.label_402
.label_402:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_462
	mov	byte ptr [rbp - 0x91], 0
.label_462:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_464
.label_464:
	jmp	.label_471
.label_471:
	jmp	.label_473
.label_473:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_377
.label_363:
	jmp	.label_481
.label_481:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_483
	test	byte ptr [rbp - 0x79], 1
	je	.label_490
	test	byte ptr [rbp - 0x91], 1
	jne	.label_490
.label_483:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_428:
	test	byte ptr [rbp - 0x79], 1
	je	.label_496
	test	byte ptr [rbp - 0x91], 1
	jne	.label_496
	jmp	.label_503
.label_503:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_505
	jmp	.label_351
.label_374:
	jmp	.label_461
.label_1194:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_510
	jmp	.label_515
.label_515:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_517
	jmp	.label_521
.label_490:
	jmp	.label_338
.label_338:
	test	byte ptr [rbp - 0x79], 1
	je	.label_484
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_525
.label_484:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_527
.label_525:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_527
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
	jne	.label_528
.label_527:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_528
	jmp	.label_378
.label_458:
	jmp	.label_468
.label_468:
	jmp	.label_403
.label_403:
	jmp	.label_461
.label_1125:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_340
.label_397:
	jmp	.label_392
.label_392:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_537
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_537:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_360
.label_509:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_337
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_337
	test	byte ptr [rbp - 0x7d], 1
	je	.label_337
	test	byte ptr [rbp - 0x7e], 1
	je	.label_342
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
	jmp	.label_360
.label_498:
	jmp	.label_363
.label_351:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_365
	test	byte ptr [rbp - 0x79], 1
	je	.label_365
	mov	dword ptr [rbp - 0x34], 4
.label_365:
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
.label_360:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060e5
	.globl sub_4060e5
	.type sub_4060e5, @function
sub_4060e5:

	nop	dword ptr [rax + rax]
.label_1189:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_389
.label_364:
	jmp	.label_361
.label_361:
	jmp	.label_338
.label_431:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_445:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_405
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_405
	test	byte ptr [rbp - 0x7b], 1
	je	.label_409
	jmp	.label_351
.label_1188:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_389
.label_504:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_460:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_418
	jmp	.label_426
.label_418:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_405
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_405
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_405
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_431
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_431
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_445
.label_465:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_450
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_450:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_459
.label_459:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_463
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_463:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_475
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_475:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_486
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_486:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_468
.label_442:
	jmp	.label_482
.label_482:
	jmp	.label_491
.label_491:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_393
.label_534:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_499
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_499
	jmp	.label_444
.label_444:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_508
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_508:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_518
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_518:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_523
.label_523:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_526
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_499:
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_533
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_533:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_535
.label_535:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_356
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_356
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_356
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_356
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_355
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_355:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_413
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_356
.label_356:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_361
.label_531:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_364
	jmp	.label_366
.label_1193:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_367
	test	byte ptr [rbp - 0x7b], 1
	je	.label_372
	jmp	.label_351
.label_510:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_374
	jmp	.label_351
.label_1131:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_340
.label_548:
	movabs	rdi, OFFSET FLAT:label_540
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_546
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_544
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x28], rsi
	call	gettext
	mov	edx, 2
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	movabs	rdi, OFFSET FLAT:label_550
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_545
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_543
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x38], eax
	call	emit_size_note
	movabs	rdi, OFFSET FLAT:label_547
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_265
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_549:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4065e5
	.globl sub_4065e5
	.type sub_4065e5, @function
sub_4065e5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065ed

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_548
	jmp	.label_541
.label_541:
	movabs	rdi, OFFSET FLAT:label_542
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_549
	.section	.text
	.align	32
	#Procedure 0x406640
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
	#Procedure 0x406671
	.globl sub_406671
	.type sub_406671, @function
sub_406671:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406680
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_551
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_551:
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
	#Procedure 0x4066bd
	.globl sub_4066bd
	.type sub_4066bd, @function
sub_4066bd:

	nop	dword ptr [rax]
.label_553:
	mov	dword ptr [rbp - 4], 0
.label_552:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066d0
	.globl sub_4066d0
	.type sub_4066d0, @function
sub_4066d0:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4066d7

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
	jne	.label_554
	test	byte ptr [rbp - 0x13], 1
	je	.label_553
	test	byte ptr [rbp - 0x11], 1
	jne	.label_554
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_553
.label_554:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_555
	call	__errno_location
	mov	dword ptr [rax], 0
.label_555:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_552
	.section	.text
	.align	32
	#Procedure 0x406770
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
	je	.label_556
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_557
.label_556:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_557
.label_557:
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
	#Procedure 0x406835
	.globl sub_406835
	.type sub_406835, @function
sub_406835:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406840

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
	je	.label_558
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
.label_558:
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
	#Procedure 0x4069a4
	.globl sub_4069a4
	.type sub_4069a4, @function
sub_4069a4:

	nop	word ptr cs:[rax + rax]
.label_577:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_581:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_575:
	jmp	.label_559
.label_559:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a00
	.globl sub_406a00
	.type sub_406a00, @function
sub_406a00:

	nop	dword ptr [rax + rax]
.label_579:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_561
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_560
.label_580:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_586:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_559
.label_564:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_572:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_575
.label_571:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_577
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_581
.label_563:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_564
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_572
.label_566:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_563
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_569
	jmp	.label_588
.label_588:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_563
	jmp	.label_567
.label_567:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_569
	jmp	.label_573
.label_573:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_563
	jmp	.label_576
.label_576:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_563
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_569
	jmp	.label_589
.label_589:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_563
	jmp	.label_568
.label_568:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_569
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_563
	jmp	.label_578
.label_578:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_569
	jmp	.label_584
.label_584:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_563
	jmp	.label_562
.label_562:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_563
	jmp	.label_570
.label_570:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_571
	jmp	.label_569
.label_569:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_575
.label_585:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_580
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_586
	.section	.text
	.align	32
	#Procedure 0x406d17

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
	je	.label_565
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
.label_565:
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
	je	.label_585
	jmp	.label_587
.label_587:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_579
	jmp	.label_566
.label_561:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_560:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_559
.label_592:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_591:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ee2
	.globl sub_406ee2
	.type sub_406ee2, @function
sub_406ee2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ef1

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
	jne	.label_590
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_590:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_592
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_592
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_592
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_591
.label_1094:
	jmp	.label_593
.label_1097:
	movabs	rdi, OFFSET FLAT:label_600
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
	jmp	.label_593
.label_604:
	movabs	rsi, OFFSET FLAT:label_596
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_610:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_608
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
	mov	ecx, OFFSET FLAT:label_605
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
	ja	.label_595
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_601]]
	jmp	rcx
.label_1095:
	movabs	rdi, OFFSET FLAT:label_607
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
	jmp	.label_593
.label_1096:
	movabs	rdi, OFFSET FLAT:label_603
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
	jmp	.label_593
.label_1101:
	movabs	rdi, OFFSET FLAT:label_602
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
	jmp	.label_593
.label_1103:
	movabs	rdi, OFFSET FLAT:label_611
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
	jmp	.label_593
.label_1098:
	movabs	rdi, OFFSET FLAT:label_599
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
	jmp	.label_593
.label_1102:
	movabs	rdi, OFFSET FLAT:label_598
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
	jmp	.label_593
.label_595:
	movabs	rdi, OFFSET FLAT:label_606
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
.label_593:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073e6
	.globl sub_4073e6
	.type sub_4073e6, @function
sub_4073e6:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4073e7

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
	je	.label_604
	movabs	rsi, OFFSET FLAT:label_597
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_610
.label_1099:
	movabs	rdi, OFFSET FLAT:label_594
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
	jmp	.label_593
.label_1100:
	movabs	rdi, OFFSET FLAT:label_609
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
	jmp	.label_593
.label_618:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_615
	jmp	.label_616
	.section	.text
	.align	32
	#Procedure 0x407553

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_616:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_618
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_612
.label_615:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_613
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_613
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_617
.label_613:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_612
.label_617:
	jmp	.label_619
.label_619:
	jmp	.label_614
.label_614:
	jmp	.label_616
.label_612:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075e7
	.globl sub_4075e7
	.type sub_4075e7, @function
sub_4075e7:

	nop	word ptr [rax + rax]
.label_621:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_620
.label_620:
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
	#Procedure 0x407634
	.globl sub_407634
	.type sub_407634, @function
sub_407634:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407642
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
	je	.label_621
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_620
	.section	.text
	.align	32
	#Procedure 0x407670

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
	je	.label_622
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
.label_622:
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
	je	.label_623
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
	ja	.label_624
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_625
.label_624:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_625:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_623:
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
	#Procedure 0x407865
	.globl sub_407865
	.type sub_407865, @function
sub_407865:

	nop	word ptr cs:[rax + rax]
.label_668:
	movabs	rdi, OFFSET FLAT:label_657
	call	getenv
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	jne	.label_662
	movabs	rax, OFFSET FLAT:label_632
	mov	qword ptr [rbp - 0xc0], rax
.label_662:
	movabs	rdi, OFFSET FLAT:label_639
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	setenv
	cmp	eax, 0
	je	.label_644
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_647
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x104], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x104]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_644:
	test	byte ptr [byte ptr [verbose]],  1
	je	.label_659
	movabs	rdi, OFFSET FLAT:label_627
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x110], rax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
.label_659:
	lea	rdi, [rbp - 0xb0]
	call	pipe
	cmp	eax, 0
	je	.label_652
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_658
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x120], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x120]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_660:
	jmp	.label_635
.label_635:
	mov	eax, dword ptr [rbp - 0xc4]
	add	eax, 1
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_638
.label_629:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 0x14]
	call	ftruncate
	cmp	eax, 0
	je	.label_641
	mov	eax, dword ptr [rbp - 0x90]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_648
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, dword ptr [rbp - 0x90]
	cmp	eax, 0
	je	.label_641
.label_648:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_656
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf4], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_652:
	call	fork
	mov	dword ptr [rbp - 0xb4], eax
	cmp	dword ptr [rbp - 0xb4], 0
	jne	.label_645
	mov	dword ptr [rbp - 0xc4], 0
.label_638:
	movsxd	rax, dword ptr [rbp - 0xc4]
	cmp	rax,  qword ptr [word ptr [n_open_pipes]]
	jae	.label_655
	movsxd	rax, dword ptr [rbp - 0xc4]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edi, dword ptr [rcx + rax*4]
	call	close
	cmp	eax, 0
	je	.label_660
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_637
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x124], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_633:
	mov	edi, dword ptr [rbp - 0xb0]
	call	close
	cmp	eax, 0
	je	.label_650
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_654
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_650:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [dword ptr [filter_pid]],  eax
	mov	rcx,  qword ptr [word ptr [n_open_pipes]]
	cmp	rcx,  qword ptr [word ptr [open_pipes_alloc]]
	jne	.label_631
	movabs	rsi, OFFSET FLAT:open_pipes_alloc
	mov	eax, 4
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [open_pipes]],  rax
.label_631:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rcx,  qword ptr [word ptr [n_open_pipes]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [open_pipes]]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
.label_626:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x150
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b9c
	.globl sub_407b9c
	.type sub_407b9c, @function
sub_407b9c:

	nop	word ptr cs:[rax + rax]
.label_643:
	jmp	.label_634
.label_634:
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:oldblocked
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rdi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0x13c], eax
	call	last_component
	movabs	rdx, OFFSET FLAT:label_653
	xor	ecx, ecx
	mov	r8d, ecx
	mov	rcx,  qword ptr [word ptr [filter_command]]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsi, rax
	mov	al, 0
	call	execl
	mov	dword ptr [rbp - 0x140], eax
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_646
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x144], esi
	call	gettext
	mov	edi, 1
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	r8,  qword ptr [word ptr [filter_command]]
	mov	esi, dword ptr [rbp - 0x144]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_649:
	mov	edi, dword ptr [rbp - 0xb0]
	call	close
	cmp	eax, 0
	je	.label_643
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_630
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x130], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x130]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_645:
	cmp	dword ptr [rbp - 0xb4], -1
	jne	.label_633
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_640
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x148], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x148]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_655:
	mov	edi, dword ptr [rbp - 0xac]
	call	close
	cmp	eax, 0
	je	.label_651
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_636
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x128], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x128]
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x407d1c

	.globl create
	.type create, @function
create:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [word ptr [filter_command]],  0
	jne	.label_668
	test	byte ptr [byte ptr [verbose]],  1
	je	.label_667
	movabs	rdi, OFFSET FLAT:label_663
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xd8], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
.label_667:
	mov	esi, 0x41
	mov	edx, 0x1b6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_664
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_626
.label_664:
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x14]
	call	fstat
	cmp	eax, 0
	je	.label_666
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_665
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_641:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_626
.label_651:
	cmp	dword ptr [rbp - 0xb0], 0
	je	.label_634
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0xb0]
	call	dup2
	cmp	eax, 0
	je	.label_649
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_642
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x12c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x12c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_666:
	mov	rax,  qword ptr [word ptr [label_628]]
	cmp	rax, qword ptr [rbp - 0xa0]
	jne	.label_629
	mov	rax,  qword ptr [word ptr [in_stat_buf]]
	cmp	rax, qword ptr [rbp - 0xa8]
	jne	.label_629
	movabs	rdi, OFFSET FLAT:label_661
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_671:
	mov	byte ptr [rbp - 1], 0
.label_670:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407efe
	.globl sub_407efe
	.type sub_407efe, @function
sub_407efe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407eff
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_671
	jmp	.label_669
.label_669:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_670
.label_673:
	mov	byte ptr [rbp - 1], 0
.label_674:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f2e
	.globl sub_407f2e
	.type sub_407f2e, @function
sub_407f2e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f3c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_673
	jmp	.label_672
.label_672:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_674
.label_675:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f77
	.globl sub_407f77
	.type sub_407f77, @function
sub_407f77:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f7f

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
	jae	.label_675
	call	xalloc_die
.label_676:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fb9
	.globl sub_407fb9
	.type sub_407fb9, @function
sub_407fb9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407fbc

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
.label_677:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_676
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_677
	.section	.text
	.align	32
	#Procedure 0x408000
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_678
	jmp	.label_680
.label_680:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_679
.label_678:
	mov	byte ptr [rbp - 1], 0
.label_679:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408032
	.globl sub_408032
	.type sub_408032, @function
sub_408032:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408040
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
	#Procedure 0x40805a
	.globl sub_40805a
	.type sub_40805a, @function
sub_40805a:

	nop	word ptr [rax + rax]
.label_681:
	mov	byte ptr [rbp - 1], 0
.label_685:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40806e
	.globl sub_40806e
	.type sub_40806e, @function
sub_40806e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408079
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
	jb	.label_682
	jmp	.label_683
.label_683:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_682
	jmp	.label_684
.label_684:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_681
	jmp	.label_682
.label_682:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_685
.label_687:
	jmp	.label_688
.label_688:
	mov	edi,  dword ptr [dword ptr [output_desc]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_691
	mov	byte ptr [rbp - 1], 1
	jmp	.label_690
.label_686:
	mov	byte ptr [rbp - 1], 0
.label_690:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40810e
	.globl sub_40810e
	.type sub_40810e, @function
sub_40810e:

	nop	dword ptr [rax + rax]
.label_691:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_686
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [outfile]]
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x408161

	.globl cwrite
	.type cwrite, @function
cwrite:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 2], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	test	byte ptr [rbp - 2], 1
	je	.label_688
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_689
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_689
	test	byte ptr [byte ptr [elide_empty_files]],  1
	je	.label_689
	mov	byte ptr [rbp - 1], 1
	jmp	.label_690
.label_689:
	xor	eax, eax
	mov	edi, eax
	mov	esi,  dword ptr [dword ptr [output_desc]]
	mov	edx,  dword ptr [dword ptr [filter_pid]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	call	closeout
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [outfile]]
	call	create
	mov	dword ptr [dword ptr [output_desc]],  eax
	cmp	dword ptr [dword ptr [output_desc]],  0
	jge	.label_687
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [outfile]]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x408230

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
	#Procedure 0x408252
	.globl sub_408252
	.type sub_408252, @function
sub_408252:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408260

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
	#Procedure 0x40829f
	.globl sub_40829f
	.type sub_40829f, @function
sub_40829f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4082a0
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
	jae	.label_692
	call	xalloc_die
.label_692:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
.label_693:
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
	#Procedure 0x40830e

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
	jne	.label_695
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_695:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_694
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_693
.label_694:
	call	abort
.label_702:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_696
	mov	al, byte ptr [rbp - 0x39]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rcx, rdx
	and	al, 1
	movzx	edi, al
	mov	rdx, rcx
	call	cwrite
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rbp - 0x39], 1
	mov	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x56], al
.label_696:
	jmp	.label_701
.label_698:
	jmp	.label_703
.label_703:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_699
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083d3
	.globl sub_4083d3
	.type sub_4083d3, @function
sub_4083d3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083db

	.globl lines_split
	.type lines_split, @function
lines_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x39], 1
	mov	qword ptr [rbp - 0x48], 0
.label_699:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_697
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x54], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x54]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_697:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx,  dword ptr [dword ptr [eolchar]]
	mov	dl, cl
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], dl
.label_701:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	add	rax, 1
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_702
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_700
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	dl, byte ptr [rbp - 0x39]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x50]
	and	dl, 1
	movzx	edi, dl
	mov	rdx, rax
	call	cwrite
	mov	byte ptr [rbp - 0x39], 0
	mov	byte ptr [rbp - 0x55], al
.label_700:
	jmp	.label_698
	.section	.text
	.align	32
	#Procedure 0x4084f0

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
	#Procedure 0x408562
	.globl sub_408562
	.type sub_408562, @function
sub_408562:

	nop	word ptr cs:[rax + rax]
.label_706:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_704
.label_705:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_707:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085ae
	.globl sub_4085ae
	.type sub_4085ae, @function
sub_4085ae:

	nop	word ptr cs:[rax + rax]
.label_708:
	jmp	.label_704
.label_704:
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
	jne	.label_706
	jmp	.label_705
	.section	.text
	.align	32
	#Procedure 0x4085f6

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
	jne	.label_708
	mov	dword ptr [rbp - 4], 0
	jmp	.label_707
.label_1113:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_1108:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_718:
	jmp	.label_726
.label_715:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_727
	mov	dword ptr [rbp - 4], 4
	jmp	.label_717
	.section	.text
	.align	32
	#Procedure 0x408680

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
	jg	.label_731
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_731
	jmp	.label_740
.label_1112:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_716:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_717
.label_731:
	movabs	rdi, OFFSET FLAT:label_746
	movabs	rsi, OFFSET FLAT:label_747
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_748
	call	__assert_fail
.label_745:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_711
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_741
	mov	dword ptr [rbp - 4], 4
	jmp	.label_717
.label_1115:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_722
.label_735:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_709
	jmp	.label_725
.label_725:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_709
	jmp	.label_728
.label_728:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_709
	jmp	.label_734
.label_734:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_709
	jmp	.label_736
.label_736:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_709
	jmp	.label_739
.label_739:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_709
	jmp	.label_744
.label_744:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_709
	jmp	.label_749
.label_749:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_709
	jmp	.label_751
.label_751:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_709
	jmp	.label_712
.label_712:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_709
	jmp	.label_719
.label_719:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_721
	jmp	.label_709
.label_709:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_710
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_720
	jmp	.label_732
.label_732:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_720
	jmp	.label_737
.label_737:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_713
	jmp	.label_723
.label_723:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_742
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_742:
	jmp	.label_713
.label_738:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_743
.label_743:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_724:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_715
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_724
.label_1114:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_730:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_729
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_735
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_717
.label_1109:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_720:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_713:
	jmp	.label_710
.label_710:
	jmp	.label_721
.label_721:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_750
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_714]]
	jmp	rcx
.label_1105:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_1106:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_1110:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_741:
	mov	dword ptr [rbp - 0x4c], 1
.label_711:
	jmp	.label_726
.label_726:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_730
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_717
.label_1116:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_740:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_738
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_743
.label_727:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_745
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_716
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_716
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_716
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_718
.label_750:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_717
.label_1107:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_1111:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_722
.label_722:
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
	je	.label_733
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_733:
	jmp	.label_729
.label_729:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_717:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bdb
	.globl sub_408bdb
	.type sub_408bdb, @function
sub_408bdb:

	nop	dword ptr [rax + rax]
.label_752:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bea
	.globl sub_408bea
	.type sub_408bea, @function
sub_408bea:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bf6
	.globl base_len
	.type base_len, @function
base_len:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_755:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_753
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_753:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_754
	jmp	.label_752
.label_754:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_755
	.section	.text
	.align	32
	#Procedure 0x408c70
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_757
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_758
.label_757:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_758
.label_758:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cab
	.globl sub_408cab
	.type sub_408cab, @function
sub_408cab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cb0

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
	je	.label_759
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_759:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ceb
	.globl sub_408ceb
	.type sub_408ceb, @function
sub_408ceb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cf0
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
	jb	.label_760
	jmp	.label_763
.label_763:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_761
	jmp	.label_760
.label_760:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_762
.label_761:
	mov	byte ptr [rbp - 1], 0
.label_762:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d3e
	.globl sub_408d3e
	.type sub_408d3e, @function
sub_408d3e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408d40

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
	#Procedure 0x408d65
	.globl sub_408d65
	.type sub_408d65, @function
sub_408d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d70

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
	#Procedure 0x408e1d
	.globl sub_408e1d
	.type sub_408e1d, @function
sub_408e1d:

	nop	dword ptr [rax]
.label_769:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_772:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_94
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_764:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e6a
	.globl sub_408e6a
	.type sub_408e6a, @function
sub_408e6a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e74

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_776
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_765
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_770
.label_765:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_774
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_777
.label_776:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_766
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_771
.label_774:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_777:
	jmp	.label_770
.label_770:
	jmp	.label_775
.label_767:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_773
.label_773:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_769
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_772
.label_766:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_768
	call	__errno_location
	mov	dword ptr [rax], 0
.label_768:
	jmp	.label_771
.label_771:
	jmp	.label_775
.label_775:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_764
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_767
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_773
	.section	.text
	.align	32
	#Procedure 0x408fa0
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
	#Procedure 0x408fc7
	.globl sub_408fc7
	.type sub_408fc7, @function
sub_408fc7:

	nop	word ptr [rax + rax]
.label_785:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_782
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_778
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40900f

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
	jge	.label_785
	call	abort
.label_778:
	test	byte ptr [rbp - 0x31], 1
	je	.label_781
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_784
.label_781:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_784:
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
	je	.label_780
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_109]]
	mov	qword ptr [rax + 8], rcx
.label_780:
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
.label_782:
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
	ja	.label_783
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_779
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_779:
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
.label_783:
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
	#Procedure 0x409243
	.globl sub_409243
	.type sub_409243, @function
sub_409243:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409250

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 0
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 8], -1
	jg	.label_793
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_802
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_789
.label_786:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	je	.label_796
	call	__errno_location
	cmp	dword ptr [rax], 0x17
	je	.label_796
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x34]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_787:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 8], 0xfffffffe
	jmp	.label_799
.label_792:
	movabs	rsi, OFFSET FLAT:label_800
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 8], eax
	mov	edi, dword ptr [rbp - 0x20]
	call	fdopen
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	cmp	rax, 0
	jne	.label_788
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x4c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_797:
	mov	esi, 0xc01
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x20], eax
.label_791:
	mov	eax, 0xffffffff
	cmp	eax, dword ptr [rbp - 0x20]
	jge	.label_786
	jmp	.label_792
.label_788:
	mov	eax,  dword ptr [dword ptr [filter_pid]]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], eax
	mov	dword ptr [dword ptr [filter_pid]],  0
.label_793:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409402
	.globl sub_409402
	.type sub_409402, @function
sub_409402:

	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_798:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_801:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_794
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x44]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_795:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_787
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_802:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_789:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_799:
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], -1
	jne	.label_797
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	create
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_791
.label_796:
	mov	byte ptr [rbp - 0x19], 1
.label_790:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], 0
	jge	.label_795
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_798
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_801
.label_794:
	jmp	.label_790
	.section	.text
	.align	32
	#Procedure 0x409550
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
	#Procedure 0x40956f
	.globl sub_40956f
	.type sub_40956f, @function
sub_40956f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409570
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_803
	jmp	.label_805
.label_805:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_804
.label_803:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_804:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095a7
	.globl sub_4095a7
	.type sub_4095a7, @function
sub_4095a7:

	nop	word ptr [rax + rax]
.label_811:
	movabs	rdi, OFFSET FLAT:label_806
	movabs	rsi, OFFSET FLAT:label_23
	mov	edx, 0x362
	movabs	rcx, OFFSET FLAT:label_807
	call	__assert_fail
.label_837:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
.label_840:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x52], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_819:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	je	.label_808
	xor	eax, eax
	mov	ecx, eax
	mov	byte ptr [rbp - 0x81], 0
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x48]
	sub	rsi, qword ptr [rbp - 0x50]
	cmp	rcx, rsi
	mov	qword ptr [rbp - 0xb8], rdx
	jle	.label_812
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_820
.label_850:
	jmp	.label_809
.label_846:
	test	byte ptr [rbp - 0x52], 1
	je	.label_826
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_826:
	jmp	.label_828
.label_828:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0xd8], cl
	jne	.label_830
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	cmp	rax, qword ptr [rbp - 0x10]
	setbe	dl
	mov	byte ptr [rbp - 0xd8], dl
.label_830:
	mov	al, byte ptr [rbp - 0xd8]
	test	al, 1
	jne	.label_838
	jmp	.label_841
.label_838:
	mov	edi, 1
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, rcx
	mov	rdx, rcx
	call	cwrite
	mov	byte ptr [rbp - 0xd9], al
	jmp	.label_828
.label_851:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	safe_read
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_813
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0xa8], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_815:
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 1
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x51], 1
	mov	byte ptr [rbp - 0x52], 0
	cmp	qword ptr [rbp - 8], 1
	jbe	.label_816
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	imul	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_823
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x60]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_842
.label_813:
	jmp	.label_810
.label_810:
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_844
	jmp	.label_846
	.section	.text
	.align	32
	#Procedure 0x4097d9

	.globl lines_chunk_split
	.type lines_chunk_split, @function
lines_chunk_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_811
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_811
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_811
	jmp	.label_815
.label_817:
	mov	byte ptr [rbp - 0x81], 0
.label_829:
	jmp	.label_825
.label_833:
	jmp	.label_819
.label_812:
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc0], rax
.label_820:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xb8]
	cmp	rcx, rax
	jae	.label_824
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_827
.label_843:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_832
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_834
.label_844:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x50]
	cmp	rax, rcx
	jae	.label_837
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_840
.label_835:
	mov	qword ptr [rbp - 0x28], -1
.label_842:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_816:
	jmp	.label_814
.label_814:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_846
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x28], -1
	je	.label_851
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x28], -1
	jmp	.label_810
.label_808:
	jmp	.label_814
.label_832:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_834:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rcx, 1
	cmp	rax, rcx
	jg	.label_817
	cmp	qword ptr [rbp - 8], 0
	jne	.label_836
	mov	edi, 1
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, rcx
	mov	rdx, rcx
	call	cwrite
	mov	byte ptr [rbp - 0xd7], al
.label_836:
	jmp	.label_829
.label_823:
	xor	edi, edi
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	lseek
	cmp	rax, 0
	jge	.label_835
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0xa4], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_839:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x98], rax
.label_818:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_847
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x80]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_850
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_91
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], esi
	call	gettext
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0xd4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_845:
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xd0], rax
.label_849:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xc8], rax
.label_827:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x90]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rcx, qword ptr [rbp - 0x90]
	mov	rdi, rax
	mov	rdx, rcx
	call	memchr
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x98], rcx
	cmp	rax, 0
	je	.label_839
	mov	byte ptr [rbp - 0x81], 1
	jmp	.label_818
.label_841:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409adc
	.globl sub_409adc
	.type sub_409adc, @function
sub_409adc:

	nop	dword ptr [rax]
.label_847:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_848
	mov	al, byte ptr [rbp - 0x51]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edi, al
	call	cwrite
	mov	byte ptr [rbp - 0xd5], al
.label_848:
	jmp	.label_809
.label_809:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rbp - 0x81]
	and	dl, 1
	mov	byte ptr [rbp - 0x51], dl
.label_825:
	mov	al, 1
	test	byte ptr [rbp - 0x81], 1
	mov	byte ptr [rbp - 0xd6], al
	jne	.label_822
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rcx, 1
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xd6], dl
.label_822:
	mov	al, byte ptr [rbp - 0xd6]
	test	al, 1
	jne	.label_831
	jmp	.label_833
.label_831:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_821
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	jne	.label_821
	mov	byte ptr [rbp - 0x52], 1
	jmp	.label_833
.label_821:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_843
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	jbe	.label_843
	jmp	.label_841
.label_824:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	sub	rdx, qword ptr [rbp - 0x50]
	cmp	rcx, rdx
	jle	.label_845
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_849
	.section	.text
	.align	32
	#Procedure 0x409bf0

	.globl parse_chunk
	.type parse_chunk, @function
parse_chunk:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_181
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 1
	mov	rdi, rax
	mov	qword ptr [rbp - 0x20], rdx
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_27
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x20]
	mov	r8, rax
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [optarg]]
	je	.label_852
	movabs	rdi, OFFSET FLAT:label_853
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rax
	call	gettext
	mov	esi, 1
	movabs	rcx, OFFSET FLAT:label_27
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_852:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409cbe
	.globl sub_409cbe
	.type sub_409cbe, @function
sub_409cbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409cc0
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	str2signum
	xor	ecx, ecx
	mov	edx, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	cmovl	ecx, edx
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409cf8
	.globl sub_409cf8
	.type sub_409cf8, @function
sub_409cf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d00

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	call	__gl_setmode_check
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_855
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_854
.label_855:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_854:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d45
	.globl sub_409d45
	.type sub_409d45, @function
sub_409d45:

	nop	word ptr cs:[rax + rax]
.label_870:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_860
	test	byte ptr [rbp - 0x32], 1
	jne	.label_861
	test	byte ptr [rbp - 0x31], 1
	je	.label_862
.label_861:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	and	al, 1
	movzx	edi, al
	call	cwrite
	and	al, 1
	mov	byte ptr [rbp - 0x32], al
.label_862:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rbp - 0x31], 0
	test	byte ptr [rbp - 0x32], 1
	jne	.label_858
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_858
	jmp	.label_874
.label_859:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409dc2
	.globl sub_409dc2
	.type sub_409dc2, @function
sub_409dc2:

	nop	word ptr cs:[rax + rax]
.label_858:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
.label_860:
	jmp	.label_863
.label_863:
	mov	al, byte ptr [rbp - 0x49]
	xor	al, 0xff
	test	al, 1
	jne	.label_866
.label_874:
	jmp	.label_865
.label_865:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_859
	mov	edi, 1
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, rcx
	mov	rdx, rcx
	call	cwrite
	mov	byte ptr [rbp - 0x5e], al
	jmp	.label_865
.label_867:
	test	byte ptr [rbp - 0x32], 1
	jne	.label_856
	xor	edi, edi
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x40]
	call	lseek
	cmp	rax, -1
	je	.label_856
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x31], 1
.label_856:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_869
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x5c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x409eb4

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [rbp - 0x32], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_866:
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_867
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x20], -1
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	setb	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	jmp	.label_872
.label_869:
	cmp	qword ptr [rbp - 0x30], 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
.label_872:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
.label_871:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_870
	test	byte ptr [rbp - 0x32], 1
	jne	.label_857
	test	byte ptr [rbp - 0x31], 1
	je	.label_873
.label_857:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x40]
	and	al, 1
	movzx	edi, al
	call	cwrite
	and	al, 1
	mov	byte ptr [rbp - 0x32], al
.label_873:
	mov	al, 1
	mov	cl, byte ptr [rbp - 0x31]
	and	cl, 1
	movzx	edx, cl
	mov	esi, edx
	add	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rsi
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x5d], al
	je	.label_868
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x5d], cl
.label_868:
	mov	al, byte ptr [rbp - 0x5d]
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	test	byte ptr [rbp - 0x32], 1
	jne	.label_864
	test	byte ptr [rbp - 0x31], 1
	jne	.label_864
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x49], 1
	jmp	.label_870
.label_864:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_871
	.section	.text
	.align	32
	#Procedure 0x409ff0

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
	jg	.label_882
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_879
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_880
.label_879:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_876
.label_882:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_878:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_877
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_877
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_875
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_881
.label_875:
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
.label_881:
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0e8
	.globl sub_40a0e8
	.type sub_40a0e8, @function
sub_40a0e8:

	nop	word ptr cs:[rax + rax]
.label_880:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_883
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_883:
	jmp	.label_876
.label_876:
	jmp	.label_878
.label_886:
	mov	dword ptr [rbp - 0x1c], 0
.label_903:
	movsxd	rax, dword ptr [rbp - 0x1c]
	cmp	rax,  qword ptr [word ptr [n_open_pipes]]
	jae	.label_896
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0xc]
	jne	.label_892
	mov	rax,  qword ptr [word ptr [n_open_pipes]]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [word ptr [n_open_pipes]],  rcx
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edx, dword ptr [rcx + rax*4 - 4]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	dword ptr [rcx + rax*4], edx
	jmp	.label_896
.label_896:
	jmp	.label_884
.label_884:
	cmp	dword ptr [rbp - 0x10], 0
	jle	.label_887
	lea	rsi, [rbp - 0x20]
	xor	edx, edx
	mov	dword ptr [rbp - 0x20], 0
	mov	edi, dword ptr [rbp - 0x10]
	call	waitpid
	cmp	eax, -1
	jne	.label_893
	call	__errno_location
	cmp	dword ptr [rax], 0xa
	je	.label_893
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_895
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x6c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_892:
	jmp	.label_901
.label_901:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_903
.label_885:
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_884
	cmp	qword ptr [rbp - 8], 0
	jne	.label_886
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	cmp	eax, 0
	jge	.label_886
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x68], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x40a25d

	.globl closeout
	.type closeout, @function
closeout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 8], 0
	je	.label_885
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_885
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_885
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x64], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x64]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_888:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x58], eax
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0x7f
	cmp	eax, 0
	jne	.label_898
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0x60]
	and	eax, 0xff00
	sar	eax, 8
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	je	.label_902
	movabs	rdi, OFFSET FLAT:label_889
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	r9,  qword ptr [word ptr [filter_command]]
	mov	edi, dword ptr [rbp - 0x84]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_902:
	jmp	.label_899
.label_898:
	movabs	rdi, OFFSET FLAT:label_900
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x20]
	add	ecx, 0
	mov	rdx, rax
	mov	al, 0
	call	error
.label_893:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 0x7f
	add	eax, 1
	mov	cl, al
	movsx	eax, cl
	sar	eax, 1
	cmp	eax, 0
	jle	.label_888
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x30], eax
	mov	eax, dword ptr [rbp - 0x30]
	and	eax, 0x7f
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0xd
	je	.label_890
	lea	rsi, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 0x2c]
	call	sig2str
	cmp	eax, 0
	je	.label_904
	movabs	rsi, OFFSET FLAT:label_897
	lea	rdi, [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x70], eax
.label_904:
	movabs	rdi, OFFSET FLAT:label_891
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x80
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	lea	r8, [rbp - 0x50]
	mov	r9,  qword ptr [word ptr [filter_command]]
	mov	edi, dword ptr [rbp - 0x74]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_890:
	jmp	.label_894
.label_899:
	jmp	.label_894
.label_894:
	jmp	.label_887
.label_887:
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a45d
	.globl sub_40a45d
	.type sub_40a45d, @function
sub_40a45d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a460

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_906
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_905
.label_906:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_907
.label_905:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], esi
.label_907:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4ec
	.globl sub_40a4ec
	.type sub_40a4ec, @function
sub_40a4ec:

	nop	dword ptr [rax]
.label_908:
	mov	byte ptr [rbp - 1], 0
.label_909:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4fe
	.globl sub_40a4fe
	.type sub_40a4fe, @function
sub_40a4fe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a509
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
	jb	.label_911
	jmp	.label_910
.label_910:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_911
	jmp	.label_912
.label_912:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_908
	jmp	.label_911
.label_911:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x40a560

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_913
	jmp	.label_915
.label_915:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_914
.label_913:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_914:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a597
	.globl sub_40a597
	.type sub_40a597, @function
sub_40a597:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5a0

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5e1
	.globl sub_40a5e1
	.type sub_40a5e1, @function
sub_40a5e1:

	nop	word ptr cs:[rax + rax]
.label_931:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	call	xrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_938:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x50]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
.label_924:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_928
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x41], 0
.label_928:
	jmp	.label_934
.label_923:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
.label_934:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_940
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_916
	mov	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x60]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rdx, qword ptr [rbp - 0x60]
	call	memrchr
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_932
.label_940:
	jmp	.label_935
.label_935:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_936
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_939
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	and	al, 1
	movzx	edi, al
	call	cwrite
	mov	byte ptr [rbp - 0xa9], al
.label_939:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a733
	.globl sub_40a733
	.type sub_40a733, @function
sub_40a733:

	nop	dword ptr [rax]
.label_922:
	call	xalloc_die
.label_916:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memrchr
	mov	qword ptr [rbp - 0x70], rax
.label_932:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_930
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_933
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_930
.label_933:
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	and	al, 1
	movzx	edi, al
	call	cwrite
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x8d], al
	jbe	.label_919
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_919:
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_930:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_925
	mov	byte ptr [rbp - 0x41], 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x78]
	and	dl, 1
	movzx	edi, dl
	mov	rdx, rax
	call	cwrite
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x50]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x50], rdx
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rcx
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x8e], al
	je	.label_920
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
.label_920:
	jmp	.label_925
.label_925:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_917
	test	byte ptr [rbp - 0x41], 1
	jne	.label_917
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_937
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_941
.label_937:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x98], rax
.label_941:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	cl
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x80]
	and	cl, 1
	movzx	edi, cl
	call	cwrite
	mov	rdx, qword ptr [rbp - 0x80]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rdx, qword ptr [rbp - 0x80]
	add	rdx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rdx
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x99], al
	je	.label_927
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
.label_927:
	jmp	.label_917
.label_917:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_918
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_921
.label_918:
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_924
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_924
.label_921:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_926
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_929
	.section	.text
	.align	32
	#Procedure 0x40a950

	.globl line_bytes_split
	.type line_bytes_split, @function
line_bytes_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x41], 0
.label_936:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_923
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x8c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_926:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_929:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_938
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x18]
	cmp	rcx, rax
	ja	.label_922
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_931
.label_949:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_943
	jmp	.label_948
.label_943:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_942
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_942
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_947
.label_942:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_945
.label_947:
	jmp	.label_944
.label_944:
	jmp	.label_946
.label_946:
	jmp	.label_948
	.section	.text
	.align	32
	#Procedure 0x40aa9b

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_948:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_949
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_945
.label_945:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aae7
	.globl sub_40aae7
	.type sub_40aae7, @function
sub_40aae7:

	nop	word ptr [rax + rax]
.label_958:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x34], eax
	call	__libc_current_sigrtmax
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	cmp	ecx, dword ptr [rbp - 0x34]
	jge	.label_956
	movabs	rsi, OFFSET FLAT:label_305
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_956
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_951
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_951
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x38]
	sub	ecx, dword ptr [rbp - 0x34]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jg	.label_951
	movsxd	rax, dword ptr [rbp - 0x34]
	add	rax, qword ptr [rbp - 0x40]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_950
.label_955:
	jmp	.label_952
.label_952:
	jmp	.label_954
.label_954:
	jmp	.label_953
.label_953:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_950:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40abad
	.globl sub_40abad
	.type sub_40abad, @function
sub_40abad:

	nop	word ptr cs:[rax + rax]
.label_959:
	jmp	.label_960
.label_960:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_957
.label_961:
	mov	dword ptr [rbp - 0x24], 0
.label_957:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_958
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_959
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_950
	.section	.text
	.align	32
	#Procedure 0x40ac33

	.globl str2signum
	.type str2signum, @function
str2signum:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_961
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_962
	cmp	qword ptr [rbp - 0x20], 0x40
	jg	.label_962
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_950
.label_956:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x38]
	jge	.label_952
	movabs	rsi, OFFSET FLAT:label_306
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_952
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_955
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, dword ptr [rbp - 0x38]
	movsxd	rcx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jg	.label_955
	cmp	qword ptr [rbp - 0x48], 0
	jg	.label_955
	movsxd	rax, dword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_950
.label_951:
	jmp	.label_954
.label_962:
	jmp	.label_953
.label_964:
	jmp	.label_963
.label_963:
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
	jne	.label_963
	jmp	.label_966
.label_966:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad78
	.globl sub_40ad78
	.type sub_40ad78, @function
sub_40ad78:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad81

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
	jae	.label_964
	jmp	.label_965
.label_965:
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
	jne	.label_965
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_966
.label_967:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae2a
	.globl sub_40ae2a
	.type sub_40ae2a, @function
sub_40ae2a:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40ae2c

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
	jne	.label_967
	cmp	qword ptr [rbp - 8], 0
	je	.label_967
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40ae60

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
	#Procedure 0x40ae93
	.globl sub_40ae93
	.type sub_40ae93, @function
sub_40ae93:

	nop	word ptr cs:[rax + rax]
.label_999:
	jmp	.label_968
.label_968:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_970
	test	byte ptr [rbp - 0x21], 1
	je	.label_972
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_975
.label_987:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	ofile_open
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x23], al
	test	byte ptr [byte ptr [unbuffered]],  1
	je	.label_1000
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x60]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x60]
	je	.label_979
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_979
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_972:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
.label_975:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x74], ecx
	mov	qword ptr [rbp - 0x30], 0
.label_974:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_971
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x74]
	cmp	rax, rcx
	jb	.label_973
	test	byte ptr [byte ptr [elide_empty_files]],  1
	jne	.label_973
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	ofile_open
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x23], al
.label_973:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 8], 0
	jl	.label_969
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax]
	call	closeout
.label_969:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 8], 0xfffffffe
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_974
.label_1004:
	jmp	.label_998
.label_1000:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_993
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_993
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x90], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1003:
	jmp	.label_977
.label_983:
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x23], 0
.label_1005:
	jmp	.label_998
.label_998:
	xor	edi, edi
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_991
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x78], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1007:
	mov	eax, 0x20
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xnmalloc
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_1002:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_983
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [outfile]]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x30]
	shl	rdi, 5
	add	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 8], 0xffffffff
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1002
.label_984:
	jmp	.label_977
.label_977:
	test	byte ptr [rbp - 0x61], 1
	je	.label_982
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_985
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_990
.label_981:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 8], 0xfffffffe
.label_996:
	test	byte ptr [rbp - 0x61], 1
	je	.label_980
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_980
	mov	byte ptr [rbp - 0x21], 1
	test	byte ptr [rbp - 0x22], 1
	jne	.label_978
	jmp	.label_968
.label_988:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
.label_992:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_987
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_995
	test	byte ptr [byte ptr [unbuffered]],  1
	je	.label_995
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x60]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x60]
	je	.label_1003
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_91
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_993:
	jmp	.label_986
.label_986:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_976
	mov	byte ptr [rbp - 0x22], 1
.label_976:
	test	byte ptr [rbp - 0x23], 1
	je	.label_996
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 0x10]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_981
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x94], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x94]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_971:
	jmp	.label_970
.label_970:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3ca
	.globl sub_40b3ca
	.type sub_40b3ca, @function
sub_40b3ca:

	nop	dword ptr [rax + rax]
.label_985:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_990:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x40], rax
.label_982:
	jmp	.label_989
.label_979:
	jmp	.label_986
	.section	.text
	.align	32
	#Procedure 0x40b3f6

	.globl lines_rr
	.type lines_rr, @function
lines_rr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_1006
	mov	qword ptr [rbp - 0x40], 1
	jmp	.label_1005
.label_978:
	mov	byte ptr [rbp - 0x22], 0
	mov	qword ptr [rbp - 0x30], 0
.label_980:
	jmp	.label_989
.label_989:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_994
.label_991:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_997
	jmp	.label_999
.label_1006:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1007
	call	xalloc_die
.label_995:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_984
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_984
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_91
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x80], esi
	call	gettext
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_41
	mov	esi, dword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_997:
	jmp	.label_1001
.label_1001:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
.label_994:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_1004
	mov	byte ptr [rbp - 0x61], 0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_988
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_992
	.section	.text
	.align	32
	#Procedure 0x40b550

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1008
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_1010:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b58a
	.globl sub_40b58a
	.type sub_40b58a, @function
sub_40b58a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b594

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
	jb	.label_1009
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1010
.label_1009:
	call	xalloc_die
.label_1014:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1011
.label_1011:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1016:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
.label_1013:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_1014
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_1014
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1011
.label_1012:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1015
.label_1015:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	cmp	rdx, rax
	jle	.label_1013
	mov	eax, 0x20000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1016
	.section	.text
	.align	32
	#Procedure 0x40b66d

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	push	rbp
	mov	rbp, rsp
	lea	rax, [rbp + 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 8], rax
	jge	.label_1012
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_1012
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1015
.label_1020:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6b6
	.globl sub_40b6b6
	.type sub_40b6b6, @function
sub_40b6b6:

	nop	
.label_1039:
	mov	rdi,  qword ptr [word ptr [outfile]]
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [word ptr [outfile]],  rax
	test	byte ptr [rbp - 1], 1
	jne	.label_1021
	mov	rdi,  qword ptr [word ptr [outfile]]
	mov	rsi,  qword ptr [word ptr [outbase]]
	mov	rdx,  qword ptr [word ptr [next_file_name.outbase_length]]
	call	memcpy
	jmp	.label_1017
.label_1037:
	movabs	rdi, OFFSET FLAT:label_1029
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1018:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	mov	qword ptr [rbp - 0x30], rcx
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [outfile_mid]]
	add	rax,  qword ptr [word ptr [suffix_length]]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x10]
	add	rax, rcx
	mov	rsi,  qword ptr [word ptr [numeric_suffix_start]]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	memcpy
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rcx,  qword ptr [word ptr [suffix_length]]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_1024:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	cmp	rax, 0
	je	.label_1019
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [numeric_suffix_start]]
	movsx	edx, byte ptr [rcx + rax]
	sub	edx, 0x30
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	add	rsi, -8
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rcx - 8], rax
	jmp	.label_1024
.label_1030:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	qword ptr [rcx + rax*8], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [outfile_mid]]
	mov	byte ptr [rcx + rax], dl
	jmp	.label_1031
.label_1038:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	add	rax, 2
	mov	qword ptr [word ptr [next_file_name.outfile_length]],  rax
	mov	rax,  qword ptr [word ptr [suffix_length]]
	add	rax, 1
	mov	qword ptr [word ptr [suffix_length]],  rax
.label_1034:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	add	rax, 1
	cmp	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	jae	.label_1039
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40b85b

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	cmp	qword ptr [word ptr [outfile]],  0
	jne	.label_1032
	jmp	.label_1028
.label_1028:
	cmp	qword ptr [word ptr [next_file_name.outfile_length]],  0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	jne	.label_1038
	mov	rdi,  qword ptr [word ptr [outbase]]
	call	strlen
	mov	qword ptr [word ptr [next_file_name.outbase_length]],  rax
	cmp	qword ptr [word ptr [additional_suffix]],  0
	je	.label_1035
	mov	rdi,  qword ptr [word ptr [additional_suffix]]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1036
.label_1027:
	movabs	rdi, OFFSET FLAT:label_1022
	movabs	rsi, OFFSET FLAT:label_23
	mov	edx, 0x198
	movabs	rcx, OFFSET FLAT:label_1023
	call	__assert_fail
.label_1021:
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	mov	dl, byte ptr [rcx + rax]
	mov	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	mov	byte ptr [rcx + rax], dl
	mov	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	add	rax, 1
	mov	qword ptr [word ptr [next_file_name.outbase_length]],  rax
.label_1017:
	mov	rax,  qword ptr [word ptr [outfile]]
	add	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	mov	qword ptr [word ptr [outfile_mid]],  rax
	mov	rdi,  qword ptr [word ptr [outfile_mid]]
	mov	rax,  qword ptr [word ptr [suffix_alphabet]]
	movsx	ecx, byte ptr [rax]
	mov	dl, cl
	mov	rax,  qword ptr [word ptr [suffix_length]]
	movzx	esi, dl
	mov	rdx, rax
	call	memset
	cmp	qword ptr [word ptr [additional_suffix]],  0
	je	.label_1026
	mov	rax,  qword ptr [word ptr [outfile_mid]]
	add	rax,  qword ptr [word ptr [suffix_length]]
	mov	rsi,  qword ptr [word ptr [additional_suffix]]
	mov	rdx,  qword ptr [word ptr [next_file_name.addsuf_length]]
	mov	rdi, rax
	call	memcpy
.label_1026:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	mov	byte ptr [rcx + rax], 0
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rdi, rax
	call	free
	mov	edx, 8
	mov	esi, edx
	mov	rdi,  qword ptr [word ptr [suffix_length]]
	call	xcalloc
	mov	qword ptr [word ptr [next_file_name.sufindex]],  rax
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_1025
	test	byte ptr [rbp - 1], 1
	jne	.label_1027
	jmp	.label_1018
.label_1019:
	jmp	.label_1025
.label_1025:
	jmp	.label_1020
.label_1035:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1036
.label_1036:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [next_file_name.addsuf_length]],  rax
	mov	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	add	rax,  qword ptr [word ptr [suffix_length]]
	add	rax,  qword ptr [word ptr [next_file_name.addsuf_length]]
	mov	qword ptr [word ptr [next_file_name.outfile_length]],  rax
	jmp	.label_1034
.label_1032:
	mov	rax,  qword ptr [word ptr [suffix_length]]
	mov	qword ptr [rbp - 0x20], rax
.label_1031:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	je	.label_1037
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rdx, qword ptr [rcx + rax*8]
	add	rdx, 1
	mov	qword ptr [rcx + rax*8], rdx
	test	byte ptr [byte ptr [suffix_auto]],  1
	je	.label_1033
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1033
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	cmp	byte ptr [rcx + rax + 1], 0
	jne	.label_1033
	jmp	.label_1028
.label_1033:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [outfile_mid]]
	mov	byte ptr [rcx + rax], dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [outfile_mid]]
	cmp	byte ptr [rcx + rax], 0
	je	.label_1030
	jmp	.label_1020
.label_1042:
	jmp	.label_1040
.label_1040:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb23
	.globl sub_40bb23
	.type sub_40bb23, @function
sub_40bb23:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb29

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
	ja	.label_1042
	jmp	.label_1041
.label_1041:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1040
	.section	.text
	.align	32
	#Procedure 0x40bb60

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
	#Procedure 0x40bb96
	.globl sub_40bb96
	.type sub_40bb96, @function
sub_40bb96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bba0

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
	je	.label_1049
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1045
.label_1049:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1047
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1048
	movabs	rax, OFFSET FLAT:label_1051
	movabs	rcx, OFFSET FLAT:label_1052
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1045
.label_1048:
	movabs	rsi, OFFSET FLAT:label_1046
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1050
	movabs	rax, OFFSET FLAT:label_1043
	movabs	rcx, OFFSET FLAT:label_1044
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1045
.label_1050:
	movabs	rax, OFFSET FLAT:label_362
	movabs	rcx, OFFSET FLAT:label_451
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1045:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc98
	.globl sub_40bc98
	.type sub_40bc98, @function
sub_40bc98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd05
	.globl sub_40bd05
	.type sub_40bd05, @function
sub_40bd05:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd12
	.globl sub_40bd12
	.type sub_40bd12, @function
sub_40bd12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd36
	.globl sub_40bd36
	.type sub_40bd36, @function
sub_40bd36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd49
	.globl sub_40bd49
	.type sub_40bd49, @function
sub_40bd49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bd50

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
