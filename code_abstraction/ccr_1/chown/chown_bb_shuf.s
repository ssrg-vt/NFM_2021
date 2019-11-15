	.section	.text
	.align	32
	#Procedure 0x401ae9
	.globl sub_401ae9
	.type sub_401ae9, @function
sub_401ae9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401aea
	.globl sub_401aea
	.type sub_401aea, @function
sub_401aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b22
	.globl sub_401b22
	.type sub_401b22, @function
sub_401b22:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b6a
	.globl sub_401b6a
	.type sub_401b6a, @function
sub_401b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b8c
	.globl sub_401b8c
	.type sub_401b8c, @function
sub_401b8c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b9d
	.globl sub_401b9d
	.type sub_401b9d, @function
sub_401b9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bb6
	.globl sub_401bb6
	.type sub_401bb6, @function
sub_401bb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bc0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_9
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_9:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bec
	.globl sub_401bec
	.type sub_401bec, @function
sub_401bec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bf0

	.globl change_file_owner
	.type change_file_owner, @function
change_file_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r13d, r9d
	mov	r12d, r8d
	mov	ebx, ecx
	mov	ebp, edx
	mov	r14, rsi
	mov	r8, rdi
	mov	rsi, qword ptr [rsp + 0x100]
	mov	r9, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [r14 + 0x38]
	mov	qword ptr [rsp + 0x18], rax
	movzx	eax, word ptr [r14 + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 9
	ja	.label_11
	jmp	qword ptr [word ptr [+ (rax * 8) + label_35]]
.label_906:
	cmp	byte ptr [rsi + 4], 0
	je	.label_11
	mov	rax, qword ptr [rsi + 8]
	mov	r15b, 1
	test	rax, rax
	je	.label_17
	mov	rcx, qword ptr [r14 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_17
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_17
	mov	rbp, r8
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbx], 0x2f
	jne	.label_40
	cmp	byte ptr [rbx + 1], 0
	je	.label_43
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rbp
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_29
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbp
	mov	rbp, r12
	mov	r8, rbx
	call	error
.label_44:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rdi, rbp
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, rbp
	call	rpl_fts_read
	jmp	.label_17
.label_907:
	mov	rdi, r8
	mov	rsi, r14
	mov	r15, r8
	mov	dword ptr [rsp + 0x10], r12d
	mov	r12d, r13d
	mov	r13, r14
	mov	r14, r9
	call	cycle_warning_required
	mov	r9, r14
	mov	r14, r13
	mov	r13d, r12d
	mov	r12d, dword ptr [rsp + 0x10]
	mov	r8, r15
	mov	rsi, qword ptr [rsp + 0x100]
	test	al, al
	je	.label_11
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_17
.label_908:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_23
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	jmp	.label_50
.label_909:
	mov	r15b, 1
	cmp	byte ptr [rsi + 4], 0
	je	.label_17
.label_11:
	mov	eax, r13d
	and	eax, r12d
	cmp	eax, -1
	jne	.label_34
	cmp	dword ptr [rsi], 2
	jne	.label_34
	cmp	qword ptr [rsi + 8], 0
	jne	.label_34
	cmp	byte ptr [rsi + 0x10], 0
	je	.label_58
.label_34:
	lea	rdx, [r14 + 0x78]
	cmp	byte ptr [rsi + 0x10], 0
	je	.label_10
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x90]
	cmp	eax, 0xa000
	jne	.label_10
	mov	edi, dword ptr [r8 + 0x2c]
	lea	r15, [rsp + 0x38]
	xor	ecx, ecx
	mov	rsi, r9
	mov	rdx, r15
	mov	dword ptr [rsp + 0x10], ebx
	mov	dword ptr [rsp + 0x14], ebp
	mov	rbx, r8
	mov	rbp, r9
	call	fstatat
	mov	r9, rbp
	mov	r8, rbx
	mov	rdx, r15
	mov	ebp, dword ptr [rsp + 0x14]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x100]
	test	eax, eax
	je	.label_10
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	lea	rdx, [rsp + 0x38]
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_26
	mov	r15, rdx
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	rdx, r15
	mov	ebp, dword ptr [rsp + 0x14]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x100]
	jmp	.label_23
.label_10:
	cmp	r12d, -1
	je	.label_55
	mov	ecx, dword ptr [rdx + 0x1c]
	cmp	ecx, r12d
	sete	al
	cmp	r13d, -1
	je	.label_51
	cmp	ecx, r12d
	je	.label_38
	jmp	.label_51
.label_910:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_23
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	r15, rsi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_21
	xor	eax, eax
	mov	esi, r13d
	call	error
	xor	edx, edx
	mov	rsi, r15
	jmp	.label_26
.label_911:
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_28
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_30
.label_28:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_23
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
.label_50:
	mov	edx, 5
	mov	r15d, ebp
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	xor	edx, edx
	mov	ebp, r15d
	mov	rsi, qword ptr [rsp + 0x100]
.label_26:
	xor	r13d, r13d
.label_23:
	xor	r15d, r15d
	jmp	.label_42
.label_55:
	mov	al, 1
	cmp	r13d, -1
	je	.label_51
.label_38:
	cmp	dword ptr [rdx + 0x20], r13d
	sete	al
.label_51:
	movzx	ecx, word ptr [r14 + 0x70]
	cmp	ecx, 6
	ja	.label_46
	mov	edi, 0x56
	bt	edi, ecx
	jae	.label_46
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.label_46
	mov	rdi, qword ptr [rdx + 8]
	cmp	rdi, qword ptr [rcx]
	jne	.label_46
	mov	rdi, qword ptr [rdx]
	cmp	rdi, qword ptr [rcx + 8]
	jne	.label_46
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbp], 0x2f
	jne	.label_14
	cmp	byte ptr [rbp + 1], 0
	je	.label_16
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_29
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_13:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_17
.label_46:
	test	al, al
	mov	qword ptr [rsp + 0x20], r8
	je	.label_45
	mov	edi, dword ptr [r8 + 0x2c]
	cmp	byte ptr [rsi + 0x10], 0
	mov	dword ptr [rsp + 0x14], ebp
	mov	qword ptr [rsp + 0x28], rdx
	je	.label_47
	mov	dword ptr [rsp], r13d
	mov	qword ptr [rsp + 0x30], r9
	mov	rsi, r9
	mov	ecx, ebp
	mov	dword ptr [rsp + 0x10], ebx
	mov	r8d, ebx
	mov	r9d, r12d
	call	restricted_chown
	add	eax, -2
	cmp	eax, 4
	ja	.label_57
	mov	r12b, 1
	xor	r15d, r15d
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_48]]
.label_995:
	mov	r12b, 1
	mov	r13b, 1
	jmp	.label_12
.label_45:
	mov	r12b, 1
	xor	r13d, r13d
.label_12:
	mov	r15b, 1
.label_42:
	cmp	dword ptr [rsi], 2
	je	.label_31
	mov	eax, r15d
	and	al, 1
	test	r13b, r13b
	je	.label_20
	mov	ecx, r12d
	and	cl, r15b
	je	.label_20
	cmp	ebp, -1
	je	.label_25
	cmp	dword ptr [rdx + 0x1c], ebp
	jne	.label_27
.label_25:
	cmp	ebx, -1
	je	.label_20
	cmp	dword ptr [rdx + 0x20], ebx
	jne	.label_27
.label_20:
	cmp	dword ptr [rsi], 0
	jne	.label_31
	test	al, al
	movzx	eax, r12b
	lea	eax, [rax + rax*2 + 1]
	mov	ebp, 3
	cmovne	ebp, eax
	xor	r12d, r12d
	test	rdx, rdx
	mov	ebx, 0
	jne	.label_33
	jmp	.label_39
.label_27:
	movzx	ecx, r12b
	inc	ecx
	test	al, al
	mov	ebp, 3
	cmovne	ebp, ecx
.label_33:
	mov	edi, dword ptr [rdx + 0x1c]
	mov	r13, rsi
	mov	rbx, rdx
	call	uid_to_name
	mov	r12, rax
	mov	edi, dword ptr [rbx + 0x20]
	call	gid_to_name
	mov	rsi, r13
	mov	rbx, rax
.label_39:
	mov	r8, qword ptr [rsi + 0x18]
	mov	r9, qword ptr [rsi + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r13, rsi
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, rbx
	call	describe_change
	mov	rdi, r12
	call	free
	mov	rdi, rbx
	call	free
	mov	rsi, r13
.label_31:
	cmp	byte ptr [rsi + 4], 0
	jne	.label_56
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	call	rpl_fts_set
.label_56:
	and	r15b, 1
.label_17:
	mov	eax, r15d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_47:
	mov	rsi, r9
	mov	edx, ebp
	mov	ebp, ebx
	mov	ecx, ebx
	call	lchownat
	test	eax, eax
	sete	r15b
	mov	r12b, 1
	je	.label_59
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r12b
	mov	al, 1
	je	.label_19
	mov	eax, r15d
.label_19:
	mov	r15b, al
.label_59:
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ebx, ebp
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_24
.label_30:
	mov	qword ptr [r14 + 0x20], 1
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, r14
	call	rpl_fts_set
	mov	r15b, 1
	jmp	.label_17
.label_996:
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	edx, ebp
	mov	ecx, ebx
	call	chownat
	mov	rdx, qword ptr [rsp + 0x28]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x100]
	test	eax, eax
	sete	r15b
	mov	r12b, 1
.label_24:
	mov	r13b, 1
	test	r15b, 1
	jne	.label_42
.label_997:
	mov	r13b, 1
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_42
	mov	dword ptr [rsp + 0x10], ebx
	mov	ebx, ebp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	cmp	ebx, -1
	je	.label_52
	mov	esi, OFFSET FLAT:label_53
	jmp	.label_54
.label_58:
	lea	rdx, [r14 + 0x78]
	mov	al, 1
	jmp	.label_51
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_13
.label_52:
	mov	esi, OFFSET FLAT:label_15
.label_54:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_42
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	jmp	.label_44
.label_57:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402396
	.globl sub_402396
	.type sub_402396, @function
sub_402396:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023a0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023b0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_60
	test	byte ptr [r14 + 0x48], 1
	je	.label_60
	mov	dl, 1
.label_60:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_62
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_62
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_63
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_70
.label_66:
	mov	ax, 3
	jmp	.label_61
.label_62:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_63
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_64
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_68
.label_64:
	mov	eax, dword ptr [r14]
.label_70:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_61:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_63:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_69
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_61
	cmp	ecx, 0x4000
	jne	.label_66
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_65
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_65
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_65:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_61
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_67
	cmp	cl, 0x2e
	jne	.label_61
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_61
.label_67:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_61
.label_69:
	mov	ax, 8
	jmp	.label_61
.label_68:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_61
	.section	.text
	.align	32
	#Procedure 0x402538
	.globl sub_402538
	.type sub_402538, @function
sub_402538:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402540

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_71
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_71:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_72
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_74
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_73
.label_74:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_73:
	mov	edx, dword ptr [rax]
