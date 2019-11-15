	.section	.text
	.align	32
	#Procedure 0x4015c9
	.globl sub_4015c9
	.type sub_4015c9, @function
sub_4015c9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4015ca
	.globl sub_4015ca
	.type sub_4015ca, @function
sub_4015ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401602
	.globl sub_401602
	.type sub_401602, @function
sub_401602:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40164a
	.globl sub_40164a
	.type sub_40164a, @function
sub_40164a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40166c
	.globl sub_40166c
	.type sub_40166c, @function
sub_40166c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40167d
	.globl sub_40167d
	.type sub_40167d, @function
sub_40167d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401696
	.globl sub_401696
	.type sub_401696, @function
sub_401696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016a0

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
	jne	.label_9
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_12
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
.label_12:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_10
	call	xalloc_die
.label_10:
	jmp	.label_11
.label_13:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_11:
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
	#Procedure 0x401766
	.globl sub_401766
	.type sub_401766, @function
sub_401766:

	nop	word ptr [rax + rax]
.label_9:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_13
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401790

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
	jne	.label_14
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_14
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_14
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_15
.label_16:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_15
.label_14:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_15:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401852
	.globl sub_401852
	.type sub_401852, @function
sub_401852:

	nop	word ptr cs:[rax + rax]
.label_18:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_17:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40187e
	.globl sub_40187e
	.type sub_40187e, @function
sub_40187e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401886

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_19
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_18
.label_19:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_17
	.section	.text
	.align	32
	#Procedure 0x4018c0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_20
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_21
.label_20:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_21
.label_21:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018fb
	.globl sub_4018fb
	.type sub_4018fb, @function
sub_4018fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401900

	.globl card_of_complement
	.type card_of_complement, @function
card_of_complement:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	lea	rcx, [rbp - 0x110]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x10], 0x100
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], -2
.label_22:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, -1
	je	.label_23
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	cl, byte ptr [rbp + rax - 0x110]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	esi, dword ptr [rbp - 0x10]
	sub	esi, edx
	mov	dword ptr [rbp - 0x10], esi
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	byte ptr [rbp + rax - 0x110], 1
	jmp	.label_22
.label_23:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40198c
	.globl sub_40198c
	.type sub_40198c, @function
sub_40198c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401990
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
	jb	.label_24
	jmp	.label_27
.label_27:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_25
	jmp	.label_24
.label_24:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_26
.label_25:
	mov	byte ptr [rbp - 1], 0
.label_26:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019db
	.globl sub_4019db
	.type sub_4019db, @function
sub_4019db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019e0

	.globl es_match
	.type es_match, @function
es_match:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	xor	edx, edx
	mov	cl, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	movsx	edx, byte ptr [rdi + rsi]
	movsx	r8d, byte ptr [rbp - 0x11]
	cmp	edx, r8d
	mov	byte ptr [rbp - 0x12], cl
	jne	.label_28
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x12], dl
.label_28:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a34
	.globl sub_401a34
	.type sub_401a34, @function
sub_401a34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a40
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
	jb	.label_29
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_32
	jmp	.label_29
.label_29:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_30
.label_32:
	mov	byte ptr [rbp - 1], 0
.label_30:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a88
	.globl sub_401a88
	.type sub_401a88, @function
sub_401a88:

	nop	dword ptr [rax + rax]
.label_37:
	jmp	.label_33
.label_33:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_34
.label_35:
	mov	byte ptr [rbp - 1], 0
.label_36:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ab8
	.globl sub_401ab8
	.type sub_401ab8, @function
sub_401ab8:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401aba

	.globl star_digits_closebracket
	.type star_digits_closebracket, @function
star_digits_closebracket:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edx, 0x2a
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	es_match
	test	al, 1
	jne	.label_39
	mov	byte ptr [rbp - 1], 0
	jmp	.label_36
.label_39:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_34:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_35
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	sub	edi, 0x30
	cmp	edi, 9
	ja	.label_38
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	test	byte ptr [rcx + rax], 1
	je	.label_37
.label_38:
	mov	edx, 0x5d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	es_match
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_36
.label_43:
	jmp	.label_40
.label_40:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	get_next
	mov	dword ptr [rbp - 0x18], eax
	cmp	eax, -1
	je	.label_41
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 0x14]
	je	.label_44
	mov	byte ptr [rbp - 1], 0
	jmp	.label_42
	.section	.text
	.align	32
	#Procedure 0x401b93

	.globl homogeneous_spec_list
	.type homogeneous_spec_list, @function
homogeneous_spec_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	esi, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], -2
	mov	rdi, qword ptr [rbp - 0x10]
	call	get_next
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	jne	.label_43
	mov	byte ptr [rbp - 1], 0
	jmp	.label_42
.label_41:
	mov	byte ptr [rbp - 1], 1
.label_42:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bdf
	.globl sub_401bdf
	.type sub_401bdf, @function
sub_401bdf:

	nop	word ptr cs:[rax + rax]
.label_44:
	jmp	.label_40
	.section	.text
	.align	32
	#Procedure 0x401bf0

	.globl parse_str
	.type parse_str, @function
parse_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	unquote
	xor	ecx, ecx
	mov	dl, cl
	test	al, 1
	mov	byte ptr [rbp - 0x2a], dl
	jne	.label_45
	jmp	.label_46
.label_45:
	lea	rdi, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	call	build_spec_list
	mov	byte ptr [rbp - 0x2a], al
.label_46:
	mov	al, byte ptr [rbp - 0x2a]
	lea	rdi, [rbp - 0x28]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	call	es_free
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c53
	.globl sub_401c53
	.type sub_401c53, @function
sub_401c53:

	nop	word ptr cs:[rax + rax]
.label_49:
	jmp	.label_47
.label_47:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_50
.label_48:
	mov	byte ptr [rbp - 1], 0
.label_51:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c84
	.globl sub_401c84
	.type sub_401c84, @function
sub_401c84:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c85

	.globl find_closing_delim
	.type find_closing_delim, @function
find_closing_delim:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
.label_50:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rcx, 1
	cmp	rax, rcx
	jae	.label_48
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_49
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x5d
	jne	.label_49
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	test	byte ptr [rcx + rax], 1
	jne	.label_49
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	test	byte ptr [rcx + rax + 1], 1
	jne	.label_49
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_51
.label_58:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_62:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_52
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + in_delete_set]],  1
	jne	.label_60
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], dl
.label_60:
	jmp	.label_56
.label_56:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_62
.label_52:
	jmp	.label_63
.label_63:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_64
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_54:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dcf
	.globl sub_401dcf
	.type sub_401dcf, @function
sub_401dcf:

	nop	dword ptr [rax]
.label_55:
	mov	qword ptr [rbp - 0x30], 0
.label_61:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_57
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + in_delete_set]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x31], al
.label_57:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_53
	jmp	.label_58
.label_53:
	jmp	.label_59
.label_59:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_61
	.section	.text
	.align	32
	#Procedure 0x401e37

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_64:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	plain_read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_55
	mov	qword ptr [rbp - 8], 0
	jmp	.label_54
	.section	.text
	.align	32
	#Procedure 0x401e70

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
	#Procedure 0x401e9c
	.globl sub_401e9c
	.type sub_401e9c, @function
sub_401e9c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

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
	#Procedure 0x401ec8
	.globl sub_401ec8
	.type sub_401ec8, @function
sub_401ec8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ed0

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
	je	.label_65
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_65:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f0b
	.globl sub_401f0b
	.type sub_401f0b, @function
sub_401f0b:

	nop	dword ptr [rax + rax]
.label_921:
	mov	byte ptr [rbp - 0x29], 8
	jmp	.label_66
.label_78:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x29], sil
.label_66:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	mov	cl, byte ptr [rbp - 0x29]
	mov	eax, dword ptr [rbp - 0x24]
	mov	edx, eax
	add	edx, 1
	mov	dword ptr [rbp - 0x24], edx
	mov	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	mov	byte ptr [rdi + rsi], cl
	jmp	.label_77
.label_74:
	movabs	rdi, OFFSET FLAT:label_76
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x28]
	mov	edi, edx
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rsi + rdi]
	mov	r8d, dword ptr [rbp - 0x28]
	add	r8d, 1
	mov	r8d, r8d
	mov	esi, r8d
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	r8d, byte ptr [rdi + rsi]
	mov	r9d, dword ptr [rbp - 0x28]
	add	r9d, 2
	mov	r9d, r9d
	mov	esi, r9d
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	r9d, byte ptr [rdi + rsi]
	mov	r10d, dword ptr [rbp - 0x28]
	mov	esi, r10d
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	r10d, byte ptr [rdi + rsi]
	mov	r11d, dword ptr [rbp - 0x28]
	add	r11d, 1
	mov	r11d, r11d
	mov	esi, r11d
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	r11d, byte ptr [rdi + rsi]
	mov	ebx, dword ptr [rbp - 0x28]
	add	ebx, 2
	mov	ebx, ebx
	mov	esi, ebx
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ebx, byte ptr [rdi + rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x48], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rsp], r10d
	mov	dword ptr [rsp + 8], r11d
	mov	dword ptr [rsp + 0x10], ebx
	mov	al, 0
	call	error
.label_79:
	jmp	.label_71
.label_71:
	jmp	.label_67
.label_67:
	jmp	.label_66
.label_919:
	mov	byte ptr [rbp - 0x29], 0x5c
	jmp	.label_66
.label_925:
	mov	byte ptr [rbp - 0x29], 9
	jmp	.label_66
.label_70:
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + rcx]
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	add	edi, 1
	mov	dword ptr [rbp - 0x24], edi
	mov	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	byte ptr [rdx + rcx], sil
.label_77:
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_69
.label_918:
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rsi + rdx]
	sub	ecx, 0x30
	mov	dil, cl
	mov	byte ptr [rbp - 0x29], dil
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rsi + rdx]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x30], ecx
	cmp	eax, dword ptr [rbp - 0x30]
	jg	.label_67
	cmp	dword ptr [rbp - 0x30], 7
	jg	.label_67
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x29]
	shl	ecx, 3
	add	ecx, dword ptr [rbp - 0x30]
	mov	dl, cl
	mov	byte ptr [rbp - 0x29], dl
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, 1
	mov	dword ptr [rbp - 0x28], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, 2
	mov	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi + rsi]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x30], ecx
	cmp	eax, dword ptr [rbp - 0x30]
	jg	.label_71
	cmp	dword ptr [rbp - 0x30], 7
	jg	.label_71
	movzx	eax, byte ptr [rbp - 0x29]
	shl	eax, 3
	add	eax, dword ptr [rbp - 0x30]
	cmp	eax, 0x100
	jge	.label_74
	movzx	eax, byte ptr [rbp - 0x29]
	shl	eax, 3
	add	eax, dword ptr [rbp - 0x30]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_79
.label_923:
	mov	byte ptr [rbp - 0x29], 0xa
	jmp	.label_66
.label_922:
	mov	byte ptr [rbp - 0x29], 0xc
	jmp	.label_66
.label_80:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x10], rdx
	and	al, 1
	movzx	eax, al
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402147
	.globl sub_402147
	.type sub_402147, @function
sub_402147:

	nop	dword ptr [rax]
.label_920:
	mov	byte ptr [rbp - 0x29], 7
	jmp	.label_66
.label_924:
	mov	byte ptr [rbp - 0x29], 0xd
	jmp	.label_66
.label_917:
	movabs	rdi, OFFSET FLAT:label_72
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	mov	r8, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [r8 + 8]
	mov	byte ptr [r8 + rdx], 0
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, -1
	mov	dword ptr [rbp - 0x28], ecx
	mov	byte ptr [rbp - 0x29], 0x5c
	jmp	.label_66
.label_926:
	mov	byte ptr [rbp - 0x29], 0xb
	jmp	.label_66
	.section	.text
	.align	32
	#Procedure 0x4021a9

	.globl unquote
	.type unquote, @function
unquote:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xmalloc
	mov	ecx, 1
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xcalloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 8], rax
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x28], 0
.label_69:
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdx + rcx], 0
	je	.label_80
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + rcx]
	sub	sil, 0x5c
	mov	byte ptr [rbp - 0x31], sil
	jne	.label_70
	jmp	.label_75
.label_75:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	byte ptr [rdx + rcx], 1
	mov	eax, dword ptr [rbp - 0x28]
	inc	eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx + rcx]
	mov	ecx, eax
	sub	eax, 0x76
	mov	qword ptr [rbp - 0x40], rcx
	mov	dword ptr [rbp - 0x44], eax
	ja	.label_78
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_73]]
	jmp	rcx
.label_83:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_81
.label_81:
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
	je	.label_82
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_82:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402393
	.globl sub_402393
	.type sub_402393, @function
sub_402393:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40239f

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
	je	.label_83
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_81
	.section	.text
	.align	32
	#Procedure 0x4023d0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_84
	jmp	.label_86
.label_86:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_85
.label_84:
	mov	byte ptr [rbp - 1], 0
.label_85:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402402
	.globl sub_402402
	.type sub_402402, @function
sub_402402:

	nop	word ptr cs:[rax + rax]
.label_87:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40241a
	.globl sub_40241a
	.type sub_40241a, @function
sub_40241a:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40241c

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
	jne	.label_87
	cmp	qword ptr [rbp - 8], 0
	je	.label_87
	call	xalloc_die
.label_89:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40245a
	.globl sub_40245a
	.type sub_40245a, @function
sub_40245a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl read_and_xlate
	.type read_and_xlate, @function
read_and_xlate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	plain_read
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], 0
.label_88:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_89
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + xlate]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], al
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_88
.label_90:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_94
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_92
.label_94:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_92
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_92:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_91
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_91:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_93:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40255d
	.globl sub_40255d
	.type sub_40255d, @function
sub_40255d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40255f

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
	jge	.label_90
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_93
	.section	.text
	.align	32
	#Procedure 0x4025a0

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
	#Procedure 0x4025d2
	.globl sub_4025d2
	.type sub_4025d2, @function
sub_4025d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025e0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402612
	.globl sub_402612
	.type sub_402612, @function
sub_402612:

	nop	word ptr cs:[rax + rax]
.label_108:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_95
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	jmp	.label_97
.label_95:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_97:
	jmp	.label_96
	.section	.text
	.align	32
	#Procedure 0x40265f

	.globl get_next
	.type get_next, @function
get_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_133
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 2
.label_133:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -2
	jne	.label_99
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_99:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_113
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_125
.label_116:
	movabs	rdi, OFFSET FLAT:label_129
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x434
	movabs	rcx, OFFSET FLAT:label_107
	call	__assert_fail
.label_117:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	jmp	.label_98
.label_1072:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_100
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x40], edx
	je	.label_103
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x44], eax
	je	.label_117
	jmp	.label_121
.label_127:
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_126
.label_1071:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_132
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_134
.label_131:
	call	abort
.label_114:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, 1
	mov	ecx, eax
	mov	dword ptr [rbp - 0x28], ecx
.label_110:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_108
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	jne	.label_122
	jmp	.label_128
.label_122:
	jmp	.label_108
.label_113:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], rdx
	ja	.label_131
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_135]]
	jmp	rcx
.label_103:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0
	jmp	.label_98
.label_120:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_101
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
.label_101:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edx, byte ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x24], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_111
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_111:
	jmp	.label_136
.label_136:
	jmp	.label_96
.label_1073:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_96
.label_132:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
.label_134:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rdx + 0x11]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_118
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_118:
	jmp	.label_96
.label_121:
	jmp	.label_98
.label_98:
	jmp	.label_100
.label_100:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_102
	mov	dword ptr [rbp - 0x28], 0
.label_126:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_130
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	jne	.label_115
	jmp	.label_127
.label_115:
	jmp	.label_130
.label_112:
	movabs	rdi, OFFSET FLAT:label_105
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x437
	movabs	rcx, OFFSET FLAT:label_107
	call	__assert_fail
.label_128:
	jmp	.label_104
.label_104:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_110
.label_1070:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_96
.label_1074:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_120
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	get_next
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_136
.label_123:
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_102:
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	cl, al
	movzx	esi, cl
	call	is_char_class_member
	test	al, 1
	jne	.label_109
	jmp	.label_112
.label_109:
	jmp	.label_114
.label_130:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_116
	jmp	.label_123
.label_96:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_125:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
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
	#Procedure 0x402a7f
	.globl sub_402a7f
	.type sub_402a7f, @function
sub_402a7f:

	nop	
.label_138:
	mov	byte ptr [rbp - 1], 0
.label_139:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a8e
	.globl sub_402a8e
	.type sub_402a8e, @function
sub_402a8e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a9c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_138
	jmp	.label_137
.label_137:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x402ac0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_142
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_147
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_142
.label_147:
	movabs	rdi, OFFSET FLAT:label_145
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_140
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_143
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_141
.label_146:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b5b
	.globl sub_402b5b
	.type sub_402b5b, @function
sub_402b5b:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402b5c
	.globl sub_402b5c
	.type sub_402b5c, @function
sub_402b5c:

	nop	dword ptr [rax + rax]
.label_140:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_144
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_141:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_142:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_146
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402bb0
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
	#Procedure 0x402bd8
	.globl sub_402bd8
	.type sub_402bd8, @function
sub_402bd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402be0
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
	#Procedure 0x402c11
	.globl sub_402c11
	.type sub_402c11, @function
sub_402c11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c20

	.globl get_s1_spec_stats
	.type get_s1_spec_stats, @function
get_s1_spec_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	get_spec_stats
	test	byte ptr [byte ptr [complement]],  1
	je	.label_148
	mov	rdi, qword ptr [rbp - 8]
	call	card_of_complement
	movsxd	rdi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rdi
.label_148:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c5d
	.globl sub_402c5d
	.type sub_402c5d, @function
sub_402c5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c60

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
	#Procedure 0x402c98
	.globl sub_402c98
	.type sub_402c98, @function
sub_402c98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ca0

	.globl es_free
	.type es_free, @function
es_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ccb
	.globl sub_402ccb
	.type sub_402ccb, @function
sub_402ccb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cd0

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
.label_158:
	movabs	rdi, OFFSET FLAT:label_164
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x4c5
	movabs	rcx, OFFSET FLAT:label_165
	call	__assert_fail
.label_170:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
.label_150:
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x18], rdx
.label_169:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], -1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x4a], cl
	jmp	.label_159
.label_171:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x18]
	jb	.label_158
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jb	.label_158
	jmp	.label_151
.label_149:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_169
	mov	rdi, qword ptr [rbp - 8]
	call	skip_construct
	mov	rdi, qword ptr [rbp - 0x10]
	call	skip_construct
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_157
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_163
.label_157:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x78], rax
.label_163:
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x18]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x18], rdx
	cmp	dword ptr [rbp - 0x58], 1
	jne	.label_170
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_150
.label_155:
	mov	dword ptr [rbp - 0x50], 0
.label_166:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_160
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_154
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_154:
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x68], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_161
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_161:
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_166
.label_160:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], -2
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -2
.label_159:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x24], -1
	mov	byte ptr [rbp - 0x69], cl
	je	.label_156
	cmp	dword ptr [rbp - 0x28], -1
	setne	al
	mov	byte ptr [rbp - 0x69], al
.label_156:
	mov	al, byte ptr [rbp - 0x69]
	test	al, 1
	jne	.label_167
	jmp	.label_171
.label_167:
	lea	rsi, [rbp - 0x54]
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	lea	rsi, [rbp - 0x58]
	mov	dword ptr [rbp - 0x24], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	get_next
	mov	dword ptr [rbp - 0x28], eax
	test	byte ptr [rbp - 0x4a], 1
	je	.label_149
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_149
	test	byte ptr [rbp - 0x49], 1
	je	.label_168
	cmp	dword ptr [rbp - 0x54], 2
	jne	.label_149
.label_168:
	movabs	rdi, OFFSET FLAT:label_152
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_151:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_153:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f4b
	.globl sub_402f4b
	.type sub_402f4b, @function
sub_402f4b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f54

	.globl validate_case_classes
	.type validate_case_classes, @function
validate_case_classes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x48], rsi
	mov	byte ptr [rbp - 0x49], 1
	mov	byte ptr [rbp - 0x4a], 1
	mov	rsi, qword ptr [rbp - 0x10]
	test	byte ptr [rsi + 0x31], 1
	jne	.label_155
	jmp	.label_153
.label_175:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ff2
	.globl sub_402ff2
	.type sub_402ff2, @function
sub_402ff2:

	nop	word ptr cs:[rax + rax]
.label_174:
	movabs	rdi, OFFSET FLAT:label_172
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x2cf
	movabs	rcx, OFFSET FLAT:label_173
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403025

	.globl append_repeated_char
	.type append_repeated_char, @function
append_repeated_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, sil
	mov	esi, 0x20
	mov	ecx, esi
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 4
	mov	r8b, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x10], r8b
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_174
	jmp	.label_175
	.section	.text
	.align	32
	#Procedure 0x403090

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
.label_190:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_189
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_189:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_183
	jmp	.label_180