.label_72:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
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

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_75
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_76]]
	jbe	.label_77
	movss	xmm1,  dword ptr [dword ptr [rip + label_80]]
	ucomiss	xmm1, xmm0
	jbe	.label_77
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_79]]
	jbe	.label_77
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_77
	addss	xmm1,  dword ptr [dword ptr [rip + label_76]]
	ucomiss	xmm0, xmm1
	jbe	.label_77
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_78]]
	ucomiss	xmm2, xmm0
	jb	.label_77
	ucomiss	xmm0, xmm1
	ja	.label_75
.label_77:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_75:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402684
	.globl sub_402684
	.type sub_402684, @function
sub_402684:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402690
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40269a
	.globl sub_40269a
	.type sub_40269a, @function
sub_40269a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	dword ptr [rsp + 0x10], 0xffffffff
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_104
	call	setlocale
	mov	edi, OFFSET FLAT:label_108
	mov	esi, OFFSET FLAT:label_109
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_108
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rsp + 0x20]
	call	chopt_init
	mov	eax, 0x10
	mov	r12d, 0xffffffff
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	lea	r15, [rsp + 0x10]
	jmp	.label_81
.label_112:
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, r14d
	nop	dword ptr [rax]
.label_81:
	mov	r14d, eax
	mov	edx, OFFSET FLAT:label_96
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r13
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x85
	ja	.label_102
	mov	eax, 0x11
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_107]]
.label_1015:
	mov	eax, 2
	jmp	.label_81
.label_1016:
	mov	eax, 0x10
	jmp	.label_81
.label_1017:
	mov	byte ptr [rsp + 0x24], 1
	mov	eax, r14d
	jmp	.label_81
.label_1018:
	mov	dword ptr [rsp + 0x20], 1
	mov	eax, r14d
	jmp	.label_81
.label_1019:
	mov	byte ptr [rsp + 0x31], 1
	mov	eax, r14d
	jmp	.label_81
.label_1020:
	xor	r12d, r12d
	mov	eax, r14d
	jmp	.label_81
.label_1021:
	mov	dword ptr [rsp + 0x20], 0
	mov	eax, r14d
	jmp	.label_81
.label_1022:
	mov	r12d, 1
	mov	eax, r14d
	jmp	.label_81
.label_1023:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsp + 0x14]
	mov	rdx, r15
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, r14d
	je	.label_81
	jmp	.label_110
.label_1024:
	xor	eax, eax
	jmp	.label_112
.label_1025:
	mov	al, 1
	jmp	.label_112
.label_1026:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	mov	eax, r14d
	jmp	.label_81
.label_1014:
	mov	r15d, 0x10
	cmp	byte ptr [rsp + 0x24], 0
	je	.label_83
	cmp	r14d, 0x10
	jne	.label_86
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_83
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_86:
	mov	r15d, r14d
.label_83:
	test	r12d, r12d
	setne	byte ptr [rsp + 0x30]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	edx, ebp
	sub	edx, eax
	mov	rcx,  qword ptr [word ptr [rip + reference_file]]
	cmp	rcx, 1
	mov	esi, 1
	adc	esi, 0
	cmp	edx, esi
	jl	.label_91
	test	rcx, rcx
	je	.label_99
	mov	rdi,  qword ptr [word ptr [rip + reference_file]]
	lea	rsi, [rsp + 0x48]
	call	stat
	test	eax, eax
	jne	.label_85
	mov	edi, dword ptr [rsp + 0x64]
	mov	dword ptr [rsp + 0xc], edi
	mov	eax, dword ptr [rsp + 0x68]
	mov	dword ptr [rsp + 8], eax
	call	uid_to_name
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, dword ptr [rsp + 0x68]
	call	gid_to_name
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_98
.label_99:
	mov	rdi, qword ptr [r13 + rax*8]
	lea	rcx, [rsp + 0x38]
	lea	r8, [rsp + 0x40]
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_111
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_100
	mov	rax, qword ptr [rsp + 0x40]
	test	rax, rax
	je	.label_100
	mov	edi, OFFSET FLAT:label_104
	call	xstrdup
	mov	qword ptr [rsp + 0x38], rax
.label_100:
	inc	dword ptr [dword ptr [rip + optind]]
.label_98:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	je	.label_87
	mov	al, byte ptr [rsp + 0x24]
	test	al, al
	je	.label_87
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x28], rax
	test	rax, rax
	je	.label_89
.label_87:
	or	r15d, 0x400
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [r13 + rax*8]
	mov	edx, dword ptr [rsp + 0xc]
	mov	ecx, dword ptr [rsp + 8]
	mov	r8d, dword ptr [rsp + 0x14]
	mov	r9d, dword ptr [rsp + 0x10]
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp], rax
	mov	esi, r15d
	call	chown_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_102:
	cmp	eax, 0xffffff7d
	je	.label_84
	cmp	eax, 0xffffff7e
	jne	.label_101
	xor	edi, edi
	call	usage
.label_101:
	mov	edi, 1
	call	usage
.label_84:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_92
	mov	edx, OFFSET FLAT:label_93
	mov	r8d, OFFSET FLAT:label_94
	mov	r9d, OFFSET FLAT:label_95
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_110:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_113
.label_91:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_105
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_85:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	edi, 4
	jmp	.label_103
.label_89:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_29
.label_103:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_105:
	mov	esi, OFFSET FLAT:label_88
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
.label_111:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8]
.label_113:
	call	quote
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_106
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_123
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_117
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_115
	cvtsi2ss	xmm0, rax
	jmp	.label_120
.label_115:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_120:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_126
	cvtsi2ss	xmm1, rcx
	jmp	.label_127
.label_126:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_127:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_117
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_125
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_114
.label_125:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_114:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_121
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_124
.label_121:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_124:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_117
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_119
	mulss	xmm0, dword ptr [rcx + 8]
.label_119:
	movss	xmm1,  dword ptr [dword ptr [rip + label_122]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_117
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_116
	nop	dword ptr [rax + rax]
.label_118:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_118
.label_116:
	mov	qword ptr [r15 + 0x48], 0
.label_117:
	mov	rax, r14
.label_123:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c96
	.globl sub_402c96
	.type sub_402c96, @function
sub_402c96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ca0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_128
	cmp	ecx, 0x11
	jne	.label_129
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_128:
	ret	
.label_129:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cbe
	.globl sub_402cbe
	.type sub_402cbe, @function
sub_402cbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402cc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_131
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_130
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_131
.label_130:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_131
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_132
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_132:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_131:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402d37
	.globl sub_402d37
	.type sub_402d37, @function
sub_402d37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d40

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_133
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_145
	test	rbx, rbx
	je	.label_135
	mov	qword ptr [rbx], rax
	jmp	.label_135
.label_145:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_134
	cvtsi2ss	xmm0, rcx
	jmp	.label_139
.label_134:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_139:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_143
	cvtsi2ss	xmm1, rax
	jmp	.label_148
.label_143:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_148:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_137
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_142
	cvtsi2ss	xmm2, rcx
	jmp	.label_146
.label_142:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_146:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_136
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_141
.label_136:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_141:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_137
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_144
	mulss	xmm0, xmm1
.label_144:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_140]]
	jae	.label_135
	movss	xmm1,  dword ptr [dword ptr [rip + label_122]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_135
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_133
.label_137:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_147
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_135
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_138
.label_147:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_138:
	mov	ebp, 1
.label_135:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_133:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f12
	.globl sub_402f12
	.type sub_402f12, @function
sub_402f12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f20

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r14, rdi
	test	rbx, rbx
	je	.label_157
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_154
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_154
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_154:
	test	eax, eax
	sete	r15b
	jmp	.label_150
.label_157:
	xor	r15d, r15d
.label_150:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_159
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_149
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_149
	and	eax, 0x200
	je	.label_149
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_149
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_149:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_160
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_153
.label_160:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_156
	test	rbx, rbx
	je	.label_151
	cmp	byte ptr [rbx], 0x2e
	jne	.label_151
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_151
	cmp	byte ptr [rbx + 2], 0
	jne	.label_151
.label_156:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_152
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_155
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_155
.label_151:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_158
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_161
.label_159:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_153
	and	eax, 0x200
	je	.label_153
	mov	edi, r13d
	call	close
	jmp	.label_153
.label_158:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_153
.label_155:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_152:
	mov	ebp, 0xffffffff
.label_161:
	test	r13d, r13d
	jns	.label_153
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_153:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030a6
	.globl sub_4030a6
	.type sub_4030a6, @function
sub_4030a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_164
	cmp	esi, -0x64
	jne	.label_166
.label_164:
	test	dl, dl
	je	.label_163
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_162
	mov	edi, eax
	jmp	.label_165
.label_166:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4030de
	.globl sub_4030de
	.type sub_4030de, @function
sub_4030de:

	nop	dword ptr [rax + rax]
.label_163:
	test	esi, esi
	js	.label_162
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_162
	mov	edi, esi
.label_165:
	call	close
.label_162:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403100
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_167:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_167
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403121
	.globl sub_403121
	.type sub_403121, @function
sub_403121:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403130
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40313a
	.globl sub_40313a
	.type sub_40313a, @function
sub_40313a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403140

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
	je	.label_168
	mov	qword ptr [rax], rbx
.label_168:
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
	#Procedure 0x40322c
	.globl sub_40322c
	.type sub_40322c, @function
sub_40322c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403230

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
	je	.label_170
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_169
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_169
.label_170:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_169
	test	cl, cl
	jne	.label_169
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_169:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403296
	.globl sub_403296
	.type sub_403296, @function
sub_403296:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032a0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_172
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_177
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_173]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_174]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_175]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_176
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_171
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	.section	.text
	.align	32
	#Procedure 0x40338c
	.globl sub_40338c
	.type sub_40338c, @function
sub_40338c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403390
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033a4
	.globl sub_4033a4
	.type sub_4033a4, @function
sub_4033a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_178
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_178:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033d2
	.globl sub_4033d2
	.type sub_4033d2, @function
sub_4033d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033e0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4033ea
	.globl sub_4033ea
	.type sub_4033ea, @function
sub_4033ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033f0
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
	#Procedure 0x403400

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x403409
	.globl sub_403409
	.type sub_403409, @function
sub_403409:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403410

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40341a
	.globl sub_40341a
	.type sub_40341a, @function
sub_40341a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403420
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_179
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_181:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_181
.label_179:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_182
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_183]], OFFSET FLAT:slot0
.label_182:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_180
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_180:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034b1
	.globl sub_4034b1
	.type sub_4034b1, @function
sub_4034b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4034ca
	.globl sub_4034ca
	.type sub_4034ca, @function
sub_4034ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034d0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x4034dd
	.globl sub_4034dd
	.type sub_4034dd, @function
sub_4034dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4034e0
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
	#Procedure 0x4034f0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034fa
	.globl sub_4034fa
	.type sub_4034fa, @function
sub_4034fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403500

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_184
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_185:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_185
.label_184:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40353e
	.globl sub_40353e
	.type sub_40353e, @function
sub_40353e:

	nop	
.label_186:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403545
	.globl sub_403545
	.type sub_403545, @function
sub_403545:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403553

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
	je	.label_186
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
	#Procedure 0x4035a0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035a4
	.globl sub_4035a4
	.type sub_4035a4, @function