.label_183:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_190
.label_180:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_177
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_177:
	movabs	rdi, OFFSET FLAT:label_182
	call	gettext
	movabs	rsi, OFFSET FLAT:label_187
	movabs	rdx, OFFSET FLAT:label_176
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
	je	.label_178
	movabs	rsi, OFFSET FLAT:label_186
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_178
	movabs	rdi, OFFSET FLAT:label_179
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_178:
	movabs	rdi, OFFSET FLAT:label_188
	call	gettext
	movabs	rsi, OFFSET FLAT:label_176
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_181
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_184
	movabs	rsi, OFFSET FLAT:label_185
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
	#Procedure 0x403229
	.globl sub_403229
	.type sub_403229, @function
sub_403229:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403230

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
	je	.label_191
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_194
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_195
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_192
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_193
.label_195:
	mov	byte ptr [rbp - 5], 0
.label_193:
	jmp	.label_191
.label_191:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032a3
	.globl sub_4032a3
	.type sub_4032a3, @function
sub_4032a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032b0

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
	#Procedure 0x4032cb
	.globl sub_4032cb
	.type sub_4032cb, @function
sub_4032cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0

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
	ja	.label_196
	jmp	.label_198
.label_198:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_197
.label_196:
	jmp	.label_197
.label_197:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40331a
	.globl sub_40331a
	.type sub_40331a, @function
sub_40331a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403320

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
	#Procedure 0x403357
	.globl sub_403357
	.type sub_403357, @function
sub_403357:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403360

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
	#Procedure 0x403393
	.globl sub_403393
	.type sub_403393, @function
sub_403393:

	nop	word ptr cs:[rax + rax]
.label_200:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_199:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033bb
	.globl sub_4033bb
	.type sub_4033bb, @function
sub_4033bb:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033bf

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
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_199
	.section	.text
	.align	32
	#Procedure 0x403400
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_203:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_202
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_203
.label_202:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_205
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_204]],  rax
.label_205:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_201
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_201:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034d4
	.globl sub_4034d4
	.type sub_4034d4, @function
sub_4034d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034e0

	.globl set_initialize
	.type set_initialize, @function
set_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x10], -2
.label_210:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, -1
	je	.label_206
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_210
.label_208:
	jmp	.label_207
.label_207:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403539
	.globl sub_403539
	.type sub_403539, @function
sub_403539:

	nop	word ptr cs:[rax + rax]
.label_206:
	test	byte ptr [rbp - 9], 1
	je	.label_207
	mov	qword ptr [rbp - 0x28], 0
.label_209:
	cmp	qword ptr [rbp - 0x28], 0x100
	jae	.label_208
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rcx + rax], dl
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_209
.label_213:
	jmp	.label_217
.label_217:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_211
.label_214:
	movabs	rdi, OFFSET FLAT:label_222
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x30e
	movabs	rcx, OFFSET FLAT:label_223
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4035d4

	.globl find_bracketed_repeat
	.type find_bracketed_repeat, @function
find_bracketed_repeat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_214
	jmp	.label_212
.label_225:
	lea	rsi, [rbp - 0x50]
	xor	eax, eax
	mov	r8d, eax
	mov	eax, 0xa
	mov	ecx, 8
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 2
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rdi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x48]
	movsx	r9d, byte ptr [rdx]
	cmp	r9d, 0x30
	cmove	eax, ecx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 0
	jne	.label_216
	mov	rax, -2
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	jb	.label_216
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_213
.label_216:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:label_221
	mov	qword ptr [rbp - 0x58], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_211
.label_227:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 2
	mov	qword ptr [rbp - 0x38], rax
.label_226:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x59], cl
	jae	.label_220
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x59], dl
.label_220:
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	jne	.label_215
	jmp	.label_218
.label_215:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5d
	jne	.label_219
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x18]
	sub	rax, 2
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], dl
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_225
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	jmp	.label_217
.label_219:
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_226
.label_218:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_211:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40379b
	.globl sub_40379b
	.type sub_40379b, @function
sub_40379b:

	nop	dword ptr [rax + rax]
.label_212:
	mov	edx, 0x2a
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_227
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x4037d0
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
	#Procedure 0x403806
	.globl sub_403806
	.type sub_403806, @function
sub_403806:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl get_s2_spec_stats
	.type get_s2_spec_stats, @function
get_s2_spec_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	get_spec_stats
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rdi + 0x18]
	jb	.label_228
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 1
	jne	.label_228
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
.label_228:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403874
	.globl sub_403874
	.type sub_403874, @function
sub_403874:

	nop	word ptr cs:[rax + rax]
.label_233:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_236:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_230
	movabs	rsi, OFFSET FLAT:label_231
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_230
	movabs	rsi, OFFSET FLAT:label_232
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_229
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_229:
	jmp	.label_230
.label_230:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403935
	.globl sub_403935
	.type sub_403935, @function
sub_403935:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40393c

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_235
	movabs	rdi, OFFSET FLAT:label_234
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_235:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_233
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_236
.label_240:
	movabs	rax, OFFSET FLAT:label_237
	movabs	rcx, OFFSET FLAT:label_238
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_243:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039ca
	.globl sub_4039ca
	.type sub_4039ca, @function
sub_4039ca:

	nop	dword ptr [rax + rax]
.label_245:
	movabs	rsi, OFFSET FLAT:label_239
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_240
	movabs	rax, OFFSET FLAT:label_241
	movabs	rcx, OFFSET FLAT:label_242
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_243
.label_244:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_248
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_245
	movabs	rax, OFFSET FLAT:label_246
	movabs	rcx, OFFSET FLAT:label_247
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_243
	.section	.text
	.align	32
	#Procedure 0x403a69

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
	je	.label_244
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_243
	.section	.text
	.align	32
	#Procedure 0x403aa0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_249
	call	gettext
	movabs	rsi, OFFSET FLAT:label_251
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_250
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_187
	movabs	rdx, OFFSET FLAT:label_176
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_252
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
	#Procedure 0x403b26
	.globl sub_403b26
	.type sub_403b26, @function
sub_403b26:

	nop	
	nop	dword ptr [rax + rax]
.label_277:
	movabs	rsi, OFFSET FLAT:label_253
	movabs	rdx, OFFSET FLAT:label_187
	movabs	r8, OFFSET FLAT:label_254
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_346:
	jmp	.label_329
.label_329:
	jmp	.label_331
.label_331:
	jmp	.label_332
.label_332:
	jmp	.label_321
.label_321:
	jmp	.label_317
.label_317:
	xor	edi, edi
	call	close
	cmp	eax, 0
	je	.label_335
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_338
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x180], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x180]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_328:
	jmp	.label_293
.label_304:
	mov	byte ptr [byte ptr [delete]],  1
	jmp	.label_284
.label_275:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 2
	mov	byte ptr [rbp - 0x131], cl
	jne	.label_342
	mov	al,  byte ptr [byte ptr [delete]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x131], al
.label_342:
	mov	al, byte ptr [rbp - 0x131]
	and	al, 1
	mov	byte ptr [byte ptr [translating]],  al
	mov	al,  byte ptr [byte ptr [delete]]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	sete	al
	and	al, 1
	movzx	ecx, al
	add	ecx, 1
	mov	dword ptr [rbp - 0x1c], ecx
	mov	al,  byte ptr [byte ptr [delete]]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	setle	al
	and	al, 1
	movzx	ecx, al
	add	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	mov	ecx, dword ptr [rbp - 0x18]
	cmp	ecx, dword ptr [rbp - 0x1c]
	jge	.label_256
	cmp	dword ptr [rbp - 0x18], 0
	jne	.label_278
	movabs	rdi, OFFSET FLAT:label_282
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_288
.label_262:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 1
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_296
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_145
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x168], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x168]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_276:
	cmp	dword ptr [rbp - 0xc0], -1
	je	.label_307
	test	byte ptr [byte ptr [truncate_set1]],  1
	je	.label_283
.label_307:
	jmp	.label_315
.label_333:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rax + 0x10], -2
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rax + 0x10], -2
.label_301:
	lea	rsi, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x98]
	call	get_next
	lea	rsi, [rbp - 0xcc]
	mov	dword ptr [rbp - 0xc0], eax
	mov	rdi, qword ptr [rbp - 0xa0]
	call	get_next
	mov	dword ptr [rbp - 0xc4], eax
	cmp	dword ptr [rbp - 0xc8], 0
	jne	.label_330
	cmp	dword ptr [rbp - 0xcc], 1
	jne	.label_330
	mov	dword ptr [rbp - 0xd4], 0
.label_349:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_337
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x170], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_339
	mov	edi, dword ptr [rbp - 0xd4]
	call	toupper
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xd4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_339:
	jmp	.label_348
.label_348:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_349
.label_281:
	cmp	dword ptr [rbp - 0x18], 2
	jne	.label_258
	mov	rdi, qword ptr [rbp - 0xa0]
	call	spec_init
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rdi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	parse_str
	test	al, 1
	jne	.label_266
	mov	dword ptr [rbp - 4], 1
	jmp	.label_268
.label_256:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 0x18]
	jge	.label_272
	movabs	rdi, OFFSET FLAT:label_274
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, dword ptr [rbp - 0x20]
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
	cmp	dword ptr [rbp - 0x18], 2
	jne	.label_290
	movabs	rdi, OFFSET FLAT:label_294
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x160], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_298
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x164], eax
.label_290:
	mov	edi, 1
	call	usage
.label_315:
	jmp	.label_305
.label_305:
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	je	.label_306
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	mov	rdi, qword ptr [rbp - 0xa0]
	call	set_initialize
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	movabs	rdx, OFFSET FLAT:read_and_xlate
	call	squeeze_filter
	jmp	.label_329
.label_267:
	movabs	rdi, OFFSET FLAT:label_343
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x72d
	movabs	rcx, OFFSET FLAT:label_280
	call	__assert_fail
.label_291:
	mov	dword ptr [rbp - 0xd0], 0
.label_336:
	cmp	dword ptr [rbp - 0xd0], 0x100
	jge	.label_333
	mov	eax, dword ptr [rbp - 0xd0]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xd0]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_336
.label_337:
	jmp	.label_324
.label_330:
	cmp	dword ptr [rbp - 0xc8], 1
	jne	.label_340
	cmp	dword ptr [rbp - 0xcc], 0
	jne	.label_340
	mov	dword ptr [rbp - 0xd8], 0
.label_265:
	cmp	dword ptr [rbp - 0xd8], 0x100
	jge	.label_344
	movsxd	rax, dword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x178], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x178]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_255
	mov	edi, dword ptr [rbp - 0xd8]
	call	tolower
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xd8]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_255:
	jmp	.label_263