sub_4035a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035b0

	.globl chownat
	.type chownat, @function
chownat:
	xor	r8d, r8d
	jmp	fchownat
	.section	.text
	.align	32
	#Procedure 0x4035b8
	.globl sub_4035b8
	.type sub_4035b8, @function
sub_4035b8:

	nop	dword ptr [rax + rax]
.label_192:
	mov	edi, OFFSET FLAT:label_187
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_189
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4035d9
	.globl sub_4035d9
	.type sub_4035d9, @function
sub_4035d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035dc

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_192
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_190
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_190
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_191
.label_190:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_193
	mov	al, 1
	test	rbx, rbx
	je	.label_191
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_193:
	xor	eax, eax
.label_191:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403640

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_194
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_194:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403662
	.globl sub_403662
	.type sub_403662, @function
sub_403662:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403670

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_197
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_196
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_196
	mov	qword ptr [r15 + 0x10], rax
.label_197:
	test	rbx, rbx
	je	.label_199
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_201:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_201
.label_199:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_195
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_198:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_198
	lea	rax, [rax + r8*8]
.label_195:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_200
.label_196:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_200:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40374d
	.globl sub_40374d
	.type sub_40374d, @function
sub_40374d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403750

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_202
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_205
	cvtsi2ss	xmm0, rdi
	jmp	.label_203
.label_205:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_203:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_122]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_140]]
	jae	.label_204
.label_202:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_204:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037ce
	.globl sub_4037ce
	.type sub_4037ce, @function
sub_4037ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4037d0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_206
	test	ah, 2
	jne	.label_208
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_207
.label_208:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_206:
	xor	eax, eax
.label_207:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40381d
	.globl sub_40381d
	.type sub_40381d, @function
sub_40381d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403820

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403829
	.globl sub_403829
	.type sub_403829, @function
sub_403829:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403830
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
	#Procedure 0x403846
	.globl sub_403846
	.type sub_403846, @function
sub_403846:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403850
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
	mov	edx, OFFSET FLAT:label_93
	mov	ecx, OFFSET FLAT:label_213
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
	#Procedure 0x4038c4
	.globl sub_4038c4
	.type sub_4038c4, @function
sub_4038c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_214
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_214:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4038f6
	.globl sub_4038f6
	.type sub_4038f6, @function
sub_4038f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403900

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_215
	test	rbx, rbx
	jne	.label_215
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_215:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_217
	test	rax, rax
	je	.label_216
.label_217:
	pop	rbx
	ret	
.label_216:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403930

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
	#Procedure 0x403947
	.globl sub_403947
	.type sub_403947, @function
sub_403947:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403950

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403955
	.globl sub_403955
	.type sub_403955, @function
sub_403955:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403960
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
	#Procedure 0x40396d
	.globl sub_40396d
	.type sub_40396d, @function
sub_40396d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403970
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403984
	.globl sub_403984
	.type sub_403984, @function
sub_403984:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403990

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_218
	cmp	rcx, 0x1021994
	je	.label_218
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_218
	mov	al, 1
.label_218:
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039bb
	.globl sub_4039bb
	.type sub_4039bb, @function
sub_4039bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039c0
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
	#Procedure 0x4039cd
	.globl sub_4039cd
	.type sub_4039cd, @function
sub_4039cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039d0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_222
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_223
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_220
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_223
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_223
.label_222:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_223
.label_220:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_229
	call	fts_lfree
.label_229:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_221
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_221:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_226
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_226
	test	byte ptr [rbx + 0x48], 4
	jne	.label_226
	mov	esi, OFFSET FLAT:label_228
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_227
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_225
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_219
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_223
.label_226:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_223:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_227:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_223
.label_225:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_224
.label_219:
	mov	edi, ebp
	call	close
.label_224:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_223
	.section	.text
	.align	32
	#Procedure 0x403b02
	.globl sub_403b02
	.type sub_403b02, @function
sub_403b02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b10
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b18
	.globl sub_403b18
	.type sub_403b18, @function
sub_403b18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b20

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b2d
	.globl sub_403b2d
	.type sub_403b2d, @function
sub_403b2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_231
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_231:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	qword ptr [rsp], rbp
	mov	r9, rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_230
	test	r14, r14
	jne	.label_230
	test	rbp, rbp
	je	.label_230
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_230
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_232
.label_230:
	mov	rax, rbp
.label_232:
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
	#Procedure 0x403bd4
	.globl sub_403bd4
	.type sub_403bd4, @function
sub_403bd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403be0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x403bea
	.globl sub_403bea
	.type sub_403bea, @function
sub_403bea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bf0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c18
	.globl sub_403c18
	.type sub_403c18, @function
sub_403c18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c20

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_233
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_234:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_234
	inc	r14
.label_233:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c66
	.globl sub_403c66
	.type sub_403c66, @function
sub_403c66:

	nop	word ptr cs:[rax + rax]
.label_237:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_235
	cmp	qword ptr [rax + 0x58], 0
	js	.label_235
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_236
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_235
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_235
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_235:
	add	rsp, 0x18
	ret	
.label_236:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403cc1
	.globl sub_403cc1
	.type sub_403cc1, @function
sub_403cc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ccf

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_237
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_236
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d10

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_247
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_247:
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
	ja	.label_248
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_243
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_244
	test	esi, esi
	jne	.label_248
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_250
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_241
.label_248:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_240
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_244
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_246
.label_243:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_244:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_251
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_239
.label_251:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_239:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_246:
	cmp	eax, 6
	jne	.label_240
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_249
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_238
.label_240:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_242
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_245
.label_250:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_241:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_249:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_238:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_242:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_245:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ec4
	.globl sub_403ec4
	.type sub_403ec4, @function
sub_403ec4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_29
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_252:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f0d
	.globl sub_403f0d
	.type sub_403f0d, @function
sub_403f0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f10
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f24
	.globl sub_403f24
	.type sub_403f24, @function
sub_403f24:

	nop	word ptr cs:[rax + rax]
.label_253:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x403f3c
	.globl sub_403f3c
	.type sub_403f3c, @function
sub_403f3c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f49

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_253
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_21
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403f80

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_256:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_255
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_257
	.section	.text
	.align	32
	#Procedure 0x403fa9
	.globl sub_403fa9
	.type sub_403fa9, @function
sub_403fa9:

	nop	dword ptr [rax]
.label_255:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_257:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_258
	inc	r9
	cmp	r9, 0xa
	jb	.label_256
.label_258:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fdf
	.globl sub_403fdf
	.type sub_403fdf, @function
sub_403fdf:

	nop	
.label_260:
	xor	r14d, r14d
	jmp	.label_259
	.section	.text
	.align	32
	#Procedure 0x403fe5
	.globl sub_403fe5
	.type sub_403fe5, @function
sub_403fe5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fec

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_262
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_261
	jmp	.label_259
.label_262:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_260
	mov	rdi, rax
	call	cycle_check_init
.label_261:
	mov	r14b, 1
.label_259:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404050

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_263
	test	rdx, rdx
	je	.label_263
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_263:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40407b
	.globl sub_40407b
	.type sub_40407b, @function
sub_40407b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404080

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404085
	.globl sub_404085
	.type sub_404085, @function
sub_404085:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404090

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_265
	mov	rdi, qword ptr [rax]
	jmp	.label_264
.label_265:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_264:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040bf
	.globl sub_4040bf
	.type sub_4040bf, @function
sub_4040bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_267
	mov	rdi, qword ptr [rax]
	jmp	.label_266
.label_267:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_266:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040ef
	.globl sub_4040ef
	.type sub_4040ef, @function
sub_4040ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4040f0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_268
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_270:
	cmp	qword ptr [rcx], 0
	je	.label_269
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_271:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_271
	cmp	rsi, rax
	cmova	rax, rsi
.label_269:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_270
.label_268:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40413d
	.globl sub_40413d
	.type sub_40413d, @function
sub_40413d:

	nop	dword ptr [rax]
.label_273:
	mov	ecx, 1
	jmp	.label_272
	.section	.text
	.align	32
	#Procedure 0x404147
	.globl sub_404147
	.type sub_404147, @function
sub_404147:

	nop	word ptr cs:[rax + rax]
.label_275:
	cmp	rax, 0x58465342
	je	.label_272
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_273
.label_274:
	xor	ecx, ecx
.label_272:
	mov	eax, ecx
	pop	rcx
	ret	
.label_276:
	test	rax, rax
	je	.label_274
	cmp	rax, 0x6969
	je	.label_274
	cmp	rax, 0x9fa0
	je	.label_274
	jmp	.label_273
	.section	.text
	.align	32
	#Procedure 0x404183

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_276
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_275
	cmp	rax, 0x52654973
	je	.label_272
	cmp	rax, 0x5346414f
	je	.label_274
	jmp	.label_273
.label_278:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_279
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_21
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4041f5

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_277
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_278
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_278
.label_277:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_280
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_280:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_279:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_106
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_286:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_282
	mov	edi, OFFSET FLAT:label_283
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_285
	call	__assert_fail
.label_282:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404298
	.globl sub_404298
	.type sub_404298, @function
sub_404298:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40429d

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_286
	pop	rcx
	ret	
.label_294:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_295
	nop	dword ptr [rax]
.label_289:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_289
.label_295:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4042e3
	.globl sub_4042e3
	.type sub_4042e3, @function
sub_4042e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042ed

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_292
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_292
	mov	r14, qword ptr [r15]
	jmp	.label_287
	.section	.text
	.align	32
	#Procedure 0x404308
	.globl sub_404308
	.type sub_404308, @function
sub_404308:

	nop	dword ptr [rax + rax]
.label_292:
	mov	r14, qword ptr [r15]
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x404312
	.globl sub_404312
	.type sub_404312, @function
sub_404312:

	nop	word ptr [rax + rax]
.label_290:
	add	r14, 0x10
.label_291:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_294
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_290
	nop	word ptr cs:[rax + rax]
.label_288:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_288
	jmp	.label_290
.label_293:
	add	r14, 0x10
.label_287:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_292
	cmp	qword ptr [r14], 0
	je	.label_293
	test	r14, r14
	je	.label_293
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_296:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_296
	jmp	.label_293
	.section	.text
	.align	32
	#Procedure 0x404380

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40438a
	.globl sub_40438a
	.type sub_40438a, @function
sub_40438a:

	nop	word ptr [rax + rax]
.label_298:
	mov	edi, eax
	call	close
.label_297:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_299
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_298
	jmp	.label_297
.label_299:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043b3
	.globl sub_4043b3
	.type sub_4043b3, @function
sub_4043b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_297
	.section	.text
	.align	32
	#Procedure 0x4043c6
	.globl sub_4043c6
	.type sub_4043c6, @function
sub_4043c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_300
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_302]]
.label_300:
	xor	eax, eax
	jmp	.label_301
	.section	.text
	.align	32
	#Procedure 0x4043e5
	.globl sub_4043e5
	.type sub_4043e5, @function
sub_4043e5:

	nop	word ptr cs:[rax + rax]
.label_301:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043f0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x4043fe
	.globl sub_4043fe
	.type sub_4043fe, @function
sub_4043fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404400

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
	je	.label_303
	cmp	r15, -2
	jb	.label_303
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_303
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_303:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404456
	.globl sub_404456
	.type sub_404456, @function
sub_404456:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404460

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_304
	cmp	rsi, r13
	je	.label_307
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_309
.label_307:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_304
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_306
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_308
.label_305:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_304
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_308:
	mov	rdi, r14
	call	free_entry
.label_304:
	mov	rax, r15
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
	#Procedure 0x4044e7
	.globl sub_4044e7
	.type sub_4044e7, @function
sub_4044e7:

	nop	word ptr [rax + rax]
.label_309:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_304
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_310:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_305
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_305
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_310
	jmp	.label_304
.label_306:
	mov	qword ptr [rbx], 0
	jmp	.label_304
	.section	.text
	.align	32
	#Procedure 0x404530

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_318
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_318
	test	r14b, 0x12
	je	.label_318
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_316
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_333
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_332
	mov	esi, OFFSET FLAT:label_104
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_314
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_332:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_321
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_321:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_328
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_322
.label_318:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_317:
	xor	eax, eax
.label_316:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046a6
	.globl sub_4046a6
	.type sub_4046a6, @function
sub_4046a6:

	nop	word ptr cs:[rax + rax]
.label_325:
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_320
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_331
.label_320:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_331:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_330
	mov	qword ptr [rbp + 0x10], rbx
.label_327:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_313
.label_330:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_315
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_313:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_322
	jmp	.label_329
.label_315:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_327
	.section	.text
	.align	32
	#Procedure 0x404754
	.globl sub_404754
	.type sub_404754, @function
sub_404754:

	nop	word ptr cs:[rax + rax]
.label_322:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_311
	cmp	rax, 3
	jb	.label_311
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_311
	nop	dword ptr [rax + rax]
.label_312:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_311
	dec	rax
	cmp	rax, 1
	ja	.label_312
	nop	word ptr cs:[rax + rax]
.label_311:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_325
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_319
.label_329:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_326
	cmp	r12, 2
	jb	.label_326
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_326:
	mov	r12, qword ptr [rsp + 0x18]
.label_328:
	mov	esi, OFFSET FLAT:label_104
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_319
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_323
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_324
	mov	esi, OFFSET FLAT:label_228
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_324
	or	byte ptr [r13 + 0x48], 4
.label_324:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_316
.label_319:
	mov	rbx, qword ptr [rsp + 0x10]
.label_323:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_314:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_333:
	mov	rdi, r13
	call	free
	jmp	.label_317
	.section	.text
	.align	32
	#Procedure 0x4048a4
	.globl sub_4048a4
	.type sub_4048a4, @function
sub_4048a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
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
	#Procedure 0x40491d
	.globl sub_40491d
	.type sub_40491d, @function
sub_40491d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404920

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40492d
	.globl sub_40492d
	.type sub_40492d, @function
sub_40492d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404930

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x404937
	.globl sub_404937
	.type sub_404937, @function
sub_404937:

	nop	word ptr [rax + rax]
.label_337:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404946
	.globl sub_404946
	.type sub_404946, @function
sub_404946:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40494d
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_340
	mov	rcx, qword ptr [rdi]
	jmp	.label_338
	.section	.text
	.align	32
	#Procedure 0x40495b
	.globl sub_40495b
	.type sub_40495b, @function
sub_40495b:

	nop	
.label_339:
	add	rcx, 0x10
.label_338:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_337
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_339
.label_340:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404979
	.globl sub_404979
	.type sub_404979, @function
sub_404979:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404980

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_341
	nop	dword ptr [rax]
.label_343:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_342
	call	closedir
.label_342:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_343
.label_341:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049ba
	.globl sub_4049ba
	.type sub_4049ba, @function
sub_4049ba:

	nop	word ptr [rax + rax]
.label_345:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_344:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4049d0
	.globl sub_4049d0
	.type sub_4049d0, @function
sub_4049d0:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049d9

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_344
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_345
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_346:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404a05
	.globl sub_404a05
	.type sub_404a05, @function
sub_404a05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a0f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_346
	call	rpl_calloc
	test	rax, rax
	je	.label_346
	pop	rcx
	ret	
.label_347:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a33
	.globl sub_404a33
	.type sub_404a33, @function
sub_404a33:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404a35
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_347
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a50
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
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

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a74
	.globl sub_404a74
	.type sub_404a74, @function
sub_404a74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_348
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_349:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_349
.label_348:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ab3
	.globl sub_404ab3
	.type sub_404ab3, @function
sub_404ab3:

	nop	word ptr cs:[rax + rax]
.label_352:
	xor	r15d, r15d
	test	r14, r14
	je	.label_350
	mov	rdi, r14
	jmp	.label_351
	.section	.text
	.align	32
	#Procedure 0x404acd

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_352
	test	r14, r14
	je	.label_353
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [r15 + rax + 2]
	call	xmalloc
	mov	r15, rax
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	word ptr [rax], 0x3a
	lea	rdi, [rax + 1]
	mov	rsi, r14
	call	stpcpy
	jmp	.label_350
.label_350:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_353:
	mov	rdi, rbx
.label_351:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	.section	.text
	.align	32
	#Procedure 0x404b36
	.globl sub_404b36
	.type sub_404b36, @function
sub_404b36:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b47
	.globl sub_404b47
	.type sub_404b47, @function
sub_404b47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b50
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b5a
	.globl sub_404b5a
	.type sub_404b5a, @function
sub_404b5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_354
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_354:
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
	#Procedure 0x404be3
	.globl sub_404be3
	.type sub_404be3, @function
sub_404be3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bf9
	.globl sub_404bf9
	.type sub_404bf9, @function
sub_404bf9:

	nop	dword ptr [rax]
.label_355:
	add	rbx, 2
.label_357:
	cmp	rbx, -1
	je	.label_356
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_355
	mov	r14, rbx
.label_356:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c24
	.globl sub_404c24
	.type sub_404c24, @function
sub_404c24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_357
	.section	.text
	.align	32
	#Procedure 0x404c4e
	.globl sub_404c4e
	.type sub_404c4e, @function
sub_404c4e:

	nop	
.label_363:
	add	r14, 0x10
.label_364:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_362
	cmp	qword ptr [r14], 0
	je	.label_363
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_358
	nop	word ptr cs:[rax + rax]
.label_361:
	test	cl, 1
	je	.label_359
	mov	rdi, qword ptr [rbx]
	call	rax
.label_359:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_361
.label_358:
	test	cl, cl
	je	.label_360
	mov	rdi, qword ptr [r14]
	call	rax
.label_360:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_363
	.section	.text
	.align	32
	#Procedure 0x404cc5
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_364
	.section	.text
	.align	32
	#Procedure 0x404cd2
	.globl sub_404cd2
	.type sub_404cd2, @function
sub_404cd2:

	nop	dword ptr [rax]
.label_362:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ce3
	.globl sub_404ce3
	.type sub_404ce3, @function
sub_404ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cf0

	.globl chown_files
	.type chown_files, @function
chown_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15d, r9d
	mov	ebp, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	eax, esi
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, r15d
	and	ecx, ebp
	xor	esi, esi
	cmp	ecx, -1
	jne	.label_369
	cmp	byte ptr [rdx + 0x10], 0
	jne	.label_369
	xor	esi, esi
	cmp	dword ptr [rdx], 2
	sete	sil
	shl	esi, 3
.label_369:
	or	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	test	rax, rax
	je	.label_365
	mov	bl, 1
	nop	dword ptr [rax]
.label_372:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	rsi, rax
	mov	edx, r13d
	mov	ecx, r12d
	mov	r8d, ebp
	mov	r9d, r15d
	call	change_file_owner
	and	bl, al
	mov	rdi, r14
	call	rpl_fts_read
	test	rax, rax
	jne	.label_372
.label_365:
	mov	r15, qword ptr [rsp + 0x40]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_367
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_368
	xor	ebx, ebx
	jmp	.label_367
.label_368:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_367:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_366
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_366:
	mov	eax, ebx
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
	#Procedure 0x404e06
	.globl sub_404e06
	.type sub_404e06, @function
sub_404e06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e10
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_373
	xor	eax, eax
.label_376:
	cmp	qword ptr [r8], 0
	je	.label_374
	test	r8, r8
	je	.label_374
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_375:
	cmp	rax, rdx
	jae	.label_373
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_375
.label_374:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_376
.label_373:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e53
	.globl sub_404e53
	.type sub_404e53, @function
sub_404e53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e60

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e65
	.globl sub_404e65
	.type sub_404e65, @function
sub_404e65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e70
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e79
	.globl sub_404e79
	.type sub_404e79, @function
sub_404e79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e80
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_377]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e94
	.globl sub_404e94
	.type sub_404e94, @function
sub_404e94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_378
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_378:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404eb7
	.globl sub_404eb7
	.type sub_404eb7, @function
sub_404eb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ec0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x404ec9
	.globl sub_404ec9
	.type sub_404ec9, @function
sub_404ec9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

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
	mov	rax,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
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
	#Procedure 0x404f38
	.globl sub_404f38
	.type sub_404f38, @function
sub_404f38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f40
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_379
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_379:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f58
	.globl sub_404f58
	.type sub_404f58, @function
sub_404f58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f60

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_385
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_382:
	cmp	qword ptr [r15], 0
	je	.label_381
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_384
	nop	word ptr cs:[rax + rax]
.label_388:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_389
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_380
	.section	.text
	.align	32
	#Procedure 0x404fd6
	.globl sub_404fd6
	.type sub_404fd6, @function
sub_404fd6:

	nop	word ptr cs:[rax + rax]
.label_389:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_380:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_388
.label_384:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_381
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_383
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_386
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_387
.label_383:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_387:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_381:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_382
	mov	al, 1
.label_385:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_386:
	xor	eax, eax
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x405075
	.globl sub_405075
	.type sub_405075, @function
sub_405075:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405080

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_390
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_390:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_391
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_392
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_393
.label_392:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_393:
	mov	ecx, dword ptr [rax]
.label_391:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x40513e
	.globl sub_40513e
	.type sub_40513e, @function
sub_40513e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405140

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_395
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_394
	mov	dword ptr [r14], ebp
	jmp	.label_395
.label_394:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_395:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40518f
	.globl sub_40518f
	.type sub_40518f, @function
sub_40518f:

	nop	
.label_400:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_397
	.section	.text
	.align	32
	#Procedure 0x40519c

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_399
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_400
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_400
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_396
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_397
.label_399:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_397:
	test	ebx, ebx
	js	.label_396
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_396
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_398
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_396
.label_398:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_396:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405253
	.globl sub_405253
	.type sub_405253, @function
sub_405253:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260

	.globl restricted_chown
	.type restricted_chown, @function
restricted_chown:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r13d, r9d
	mov	rbp, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	eax, dword ptr [rsp + 0xd0]
	and	eax, r13d
	mov	ebx, 5
	cmp	eax, -1
	je	.label_406
	movzx	eax, word ptr [rbp + 0x18]
	and	eax, 0xf000
	mov	r12d, 0x900
	cmp	eax, 0x8000
	je	.label_404
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_406
	mov	r12d, 0x10900