.label_263:
	mov	eax, dword ptr [rbp - 0xd8]
	add	eax, 1
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_265
.label_272:
	mov	rdi, qword ptr [rbp - 0x98]
	call	spec_init
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + rdi*8]
	mov	rsi, qword ptr [rbp - 0x98]
	call	parse_str
	test	al, 1
	jne	.label_281
	mov	dword ptr [rbp - 4], 1
	jmp	.label_268
.label_258:
	mov	qword ptr [rbp - 0xa0], 0
.label_319:
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	validate
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	esi, 2
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fadvise
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	je	.label_299
	cmp	dword ptr [rbp - 0x18], 1
	jne	.label_299
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	mov	rdi, qword ptr [rbp - 0x98]
	mov	al,  byte ptr [byte ptr [complement]]
	and	al, 1
	movzx	esi, al
	call	set_initialize
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	movabs	rdx, OFFSET FLAT:plain_read
	call	squeeze_filter
	jmp	.label_317
.label_266:
	jmp	.label_319
.label_296:
	jmp	.label_320
.label_313:
	mov	byte ptr [byte ptr [squeeze_repeats]],  1
	jmp	.label_284
.label_297:
	mov	byte ptr [byte ptr [complement]],  1
	jmp	.label_284
.label_322:
	mov	edi, 1
	call	usage
.label_344:
	jmp	.label_327
.label_323:
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xb8]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_257:
	jmp	.label_308
.label_308:
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, 1
	mov	dword ptr [rbp - 0xb8], eax
	jmp	.label_334
.label_326:
	jmp	.label_305
	.section	.text
	.align	32
	#Procedure 0x4041a0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	lea	rax, [rbp - 0x90]
	lea	rcx, [rbp - 0x58]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x98], rcx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_184
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_259
	movabs	rsi, OFFSET FLAT:label_347
	mov	qword ptr [rbp - 0xe8], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_259
	mov	qword ptr [rbp - 0xf0], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0xf8], rax
	call	atexit
	mov	dword ptr [rbp - 0xfc], eax
.label_341:
	movabs	rdx, OFFSET FLAT:label_264
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_275
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x100], eax
	mov	dword ptr [rbp - 0x104], ecx
	je	.label_277
	jmp	.label_285
.label_285:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x108], eax
	je	.label_287
	jmp	.label_289
.label_289:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x10c], eax
	je	.label_292
	jmp	.label_295
.label_295:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x110], eax
	je	.label_297
	jmp	.label_300
.label_300:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x114], eax
	je	.label_297
	jmp	.label_302
.label_302:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x118], eax
	je	.label_304
	jmp	.label_312
.label_312:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_313
	jmp	.label_316
.label_316:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x120], eax
	je	.label_318
	jmp	.label_322
.label_345:
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	je	.label_260
	test	byte ptr [byte ptr [delete]],  1
	je	.label_260
	cmp	dword ptr [rbp - 0x18], 2
	jne	.label_260
	movabs	rdx, OFFSET FLAT:in_delete_set
	mov	rdi, qword ptr [rbp - 0x98]
	mov	al,  byte ptr [byte ptr [complement]]
	and	al, 1
	movzx	esi, al
	call	set_initialize
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	mov	rdi, qword ptr [rbp - 0xa0]
	call	set_initialize
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	movabs	rdx, OFFSET FLAT:read_and_delete
	call	squeeze_filter
	jmp	.label_332
.label_284:
	jmp	.label_341
.label_335:
	mov	dword ptr [rbp - 4], 0
.label_268:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043ea
	.globl sub_4043ea
	.type sub_4043ea, @function
sub_4043ea:

	nop	
.label_299:
	test	byte ptr [byte ptr [delete]],  1
	je	.label_345
	cmp	dword ptr [rbp - 0x18], 1
	jne	.label_345
	movabs	rdx, OFFSET FLAT:in_delete_set
	mov	rdi, qword ptr [rbp - 0x98]
	mov	al,  byte ptr [byte ptr [complement]]
	and	al, 1
	movzx	esi, al
	call	set_initialize
.label_320:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 0x2000
	mov	esi, eax
	call	read_and_delete
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_262
	jmp	.label_269
.label_340:
	cmp	dword ptr [rbp - 0xc0], -1
	je	.label_270
	cmp	dword ptr [rbp - 0xc4], -1
	jne	.label_273
.label_270:
	jmp	.label_276
.label_287:
	xor	edi, edi
	call	usage
.label_283:
	movabs	rdi, OFFSET FLAT:label_279
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x762
	movabs	rcx, OFFSET FLAT:label_280
	call	__assert_fail
.label_260:
	test	byte ptr [byte ptr [translating]],  1
	je	.label_331
	test	byte ptr [byte ptr [complement]],  1
	je	.label_291
	xor	esi, esi
	movabs	rax, OFFSET FLAT:in_delete_set
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xb0]
	call	set_initialize
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rax + 0x10], -2
	mov	dword ptr [rbp - 0xb4], 0
.label_309:
	cmp	dword ptr [rbp - 0xb4], 0x100
	jge	.label_303
	mov	eax, dword ptr [rbp - 0xb4]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xb4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
	mov	eax, dword ptr [rbp - 0xb4]
	add	eax, 1
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_309
.label_318:
	mov	byte ptr [byte ptr [truncate_set1]],  1
	jmp	.label_284
.label_269:
	jmp	.label_321
.label_271:
	cmp	dword ptr [rbp - 0xbc], -1
	jne	.label_323
	jmp	.label_326
.label_314:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 1
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0xe0]
	je	.label_328
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_145
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x17c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x17c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_306:
	jmp	.label_293
.label_293:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 0x2000
	mov	esi, eax
	call	read_and_xlate
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_314
	jmp	.label_346
.label_303:
	mov	dword ptr [rbp - 0xb8], 0
.label_334:
	cmp	dword ptr [rbp - 0xb8], 0x100
	jge	.label_326
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xb0]
	test	byte ptr [rcx + rax], 1
	jne	.label_257
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	call	get_next
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], -1
	jne	.label_261
	test	byte ptr [byte ptr [truncate_set1]],  1
	je	.label_267
.label_261:
	jmp	.label_271
.label_292:
	mov	edi, 3
	movabs	rsi, OFFSET FLAT:label_194
	call	setlocale
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:label_194
	mov	qword ptr [rbp - 0x128], rax
	call	setlocale
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_284
.label_278:
	movabs	rdi, OFFSET FLAT:label_286
	call	gettext
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x140], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rcx, OFFSET FLAT:label_310
	movabs	rdx, OFFSET FLAT:label_311
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x148], rdi
	mov	rdi, rcx
	call	gettext
	movabs	rsi, OFFSET FLAT:label_298
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14c], eax
.label_288:
	mov	edi, 1
	call	usage
.label_273:
	mov	eax, dword ptr [rbp - 0xc4]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xc0]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_327:
	jmp	.label_324
.label_324:
	cmp	dword ptr [rbp - 0xcc], 2
	je	.label_325
	mov	rdi, qword ptr [rbp - 0x98]
	call	skip_construct
	mov	rdi, qword ptr [rbp - 0xa0]
	call	skip_construct
.label_325:
	jmp	.label_301
	.section	.text
	.align	32
	#Procedure 0x404780
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_350
	jmp	.label_352
.label_352:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_351
.label_350:
	mov	byte ptr [rbp - 1], 0
.label_351:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047af
	.globl sub_4047af
	.type sub_4047af, @function
sub_4047af:

	nop	
.label_353:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047b9
	.globl sub_4047b9
	.type sub_4047b9, @function
sub_4047b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047bc

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
.label_354:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_353
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_354
	.section	.text
	.align	32
	#Procedure 0x404800

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_355
	jmp	.label_357
.label_357:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_356
.label_355:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_356:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404837
	.globl sub_404837
	.type sub_404837, @function
sub_404837:

	nop	word ptr [rax + rax]
.label_360:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_358
	.section	.text
	.align	32
	#Procedure 0x40484d

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_361:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_363
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_358
.label_364:
	jmp	.label_362
.label_362:
	jmp	.label_365
.label_365:
	jmp	.label_361
.label_363:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_359
	jmp	.label_361
.label_358:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048bb
	.globl sub_4048bb
	.type sub_4048bb, @function
sub_4048bb:

	nop	word ptr [rax + rax]
.label_359:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_360
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_360
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_364
	.section	.text
	.align	32
	#Procedure 0x4048f0

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
	#Procedure 0x404923
	.globl sub_404923
	.type sub_404923, @function
sub_404923:

	nop	word ptr cs:[rax + rax]
.label_367:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_366
.label_366:
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
	#Procedure 0x4049a3
	.globl sub_4049a3
	.type sub_4049a3, @function
sub_4049a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049b1

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
	je	.label_367
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_366
.label_368:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_370:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049f2
	.globl sub_4049f2
	.type sub_4049f2, @function
sub_4049f2:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f8

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_369
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_369
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_370
.label_369:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_368
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_368
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404a60

	.globl append_range
	.type append_range, @function
append_range:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	cl, sil
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x11], cl
	mov	byte ptr [rbp - 0x12], al
	movzx	edx, byte ptr [rbp - 0x12]
	movzx	esi, byte ptr [rbp - 0x11]
	cmp	edx, esi
	jge	.label_371
	movzx	edi, byte ptr [rbp - 0x11]
	call	make_printable_char
	mov	qword ptr [rbp - 0x20], rax
	movzx	edi, byte ptr [rbp - 0x12]
	call	make_printable_char
	movabs	rdi, OFFSET FLAT:label_376
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	byte ptr [rbp - 1], 0
	jmp	.label_373
.label_372:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 1], 1
.label_373:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b19
	.globl sub_404b19
	.type sub_404b19, @function
sub_404b19:

	nop	
.label_374:
	movabs	rdi, OFFSET FLAT:label_172
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x2a5
	movabs	rcx, OFFSET FLAT:label_375
	call	__assert_fail
.label_371:
	mov	eax, 0x20
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax], 1
	mov	cl, byte ptr [rbp - 0x11]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax + 0x10], cl
	mov	cl, byte ptr [rbp - 0x12]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax + 0x11], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_374
	jmp	.label_372
	.section	.text
	.align	32
	#Procedure 0x404b90

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
	#Procedure 0x404c02
	.globl sub_404c02
	.type sub_404c02, @function
sub_404c02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10
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
	#Procedure 0x404c37
	.globl sub_404c37
	.type sub_404c37, @function
sub_404c37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c40

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
	#Procedure 0x404c7e
	.globl sub_404c7e
	.type sub_404c7e, @function
sub_404c7e:

	nop	
.label_396:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_377
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x18]
	call	get_s2_spec_stats
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 1
	jbe	.label_392
	movabs	rdi, OFFSET FLAT:label_390
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_384:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	string2_extend
.label_391:
	jmp	.label_382
.label_382:
	test	byte ptr [byte ptr [complement]],  1
	je	.label_381
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x31], 1
	je	.label_381
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_394
	mov	rdi, qword ptr [rbp - 0x10]
	call	homogeneous_spec_list
	test	al, 1
	jne	.label_381
.label_394:
	movabs	rdi, OFFSET FLAT:label_386
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_392:
	test	byte ptr [byte ptr [translating]],  1
	je	.label_378
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_380
	movabs	rdi, OFFSET FLAT:label_385
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	32
	#Procedure 0x404d7c

	.globl validate
	.type validate, @function
validate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	get_s1_spec_stats
	mov	rsi, qword ptr [rbp - 8]
	cmp	qword ptr [rsi + 0x20], 0
	jbe	.label_396
	movabs	rdi, OFFSET FLAT:label_395
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_381:
	jmp	.label_379
.label_389:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	validate_case_classes
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x18]
	jbe	.label_382
	test	byte ptr [byte ptr [truncate_set1]],  1
	jne	.label_391
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_384
	movabs	rdi, OFFSET FLAT:label_388
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_380:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x32], 1
	je	.label_389
	movabs	rdi, OFFSET FLAT:label_393
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_378:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	jbe	.label_383
	movabs	rdi, OFFSET FLAT:label_387
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_383:
	jmp	.label_379
.label_379:
	jmp	.label_377
.label_377:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e96
	.globl sub_404e96
	.type sub_404e96, @function
sub_404e96:

	nop	word ptr cs:[rax + rax]
.label_404:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_397
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_401
	call	xalloc_die
.label_399:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_403:
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
	je	.label_402
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_204]]
	mov	qword ptr [rax + 8], rcx
.label_402:
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
.label_397:
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
	ja	.label_400
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_398
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_398:
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
.label_400:
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
	#Procedure 0x4050bd
	.globl sub_4050bd
	.type sub_4050bd, @function
sub_4050bd:

	nop	word ptr cs:[rax + rax]
.label_401:
	test	byte ptr [rbp - 0x31], 1
	je	.label_399
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_403
	.section	.text
	.align	32
	#Procedure 0x4050e1

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
	jge	.label_404
	call	abort
.label_406:
	mov	byte ptr [rbp - 1], 0
.label_407:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40512e
	.globl sub_40512e
	.type sub_40512e, @function
sub_40512e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405130
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
	jb	.label_405
	jmp	.label_408
.label_408:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_406
	jmp	.label_405
.label_405:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_407
.label_410:
	movabs	rdi, OFFSET FLAT:label_172
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x2bb
	movabs	rcx, OFFSET FLAT:label_409
	call	__assert_fail
.label_412:
	mov	eax, 0x20
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax], 2
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax + 0x10], ecx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_410
	jmp	.label_411
	.section	.text
	.align	32
	#Procedure 0x4051dc

	.globl append_char_class
	.type append_char_class, @function
append_char_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	look_up_char_class
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0x270f
	jne	.label_412
	mov	byte ptr [rbp - 1], 0
	jmp	.label_413
.label_411:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 1], 1
.label_413:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405244
	.globl sub_405244
	.type sub_405244, @function
sub_405244:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250

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
	je	.label_415
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_414
.label_415:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_414:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405295
	.globl sub_405295
	.type sub_405295, @function
sub_405295:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_416
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_144
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4052df
	.globl sub_4052df
	.type sub_4052df, @function
sub_4052df:

	nop	
.label_424:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:label_418
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	byte ptr [rbp - 1], 0
	jmp	.label_417
.label_446:
	jmp	.label_440
.label_440:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_429
.label_437:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	append_equiv_class
	test	al, 1
	jne	.label_446
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rsi, rax
	call	star_digits_closebracket
	test	al, 1
	jne	.label_431
	jmp	.label_427
.label_431:
	jmp	.label_420
.label_450:
	jmp	.label_440
.label_435:
	jmp	.label_423
.label_423:
	test	byte ptr [rbp - 0x29], 1
	je	.label_426
	jmp	.label_429
.label_434:
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_448
	mov	byte ptr [rbp - 0x29], 0
	jmp	.label_435
.label_427:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:label_432
	mov	qword ptr [rbp - 0x78], rax
	call	gettext
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x78]
	mov	edi, ecx
	mov	qword ptr [rbp - 0x90], rsi
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x90]
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	mov	byte ptr [rbp - 1], 0
	jmp	.label_417
	.section	.text
	.align	32
	#Procedure 0x40540e

	.globl build_spec_list
	.type build_spec_list, @function
build_spec_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], 0
.label_429:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_438
	mov	edx, 0x5b
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	es_match
	test	al, 1
	jne	.label_444
	jmp	.label_433
.label_444:
	mov	edx, 0x3a
	mov	byte ptr [rbp - 0x29], 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_419
	mov	edx, 0x3d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_419
	jmp	.label_430
.label_419:
	lea	rcx, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rax + rdx + 1]
	call	find_closing_delim
	test	al, 1
	jne	.label_447
	jmp	.label_451
.label_447:
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 2
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_449
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3a
	jne	.label_443
	movabs	rdi, OFFSET FLAT:label_436
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_425
.label_443:
	movabs	rdi, OFFSET FLAT:label_445
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_425:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_417
.label_451:
	jmp	.label_430
.label_430:
	jmp	.label_420
.label_420:
	lea	rdx, [rbp - 0x39]
	lea	rcx, [rbp - 0x48]
	lea	r8, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	find_bracketed_repeat
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_434
	mov	rdi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x39]
	mov	rdx, qword ptr [rbp - 0x48]
	movzx	esi, al
	call	append_repeated_char
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	jmp	.label_423
.label_422:
	mov	byte ptr [rbp - 1], 1
.label_417:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055f6
	.globl sub_4055f6
	.type sub_4055f6, @function
sub_4055f6:

	nop	dword ptr [rax + rax]
.label_448:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_417
.label_442:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	esi, byte ptr [rcx + rax]
	call	append_normal_char
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_428:
	jmp	.label_429
.label_426:
	jmp	.label_433
.label_433:
	mov	edx, 0x2d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_441
	jmp	.label_442
.label_441:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	esi, dl
	movzx	edx, byte ptr [rcx + rax + 2]
	call	append_range
	test	al, 1
	jne	.label_452
	mov	byte ptr [rbp - 1], 0
	jmp	.label_417
.label_438:
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_422
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	esi, byte ptr [rcx + rax]
	call	append_normal_char
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_421
.label_449:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3a
	jne	.label_437
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	append_char_class
	test	al, 1
	jne	.label_450
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rsi, rax
	call	star_digits_closebracket
	test	al, 1
	jne	.label_439
	jmp	.label_424
.label_439:
	jmp	.label_420
.label_452:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 3
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_428
	.section	.text
	.align	32
	#Procedure 0x405730
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
	#Procedure 0x40574f
	.globl sub_40574f
	.type sub_40574f, @function
sub_40574f:

	nop	
.label_453:
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
	#Procedure 0x40576e

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
	jne	.label_455
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_455:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_454
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_453
.label_454:
	call	abort
.label_961:
	movabs	rdi, OFFSET FLAT:label_458
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
	jmp	.label_457
.label_469:
	movabs	rsi, OFFSET FLAT:label_460
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_473:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_471
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
	mov	ecx, OFFSET FLAT:label_467
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
	ja	.label_474
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_463]]
	jmp	rcx
.label_964:
	movabs	rdi, OFFSET FLAT:label_470
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
	jmp	.label_457
.label_474:
	movabs	rdi, OFFSET FLAT:label_464
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
.label_457:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a58
	.globl sub_405a58
	.type sub_405a58, @function
sub_405a58:

	nop	
.label_956:
	movabs	rdi, OFFSET FLAT:label_456
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
	jmp	.label_457
.label_959:
	movabs	rdi, OFFSET FLAT:label_465
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
	jmp	.label_457
.label_958:
	movabs	rdi, OFFSET FLAT:label_466
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
	jmp	.label_457
.label_960:
	movabs	rdi, OFFSET FLAT:label_472
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
	jmp	.label_457
.label_955:
	jmp	.label_457
.label_963:
	movabs	rdi, OFFSET FLAT:label_468
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
	jmp	.label_457
.label_962:
	movabs	rdi, OFFSET FLAT:label_461
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
	jmp	.label_457
	.section	.text
	.align	32
	#Procedure 0x405ce7

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
	je	.label_469
	movabs	rsi, OFFSET FLAT:label_462
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_473
.label_957:
	movabs	rdi, OFFSET FLAT:label_459
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
	jmp	.label_457
.label_476:
	mov	byte ptr [rbp - 1], 0
.label_477:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d8e
	.globl sub_405d8e
	.type sub_405d8e, @function
sub_405d8e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d9c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_476
	jmp	.label_475
.label_475:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_477
	.section	.text
	.align	32
	#Procedure 0x405dc0
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
	#Procedure 0x405dda
	.globl sub_405dda
	.type sub_405dda, @function
sub_405dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405de0
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
	#Procedure 0x405df6
	.globl sub_405df6
	.type sub_405df6, @function
sub_405df6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e00

	.globl spec_init
	.type spec_init, @function
spec_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x20
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 8], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e47
	.globl sub_405e47
	.type sub_405e47, @function
sub_405e47:

	nop	word ptr [rax + rax]
.label_516:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_490
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_492
.label_485:
	mov	dword ptr [rbp - 0x4c], 1
.label_483:
	jmp	.label_484
.label_484:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_507
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_478
.label_495:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_497:
	jmp	.label_491
.label_491:
	jmp	.label_489
.label_489:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_506
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_511]]
	jmp	rcx
.label_507:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_494
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_503
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_478
.label_517:
	movabs	rdi, OFFSET FLAT:label_518
	movabs	rsi, OFFSET FLAT:label_519
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_520
	call	__assert_fail
.label_496:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_498
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_493
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_493
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_493
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_510
.label_978:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_513:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_496
	mov	dword ptr [rbp - 4], 4
	jmp	.label_478
.label_506:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_478
.label_970:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_482:
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
	je	.label_487
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_487:
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_478:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406089
	.globl sub_406089
	.type sub_406089, @function
sub_406089:

	nop	dword ptr [rax + rax]
.label_969:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_490:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_515:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_513
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_515
.label_510:
	jmp	.label_484
.label_975:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_493:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_478
.label_503:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_481
	jmp	.label_488
.label_488:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_481
	jmp	.label_499
.label_499:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_481
	jmp	.label_501
.label_501:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_481
	jmp	.label_505
.label_505:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_481
	jmp	.label_512