.label_404:
	mov	dword ptr [rsp], ecx
	mov	dword ptr [rsp + 4], r8d
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	call	openat
	test	eax, eax
	jns	.label_405
	call	__errno_location
	mov	rcx, rax
	cmp	dword ptr [rcx], 0xd
	jne	.label_401
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x8000
	jne	.label_401
	or	r12d, 1
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	mov	rbx, rcx
	call	openat
	mov	rcx, rbx
	test	eax, eax
	js	.label_401
.label_405:
	lea	rsi, [rsp + 8]
	mov	r15d, eax
	mov	edi, eax
	call	fstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_402
	mov	rax, qword ptr [rbp + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_402
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_402
	cmp	r13d, -1
	je	.label_403
	mov	ebx, 2
	cmp	dword ptr [rsp + 0x24], r13d
	jne	.label_402
.label_403:
	cmp	dword ptr [rsp + 0xd0], -1
	je	.label_407
	mov	ebx, 2
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	dword ptr [rsp + 0x28], eax
	jne	.label_402
.label_407:
	mov	edi, r15d
	mov	esi, dword ptr [rsp]
	mov	edx, dword ptr [rsp + 4]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_408
.label_402:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r15d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_406
.label_408:
	mov	edi, r15d
	call	close
	xor	ecx, ecx
	test	eax, eax
	setne	cl
	lea	ebx, [rcx*4 + 2]
	jmp	.label_406
	.section	.text
	.align	32
	#Procedure 0x4053cc
	.globl sub_4053cc
	.type sub_4053cc, @function
sub_4053cc:

	nop	dword ptr [rax + rax]
.label_401:
	xor	ebx, ebx
	cmp	dword ptr [rcx], 0xd
	setne	bl
	add	ebx, 5
.label_406:
	mov	eax, ebx
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053f0
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
	#Procedure 0x4053ff
	.globl sub_4053ff
	.type sub_4053ff, @function
sub_4053ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405400

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
	#Procedure 0x405437
	.globl sub_405437
	.type sub_405437, @function
sub_405437:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405440

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
	#Procedure 0x40544d
	.globl sub_40544d
	.type sub_40544d, @function
sub_40544d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405450
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
	#Procedure 0x405463
	.globl sub_405463
	.type sub_405463, @function
sub_405463:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470
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
	#Procedure 0x40547f
	.globl sub_40547f
	.type sub_40547f, @function
sub_40547f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405480

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_410
	cmp	rbx, r15
	jne	.label_409
	cmp	byte ptr [rbx + 1], 0
	je	.label_410
.label_409:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_410:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40550a
	.globl sub_40550a
	.type sub_40550a, @function
sub_40550a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510

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
	je	.label_413
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_411
	jmp	.label_412
.label_413:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_412
.label_411:
	mov	eax, 1
	test	bpl, bpl
	je	.label_412
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
.label_412:
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
	#Procedure 0x405598
	.globl sub_405598
	.type sub_405598, @function
sub_405598:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0

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
	je	.label_414
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_416
	jmp	.label_415
.label_414:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_415
.label_416:
	mov	eax, 1
	test	bpl, bpl
	je	.label_415
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
.label_415:
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
	#Procedure 0x405619
	.globl sub_405619
	.type sub_405619, @function
sub_405619:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405620

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
	je	.label_419
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_418
	jmp	.label_417
.label_419:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_417
.label_418:
	mov	eax, 1
	test	bpl, bpl
	je	.label_417
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
.label_417:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405683
	.globl sub_405683
	.type sub_405683, @function
sub_405683:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405690

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
	je	.label_422
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_420
	jmp	.label_421
.label_422:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_421
.label_420:
	mov	eax, 1
	test	bpl, bpl
	je	.label_421
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_421:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056ef
	.globl sub_4056ef
	.type sub_4056ef, @function
sub_4056ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4056f0

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
	je	.label_423
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_425
	jmp	.label_424
.label_423:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_424
.label_425:
	mov	eax, 1
	test	bpl, bpl
	je	.label_424
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_424:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405739
	.globl sub_405739
	.type sub_405739, @function
sub_405739:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405740

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
	je	.label_428
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_427
	jmp	.label_426
.label_428:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_426
.label_427:
	mov	eax, 1
	test	bpl, bpl
	je	.label_426
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_426:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405785
	.globl sub_405785
	.type sub_405785, @function
sub_405785:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405790

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_431
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_430
	jmp	.label_429
.label_431:
	mov	eax, 1
	test	cl, cl
	je	.label_429
.label_430:
	xor	eax, eax
.label_429:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057bf
	.globl sub_4057bf
	.type sub_4057bf, @function
sub_4057bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4057c0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_440
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_436:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_436
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_435
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_441
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_446
	cmp	eax, 0x22
	jne	.label_435
	mov	r12d, 1
.label_446:
	test	rbp, rbp
	jne	.label_449
	jmp	.label_438
.label_441:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_435
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_435
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_435
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_449:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_438
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_439
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_445
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_445
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_432
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_437
	cmp	ecx, 0x44
	je	.label_437
	cmp	ecx, 0x69
	jne	.label_432
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_432
.label_437:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_432
.label_445:
	mov	rsi, r14
.label_432:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_439
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_447]]
.label_1002:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_434
.label_439:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_448
.label_1003:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_434
.label_1004:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_434
.label_1006:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_434
.label_1000:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_433
.label_1001:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_434
.label_1005:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_434
.label_1007:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_434
.label_1008:
	lea	rdi, [rsp]
	mov	edx, 7
.label_434:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_433:
	mov	rsi, r14
.label_1010:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_438:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_448:
	mov	r15d, r12d
.label_435:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1009:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_433
.label_1011:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_433
.label_440:
	mov	edi, OFFSET FLAT:label_442
	mov	esi, OFFSET FLAT:label_443
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_444
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x405a62
	.globl sub_405a62
	.type sub_405a62, @function
sub_405a62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a70
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a84
	.globl sub_405a84
	.type sub_405a84, @function
sub_405a84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_451
	cmp	byte ptr [rax], 0x43
	jne	.label_453
	cmp	byte ptr [rax + 1], 0
	je	.label_450
.label_453:
	mov	esi, OFFSET FLAT:label_452
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_451
.label_450:
	xor	ebx, ebx
.label_451:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ac1
	.globl sub_405ac1
	.type sub_405ac1, @function
sub_405ac1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_455
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_454
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_454
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_454
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_455
.label_454:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_455:
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
	#Procedure 0x405bac
	.globl sub_405bac
	.type sub_405bac, @function
sub_405bac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405bb0
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bb7
	.globl sub_405bb7
	.type sub_405bb7, @function
sub_405bb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_456
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_457
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_458
.label_457:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_461
	mov	rax, qword ptr [rax + 8]
	jmp	.label_456
.label_461:
	mov	r12b, 1
	mov	r14, rbp
.label_458:
	xor	eax, eax
	test	r15d, r15d
	js	.label_456
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_456
	test	r12b, r12b
	je	.label_459
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_459
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_460
	cmp	rax, rbp
	je	.label_459
	call	abort
.label_460:
	mov	rdi, rbp
	call	free
.label_459:
	mov	rax, qword ptr [rsp]
.label_456:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cba
	.globl sub_405cba
	.type sub_405cba, @function
sub_405cba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0

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
	#Procedure 0x405d09
	.globl sub_405d09
	.type sub_405d09, @function
sub_405d09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405d10
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_466:
	cmp	qword ptr [rcx], rbx
	jne	.label_462
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_463
.label_462:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_466
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_465:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_464
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_465
	jmp	.label_464
.label_463:
	mov	rcx, qword ptr [rdx]
.label_464:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d76
	.globl sub_405d76
	.type sub_405d76, @function
sub_405d76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d80
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x405d8a
	.globl sub_405d8a
	.type sub_405d8a, @function
sub_405d8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90

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
	#Procedure 0x405dbd
	.globl sub_405dbd
	.type sub_405dbd, @function
sub_405dbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405dc0

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
	#Procedure 0x405dd3
	.globl sub_405dd3
	.type sub_405dd3, @function
sub_405dd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405de0

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	r13, qword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_519
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_470
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_468
.label_519:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_487
	mov	edi, dword ptr [rbx + 0x2c]
.label_487:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_472
	test	al, 1
	je	.label_498
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_472
.label_498:
	mov	edx, 0x20000
.label_472:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_506
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_504
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_508
.label_470:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_506:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_507
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_492
.label_504:
	test	byte ptr [rbx + 0x49], 1
	je	.label_508
	mov	rdi, rbx
	mov	rsi, r14
	call	leave_dir
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	rdi, rbx
	mov	rsi, r14
	call	enter_dir
	test	al, al
	je	.label_473
.label_508:
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	test	r13, r13
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jne	.label_468
	cmp	ebp, 2
	jne	.label_483
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_485
.label_483:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_488
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_488
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_494
.label_473:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_492
.label_488:
	mov	r15, rbx
	xor	r12d, r12d
.label_494:
	xor	r12b, 1
.label_485:
	cmp	ebp, 3
	je	.label_505
	test	r12b, r12b
	jne	.label_505
	mov	dword ptr [rsp + 4], r12d
.label_515:
	mov	rbx, r15
	jmp	.label_468
.label_505:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_509
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_509:
	test	ebx, ebx
	js	.label_514
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_515
.label_514:
	cmp	ebp, 3
	jne	.label_516
	test	r12b, r12b
	je	.label_516
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_516:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_490
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_490
	call	close
.label_490:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_468:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_479
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_479:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	rax, qword ptr [r14 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x80], rax
	add	rdx, 2
	mov	qword ptr [rsp + 0x70], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
.label_520:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_495
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_478:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_522
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_474
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_474
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_491
	test	al, al
	je	.label_489
	jmp	.label_474
	.section	.text
	.align	32
	#Procedure 0x406111
	.globl sub_406111
	.type sub_406111, @function
sub_406111:

	nop	word ptr cs:[rax + rax]
.label_491:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_474
.label_489:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_478
	jmp	.label_481
	.section	.text
	.align	32
	#Procedure 0x406133
	.globl sub_406133
	.type sub_406133, @function
sub_406133:

	nop	word ptr cs:[rax + rax]
.label_474:
	mov	qword ptr [rsp + 0x78], r12
	mov	r14, rbx
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_500
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_501
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_502
	.section	.text
	.align	32
	#Procedure 0x40618c
	.globl sub_40618c
	.type sub_40618c, @function
sub_40618c:

	nop	dword ptr [rax]
.label_501:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_500
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_480
	mov	rdx, qword ptr [rsp + 0x30]
	add	rax, rdx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_512
.label_480:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_512:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_502:
	add	rbp, rdx
	jb	.label_467
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_469
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_482
	.section	.text
	.align	32
	#Procedure 0x406243
	.globl sub_406243
	.type sub_406243, @function
sub_406243:

	nop	word ptr cs:[rax + rax]
.label_469:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_482:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_484
	test	byte ptr [rbx + 0x49], 4
	jne	.label_484
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_510
	.section	.text
	.align	32
	#Procedure 0x4062a4
	.globl sub_4062a4
	.type sub_4062a4, @function
sub_4062a4:

	nop	word ptr cs:[rax + rax]
.label_484:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_511
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_517
.label_511:
	xor	ebx, ebx
.label_517:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_510:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_521
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_521:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_476
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_476
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_476:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_520
	jmp	.label_495
.label_522:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_497
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_497:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_495
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_495
.label_481:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_495:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_513
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_513:
	test	byte ptr [rbx + 0x48], 4
	je	.label_518
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_518:
	test	r13, r13
	jne	.label_471
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_471
	cmp	r15d, 1
	je	.label_475
	test	rdx, rdx
	jne	.label_471
.label_475:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_477
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_503
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_486
.label_477:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_486:
	mov	rdx, r12
	test	eax, eax
	je	.label_471
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_493
.label_471:
	test	rdx, rdx
	je	.label_496
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_499
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_499:
	cmp	rdx, 2
	jb	.label_507
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_507
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_507
.label_496:
	cmp	r15d, 3
	jne	.label_493
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_493
	movzx	eax, ax
	cmp	eax, 7
	je	.label_493
	mov	word ptr [r14 + 0x70], 6
.label_493:
	mov	rdi, rbp
	call	fts_lfree
.label_492:
	xor	ebp, ebp
.label_507:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_500:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	jmp	.label_492
.label_467:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	jmp	.label_492
	.section	.text
	.align	32
	#Procedure 0x40656d
	.globl sub_40656d
	.type sub_40656d, @function
sub_40656d:

	nop	dword ptr [rax]
.label_526:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_523
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406590
	.globl sub_406590
	.type sub_406590, @function
sub_406590:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40659f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_526
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_525
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_528
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_525
	mov	esi, OFFSET FLAT:label_527
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_524
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_524:
	mov	rbx, r14
.label_525:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406620

	.globl describe_change
	.type describe_change, @function
describe_change:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	r14, r8
	mov	rbx, rcx
	mov	rbp, rdx
	mov	r15d, esi
	mov	r12, rdi
	cmp	r15d, 1
	jne	.label_543
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_531
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_543:
	mov	qword ptr [rsp + 0x10], r12
	mov	rdi, r14
	mov	rsi, r13
	call	user_group_str
	mov	qword ptr [rsp + 8], rax
	test	r14, r14
	cmove	rbp, r14
	test	r13, r13
	cmove	rbx, r13
	mov	rdi, rbp
	mov	rsi, rbx
	call	user_group_str
	mov	r12, rax
	cmp	r15d, 4
	je	.label_555
	cmp	r15d, 3
	je	.label_529
	cmp	r15d, 2
	jne	.label_532
	test	r14, r14
	je	.label_538
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_539
	jmp	.label_540
.label_555:
	xor	edi, edi
	test	r14, r14
	je	.label_542
	mov	esi, OFFSET FLAT:label_546
	jmp	.label_540
.label_529:
	test	r12, r12
	je	.label_548
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_552
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
	jmp	.label_534
.label_538:
	test	r13, r13
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_530
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	jmp	.label_534
.label_542:
	test	r13, r13
	je	.label_541
	mov	esi, OFFSET FLAT:label_551
	jmp	.label_540
.label_548:
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_545
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_549
	jmp	.label_550
.label_552:
	xor	edi, edi
	test	r13, r13
	je	.label_554
	mov	esi, OFFSET FLAT:label_557
	jmp	.label_534
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_533
	jmp	.label_534
.label_541:
	mov	esi, OFFSET FLAT:label_536
.label_540:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_535
.label_545:
	xor	edi, edi
	test	r13, r13
	je	.label_547
	mov	esi, OFFSET FLAT:label_553
	jmp	.label_550
.label_554:
	mov	esi, OFFSET FLAT:label_544
.label_534:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_535
.label_547:
	mov	esi, OFFSET FLAT:label_544
.label_550:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	call	free
	mov	r12, rbp
	xor	ebp, ebp
.label_535:
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, rbp
	call	__printf_chk
	mov	rdi, r12
	call	free
	mov	rdi, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_532:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406802
	.globl sub_406802
	.type sub_406802, @function
sub_406802:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406810

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_558
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_559]]
.label_558:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x406827
	.globl sub_406827
	.type sub_406827, @function
sub_406827:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406830

	.globl lchownat
	.type lchownat, @function
lchownat:
	mov	r8d, 0x100
	jmp	fchownat
	.section	.text
	.align	32
	#Procedure 0x40683b
	.globl sub_40683b
	.type sub_40683b, @function
sub_40683b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406840

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
	#Procedure 0x406879
	.globl sub_406879
	.type sub_406879, @function
sub_406879:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406880

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
	#Procedure 0x406891
	.globl sub_406891
	.type sub_406891, @function
sub_406891:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068a0
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
	#Procedure 0x4068b4
	.globl sub_4068b4
	.type sub_4068b4, @function
sub_4068b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068c0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068d8
	.globl sub_4068d8
	.type sub_4068d8, @function
sub_4068d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40690d
	.globl sub_40690d
	.type sub_40690d, @function
sub_40690d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406910

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_560
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_560:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40692e
	.globl sub_40692e
	.type sub_40692e, @function
sub_40692e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406930

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_562
	test	rbx, rbx
	je	.label_562
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_561:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_563
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_563
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_561
	jmp	.label_562
.label_563:
	mov	r15, qword ptr [rbx]
.label_562:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406990
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_564
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_569:
	cmp	qword ptr [rsi], 0
	je	.label_565
	mov	rax, rsi
	nop	dword ptr [rax]
.label_566:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_566
	inc	rdx
.label_565:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_569
.label_564:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_567
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_568
.label_567:
	xor	eax, eax
.label_568:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069e9
	.globl sub_4069e9
	.type sub_4069e9, @function
sub_4069e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069f0
	.globl chopt_free
	.type chopt_free, @function
chopt_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x20]
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x406a07
	.globl sub_406a07
	.type sub_406a07, @function
sub_406a07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a10
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a1a
	.globl sub_406a1a
	.type sub_406a1a, @function
sub_406a1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a20

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_570
	nop	
.label_579:
	mov	edi, OFFSET FLAT:label_92
	call	strcmp
	test	eax, eax
	je	.label_577
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_579
.label_577:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_92
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_573
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_93
	mov	ecx, OFFSET FLAT:label_213
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_572
	mov	esi, OFFSET FLAT:label_576
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_572
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_571
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_574
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_92
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_213
	mov	ecx, OFFSET FLAT:label_92
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_578
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_575
	mov	ecx, OFFSET FLAT:label_104
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
	#Procedure 0x406b3a
	.globl sub_406b3a
	.type sub_406b3a, @function
sub_406b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b40

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b4b
	.globl sub_406b4b
	.type sub_406b4b, @function
sub_406b4b:

	nop	dword ptr [rax + rax]
.label_580:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	.section	.text
	.align	32
	#Procedure 0x406b5a
	.globl sub_406b5a
	.type sub_406b5a, @function
sub_406b5a:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b5e

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_580
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
	.section	.text
	.align	32
	#Procedure 0x406b80

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_581
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_582:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_581
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_582
.label_581:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bcc
	.globl sub_406bcc
	.type sub_406bcc, @function
sub_406bcc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bd0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_583
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_583:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406bf3
	.globl sub_406bf3
	.type sub_406bf3, @function
sub_406bf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c00

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_584
	test	rax, rax
	je	.label_585
.label_584:
	pop	rbx
	ret	
.label_585:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406c1a
	.globl sub_406c1a
	.type sub_406c1a, @function
sub_406c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c20
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
	#Procedure 0x406c47
	.globl sub_406c47
	.type sub_406c47, @function
sub_406c47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c50

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_586
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_586:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cda
	.globl sub_406cda
	.type sub_406cda, @function
sub_406cda:

	nop	word ptr [rax + rax]
.label_592:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_587
	nop	word ptr cs:[rax + rax]
.label_589:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_590
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_590:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_588
	mov	rcx, qword ptr [rsi + 8]
.label_588:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_589
.label_587:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d2d
	.globl sub_406d2d
	.type sub_406d2d, @function
sub_406d2d:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d36

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_593
	.section	.text
	.align	32
	#Procedure 0x406d40
	.globl sub_406d40
	.type sub_406d40, @function
sub_406d40:

	nop	word ptr [rax + rax]
.label_591:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_593:
	test	rcx, rcx
	je	.label_592
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_591
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_591
.label_596:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_594
	mov	qword ptr [r14], r14
.label_597:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_594
	.section	.text
	.align	32
	#Procedure 0x406d90

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_596
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_595
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_594
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_595
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_597
.label_595:
	xor	ebp, ebp
.label_594:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e0b
	.globl sub_406e0b
	.type sub_406e0b, @function
sub_406e0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e10
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_598
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_598
.label_599:
	ret	
.label_598:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_599
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e36
	.globl sub_406e36
	.type sub_406e36, @function
sub_406e36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_600
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_600
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_600:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x406e66
	.globl sub_406e66
	.type sub_406e66, @function
sub_406e66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e70

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_601:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_601
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e90

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
	je	.label_602
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_604
	jmp	.label_603
.label_602:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_603
.label_604:
	mov	eax, 1
	test	bpl, bpl
	je	.label_603
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
.label_603:
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
	#Procedure 0x406f0d
	.globl sub_406f0d
	.type sub_406f0d, @function
sub_406f0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f10

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
	jne	.label_605
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_605
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_606
.label_605:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_606:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_607
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_607:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f7e
	.globl sub_406f7e
	.type sub_406f7e, @function
sub_406f7e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406f80

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f8a
	.globl sub_406f8a
	.type sub_406f8a, @function
sub_406f8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f90
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
	#Procedure 0x406f9f
	.globl sub_406f9f
	.type sub_406f9f, @function
sub_406f9f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406fa0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fac
	.globl sub_406fac
	.type sub_406fac, @function
sub_406fac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406fb0
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
	#Procedure 0x406fc9
	.globl sub_406fc9
	.type sub_406fc9, @function
sub_406fc9:

	nop	dword ptr [rax]
.label_609:
	mov	eax, ebx
.label_608:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fdd
	.globl sub_406fdd
	.type sub_406fdd, @function
sub_406fdd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fec

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_609
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_608
.label_611:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_613
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
	#Procedure 0x407058
	.globl sub_407058
	.type sub_407058, @function
sub_407058:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40705a

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_611
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_616
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
	mov	esi, OFFSET FLAT:label_614
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_625
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_615
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_623
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_610
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_617
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_618
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_619
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_620
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_612
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_622
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x407250

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_626
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_627
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_626
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_628
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_627
.label_628:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_629
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_629
	mov	rdi, qword ptr [rsp]
	call	free
.label_626:
	xor	r14d, r14d
.label_627:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_629:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407378
	.globl sub_407378
	.type sub_407378, @function
sub_407378:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407380
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40738a
	.globl sub_40738a
	.type sub_40738a, @function
sub_40738a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407390

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_630
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_634
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_631
.label_634:
	call	xalloc_die
.label_630:
	test	rcx, rcx
	jne	.label_632
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_632:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_633
.label_631:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_633:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407409
	.globl sub_407409
	.type sub_407409, @function