.label_512:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_481
	jmp	.label_502
.label_502:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_481
	jmp	.label_514
.label_514:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_481
	jmp	.label_479
.label_479:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_481
	jmp	.label_480
.label_480:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_481
	jmp	.label_486
.label_486:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_489
	jmp	.label_481
.label_481:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_491
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_495
	jmp	.label_500
.label_500:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_495
	jmp	.label_504
.label_504:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_497
	jmp	.label_508
.label_508:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_509
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_509:
	jmp	.label_497
.label_972:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_971:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_498:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_483
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_485
	mov	dword ptr [rbp - 4], 4
	jmp	.label_478
.label_977:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_973:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_976:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_979:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_482
	.section	.text
	.align	32
	#Procedure 0x406392

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
	jg	.label_517
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_517
	jmp	.label_516
.label_980:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
.label_974:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_482
	.section	.text
	.align	32
	#Procedure 0x406400

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406406
	.globl sub_406406
	.type sub_406406, @function
sub_406406:

	nop	word ptr cs:[rax + rax]
.label_521:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406427
	.globl sub_406427
	.type sub_406427, @function
sub_406427:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40642f

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
	jae	.label_521
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406460
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
	je	.label_522
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_523
.label_522:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_523
.label_523:
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
	#Procedure 0x406525
	.globl sub_406525
	.type sub_406525, @function
sub_406525:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406530
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
	#Procedure 0x4065dd
	.globl sub_4065dd
	.type sub_4065dd, @function
sub_4065dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4065e0

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
	jne	.label_524
	movabs	rax, OFFSET FLAT:label_184
	mov	qword ptr [rbp - 8], rax
.label_524:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_525
	movabs	rax, OFFSET FLAT:label_526
	mov	qword ptr [rbp - 8], rax
.label_525:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406637
	.globl sub_406637
	.type sub_406637, @function
sub_406637:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406640

	.globl is_equiv_class_member
	.type is_equiv_class_member, @function
is_equiv_class_member:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	cl, dil
	mov	byte ptr [rbp - 1], cl
	mov	byte ptr [rbp - 2], al
	movzx	esi, byte ptr [rbp - 1]
	movzx	edi, byte ptr [rbp - 2]
	cmp	esi, edi
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406664
	.globl sub_406664
	.type sub_406664, @function
sub_406664:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406670
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_527
	jmp	.label_529
.label_529:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_528
.label_527:
	mov	byte ptr [rbp - 1], 0
.label_528:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066a2
	.globl sub_4066a2
	.type sub_4066a2, @function
sub_4066a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066b0
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
	#Procedure 0x4066d5
	.globl sub_4066d5
	.type sub_4066d5, @function
sub_4066d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066e0

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
	#Procedure 0x4066f0
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
	#Procedure 0x40672a
	.globl sub_40672a
	.type sub_40672a, @function
sub_40672a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406730

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
	jb	.label_530
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_531
.label_530:
	call	xalloc_die
.label_531:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406786
	.globl sub_406786
	.type sub_406786, @function
sub_406786:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406790

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
	#Procedure 0x406805
	.globl sub_406805
	.type sub_406805, @function
sub_406805:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406810
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
	#Procedure 0x406837
	.globl sub_406837
	.type sub_406837, @function
sub_406837:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406840
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
	jae	.label_532
	call	xalloc_die
.label_532:
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
	#Procedure 0x406890

	.globl squeeze_filter
	.type squeeze_filter, @function
squeeze_filter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], 0x7fffffff
	mov	dword ptr [rbp - 0x20], 0x7fffffff
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
.label_546:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_550
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_547
	jmp	.label_552
.label_553:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x20], edx
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x28], 0
	jbe	.label_541
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, dword ptr [rbp - 0x20]
	jne	.label_541
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
.label_541:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_536:
	cmp	qword ptr [rbp - 0x40], 0
	jbe	.label_534
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x50]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x40]
	je	.label_534
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_145
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x54]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_554:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_548
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + in_squeeze_set]],  1
	je	.label_548
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_548:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_553
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_536
.label_547:
	mov	qword ptr [rbp - 0x28], 0
.label_550:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0x20], 0x7fffffff
	jne	.label_543
	jmp	.label_535
.label_535:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x41], cl
	jae	.label_549
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + in_squeeze_set]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x41], al
.label_549:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_544
	jmp	.label_554
.label_544:
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_535
.label_538:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_539
	mov	dword ptr [rbp - 0x20], 0x7fffffff
.label_539:
	jmp	.label_545
.label_545:
	jmp	.label_546
.label_552:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406abd
	.globl sub_406abd
	.type sub_406abd, @function
sub_406abd:

	nop	word ptr cs:[rax + rax]
.label_534:
	jmp	.label_543
.label_543:
	cmp	dword ptr [rbp - 0x20], 0x7fffffff
	je	.label_545
	jmp	.label_542
.label_542:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x55], cl
	jae	.label_551
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, dword ptr [rbp - 0x20]
	sete	sil
	mov	byte ptr [rbp - 0x55], sil
.label_551:
	mov	al, byte ptr [rbp - 0x55]
	test	al, 1
	jne	.label_537
	jmp	.label_538
.label_537:
	jmp	.label_540
.label_540:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_542
	.section	.text
	.align	32
	#Procedure 0x406b30

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_555
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_555:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b73
	.globl sub_406b73
	.type sub_406b73, @function
sub_406b73:

	nop	word ptr cs:[rax + rax]
.label_556:
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
	#Procedure 0x406baa
	.globl sub_406baa
	.type sub_406baa, @function
sub_406baa:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bb6

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
	jne	.label_556
	call	abort
.label_559:
	mov	dword ptr [rbp - 4], 0
.label_558:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c00
	.globl sub_406c00
	.type sub_406c00, @function
sub_406c00:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c07

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
	jne	.label_557
	test	byte ptr [rbp - 0x13], 1
	je	.label_559
	test	byte ptr [rbp - 0x11], 1
	jne	.label_557
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_559
.label_557:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_560
	call	__errno_location
	mov	dword ptr [rax], 0
.label_560:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_558
	.section	.text
	.align	32
	#Procedure 0x406ca0

	.globl append_normal_char
	.type append_normal_char, @function
append_normal_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, sil
	mov	esi, 0x20
	mov	ecx, esi
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0
	mov	dl, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x10], dl
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_561
	jmp	.label_562
.label_561:
	movabs	rdi, OFFSET FLAT:label_172
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x287
	movabs	rcx, OFFSET FLAT:label_563
	call	__assert_fail
.label_562:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d43
	.globl sub_406d43
	.type sub_406d43, @function
sub_406d43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d50
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_564
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_564:
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
	#Procedure 0x406d8d
	.globl sub_406d8d
	.type sub_406d8d, @function
sub_406d8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d90

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
	jne	.label_565
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_565:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_566
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_566
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_566
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_567
.label_566:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_567:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e31
	.globl sub_406e31
	.type sub_406e31, @function
sub_406e31:

	nop	word ptr cs:[rax + rax]
.label_574:
	call	abort
.label_579:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
	ja	.label_574
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_578]]
	jmp	rcx
.label_946:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x11]
	mov	byte ptr [rbp - 0x19], cl
	jmp	.label_571
.label_572:
	movabs	rdi, OFFSET FLAT:label_576
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x55e
	movabs	rcx, OFFSET FLAT:label_569
	call	__assert_fail
.label_575:
	movabs	rdi, OFFSET FLAT:label_580
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x55f
	movabs	rcx, OFFSET FLAT:label_569
	call	__assert_fail
.label_948:
	call	abort
.label_947:
	movabs	rdi, OFFSET FLAT:label_573
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_577:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jbe	.label_581
	jmp	.label_579
.label_571:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rdx + 0x18]
	movzx	esi, al
	mov	rdx, rcx
	call	append_repeated_char
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f48
	.globl sub_406f48
	.type sub_406f48, @function
sub_406f48:

	nop	dword ptr [rax]
.label_581:
	movabs	rdi, OFFSET FLAT:label_568
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x560
	movabs	rcx, OFFSET FLAT:label_569
	call	__assert_fail
.label_945:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jmp	.label_571
	.section	.text
	.align	32
	#Procedure 0x406f83

	.globl string2_extend
	.type string2_extend, @function
string2_extend:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	test	byte ptr [byte ptr [translating]],  1
	je	.label_572
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jbe	.label_575
	jmp	.label_577
.label_949:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jmp	.label_571
	.section	.text
	.align	32
	#Procedure 0x406fd0

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
	#Procedure 0x406fdb
	.globl sub_406fdb
	.type sub_406fdb, @function
sub_406fdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fe0

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
	jge	.label_582
	call	xset_binary_mode_error
.label_582:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40700d
	.globl sub_40700d
	.type sub_40700d, @function
sub_40700d:

	nop	dword ptr [rax]
.label_585:
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
	#Procedure 0x407033
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
.label_584:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_585
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_584
	.section	.text
	.align	32
	#Procedure 0x407080
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
	#Procedure 0x4070af
	.globl sub_4070af
	.type sub_4070af, @function
sub_4070af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4070b0

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
	#Procedure 0x4070ef
	.globl sub_4070ef
	.type sub_4070ef, @function
sub_4070ef:

	nop	
.label_587:
	movabs	rsi, OFFSET FLAT:label_586
	mov	rdi, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rbp - 1]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x1c], eax
.label_588:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407116
	.globl sub_407116
	.type sub_407116, @function
sub_407116:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407124

	.globl make_printable_char
	.type make_printable_char, @function
make_printable_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	edi, 5
	mov	byte ptr [rbp - 1], al
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	movzx	ecx, byte ptr [rbp - 1]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x18], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + rdi*2]
	and	ecx, 0x4000
	cmp	ecx, 0
	je	.label_587
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + 1], 0
	jmp	.label_588
	.section	.text
	.align	32
	#Procedure 0x407180

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
	je	.label_589
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
.label_589:
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
	#Procedure 0x4072e4
	.globl sub_4072e4
	.type sub_4072e4, @function
sub_4072e4:

	nop	word ptr cs:[rax + rax]
.label_594:
	jmp	.label_590
.label_590:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_591
	.section	.text
	.align	32
	#Procedure 0x407303

	.globl look_up_char_class
	.type look_up_char_class, @function
look_up_char_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], 0
.label_591:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	cmp	rcx, 0xc
	jae	.label_593
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	mov	rsi,  qword ptr [word ptr [+ (rcx * 8) + char_class_name]]
	mov	rdx, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_594
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [+ (rcx * 8) + char_class_name]]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_594
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_592
.label_593:
	mov	dword ptr [rbp - 4], 0x270f