sub_407409:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407410

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, r8
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	esi, 0xffffffff
	test	rcx, rcx
	je	.label_639
	mov	esi, dword ptr [rcx]
.label_639:
	test	rbp, rbp
	je	.label_651
	mov	qword ptr [rbp], 0
.label_651:
	test	r9, r9
	je	.label_654
	mov	qword ptr [r9], 0
.label_654:
	test	r15, r15
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 4], eax
	je	.label_656
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	xor	r13d, r13d
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_658
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_658:
	lea	rax, [r15 + 1]
	xor	r12d, r12d
	cmp	byte ptr [r15 + 1], 0
	cmovne	r12, rax
	jmp	.label_635
.label_656:
	xor	r14d, r14d
	cmp	byte ptr [rdi], 0
	je	.label_637
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	call	xstrdup
	mov	r13, rax
	xor	r12d, r12d
.label_635:
	xor	r14d, r14d
	test	r13, r13
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_653
	cmp	byte ptr [r13], 0x2b
	je	.label_657
	mov	rdi, r13
	call	getpwnam
	test	rax, rax
	je	.label_657
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rsp + 4], ecx
	xor	r14d, r14d
	test	r15, r15
	je	.label_660
	test	r12, r12
	jne	.label_660
	mov	ebx, dword ptr [rax + 0x14]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 8], rbx
	je	.label_636
	mov	rdi, qword ptr [rax]
	jmp	.label_663
.label_653:
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_641
.label_657:
	mov	ebp, OFFSET FLAT:label_644
	xor	r14d, r14d
	test	r15, r15
	je	.label_645
	test	r12, r12
	je	.label_650
.label_645:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_104
	mov	rdi, r13
	call	xstrtoul
	test	eax, eax
	jne	.label_655
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_655
	xor	ebp, ebp
	cmp	eax, -1
	jne	.label_659
.label_655:
	mov	ebp, OFFSET FLAT:label_661
	mov	eax, dword ptr [rsp + 4]
.label_659:
	xor	r14d, r14d
	mov	dword ptr [rsp + 4], eax
	jmp	.label_650
.label_636:
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_663:
	call	xstrdup
	mov	r14, rax
	call	endgrent
.label_660:
	xor	ebp, ebp
.label_650:
	call	endpwent
.label_641:
	test	r12, r12
	je	.label_646
	test	rbp, rbp
	jne	.label_646
	cmp	byte ptr [r12], 0x2b
	je	.label_638
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_638
	mov	ebx, dword ptr [rax + 0x10]
	jmp	.label_648
.label_646:
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_652
.label_638:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_104
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_662
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_662
	cmp	ebx, -1
	jne	.label_648
.label_662:
	mov	ebp, OFFSET FLAT:label_665
	mov	rbx, qword ptr [rsp + 8]
.label_648:
	call	endgrent
	mov	rdi, r12
	call	xstrdup
	mov	r14, rax
	mov	esi, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
.label_652:
	test	rbp, rbp
	je	.label_647
	xor	ebx, ebx
	jmp	.label_649
.label_647:
	mov	rbp, qword ptr [rsp + 0x20]
.label_642:
	mov	rax, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 4]
	mov	dword ptr [rax], edx
	test	rcx, rcx
	je	.label_640
	mov	dword ptr [rcx], esi
.label_640:
	test	rbp, rbp
	je	.label_643
	mov	qword ptr [rbp], r13
	xor	r13d, r13d
.label_643:
	mov	bl, 1
	xor	ebp, ebp
	test	r9, r9
	je	.label_649
	mov	qword ptr [r9], r14
	xor	ebp, ebp
	xor	r14d, r14d
.label_649:
	mov	rdi, r13
	call	free
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_664
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbp
	call	dcgettext
.label_664:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407695
	.globl sub_407695
	.type sub_407695, @function
sub_407695:

	nop	dword ptr [rax]
.label_637:
	xor	r13d, r13d
	jmp	.label_642
	.section	.text
	.align	32
	#Procedure 0x4076a0

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_666
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_667
	jmp	hash_free
.label_667:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076b9
	.globl sub_4076b9
	.type sub_4076b9, @function
sub_4076b9:

	nop	word ptr cs:[rax + rax]
.label_666:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4076d0

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
	jne	.label_672
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
	je	.label_668
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_676
	mov	eax, OFFSET FLAT:label_677
	jmp	.label_671
.label_675:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_673
	mov	eax, OFFSET FLAT:label_674
.label_671:
	cmove	rax, rcx
.label_672:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40774f
	.globl sub_40774f
	.type sub_40774f, @function
sub_40774f:

	nop	dword ptr [rax]
.label_668:
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
	je	.label_675
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_669
	mov	eax, OFFSET FLAT:label_670
	jmp	.label_671
.label_678:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407795
	.globl sub_407795
	.type sub_407795, @function
sub_407795:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077a0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_678
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077c0
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
	#Procedure 0x4077f3
	.globl sub_4077f3
	.type sub_4077f3, @function
sub_4077f3:

	nop	word ptr cs:[rax + rax]
.label_680:
	mov	ecx, 1
.label_679:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x407810
	.globl sub_407810
	.type sub_407810, @function
sub_407810:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407815

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_680
	test	rsi, rsi
	mov	ecx, 1
	je	.label_679
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_679
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407850

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40785e
	.globl sub_40785e
	.type sub_40785e, @function
sub_40785e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407860

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
	js	.label_681
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_684
	cmp	r12d, 0x7fffffff
	je	.label_686
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
	jne	.label_682
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_682:
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
.label_684:
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
	jbe	.label_687
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_683
.label_687:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_685
	mov	rdi, r14
	call	free
.label_685:
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
.label_683:
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
.label_681:
	call	abort
.label_686:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407a1d
	.globl sub_407a1d
	.type sub_407a1d, @function
sub_407a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a20

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
	#Procedure 0x407a56
	.globl sub_407a56
	.type sub_407a56, @function
sub_407a56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a60

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_688
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_688:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a94
	.globl sub_407a94
	.type sub_407a94, @function
sub_407a94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407aa0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_708
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_708
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_722
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_723
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_708
.label_722:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_723
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_694
	test	byte ptr [r14 + 0x48], 4
	jne	.label_694
	mov	esi, OFFSET FLAT:label_228
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_704
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_707
.label_723:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_696
	movzx	eax, ax
	cmp	eax, 4
	je	.label_709
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_710
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_709
.label_710:
	cmp	qword ptr [r14 + 8], 0
	je	.label_712
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_713
	cmp	qword ptr [r14 + 8], 0
	je	.label_712
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_716
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_728
	.section	.text
	.align	32
	#Procedure 0x407bd7
	.globl sub_407bd7
	.type sub_407bd7, @function
sub_407bd7:

	nop	word ptr [rax + rax]
.label_696:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_724
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_702
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_727
.label_724:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_693
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_696
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_700
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_705
	test	byte ptr [r14 + 0x48], 4
	jne	.label_705
	mov	esi, OFFSET FLAT:label_228
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_715
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_705
.label_719:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_728:
	test	rax, rax
	jne	.label_719
	jmp	.label_716
.label_709:
	test	byte ptr [rbx + 0x72], 2
	je	.label_717
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_717:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_720
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_720:
	mov	word ptr [rbx + 0x70], 6
.label_718:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_708
.label_694:
	mov	r15, rbx
	jmp	.label_707
.label_693:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_725
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_708
.label_702:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_695
	mov	rdi, rbx
	call	free
	jmp	.label_700
.label_725:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_707
.label_713:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_712:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_711
.label_716:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_700
.label_711:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_708
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_718
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_718
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_718
.label_704:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_707
.label_695:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_708
.label_727:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_726
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_703
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_691
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_698
	test	al, 1
	jne	.label_699
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_503
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_692
.label_726:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_708
.label_691:
	mov	rdi, r14
	call	restore_initial_cwd
.label_692:
	test	eax, eax
	je	.label_699
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_699
.label_698:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_714
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_690
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_714
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_714
.label_715:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_705:
	mov	word ptr [r15 + 0x74], 3
.label_700:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_707:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_697
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_701
	cmp	rax, 2
	jne	.label_703
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_706
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_706
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_701
.label_706:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_697
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_701
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_701
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_701:
	mov	ax, word ptr [r15 + 0x70]
.label_697:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_708
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_721
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_721:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_708
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_708
.label_690:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_714:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_699:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_689
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_689
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_689:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_708:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_703:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408047
	.globl sub_408047
	.type sub_408047, @function
sub_408047:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408050

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_737
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_736
	nop	word ptr cs:[rax + rax]
.label_732:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_740
	mov	rbx, qword ptr [rdi + 8]
.label_740:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_732
	jmp	.label_731
.label_736:
	mov	rbx, rdi
.label_731:
	mov	rdi, rbx
	call	free
.label_737:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_735
	call	fts_lfree
.label_735:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_734
	xor	ebx, ebx
	test	al, 4
	jne	.label_729
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_730
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_730:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_738
	jmp	.label_729
.label_734:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_729
	call	close
.label_738:
	test	eax, eax
	je	.label_729
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_729:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_733
	call	hash_free
.label_733:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_739
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_739:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x408148
	.globl sub_408148
	.type sub_408148, @function
sub_408148:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408150

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
.label_850:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_852
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_745]]
.label_1046:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_750
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_674
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1047:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_766
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_766
	xor	r14d, r14d
.label_781:
	cmp	r14, r11
	jae	.label_774
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_774:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_781
.label_766:
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
	jmp	.label_742
.label_1039:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_742
.label_1042:
	mov	al, 1
.label_1040:
	mov	r12b, 1
.label_1043:
	test	r12b, 1
	mov	cl, 1
	je	.label_798
	mov	ecx, eax
.label_798:
	mov	al, cl
.label_1041:
	test	r12b, 1
	jne	.label_803
	test	r11, r11
	je	.label_805
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_805:
	mov	r14d, 1
	jmp	.label_810
.label_803:
	xor	r14d, r14d
.label_810:
	mov	ecx, OFFSET FLAT:label_674
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_742
.label_1044:
	test	r12b, 1
	jne	.label_817
	test	r11, r11
	je	.label_825
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_825:
	mov	r14d, 1
	jmp	.label_837
.label_1045:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_673
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_742
.label_817:
	xor	r14d, r14d
.label_837:
	mov	eax, OFFSET FLAT:label_673
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_742:
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
	jmp	.label_842
	.section	.text
	.align	32
	#Procedure 0x40842c
	.globl sub_40842c
	.type sub_40842c, @function
sub_40842c:

	nop	dword ptr [rax]
.label_776:
	inc	rsi
.label_842:
	cmp	rbp, -1
	je	.label_755
	cmp	rsi, rbp
	jne	.label_757
	jmp	.label_759
	.section	.text
	.align	32
	#Procedure 0x408443
	.globl sub_408443
	.type sub_408443, @function
sub_408443:

	nop	word ptr cs:[rax + rax]
.label_755:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_759
.label_757:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_769
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_771
	cmp	rbp, -1
	jne	.label_771
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
.label_771:
	cmp	rbx, rbp
	jbe	.label_784
.label_769:
	xor	r8d, r8d
.label_811:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_785
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_788]]
.label_931:
	test	rsi, rsi
	jne	.label_779
	jmp	.label_794
	.section	.text
	.align	32
	#Procedure 0x4084de
	.globl sub_4084de
	.type sub_4084de, @function
sub_4084de:

	nop	
.label_784:
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
	jne	.label_808
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_811
	jmp	.label_749
.label_808:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_811
.label_935:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_754
	test	rsi, rsi
	jne	.label_826
	cmp	rbp, 1
	je	.label_794
	xor	r13d, r13d
	jmp	.label_760
.label_924:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_832
	cmp	byte ptr [rsp + 7], 0
	jne	.label_777
	cmp	r12d, 2
	jne	.label_802
	mov	eax, r9d
	and	al, 1
	jne	.label_802
	cmp	r14, r11
	jae	.label_836
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_836:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_839
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_839:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_843
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_843:
	add	r14, 3
	mov	r9b, 1
.label_802:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_807
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_807:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_743
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_743
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_743
	cmp	r14, r11
	jae	.label_790
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_790:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_823
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_823:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_760
.label_925:
	mov	bl, 0x62
	jmp	.label_764
.label_926:
	mov	cl, 0x74
	jmp	.label_768
.label_927:
	mov	bl, 0x76
	jmp	.label_764
.label_928:
	mov	bl, 0x66
	jmp	.label_764
.label_929:
	mov	cl, 0x72
	jmp	.label_768
.label_932:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_773
	cmp	byte ptr [rsp + 7], 0
	jne	.label_777
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
	jae	.label_782
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_782:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_791
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_791:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_795
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_795:
	add	r14, 3
	xor	r9d, r9d
.label_773:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_760
.label_933:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_806
	cmp	r12d, 2
	jne	.label_779
	cmp	byte ptr [rsp + 7], 0
	je	.label_779
	jmp	.label_777
.label_934:
	cmp	r12d, 2
	jne	.label_814
	cmp	byte ptr [rsp + 7], 0
	jne	.label_777
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_765
.label_785:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_821
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
.label_763:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_835
	test	r8b, r8b
	je	.label_835
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_760
.label_754:
	test	rsi, rsi
	jne	.label_849
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_849
.label_794:
	mov	dl, 1
.label_930:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_777
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_760:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_746
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_747
	jmp	.label_752
	.section	.text
	.align	32
	#Procedure 0x408824
	.globl sub_408824
	.type sub_408824, @function
sub_408824:

	nop	word ptr cs:[rax + rax]
.label_746:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_752
.label_747:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_756
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_765
	jmp	.label_772
	.section	.text
	.align	32
	#Procedure 0x40886d
	.globl sub_40886d
	.type sub_40886d, @function
sub_40886d:

	nop	dword ptr [rax]
.label_752:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_772
	jmp	.label_765
.label_756:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_772
.label_832:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_776
	xor	r15d, r15d
	jmp	.label_779
.label_814:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_768
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_765
.label_768:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_777
.label_764:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_760
	nop	word ptr cs:[rax + rax]
.label_772:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_777
	cmp	r12d, 2
	jne	.label_799
	mov	eax, r9d
	and	al, 1
	jne	.label_799
	cmp	r14, r11
	jae	.label_804
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_804:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_753
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_753:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_819
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_819:
	add	r14, 3
	mov	r9b, 1
.label_799:
	cmp	r14, r11
	jae	.label_816
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_816:
	inc	r14
	jmp	.label_833
.label_821:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_822
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_822:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_827:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_838
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_841
	cmp	rbp, -2
	je	.label_793
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_847
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_792:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_815
	bt	rsi, rdx
	jb	.label_749
.label_815:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_792
.label_847:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_758
	xor	r13d, r13d
.label_758:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_827
	jmp	.label_763
.label_743:
	xor	r13d, r13d
	jmp	.label_760
.label_849:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_760
.label_806:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_779
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_779
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_779
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_751
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_846
	cmp	byte ptr [rsp + 7], 0
	jne	.label_777
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_796
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_796:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_800
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_800:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_809
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_809:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_812
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_812:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_760
.label_779:
	xor	eax, eax
.label_826:
	xor	r13d, r13d
	jmp	.label_760
.label_835:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_820
	.section	.text
	.align	32
	#Procedure 0x408b53
	.globl sub_408b53
	.type sub_408b53, @function
sub_408b53:

	nop	word ptr cs:[rax + rax]
.label_780:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_820:
	test	r8b, r8b
	je	.label_828
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_829
	cmp	r14, r11
	jae	.label_830
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_830:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_829
	.section	.text
	.align	32
	#Procedure 0x408b9c
	.globl sub_408b9c
	.type sub_408b9c, @function
sub_408b9c:

	nop	dword ptr [rax]
.label_828:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_749
	cmp	r12d, 2
	jne	.label_761
	mov	eax, r9d
	and	al, 1
	jne	.label_761
	cmp	r14, r11
	jae	.label_840
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_840:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_818
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_818:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_848
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_848:
	add	r14, 3
	mov	r9b, 1
.label_761:
	cmp	r14, r11
	jae	.label_789
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_789:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_775
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_775:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_748
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_748:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_829:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_765
	test	r9b, 1
	je	.label_767
	mov	ebx, eax
	and	bl, 1
	jne	.label_767
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_770
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_770:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_834
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_834:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_767:
	cmp	r14, r11
	jae	.label_780
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_780
	.section	.text
	.align	32
	#Procedure 0x408ca3
	.globl sub_408ca3
	.type sub_408ca3, @function
sub_408ca3:

	nop	word ptr cs:[rax + rax]
.label_765:
	test	r9b, 1
	je	.label_762
	and	al, 1
	jne	.label_762
	cmp	r14, r11
	jae	.label_787
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_787:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_786
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_786:
	add	r14, 2
	xor	r9d, r9d
.label_762:
	mov	ebx, r15d
.label_833:
	cmp	r14, r11
	jae	.label_797
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_797:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_776
.label_841:
	xor	r13d, r13d
.label_838:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_763
.label_793:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_813
	mov	rsi, qword ptr [rsp + 0x50]
.label_778:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_851
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_778
	xor	r13d, r13d
	jmp	.label_763
.label_813:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_763
.label_851:
	xor	r13d, r13d
	jmp	.label_763
.label_751:
	xor	r13d, r13d
	jmp	.label_760
.label_846:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_760
	.section	.text
	.align	32
	#Procedure 0x408d78
	.globl sub_408d78
	.type sub_408d78, @function
sub_408d78:

	nop	dword ptr [rax + rax]
.label_759:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_831
	or	dl, al
	je	.label_749
.label_831:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_844
	or	dl, al
	jne	.label_844
	test	r10b, 1
	jne	.label_845
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_844
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_850
.label_844:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_853
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_744
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_744
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_824:
	cmp	r14, r11
	jae	.label_783
	mov	byte ptr [rcx + r14], al
.label_783:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_824
	jmp	.label_744
.label_777:
	mov	qword ptr [rsp + 0x20], rbp
.label_749:
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
.label_801:
	mov	r14, rax
.label_741:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_845:
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
	jmp	.label_801
.label_853:
	mov	rcx, qword ptr [rsp + 8]
.label_744:
	cmp	r14, r11
	jae	.label_741
	mov	byte ptr [rcx + r14], 0
	jmp	.label_741
.label_852:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408f0c
	.globl sub_408f0c
	.type sub_408f0c, @function
sub_408f0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408f10

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_854:
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
	ja	.label_854
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f5b
	.globl sub_408f5b
	.type sub_408f5b, @function
sub_408f5b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f60
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f67
	.globl sub_408f67
	.type sub_408f67, @function
sub_408f67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f70
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_855
	xor	ebx, ebx
.label_857:
	cmp	qword ptr [r13], 0
	je	.label_856
	test	r13, r13
	je	.label_856
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_858:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_855
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_858
.label_856:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_857
.label_855:
	mov	rax, rbx
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
	#Procedure 0x408fe7
	.globl sub_408fe7
	.type sub_408fe7, @function
sub_408fe7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ff0

	.globl chopt_init
	.type chopt_init, @function
chopt_init:
	mov	dword ptr [rdi], 2
	mov	qword ptr [rdi + 8], 0
	mov	byte ptr [rdi + 0x10], 1
	mov	byte ptr [rdi + 4], 0
	mov	byte ptr [rdi + 0x11], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x18], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x409012
	.globl sub_409012
	.type sub_409012, @function
sub_409012:

	nop	word ptr cs:[rax + rax]
.label_859:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x409023
	.globl sub_409023
	.type sub_409023, @function
sub_409023:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409025
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_859
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x409040

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
	je	.label_860
	mov	edx, OFFSET FLAT:label_870
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_876
.label_860:
	mov	edx, OFFSET FLAT:label_877
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_876:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_864
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
	mov	esi, OFFSET FLAT:label_878
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_865
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_866]]
.label_1048:
	add	rsp, 8
	jmp	.label_863
.label_865:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_873
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
	jmp	.label_863
.label_1049:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_861
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
.label_1050:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_874
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
.label_1051:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_871
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
.label_1052:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_868
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
	jmp	.label_863
.label_1053:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_867
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
	jmp	.label_863
.label_1054:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_869
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
	jmp	.label_863
.label_1055:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_872
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
	jmp	.label_863
.label_1057:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_875
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
	jmp	.label_863
.label_1056:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_862
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
.label_863:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409398
	.globl sub_409398
	.type sub_409398, @function
sub_409398:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093a0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x4093a5
	.globl sub_4093a5
	.type sub_4093a5, @function
sub_4093a5:

	nop	word ptr cs:[rax + rax]
.label_880:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_881:
	xor	eax, eax
.label_879:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4093c5
	.globl sub_4093c5
	.type sub_4093c5, @function
sub_4093c5:

	nop	
.label_882:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_880
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_879
	.section	.text
	.align	32
	#Procedure 0x4093e1

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_882
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_881
	.section	.text
	.align	32
	#Procedure 0x409410
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
	#Procedure 0x409482
	.globl sub_409482
	.type sub_409482, @function
sub_409482:

	nop	word ptr cs:[rax + rax]
.label_884:
	cmp	edi, 0x7f
	je	.label_883
	xor	eax, eax
	jmp	.label_883
	.section	.text
	.align	32
	#Procedure 0x409499
	.globl sub_409499
	.type sub_409499, @function
sub_409499:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094a8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_884
.label_883:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_104
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_885
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094d5
	.globl sub_4094d5
	.type sub_4094d5, @function
sub_4094d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094e8
	.globl sub_4094e8
	.type sub_4094e8, @function
sub_4094e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409555
	.globl sub_409555
	.type sub_409555, @function
sub_409555:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409562
	.globl sub_409562
	.type sub_409562, @function
sub_409562:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409586
	.globl sub_409586
	.type sub_409586, @function
sub_409586:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409599
	.globl sub_409599
	.type sub_409599, @function
sub_409599:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4095a0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x4095b0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x4095bf
	.globl sub_4095bf
	.type sub_4095bf, @function
sub_4095bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4095c0

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x4095d0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