.label_592:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407383
	.globl sub_407383
	.type sub_407383, @function
sub_407383:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407390
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
	je	.label_595
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_596
.label_595:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_596
.label_596:
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
	#Procedure 0x407402
	.globl sub_407402
	.type sub_407402, @function
sub_407402:

	nop	word ptr cs:[rax + rax]
.label_951:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x11]
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x10]
	cmp	ecx, edx
	jl	.label_600
	jmp	.label_609
.label_952:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x31], 1
	mov	dword ptr [rbp - 0x2c], 0
.label_624:
	cmp	dword ptr [rbp - 0x2c], 0x100
	jge	.label_615
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	jne	.label_619
	jmp	.label_620
.label_619:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_620:
	jmp	.label_622
.label_622:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_624
.label_950:
	mov	qword ptr [rbp - 0x20], 1
	jmp	.label_598
.label_621:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 1
	jmp	.label_598
.label_600:
	movabs	rdi, OFFSET FLAT:label_606
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x4ee
	movabs	rcx, OFFSET FLAT:label_607
	call	__assert_fail
.label_608:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_617
.label_953:
	mov	dword ptr [rbp - 0x30], 0
.label_613:
	cmp	dword ptr [rbp - 0x30], 0x100
	jge	.label_621
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x10]
	mov	edx, dword ptr [rbp - 0x30]
	mov	sil, dl
	movzx	edi, cl
	movzx	esi, sil
	call	is_equiv_class_member
	test	al, 1
	jne	.label_601
	jmp	.label_603
.label_601:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_603:
	jmp	.label_605
.label_605:
	mov	eax, dword ptr [rbp - 0x30]
	add	eax, 1
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_613
.label_609:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x11]
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x10]
	sub	ecx, edx
	add	ecx, 1
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_598
.label_623:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407570
	.globl sub_407570
	.type sub_407570, @function
sub_407570:

	nop	word ptr cs:[rax + rax]
.label_615:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x44], ecx
	mov	dword ptr [rbp - 0x48], edx
	je	.label_610
	jmp	.label_602
.label_602:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x4c], eax
	jne	.label_604
	jmp	.label_610
.label_610:
	jmp	.label_612
	.section	.text
	.align	32
	#Procedure 0x4075b3

	.globl get_spec_stats
	.type get_spec_stats, @function
get_spec_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x20], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x30], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x32], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x31], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_617:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_623
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], rdx
	ja	.label_597
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_611]]
	jmp	rcx
.label_597:
	call	abort
.label_604:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x32], 1
.label_612:
	jmp	.label_598
.label_954:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jbe	.label_616
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_618
.label_616:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_618:
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_599
	cmp	qword ptr [rbp - 0x28], -2
	jbe	.label_608
.label_599:
	movabs	rdi, OFFSET FLAT:label_614
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_626:
	mov	byte ptr [rbp - 1], 0
.label_627:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076de
	.globl sub_4076de
	.type sub_4076de, @function
sub_4076de:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076ec
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_626
	jmp	.label_625
.label_625:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_627
.label_635:
	movabs	rax, OFFSET FLAT:label_646
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_630
.label_647:
	movabs	rax, OFFSET FLAT:label_648
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_630
.label_651:
	movabs	rax, OFFSET FLAT:label_638
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_630
.label_631:
	movzx	eax, byte ptr [rbp - 0x39]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	je	.label_640
	mov	al, byte ptr [rbp - 0x39]
	mov	byte ptr [rbp - 0x2d], al
	mov	byte ptr [rbp - 0x2c], 0
	jmp	.label_632
.label_644:
	movabs	rax, OFFSET FLAT:label_629
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_630
.label_653:
	movabs	rax, OFFSET FLAT:label_639
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_630
.label_634:
	movabs	rax, OFFSET FLAT:label_652
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_630
.label_637:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077c5
	.globl sub_4077c5
	.type sub_4077c5, @function
sub_4077c5:

	nop	dword ptr [rax]
.label_640:
	movabs	rsi, OFFSET FLAT:label_586
	lea	rdi, [rbp - 0x2d]
	movzx	edx, byte ptr [rbp - 0x39]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x6c], eax
.label_632:
	lea	rax, [rbp - 0x2d]
	mov	qword ptr [rbp - 0x38], rax
.label_630:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	stpcpy
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_655
	.section	.text
	.align	32
	#Procedure 0x407812

	.globl make_printable_str
	.type make_printable_str, @function
make_printable_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	rdi, rsi
	mov	rsi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 0
.label_655:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_637
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x39], dl
	movzx	esi, byte ptr [rbp - 0x39]
	mov	edi, esi
	sub	edi, 7
	mov	dword ptr [rbp - 0x40], esi
	mov	dword ptr [rbp - 0x44], edi
	je	.label_644
	jmp	.label_633
.label_633:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 8
	mov	dword ptr [rbp - 0x48], eax
	je	.label_635
	jmp	.label_643
.label_643:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 9
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_647
	jmp	.label_650
.label_650:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x50], eax
	je	.label_654
	jmp	.label_645
.label_645:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x54], eax
	je	.label_634
	jmp	.label_641
.label_641:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x58], eax
	je	.label_653
	jmp	.label_636
.label_636:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xd
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_651
	jmp	.label_628
.label_628:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x60], eax
	jne	.label_631
	jmp	.label_656
.label_656:
	movabs	rax, OFFSET FLAT:label_642
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_630
.label_654:
	movabs	rax, OFFSET FLAT:label_649
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_630
	.section	.text
	.align	32
	#Procedure 0x407940

	.globl plain_read
	.type plain_read, @function
plain_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	safe_read
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_657
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_658
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_657:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079a5
	.globl sub_4079a5
	.type sub_4079a5, @function
sub_4079a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079b0
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
	je	.label_659
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_660
.label_659:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079f7
	.globl sub_4079f7
	.type sub_4079f7, @function
sub_4079f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a00

	.globl sub_407a00
	.type sub_407a00, @function
sub_407a00:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_661
.label_663:
	mov	byte ptr [rbp - 1], 0
.label_661:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a17
	.globl sub_407a17
	.type sub_407a17, @function
sub_407a17:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a26
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
	ja	.label_663
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_662]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x407a50
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
	#Procedure 0x407a87
	.globl sub_407a87
	.type sub_407a87, @function
sub_407a87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a90
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
	#Procedure 0x407aba
	.globl sub_407aba
	.type sub_407aba, @function
sub_407aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ac0
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
	jb	.label_664
	jmp	.label_667
.label_667:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_664
	jmp	.label_665
.label_665:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_666
	jmp	.label_664
.label_664:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_668
.label_666:
	mov	byte ptr [rbp - 1], 0
.label_668:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b25
	.globl sub_407b25
	.type sub_407b25, @function
sub_407b25:

	nop	word ptr cs:[rax + rax]
.label_679:
	movabs	rdi, OFFSET FLAT:label_670
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_671
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_672
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_673
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_674
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_675
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_669
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_676
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_253
	mov	dword ptr [rbp - 0x34], eax
	call	emit_ancillary_info
.label_677:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x407c59
	.globl sub_407c59
	.type sub_407c59, @function
sub_407c59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c5d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_679
	jmp	.label_678
.label_678:
	movabs	rdi, OFFSET FLAT:label_680
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_677
.label_694:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_689
	test	byte ptr [rbp - 0x79], 1
	je	.label_689
	mov	dword ptr [rbp - 0x34], 4
.label_689:
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
.label_726:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d28
	.globl sub_407d28
	.type sub_407d28, @function
sub_407d28:

	nop	dword ptr [rax + rax]
.label_807:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_810:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_754
	jmp	.label_759
.label_754:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_760
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_760
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_760
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_766
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_766
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_778
.label_764:
	jmp	.label_703
.label_703:
	jmp	.label_684
.label_870:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_785
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_696
.label_1051:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_867
	jmp	.label_795
.label_795:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_796
	jmp	.label_800
.label_1044:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_693
.label_812:
	jmp	.label_684
.label_684:
	test	byte ptr [rbp - 0x79], 1
	je	.label_768
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_805
.label_768:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_806
.label_805:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_806
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
	jne	.label_811
.label_806:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_811
	jmp	.label_747
.label_682:
	jmp	.label_819
.label_819:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_692
	jmp	.label_684
.label_1053:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_824
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_682
	jmp	.label_831
.label_724:
	jmp	.label_747
.label_832:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_833
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_833
	jmp	.label_792
.label_792:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_840
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_840:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_848
.label_848:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_850
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_850:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_855
.label_855:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_857
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_857:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_833:
	jmp	.label_864
.label_864:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_865
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_865:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_869
.label_869:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_700
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_700
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_700
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_700
	jmp	.label_681
.label_681:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_735
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_735:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_690
.label_690:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_789
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_789:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_700
.label_700:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_703
.label_1046:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_705
.label_1037:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_708
	movabs	rdi, OFFSET FLAT:label_710
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_237
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_708:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_709
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_736:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_723
	jmp	.label_725
.label_725:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_727
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_727:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_734
.label_734:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_736
.label_821:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_743
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_743
	jmp	.label_749
.label_749:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_750
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_750:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_755
.label_755:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_757
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_757:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_716
.label_716:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_763
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_763:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_743:
	jmp	.label_772
.label_772:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_773
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_773:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_779
.label_779:
	jmp	.label_782
.label_782:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_783
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_783:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_791
.label_791:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_794
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_794:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_744
.label_876:
	jmp	.label_729
.label_814:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_808
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_808
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_813
.label_799:
	mov	byte ptr [rbp - 0x81], 1
.label_760:
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
	ja	.label_862
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_825]]
	jmp	rcx
.label_728:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_829
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_829
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_837
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_837:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_842
.label_842:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_847
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_847:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_851
.label_851:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_854
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_854:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_829:
	jmp	.label_858
.label_858:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_860
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_860:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_866
.label_866:
	jmp	.label_747
.label_747:
	jmp	.label_871
.label_871:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_872
	test	byte ptr [rbp - 0x82], 1
	jne	.label_872
	jmp	.label_817
.label_817:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_875
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_875:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_881
.label_881:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_882
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_882:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_872:
	jmp	.label_688
.label_688:
	jmp	.label_691
.label_691:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_737
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_737:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_699
	mov	byte ptr [rbp - 0x7e], 0
.label_699:
	jmp	.label_704
.label_704:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_706
.label_723:
	jmp	.label_709
.label_709:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_713
.label_1035:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1034:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_717
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_722
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_722:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_717
.label_717:
	movabs	rax, OFFSET FLAT:label_238
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_713
.label_695:
	test	byte ptr [rbp - 0x79], 1
	je	.label_740
	test	byte ptr [rbp - 0x7b], 1
	je	.label_740
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_740
	jmp	.label_747
	.section	.text
	.align	32
	#Procedure 0x408524

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
.label_813:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_774
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_781]]
	jmp	rcx
.label_766:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_778:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_760
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_760
	test	byte ptr [rbp - 0x7b], 1
	je	.label_799
	jmp	.label_694
.label_698:
	jmp	.label_747
.label_873:
	jmp	.label_705
.label_705:
	test	byte ptr [rbp - 0x79], 1
	je	.label_802
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_686
.label_713:
	mov	qword ptr [rbp - 0x58], 0
.label_706:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_807
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_810
.label_800:
	jmp	.label_729
.label_729:
	jmp	.label_684
.label_808:
	jmp	.label_816
.label_816:
	jmp	.label_809
.label_809:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_818
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_818
	jmp	.label_822
.label_822:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_823
	jmp	.label_826
.label_826:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_828
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_828:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_836
.label_836:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_822
.label_1042:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_705
.label_1036:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_713
.label_753:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_853
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_853:
	jmp	.label_712
.label_712:
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
	jne	.label_870
	jmp	.label_696
.label_740:
	jmp	.label_693
.label_693:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_873
	test	byte ptr [rbp - 0x7b], 1
	je	.label_873
	jmp	.label_694
.label_762:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_879
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_879:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_732
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_732:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_697
.label_697:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_701
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_701:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_707
.label_707:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_711
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_711:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_714
.label_796:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_721
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_721
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_721
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_731
	jmp	.label_741
.label_741:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_731
	jmp	.label_746
.label_746:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_731
	jmp	.label_752
.label_752:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_731
	jmp	.label_756
.label_756:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_758
	jmp	.label_731
.label_731:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_762
	jmp	.label_694
.label_827:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_764
	jmp	.label_704
.label_759:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_767
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_767
	test	byte ptr [rbp - 0x7b], 1
	je	.label_767
	jmp	.label_694
.label_834:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_775
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_775
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_775:
	jmp	.label_784
.label_784:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_786
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_786:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_788
.label_788:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_793
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_793:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_742
.label_742:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_801
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_801:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_739:
	jmp	.label_684
.label_767:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_809
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_809
	test	byte ptr [rbp - 0x7d], 1
	je	.label_809
	test	byte ptr [rbp - 0x7e], 1
	je	.label_814
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
	jmp	.label_726
.label_1050:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_739
	test	byte ptr [rbp - 0x7b], 1
	je	.label_834
	jmp	.label_694
.label_1041:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_705
.label_683:
	jmp	.label_748
.label_748:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_843
	test	byte ptr [rbp - 0x82], 1
	jne	.label_843
	jmp	.label_845
.label_845:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_849
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_849:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_852
.label_852:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_856
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_856:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_843:
	jmp	.label_859
.label_859:
	jmp	.label_861
.label_861:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_863
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_863:
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
	jmp	.label_868
.label_815:
	test	byte ptr [rbp - 0x81], 1
	je	.label_874
	jmp	.label_877
.label_877:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_878
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_878:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_874:
	jmp	.label_744
.label_744:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_683
	jmp	.label_724
.label_1047:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_693
.label_1043:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_693
.label_718:
	jmp	.label_696
.label_802:
	jmp	.label_684
.label_785:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_771
	mov	byte ptr [rbp - 0x91], 0
.label_719:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_702
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_702:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_715
	jmp	.label_718
.label_715:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_719
.label_774:
	call	abort
.label_758:
	jmp	.label_714
.label_714:
	jmp	.label_721
.label_721:
	jmp	.label_729
.label_692:
	jmp	.label_730
.label_730:
	mov	byte ptr [rbp - 0x83], 1
.label_1048:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_733
	test	byte ptr [rbp - 0x7b], 1
	je	.label_733
	jmp	.label_694
.label_771:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_738
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_738
	mov	qword ptr [rbp - 0xb8], 1
.label_780:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_745
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
	jb	.label_751
	jmp	.label_761
.label_761:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_751
	jmp	.label_765
.label_765:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_751
	jmp	.label_769
.label_769:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_770
	jmp	.label_751
.label_751:
	jmp	.label_694
.label_770:
	jmp	.label_776
.label_776:
	jmp	.label_777
.label_777:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_780
.label_745:
	jmp	.label_738
.label_738:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_787
	mov	byte ptr [rbp - 0x91], 0
.label_787:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_790
.label_790:
	jmp	.label_797
.label_797:
	jmp	.label_798
.label_798:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_712
.label_696:
	jmp	.label_803
.label_803:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_804
	test	byte ptr [rbp - 0x79], 1
	je	.label_812
	test	byte ptr [rbp - 0x91], 1
	jne	.label_812
.label_804:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_868:
	test	byte ptr [rbp - 0x79], 1
	je	.label_815
	test	byte ptr [rbp - 0x91], 1
	jne	.label_815
	jmp	.label_820
.label_820:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_821
	jmp	.label_694
.label_1030:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_713
.label_733:
	jmp	.label_684
.label_1040:
	test	byte ptr [rbp - 0x79], 1
	je	.label_827
	jmp	.label_830
.label_830:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_832
	jmp	.label_694
.label_1032:
	mov	byte ptr [rbp - 0x79], 1
.label_1031:
	mov	byte ptr [rbp - 0x7b], 1
.label_1033:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_838
	mov	byte ptr [rbp - 0x79], 1
.label_838:
	jmp	.label_839
.label_839:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_841
	jmp	.label_844
.label_844:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_846
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_846:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_841
.label_841:
	movabs	rax, OFFSET FLAT:label_237
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_713
.label_1049:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_684
.label_1045:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_705
.label_862:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_753
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
	jmp	.label_803
.label_867:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_876
	jmp	.label_694
.label_823:
	jmp	.label_818
.label_818:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_880
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_880:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_726
.label_824:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_682
.label_831:
	jmp	.label_684
.label_811:
	jmp	.label_686
.label_686:
	jmp	.label_687
.label_687:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_728
	jmp	.label_694
.label_1052:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_695
	test	byte ptr [rbp - 0x7b], 1
	je	.label_698
	jmp	.label_694
	.section	.text
	.align	32
	#Procedure 0x409050
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_883
	jmp	.label_885
.label_885:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_884
.label_883:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_884:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409087
	.globl sub_409087
	.type sub_409087, @function
sub_409087:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409090
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
	jb	.label_886
	jmp	.label_889
.label_889:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_886
	jmp	.label_887
.label_887:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_888
	jmp	.label_886
.label_886:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_890
.label_888:
	mov	byte ptr [rbp - 1], 0
.label_890:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090f5
	.globl sub_4090f5
	.type sub_4090f5, @function
sub_4090f5:

	nop	word ptr cs:[rax + rax]
.label_891:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_896:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_893:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_895
	jmp	.label_892
.label_895:
	jmp	.label_894
.label_894:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_897
	.section	.text
	.align	32
	#Procedure 0x409166

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
.label_897:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_893
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_891
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_896
.label_892:
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
	#Procedure 0x409209
	.globl sub_409209
	.type sub_409209, @function
sub_409209:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409210

	.globl skip_construct
	.type skip_construct, @function
skip_construct:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], -1
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40923a
	.globl sub_40923a
	.type sub_40923a, @function
sub_40923a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409240
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_898
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_898:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40926a
	.globl sub_40926a
	.type sub_40926a, @function
sub_40926a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409270
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
	#Procedure 0x40929d
	.globl sub_40929d
	.type sub_40929d, @function
sub_40929d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4092a0

	.globl append_equiv_class
	.type append_equiv_class, @function
append_equiv_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x20], 1
	je	.label_899
	mov	byte ptr [rbp - 1], 0
	jmp	.label_903
.label_902:
	movabs	rdi, OFFSET FLAT:label_172
	movabs	rsi, OFFSET FLAT:label_106
	mov	edx, 0x2e5
	movabs	rcx, OFFSET FLAT:label_901
	call	__assert_fail
.label_899:
	mov	eax, 0x20
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 3
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x10], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_902
	jmp	.label_900
.label_900:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 1], 1
.label_903:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409365
	.globl sub_409365
	.type sub_409365, @function
sub_409365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409370

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
	#Procedure 0x40937e
	.globl sub_40937e
	.type sub_40937e, @function
sub_40937e:

	nop	
.label_907:
	jmp	.label_904
.label_904:
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
	jne	.label_905
	jmp	.label_906
	.section	.text
	.align	32
	#Procedure 0x4093b9

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
	jne	.label_907
	mov	dword ptr [rbp - 4], 0
	jmp	.label_908
.label_905:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_904
.label_906:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_908:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409431
	.globl sub_409431
	.type sub_409431, @function
sub_409431:

	nop	word ptr cs:[rax + rax]
.label_911:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409445

	.globl sub_409445
	.type sub_409445, @function
sub_409445:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x40946e

	.globl is_char_class_member
	.type is_char_class_member, @function
is_char_class_member:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	al, sil
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], al
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, esi
	mov	rdx, rcx
	sub	rdx, 0xb
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], rdx
	ja	.label_911
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_910]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x4094aa

	.globl sub_4094aa
	.type sub_4094aa, @function
sub_4094aa:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x38], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x4094d0

	.globl sub_4094d0
	.type sub_4094d0, @function
sub_4094d0:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x80], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x4094f9

	.globl sub_4094f9
	.type sub_4094f9, @function
sub_4094f9:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x40], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x40951f

	.globl sub_40951f
	.type sub_40951f, @function
sub_40951f:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x409545

	.globl sub_409545
	.type sub_409545, @function
sub_409545:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x60], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x40956e

	.globl sub_40956e
	.type sub_40956e, @function
sub_40956e:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x409597

	.globl sub_409597
	.type sub_409597, @function
sub_409597:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x70], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
.label_909:
	cmp	dword ptr [rbp - 0xc], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095d9
	.globl sub_4095d9
	.type sub_4095d9, @function
sub_4095d9:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095df

	.globl sub_4095df
	.type sub_4095df, @function
sub_4095df:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x8000
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x409608

	.globl sub_409608
	.type sub_409608, @function
sub_409608:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x409631

	.globl sub_409631
	.type sub_409631, @function
sub_409631:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x409657

	.globl sub_409657
	.type sub_409657, @function
sub_409657:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x48], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_909
	.section	.text
	.align	32
	#Procedure 0x4096e5
	.globl sub_4096e5
	.type sub_4096e5, @function
sub_4096e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096f2
	.globl sub_4096f2
	.type sub_4096f2, @function
sub_4096f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409716
	.globl sub_409716
	.type sub_409716, @function
sub_409716:

	nop	word ptr cs:[rax + rax]
