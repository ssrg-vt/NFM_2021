	.section	.text
	.align	16
	#Procedure 0x401979
	.globl sub_401979
	.type sub_401979, @function
sub_401979:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40197a
	.globl sub_40197a
	.type sub_40197a, @function
sub_40197a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019b2
	.globl sub_4019b2
	.type sub_4019b2, @function
sub_4019b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019fa
	.globl sub_4019fa
	.type sub_4019fa, @function
sub_4019fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a1c
	.globl sub_401a1c
	.type sub_401a1c, @function
sub_401a1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a2d
	.globl sub_401a2d
	.type sub_401a2d, @function
sub_401a2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a46
	.globl sub_401a46
	.type sub_401a46, @function
sub_401a46:

	nop	word ptr cs:[rax + rax]
.label_9:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401a56
	.globl sub_401a56
	.type sub_401a56, @function
sub_401a56:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a5b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_9
	test	rdx, rdx
	je	.label_9
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a80
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a85
	.globl sub_401a85
	.type sub_401a85, @function
sub_401a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a90

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	xor	ebx, ebx
	test	r15, r15
	je	.label_21
	mov	eax, dword ptr [r14 + 0x48]
	xor	ebx, ebx
	test	ah, 0x20
	jne	.label_21
	movzx	ecx, word ptr [r15 + 0x74]
	mov	word ptr [r15 + 0x74], 3
	cmp	ecx, 1
	je	.label_37
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_39
	mov	ecx, dword ptr [r15 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_41
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_20
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_20
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_43
	mov	edi, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_49
.label_37:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	rbx, r15
	jmp	.label_21
.label_39:
	lea	r12, [r15 + 0x70]
	mov	ecx, dword ptr [r15 + 0x70]
	jmp	.label_53
.label_41:
	lea	r12, [r15 + 0x70]
.label_53:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_10
	cmp	edx, 4
	je	.label_56
	test	al, 0x40
	je	.label_58
	mov	rdx, qword ptr [r15 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_56
.label_58:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_61
	test	ah, 0x10
	jne	.label_64
	mov	rcx, qword ptr [r15 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r15
	call	fts_safe_changedir
	test	eax, eax
	je	.label_19
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r15 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_66
	.section	.text
	.align	16
	#Procedure 0x401bd3
	.globl sub_401bd3
	.type sub_401bd3, @function
sub_401bd3:

	nop	word ptr cs:[rax + rax]
.label_10:
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	je	.label_69
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_72
	movzx	eax, word ptr [rbx + 0x74]
	cmp	eax, 4
	mov	r15, rbx
	je	.label_10
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_14
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_18
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_18
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_22
	mov	edi, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_27
.label_29:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_66:
	test	rax, rax
	jne	.label_29
	jmp	.label_19
.label_56:
	test	ecx, 0x20000
	je	.label_31
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_31:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_34
	nop	word ptr cs:[rax + rax]
.label_40:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_36
	call	closedir
.label_36:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_40
	mov	qword ptr [r14 + 8], 0
.label_34:
	mov	word ptr [r15 + 0x70], 6
.label_12:
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
	mov	rbx, r15
	jmp	.label_21
.label_69:
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_42
	mov	qword ptr [r14], rbx
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	rbx, rax
	test	rbx, rbx
	je	.label_45
	mov	rdi, r15
	call	free
	jmp	.label_14
.label_72:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_59
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	ebx, ebx
	jmp	.label_21
.label_59:
	test	ax, 0x102
	je	.label_54
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_55
	call	hash_free
	jmp	.label_55
.label_64:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_63
	call	closedir
.label_63:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_65
	mov	qword ptr [r14 + 8], 0
.label_61:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_67
.label_19:
	mov	rbx, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_14
.label_67:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_21
	cmp	dword ptr [r15 + 0x40], 0
	je	.label_12
	movzx	eax, word ptr [r12]
	cmp	eax, 4
	je	.label_12
	mov	word ptr [r12], 7
	jmp	.label_12
.label_43:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_15
	xor	eax, eax
	call	openat_safer
.label_49:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_16
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_20
.label_45:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_21
	mov	rbx, qword ptr [r15 + 8]
.label_42:
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], -1
	je	.label_23
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 0xb
	je	.label_24
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_26
	movzx	eax, word ptr [rbx + 0x72]
	test	al, 2
	jne	.label_28
	test	al, 1
	jne	.label_25
	mov	rsi, qword ptr [rbx + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_32
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_35
.label_23:
	mov	rdi, rbx
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	ebx, ebx
	jmp	.label_21
.label_16:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
	jmp	.label_20
.label_54:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_55:
	mov	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [rbx + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_44
	cmp	rbp, r15
	jne	.label_46
	cmp	byte ptr [rbx + 0x109], 0
	je	.label_44
.label_46:
	inc	rbp
	mov	rdi, rbp
	call	strlen
	mov	r12, rax
	lea	rdx, [r12 + 1]
	mov	rdi, r15
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rbx + 0x60], r12
.label_44:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	qword ptr [rbx + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_51
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_60
.label_51:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_60
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_60
.label_26:
	mov	rdi, r14
	call	restore_initial_cwd
.label_35:
	test	eax, eax
	je	.label_25
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_25
.label_28:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbp, [rbx + 0x44]
	test	al, 4
	jne	.label_13
	test	ah, 2
	mov	r15d, dword ptr [rbx + 0x44]
	jne	.label_71
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_13
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_13
.label_22:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_15
	xor	eax, eax
	call	openat_safer
.label_27:
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_17
	or	byte ptr [rbx + 0x72], 2
	jmp	.label_18
.label_17:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
.label_18:
	mov	word ptr [rbx + 0x74], 3
.label_14:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [rbx + 0x108]
	mov	rdx, qword ptr [rbx + 0x60]
	inc	rdx
	call	memmove
.label_60:
	mov	r15, rbx
.label_20:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_30
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_33
	cmp	rax, 2
	jne	.label_24
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_38
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_38
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_33
	cmp	rax, 0x58465342
	je	.label_33
.label_38:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_30
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_33
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_33
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_33:
	mov	ax, word ptr [r15 + 0x70]
.label_30:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_48
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_47
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_47:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_50
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_52
	movups	xmm0, xmmword ptr [r15 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r15
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	rbp, rax
	cmp	rbp, rbx
	je	.label_57
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	je	.label_52
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r15], rax
	jmp	.label_62
.label_48:
	mov	rbx, r15
	jmp	.label_21
.label_50:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r15 + 0x78]
	call	cycle_check
	test	al, al
	je	.label_57
	mov	qword ptr [r15], r15
.label_62:
	mov	word ptr [r15 + 0x70], 2
	mov	rbx, r15
	jmp	.label_21
.label_57:
	mov	rbx, r15
	jmp	.label_21
.label_52:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_21
.label_71:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, r15d
	jne	.label_68
	cmp	esi, -0x64
	jne	.label_24
.label_68:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_70
	mov	edi, eax
	call	close
.label_70:
	mov	dword ptr [r14 + 0x2c], r15d
.label_13:
	mov	edi, dword ptr [rbp]
	call	close
.label_25:
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 2
	je	.label_11
	mov	eax, dword ptr [rbx + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [rbx + 0x70], cx
	jne	.label_11
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
.label_11:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	rbx, rax
.label_21:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_24:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402244
	.globl sub_402244
	.type sub_402244, @function
sub_402244:

	nop	word ptr cs:[rax + rax]
.label_1101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
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
.label_1100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
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
.label_1104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
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
	jmp	.label_79
.label_1106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
	jmp	.label_79
.label_1105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
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
	jmp	.label_79
.label_1103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
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
	jmp	.label_79
	.section	.text
	.align	16
	#Procedure 0x4023cb

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
	je	.label_80
	mov	edx, OFFSET FLAT:label_87
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_74
.label_80:
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_85
	jmp	qword ptr [(r12 * 8) + label_86]
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
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
	jmp	.label_79
.label_1108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
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
	jmp	.label_79
.label_1099:
	add	rsp, 8
	jmp	.label_79
.label_1107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
.label_79:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40256f
	.globl sub_40256f
	.type sub_40256f, @function
sub_40256f:

	nop	dword ptr [rax + rax]
.label_1102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
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
	.section	.text
	.align	16
	#Procedure 0x4025b0

	.globl openat_restore_fail
	.type openat_restore_fail, @function
openat_restore_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4025e2
	.globl sub_4025e2
	.type sub_4025e2, @function
sub_4025e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_93
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_96:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_96
.label_93:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_97
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_95], OFFSET FLAT:slot0
.label_97:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_94
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_94:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402681
	.globl sub_402681
	.type sub_402681, @function
sub_402681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402690
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_98
	test	rax, rax
	je	.label_99
.label_98:
	pop	rbx
	ret	
.label_99:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4026aa
	.globl sub_4026aa
	.type sub_4026aa, @function
sub_4026aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_100
	call	rpl_calloc
	test	rax, rax
	je	.label_100
	pop	rcx
	ret	
.label_100:
	call	xalloc_die
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

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_101
	cmp	ecx, 0x11
	jne	.label_102
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_101:
	ret	
.label_102:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026fe
	.globl sub_4026fe
	.type sub_4026fe, @function
sub_4026fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402700

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_103
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_103:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_110
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_106
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_107
	test	esi, esi
	jne	.label_110
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_111
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_112
.label_110:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_113
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_107
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_117
.label_106:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_108
.label_107:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_121
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_122
.label_121:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_122:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_123:
	call	fcntl
.label_108:
	mov	ebp, eax
.label_105:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_117:
	cmp	eax, 6
	jne	.label_113
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_115
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_104
.label_113:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_116
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_119
.label_111:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_112:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_123
.label_115:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_104:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_109
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_114
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_114
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_105
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_118
.label_114:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_105
.label_116:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_119:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_108
.label_109:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_118:
	test	al, al
	je	.label_105
	test	ebp, ebp
	js	.label_105
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_120
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_105
.label_120:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_105
	.section	.text
	.align	16
	#Procedure 0x402991
	.globl sub_402991
	.type sub_402991, @function
sub_402991:

	nop	word ptr cs:[rax + rax]
.label_127:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4029a5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_124]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_125]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_126]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_127
	test	rsi, rsi
	je	.label_127
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_132:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_130
	mov	qword ptr [rsi], rbx
.label_131:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_129
	test	rax, rax
	je	.label_130
.label_129:
	pop	rbx
	ret	
.label_130:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402a3d
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_132
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_128
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_131
	call	free
	xor	eax, eax
	jmp	.label_129
.label_128:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402a74
	.globl sub_402a74
	.type sub_402a74, @function
sub_402a74:

	nop	word ptr cs:[rax + rax]
.label_134:
	mov	eax, ebx
.label_133:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a8d
	.globl sub_402a8d
	.type sub_402a8d, @function
sub_402a8d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a9c

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
	ja	.label_134
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
	jmp	.label_133
	.section	.text
	.align	16
	#Procedure 0x402ad0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_137
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_136
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_141:
	cmp	qword ptr [rcx], 0
	je	.label_142
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_135:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_135
	cmp	rdi, rax
	cmova	rax, rdi
.label_142:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_139
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_140:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_140
	cmp	rdi, rax
	cmova	rax, rdi
.label_139:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_141
.label_136:
	test	r8, r8
	je	.label_137
	cmp	qword ptr [rcx], 0
	je	.label_137
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_138:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_138
	cmp	rdx, rax
	cmova	rax, rdx
.label_137:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b84
	.globl sub_402b84
	.type sub_402b84, @function
sub_402b84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90

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
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_147
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
	sete	r14b
	jmp	.label_157
.label_147:
	xor	r14d, r14d
.label_157:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_158
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_145
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_145
	and	eax, 0x200
	je	.label_145
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_145
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_145:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_152
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_153
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_156
.label_158:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_143
	and	eax, 0x200
	je	.label_143
	mov	edi, r13d
	call	close
	jmp	.label_143
.label_153:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_156:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_143
.label_152:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_149
	test	rbx, rbx
	je	.label_151
	cmp	byte ptr [rbx], 0x2e
	jne	.label_151
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_151
	cmp	byte ptr [rbx + 2], 0
	jne	.label_151
.label_149:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_159
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_155
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_155
	mov	eax, dword ptr [r15 + 0x48]
.label_151:
	test	ah, 2
	jne	.label_160
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_161
.label_160:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_162
	cmp	esi, -0x64
	jne	.label_148
.label_162:
	test	r14b, r14b
	je	.label_144
	test	al, 4
	jne	.label_146
	test	esi, esi
	js	.label_146
	mov	edi, esi
	jmp	.label_150
.label_155:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_159:
	mov	ebp, 0xffffffff
.label_161:
	test	r13d, r13d
	jns	.label_143
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_143
.label_144:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_146
	mov	edi, eax
.label_150:
	call	close
.label_146:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_143:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_148:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d79
	.globl sub_402d79
	.type sub_402d79, @function
sub_402d79:

	nop	dword ptr [rax]
.label_163:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d85
	.globl sub_402d85
	.type sub_402d85, @function
sub_402d85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d90

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
	je	.label_163
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
	.section	.text
	.align	16
	#Procedure 0x402e20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_174
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_176
.label_174:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_176:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_165
	cmp	r10d, 0x29
	jae	.label_173
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_175
.label_173:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_175:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_165
	cmp	r10d, 0x29
	jae	.label_171
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_172
.label_171:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_172:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_165
	cmp	r10d, 0x29
	jae	.label_169
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_170
.label_169:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_170:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_165
	cmp	r10d, 0x29
	jae	.label_167
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_168
.label_167:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_168:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_165
	cmp	r10d, 0x29
	jae	.label_164
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_166
.label_164:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_166:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_165
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_165
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_165
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_165
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_165:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403002
	.globl sub_403002
	.type sub_403002, @function
sub_403002:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403010

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_188
	call	setlocale
	mov	edi, OFFSET FLAT:label_190
	mov	esi, OFFSET FLAT:label_191
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_190
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r14d, 0x10
	mov	r15d, 0xffffffff
	xor	r12d, r12d
	xor	r13d, r13d
	xor	eax, eax
	jmp	.label_199
	.section	.text
	.align	16
	#Procedure 0x403073
	.globl sub_403073
	.type sub_403073, @function
sub_403073:

	nop	word ptr cs:[rax + rax]
.label_1097:
	mov	rax, qword ptr [rip + optarg]
.label_199:
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_205
.label_1089:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_range],  rax
	mov	r13b, 1
	nop	
.label_205:
	mov	edx, OFFSET FLAT:label_245
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x84
	ja	.label_214
	jmp	qword ptr [(rcx * 8) + label_215]
.label_1084:
	mov	r14d, 0x11
	jmp	.label_205
.label_1086:
	mov	r14d, 0x10
	jmp	.label_205
.label_1088:
	xor	r15d, r15d
	jmp	.label_205
.label_1090:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_role],  rax
	mov	r13b, 1
	jmp	.label_205
.label_1091:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_type],  rax
	mov	r13b, 1
	jmp	.label_205
.label_1094:
	mov	r15d, 1
	jmp	.label_205
.label_1095:
	xor	r12d, r12d
	jmp	.label_205
.label_1085:
	mov	r14d, 2
	jmp	.label_205
.label_1087:
	mov	byte ptr [rip + recurse],  1
	jmp	.label_205
.label_1092:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_user],  rax
	mov	r13b, 1
	jmp	.label_205
.label_1093:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_205
.label_1096:
	mov	r12b, 1
	jmp	.label_205
.label_1083:
	mov	al, byte ptr [rip + recurse]
	cmp	al, 1
	jne	.label_229
	cmp	r14d, 0x10
	jne	.label_232
	cmp	r15d, 1
	je	.label_234
	mov	byte ptr [rip + affect_symlink_referent],  0
	jmp	.label_238
.label_229:
	test	r15d, r15d
	setne	byte ptr [rip + affect_symlink_referent]
.label_238:
	mov	r14d, 0x10
	jmp	.label_241
.label_232:
	test	r15d, r15d
	je	.label_227
	mov	byte ptr [rip + affect_symlink_referent],  1
.label_241:
	mov	r15, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rip + optind]
	mov	edx, ebp
	sub	edx, ecx
	cmp	r15, 1
	mov	esi, 1
	mov	edi, 1
	adc	edi, 0
	test	r13b, r13b
	cmovne	edi, esi
	cmp	edx, edi
	jl	.label_242
	test	r15, r15
	jne	.label_247
	test	r13b, r13b
	je	.label_249
	mov	qword ptr [rip + specified_context],  0
	test	r12b, r12b
	je	.label_250
	xor	al, 1
	jne	.label_250
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rip + root_dev_ino],  rax
	test	rax, rax
	je	.label_254
	mov	ecx, dword ptr [rip + optind]
	jmp	.label_179
.label_250:
	mov	qword ptr [rip + root_dev_ino],  0
.label_179:
	movsxd	rax, ecx
	lea	rdi, [rbx + rax*8]
	or	r14d, 8
	xor	edx, edx
	mov	esi, r14d
	call	xfts_open
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r13, rax
	mov	r15b, 1
	test	r13, r13
	je	.label_192
	mov	bl, 1
	jmp	.label_193
.label_197:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	rpl_fts_set
	mov	r15b, 1
	jmp	.label_180
.label_211:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_251
.label_236:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_235
	.section	.text
	.align	16
	#Procedure 0x4032e1
	.globl sub_4032e1
	.type sub_4032e1, @function
sub_4032e1:

	nop	word ptr cs:[rax + rax]
.label_193:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	r12, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	mov	ecx, eax
	dec	ecx
	movzx	ecx, cx
	mov	r15b, 1
	cmp	ecx, 9
	ja	.label_219
	jmp	qword ptr [(rcx * 8) + label_202]
.label_1057:
	mov	r15b, 1
	cmp	byte ptr [rip + recurse],  1
	jne	.label_209
	mov	rax, qword ptr [rip + root_dev_ino]
	mov	r15b, 1
	test	rax, rax
	je	.label_180
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_180
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_180
	mov	byte ptr [rsp + 0x17], bl
	cmp	byte ptr [r12], 0x2f
	jne	.label_228
	cmp	byte ptr [r12 + 1], 0
	je	.label_236
.label_228:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_210
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_235:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	movzx	ebx, byte ptr [rsp + 0x17]
	jmp	.label_180
.label_1059:
	mov	r14d, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	jmp	.label_189
.label_1062:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_194
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_197
.label_194:
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	jmp	.label_189
.label_1058:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	cycle_warning_required
	mov	r15b, 1
	test	al, al
	je	.label_209
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_180
.label_1060:
	mov	r15b, 1
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_209
	jmp	.label_180
.label_1061:
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	esi, ebp
.label_189:
	call	error
.label_209:
	mov	ax, word ptr [r13 + 0x70]
.label_219:
	movzx	eax, ax
	cmp	eax, 6
	jne	.label_224
	test	r15b, r15b
	je	.label_224
	mov	rax, qword ptr [rip + root_dev_ino]
	test	rax, rax
	je	.label_224
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_224
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_224
	cmp	byte ptr [r12], 0x2f
	jne	.label_237
	cmp	byte ptr [r12 + 1], 0
	je	.label_211
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_210
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbp
	call	error
.label_251:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_177
	.section	.text
	.align	16
	#Procedure 0x4035f8
	.globl sub_4035f8
	.type sub_4035f8, @function
sub_4035f8:

	nop	dword ptr [rax + rax]
.label_224:
	test	r15b, r15b
	je	.label_177
	mov	byte ptr [rsp + 0x17], bl
	cmp	byte ptr [rip + verbose],  1
	jne	.label_181
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
.label_181:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x2c]
	mov	qword ptr [rsp + 0x20], 0
	mov	rbp, qword ptr [rip + specified_context]
	movzx	eax, byte ptr [rip + affect_symlink_referent]
	test	rbp, rbp
	je	.label_195
	test	al, al
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	mov	rdx, rbp
	je	.label_200
	call	setfileconat
	jmp	.label_203
.label_195:
	test	al, al
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	lea	rdx, [rsp + 0x20]
	je	.label_204
	call	getfileconat
	jmp	.label_208
.label_200:
	call	lsetfileconat
.label_203:
	test	eax, eax
	je	.label_220
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x2c], eax
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	rsi, rbp
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x2c]
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbp
	call	error
	jmp	.label_220
.label_204:
	call	lgetfileconat
.label_208:
	test	eax, eax
	jns	.label_198
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x3d
	jne	.label_222
.label_198:
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	je	.label_223
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	jmp	.label_253
.label_223:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	jmp	.label_231
.label_222:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_225
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_253:
	mov	rdx, r14
.label_231:
	call	error
.label_220:
	movzx	ebx, byte ptr [rsp + 0x17]
.label_177:
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_248
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	rpl_fts_set
.label_248:
	test	r15b, r15b
	setne	r15b
.label_180:
	and	r15b, bl
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_read
	mov	r13, rax
	test	r13, r13
	mov	ebx, r15d
	jne	.label_193
.label_192:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	je	.label_183
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_183:
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_close
	test	eax, eax
	je	.label_244
	mov	ebx, dword ptr [rbx]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_244:
	movzx	eax, r15b
	xor	eax, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_214:
	cmp	eax, 0xffffff7d
	je	.label_206
	cmp	eax, 0xffffff7e
	jne	.label_207
	xor	edi, edi
	call	usage
.label_207:
	mov	edi, 1
	call	usage
.label_206:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_255
	mov	edx, OFFSET FLAT:label_256
	mov	r8d, OFFSET FLAT:label_257
	mov	r9d, OFFSET FLAT:label_258
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_242:
	xor	edi, edi
	cmp	ecx, ebp
	jge	.label_217
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_247:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_225
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	jmp	.label_230
.label_249:
	movsxd	rax, ecx
	inc	ecx
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [rbx + rax*8]
	mov	qword ptr [rip + specified_context],  rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + specified_context]
	call	quote
.label_230:
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_254:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_210
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_217:
	mov	esi, OFFSET FLAT:label_252
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
.label_234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	jmp	.label_185
.label_227:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
.label_185:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
.label_259:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_260:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a6f
	.globl sub_403a6f
	.type sub_403a6f, @function
sub_403a6f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a70

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
	js	.label_260
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_259
	mov	dword ptr [r14], ebp
	jmp	.label_260
	.section	.text
	.align	16
	#Procedure 0x403aa0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_188
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_261
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ac5
	.globl sub_403ac5
	.type sub_403ac5, @function
sub_403ac5:

	nop	word ptr cs:[rax + rax]
.label_262:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403ad5
	.globl sub_403ad5
	.type sub_403ad5, @function
sub_403ad5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403adb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_124]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_125]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_126]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_262
	test	rdx, rdx
	je	.label_262
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b40

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
	jne	.label_264
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_271
	cmp	ecx, 0x55
	jne	.label_263
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_263
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_263
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_263
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_263
	cmp	byte ptr [rax + 5], 0
	jne	.label_263
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_268
	mov	eax, OFFSET FLAT:label_269
	jmp	.label_270
.label_271:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_263
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_263
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_263
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_263
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_263
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_263
	cmp	byte ptr [rax + 7], 0
	je	.label_265
.label_263:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_266
	mov	eax, OFFSET FLAT:label_267
.label_270:
	cmove	rax, rcx
.label_264:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_265:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_272
	mov	eax, OFFSET FLAT:label_273
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x403c05
	.globl sub_403c05
	.type sub_403c05, @function
sub_403c05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c10
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403c1a
	.globl sub_403c1a
	.type sub_403c1a, @function
sub_403c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c20

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_274
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_274:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c53
	.globl sub_403c53
	.type sub_403c53, @function
sub_403c53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c60

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
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_280
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_286
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_289]
	jbe	.label_278
	movss	xmm1, dword ptr [rip + label_277]
	ucomiss	xmm1, xmm0
	jbe	.label_278
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_284]
	jbe	.label_278
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_278
	addss	xmm1, dword ptr [rip + label_289]
	ucomiss	xmm0, xmm1
	jbe	.label_278
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_279]
	ucomiss	xmm2, xmm0
	jb	.label_278
	ucomiss	xmm0, xmm1
	jbe	.label_278
.label_286:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_281
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_288
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_275
.label_288:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_275:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_282]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_283]
	jae	.label_278
.label_281:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_285
	.section	.text
	.align	16
	#Procedure 0x403dae
	.globl sub_403dae
	.type sub_403dae, @function
sub_403dae:

	nop	
.label_290:
	add	rbx, 2
.label_285:
	cmp	rbx, -1
	je	.label_278
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_276
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_287:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_276
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_287
.label_276:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_290
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_278
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_278
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_278
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_280
.label_278:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_280:
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
	#Procedure 0x403e78
	.globl sub_403e78
	.type sub_403e78, @function
sub_403e78:

	nop	dword ptr [rax + rax]
.label_291:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e85
	.globl sub_403e85
	.type sub_403e85, @function
sub_403e85:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e8d
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
	je	.label_291
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
.label_295:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_297
	test	rax, rax
	je	.label_292
.label_297:
	pop	rbx
	ret	
.label_292:
	call	xalloc_die
.label_298:
	test	rcx, rcx
	jne	.label_294
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_294:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_293
.label_296:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_295
	test	rbx, rbx
	jne	.label_295
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f55
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_298
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_292
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_296
.label_293:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f87
	.globl sub_403f87
	.type sub_403f87, @function
sub_403f87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403fc0

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
	#Procedure 0x403fd9
	.globl sub_403fd9
	.type sub_403fd9, @function
sub_403fd9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403fe0

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_300
	call	close
.label_300:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x403ff9
	.globl sub_403ff9
	.type sub_403ff9, @function
sub_403ff9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404000

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_210
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_301
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_301:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404042
	.globl sub_404042
	.type sub_404042, @function
sub_404042:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404050

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_311
	test	dl, dl
	je	.label_320
	nop	dword ptr [rax]
.label_306:
	cmp	qword ptr [r13], 0
	je	.label_302
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_305
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_322:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_310
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_321
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_316
	.section	.text
	.align	16
	#Procedure 0x4040da
	.globl sub_4040da
	.type sub_4040da, @function
sub_4040da:

	nop	word ptr [rax + rax]
.label_321:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_316:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_322
	mov	rax, qword ptr [r15 + 8]
.label_305:
	mov	qword ptr [r13 + 8], 0
.label_302:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_306
	jmp	.label_311
	.section	.text
	.align	16
	#Procedure 0x404124
	.globl sub_404124
	.type sub_404124, @function
sub_404124:

	nop	word ptr cs:[rax + rax]
.label_320:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_319
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_318
	nop	word ptr [rax + rax]
.label_307:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_310
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_315
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_312
	.section	.text
	.align	16
	#Procedure 0x40418a
	.globl sub_40418a
	.type sub_40418a, @function
sub_40418a:

	nop	word ptr [rax + rax]
.label_315:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_312:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_307
	mov	r12, qword ptr [r13]
.label_318:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_304
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_308
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_314
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_317
	.section	.text
	.align	16
	#Procedure 0x4041f8
	.globl sub_4041f8
	.type sub_4041f8, @function
sub_4041f8:

	nop	dword ptr [rax + rax]
.label_308:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_303
.label_314:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_309
.label_317:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_303:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_319:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_320
.label_311:
	mov	al, 1
.label_313:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_309:
	xor	eax, eax
	jmp	.label_313
.label_310:
	call	abort
.label_304:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404269
	.globl sub_404269
	.type sub_404269, @function
sub_404269:

	nop	dword ptr [rax]
.label_330:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4042a8
	.globl sub_4042a8
	.type sub_4042a8, @function
sub_4042a8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b7

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_330
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_256
	mov	ecx, OFFSET FLAT:label_331
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_329
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_329
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_331
	mov	ecx, OFFSET FLAT:label_255
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_255
	mov	ecx, OFFSET FLAT:label_335
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x404520

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40452d
	.globl sub_40452d
	.type sub_40452d, @function
sub_40452d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404530

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_354
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_350
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_350
	mov	qword ptr [r13], rdi
	jmp	.label_346
.label_354:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_346:
	test	rbx, rbx
	je	.label_355
	nop	dword ptr [rax]
.label_352:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_352
	mov	rdi, qword ptr [r13]
.label_355:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_347
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_351
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_353
	mov	rdx, rsi
	jmp	.label_356
.label_350:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_349
.label_353:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_348:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_348
.label_356:
	test	rcx, rcx
	je	.label_351
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_345:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_345
.label_351:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_347:
	mov	qword ptr [rcx + 0x10], 0
.label_349:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046ae
	.globl sub_4046ae
	.type sub_4046ae, @function
sub_4046ae:

	nop	
.label_360:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_357:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_358
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_357
.label_358:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_362:
	test	rdx, rdx
	je	.label_360
	mov	rax, qword ptr [rdx]
	jmp	.label_358
	.section	.text
	.align	16
	#Procedure 0x4046ee
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_359
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_361:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_362
	test	rdx, rdx
	jne	.label_361
	jmp	.label_360
.label_359:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404733
	.globl sub_404733
	.type sub_404733, @function
sub_404733:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404740

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_363
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_372
	cvtsi2ss	xmm0, rsi
	jmp	.label_376
.label_372:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_376:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_282]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_283]
	jae	.label_371
.label_363:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_380
	.section	.text
	.align	16
	#Procedure 0x4047cb
	.globl sub_4047cb
	.type sub_4047cb, @function
sub_4047cb:

	nop	dword ptr [rax + rax]
.label_374:
	add	rbx, 2
.label_380:
	cmp	rbx, -1
	je	.label_371
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_364
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_369:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_364
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_369
.label_364:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_374
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_371
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_365
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_371
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_378
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_365
.label_378:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x4048ee
	.globl sub_4048ee
	.type sub_4048ee, @function
sub_4048ee:

	nop	
.label_367:
	add	r12, 0x10
.label_373:
	cmp	r12, r15
	jae	.label_379
	cmp	qword ptr [r12], 0
	je	.label_367
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_366
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_381:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_377
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_370
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_368
	.section	.text
	.align	16
	#Procedure 0x40495a
	.globl sub_40495a
	.type sub_40495a, @function
sub_40495a:

	nop	word ptr [rax + rax]
.label_370:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_368:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_381
.label_366:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_367
.label_379:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_375
	mov	rdi, qword ptr [rsp]
	call	free
.label_371:
	xor	ebp, ebp
.label_365:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_377:
	call	abort
.label_375:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4049ca
	.globl sub_4049ca
	.type sub_4049ca, @function
sub_4049ca:

	nop	word ptr [rax + rax]
.label_384:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049d9
	.globl sub_4049d9
	.type sub_4049d9, @function
sub_4049d9:

	nop	word ptr [rax + rax]
.label_383:
	mov	edi, eax
	call	close
.label_382:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_384
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_383
	jmp	.label_382
.label_387:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_386
	mov	edi, eax
	call	close
.label_386:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_388:
	xor	eax, eax
.label_385:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_382
	.section	.text
	.align	16
	#Procedure 0x404a29
	.globl sub_404a29
	.type sub_404a29, @function
sub_404a29:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a2f

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_388
	test	ah, 2
	jne	.label_387
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_385
.label_389:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a55
	.globl sub_404a55
	.type sub_404a55, @function
sub_404a55:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a5d

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
	je	.label_389
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
	.section	.text
	.align	16
	#Procedure 0x404ac0

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
	ja	.label_393
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_392
.label_393:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_392:
	mov	ecx, dword ptr [rax]
.label_391:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b7e
	.globl sub_404b7e
	.type sub_404b7e, @function
sub_404b7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b80
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b85
	.globl sub_404b85
	.type sub_404b85, @function
sub_404b85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_394
	test	rax, rax
	je	.label_395
.label_394:
	pop	rbx
	ret	
.label_395:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404baa
	.globl sub_404baa
	.type sub_404baa, @function
sub_404baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0
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
	#Procedure 0x404bbf
	.globl sub_404bbf
	.type sub_404bbf, @function
sub_404bbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404bc0
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
	#Procedure 0x404bd8
	.globl sub_404bd8
	.type sub_404bd8, @function
sub_404bd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404be0

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
	.align	16
	#Procedure 0x404c08
	.globl sub_404c08
	.type sub_404c08, @function
sub_404c08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_396
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_396
	test	byte ptr [rbx + 1], 1
	je	.label_396
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_396:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404c43
	.globl sub_404c43
	.type sub_404c43, @function
sub_404c43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_398
	cmp	byte ptr [rax], 0x43
	jne	.label_400
	cmp	byte ptr [rax + 1], 0
	je	.label_397
.label_400:
	mov	esi, OFFSET FLAT:label_399
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_398
.label_397:
	xor	ebx, ebx
.label_398:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c81
	.globl sub_404c81
	.type sub_404c81, @function
sub_404c81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ca0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_401
	xor	eax, eax
.label_403:
	cmp	qword ptr [r9], 0
	je	.label_402
	test	r9, r9
	je	.label_402
	mov	r8, r9
	nop	
.label_404:
	cmp	rax, rdx
	jae	.label_401
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_404
	mov	r8, qword ptr [rdi + 8]
.label_402:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_403
.label_401:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ce6
	.globl sub_404ce6
	.type sub_404ce6, @function
sub_404ce6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404cfa
	.globl sub_404cfa
	.type sub_404cfa, @function
sub_404cfa:

	nop	word ptr [rax + rax]
.label_407:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_405
	cmp	qword ptr [rax + 0x58], 0
	js	.label_405
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_406
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_405
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_405
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_405:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d48

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_407
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_406
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_406:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d82
	.globl sub_404d82
	.type sub_404d82, @function
sub_404d82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d90
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d95
	.globl sub_404d95
	.type sub_404d95, @function
sub_404d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_408]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x404db4
	.globl sub_404db4
	.type sub_404db4, @function
sub_404db4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

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
	jne	.label_409
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_409
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_410
.label_409:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_410:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_411
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_411:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e2e
	.globl sub_404e2e
	.type sub_404e2e, @function
sub_404e2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404e30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_124]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_125]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_126]
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
	#Procedure 0x404e84
	.globl sub_404e84
	.type sub_404e84, @function
sub_404e84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e90
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_124]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_125]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_126]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_412
	test	rdx, rdx
	je	.label_412
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_412:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404efe
	.globl sub_404efe
	.type sub_404efe, @function
sub_404efe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404f00
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_414
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_256
	mov	ecx, OFFSET FLAT:label_331
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404f74
	.globl sub_404f74
	.type sub_404f74, @function
sub_404f74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f80
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_417
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_420
	.section	.text
	.align	16
	#Procedure 0x404f92
	.globl sub_404f92
	.type sub_404f92, @function
sub_404f92:

	nop	word ptr cs:[rax + rax]
.label_419:
	add	rcx, 0x10
.label_420:
	cmp	rcx, rdx
	jae	.label_418
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_419
.label_417:
	ret	
.label_418:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404fb8
	.globl sub_404fb8
	.type sub_404fb8, @function
sub_404fb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0
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
	#Procedure 0x404fd8
	.globl sub_404fd8
	.type sub_404fd8, @function
sub_404fd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

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
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_421
	mov	eax, ebx
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_421
	test	bl, 0x12
	je	.label_421
	mov	edi, 0x80
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_424
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	or	eax, 4
	test	bl, 2
	cmove	eax, ebx
	mov	dword ptr [r15 + 0x48], eax
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_431
	mov	r13d, ebx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_448:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_448
	inc	rbp
	mov	ebx, r13d
.label_431:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_454
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	r13, qword ptr [r12]
	xor	r12d, r12d
	test	r13, r13
	je	.label_458
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_423
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_458:
	mov	byte ptr [rsp + 0xf], 1
	mov	qword ptr [rsp + 0x28], r14
	test	r14, r14
	je	.label_441
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_441:
	xor	r14d, r14d
	test	r13, r13
	je	.label_445
	test	bh, 8
	mov	qword ptr [rsp + 0x18], r12
	jne	.label_449
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_422:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	cmp	rbx, 3
	jb	.label_433
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	jne	.label_433
	nop	dword ptr [rax]
.label_457:
	cmp	byte ptr [r13 + rbx - 2], 0x2f
	jne	.label_433
	dec	rbx
	cmp	rbx, 1
	ja	.label_457
	nop	word ptr cs:[rax + rax]
.label_433:
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r15, rax
	mov	r14, rbp
	test	r15, r15
	je	.label_425
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	dword ptr [r15 + 0x40], 0
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	mov	rbx, r14
	test	rbx, rbx
	setne	al
	test	byte ptr [rsp + 0xf], al
	je	.label_432
	mov	word ptr [r15 + 0x70], 0xb
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_447
.label_432:
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_447:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_451
	mov	r14, r15
	mov	qword ptr [r15 + 0x10], rbx
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_427
.label_451:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_427
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r15
	mov	r14, rbx
.label_427:
	inc	r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	mov	rbp, r14
	jne	.label_422
	jmp	.label_450
.label_421:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_455:
	xor	eax, eax
.label_424:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_454:
	mov	rdi, qword ptr [r15 + 0x20]
	jmp	.label_438
.label_449:
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r12d, r12d
	nop	
.label_434:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_439
	mov	r14, rbx
	add	r14, 0x108
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_443
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_459
.label_443:
	xor	edx, edx
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_459:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_426
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_430
.label_426:
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	mov	r14, rbx
	je	.label_430
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbx
	mov	r14, r15
.label_430:
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + r12*8 + 8]
	inc	r12
	test	r13, r13
	mov	r15, r14
	jne	.label_434
.label_450:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_436
	cmp	r12, 2
	jb	.label_436
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r12
	call	fts_sort
	mov	r14, rax
.label_436:
	mov	r12, qword ptr [rsp + 0x18]
.label_445:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_440
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], r15
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	mov	qword ptr [rax + 0x10], r14
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_446
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_428
	jmp	.label_429
.label_423:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_456
.label_440:
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [r15], 0
	jmp	.label_429
.label_446:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	je	.label_429
	mov	rdi, rax
	call	cycle_check_init
.label_428:
	mov	eax, dword ptr [r15 + 0x48]
	test	ax, 0x204
	jne	.label_435
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_437
	mov	edi, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_442
.label_439:
	mov	r14, r15
.label_425:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x18]
.label_429:
	test	r14, r14
	je	.label_444
	nop	dword ptr [rax]
.label_452:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_453
	call	closedir
.label_453:
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_452
.label_444:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [r15 + 0x20]
.label_456:
	mov	rdi, rbp
.label_438:
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_455
.label_437:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:label_15
	xor	eax, eax
	call	openat_safer
.label_442:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_435
	or	byte ptr [r15 + 0x48], 4
.label_435:
	mov	rdi, r15
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r15
	jmp	.label_424
	.section	.text
	.align	16
	#Procedure 0x405619
	.globl sub_405619
	.type sub_405619, @function
sub_405619:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405620
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_460
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_461:
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
	jne	.label_461
.label_460:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405653
	.globl sub_405653
	.type sub_405653, @function
sub_405653:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660

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
	je	.label_462
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_463
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
	je	.label_464
.label_463:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_467
	mov	rax, qword ptr [rax + 8]
	jmp	.label_462
.label_467:
	mov	r12b, 1
	mov	r14, rbp
.label_464:
	xor	eax, eax
	test	r15d, r15d
	js	.label_462
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_462
	test	r12b, r12b
	je	.label_465
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_465
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_466
	cmp	rax, rbp
	je	.label_465
	call	abort
.label_466:
	mov	rdi, rbp
	call	free
.label_465:
	mov	rax, qword ptr [rsp]
.label_462:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40575a
	.globl sub_40575a
	.type sub_40575a, @function
sub_40575a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405760

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40576c
	.globl sub_40576c
	.type sub_40576c, @function
sub_40576c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405770
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_474
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_477
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_476:
	cmp	qword ptr [rax], 0
	je	.label_468
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_471:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_471
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_468:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_470
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_472:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_472
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_470:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_476
.label_477:
	test	r8, r8
	je	.label_474
	cmp	qword ptr [rax], 0
	je	.label_474
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_469:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_469
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_474:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_475
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_473
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_479]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_480]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_481]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_482
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_478
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x4058df
	.globl sub_4058df
	.type sub_4058df, @function
sub_4058df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4058e0

	.globl getfileconat
	.type getfileconat, @function
getfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_486
	cmp	byte ptr [rax], 0x2f
	jne	.label_490
.label_486:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_485:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_484:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_490:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_483
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_483
	mov	rdi, r14
	call	free
.label_483:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_484
	test	ebx, ebx
	js	.label_488
	cmp	dword ptr [rsp], ebx
	jne	.label_488
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_485
.label_487:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	.section	.text
	.align	16
	#Procedure 0x40598a
	.globl sub_40598a
	.type sub_40598a, @function
sub_40598a:

	nop	dword ptr [rax + rax]
.label_489:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_487
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_485
.label_488:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_489
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_485
	.section	.text
	.align	16
	#Procedure 0x4059e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_124]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_125]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_126]
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
	#Procedure 0x405a4e
	.globl sub_405a4e
	.type sub_405a4e, @function
sub_405a4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405a50

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a57
	.globl sub_405a57
	.type sub_405a57, @function
sub_405a57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a68
	.globl sub_405a68
	.type sub_405a68, @function
sub_405a68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a70

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:label_15
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_491
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_491:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ab3
	.globl sub_405ab3
	.type sub_405ab3, @function
sub_405ab3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ac0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_492
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_494
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_492
.label_494:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_492
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_493
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_493:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_492:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x405b34
	.globl sub_405b34
	.type sub_405b34, @function
sub_405b34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b48
	.globl sub_405b48
	.type sub_405b48, @function
sub_405b48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_124]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_125]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_126]
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
	#Procedure 0x405ba5
	.globl sub_405ba5
	.type sub_405ba5, @function
sub_405ba5:

	nop	word ptr cs:[rax + rax]
.label_495:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bb3
	.globl sub_405bb3
	.type sub_405bb3, @function
sub_405bb3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bbc

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_495
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bd0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x405be0

	.globl setfileconat
	.type setfileconat, @function
setfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_501
	cmp	byte ptr [rax], 0x2f
	jne	.label_503
.label_501:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_499:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_503:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_502
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_502
	mov	rdi, r14
	call	free
.label_502:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_498
	test	ebx, ebx
	js	.label_500
	cmp	dword ptr [rsp], ebx
	jne	.label_500
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_499
.label_498:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_500:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_497
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_499
.label_496:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	.section	.text
	.align	16
	#Procedure 0x405cb1
	.globl sub_405cb1
	.type sub_405cb1, @function
sub_405cb1:

	nop	dword ptr [rax + rax]
.label_497:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_496
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_499
	.section	.text
	.align	16
	#Procedure 0x405ce0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_504
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_506
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_508
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_506
	mov	esi, OFFSET FLAT:label_507
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_509
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_509:
	mov	rbx, r14
.label_506:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_504:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_505
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405d81
	.globl sub_405d81
	.type sub_405d81, @function
sub_405d81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d90

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
	je	.label_510
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_510:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dbc
	.globl sub_405dbc
	.type sub_405dbc, @function
sub_405dbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405dc0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_511
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_515
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_521:
	cmp	qword ptr [rax], 0
	je	.label_512
	mov	rdx, rax
	nop	dword ptr [rax]
.label_514:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_514
	inc	r10
.label_512:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_516
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_519:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_519
	inc	r10
.label_516:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_521
	jmp	.label_513
.label_515:
	xor	r10d, r10d
.label_513:
	test	r8, r8
	je	.label_511
	cmp	qword ptr [rax], 0
	je	.label_511
	nop	dword ptr [rax]
.label_517:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_517
	inc	r10
.label_511:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_518
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_520
.label_518:
	xor	eax, eax
.label_520:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e80

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_522
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_523
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_523
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_524
.label_523:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_525
	mov	al, 1
	test	rdx, rdx
	je	.label_524
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_525:
	xor	eax, eax
.label_524:
	ret	
.label_522:
	push	rax
	mov	edi, OFFSET FLAT:label_526
	mov	esi, OFFSET FLAT:label_527
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_528
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405ee5
	.globl sub_405ee5
	.type sub_405ee5, @function
sub_405ee5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ef4
	.globl sub_405ef4
	.type sub_405ef4, @function
sub_405ef4:

	nop	word ptr cs:[rax + rax]
.label_529:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f07
	.globl sub_405f07
	.type sub_405f07, @function
sub_405f07:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f15

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_529
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f30

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, esi
	mov	r15, rdi
	mov	r13, qword ptr [r15]
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp + 0x70], rdi
	je	.label_572
	call	dirfd
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	js	.label_583
	mov	dword ptr [rsp], ebx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	lea	rbp, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_552
.label_572:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_593
	mov	edi, dword ptr [r15 + 0x2c]
.label_593:
	mov	rsi, qword ptr [r13 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_597
	test	al, 1
	je	.label_598
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_597
.label_598:
	mov	edx, 0x20000
.label_597:
	lea	rcx, [rsp + 4]
	call	opendirat
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_604
	mov	dword ptr [rsp], ebx
	lea	rcx, [r15 + 0x48]
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 0xb
	mov	rbp, r13
	mov	r12, rcx
	jne	.label_605
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rbx, rbp
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_531
.label_583:
	mov	rdi, qword ptr [r13 + 0x18]
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
.label_604:
	xor	r14d, r14d
	cmp	ebx, 3
	jne	.label_534
	mov	word ptr [r13 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r13 + 0x40], eax
	jmp	.label_538
.label_605:
	mov	rbx, rbp
	test	byte ptr [rcx + 1], 1
	je	.label_531
	mov	rdi, r15
	mov	rbp, rbx
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_554
	mov	edi, 0x18
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_549
	mov	rax, rbx
	movups	xmm0, xmmword ptr [rax + 0x78]
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x58]
	mov	rsi, rbp
	call	hash_insert
	mov	r14, rax
	cmp	r14, rbp
	je	.label_531
	mov	rdi, rbp
	call	free
	test	r14, r14
	je	.label_549
	mov	rax, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	mov	qword ptr [rcx], rax
	mov	word ptr [rcx + 0x70], 2
	jmp	.label_531
.label_554:
	mov	rdi, qword ptr [r15 + 0x58]
	lea	rsi, [rbp + 0x78]
	call	cycle_check
	test	al, al
	je	.label_531
	mov	rax, rbx
	mov	qword ptr [rax], rax
	mov	word ptr [rax + 0x70], 2
.label_531:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	cmp	dword ptr [rsp], 2
	mov	r13, rbx
	mov	rbp, r12
	je	.label_560
	mov	eax, dword ptr [rbp]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_569
	cmp	qword ptr [r13 + 0x88], 2
	jne	.label_569
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, r13
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_577
	cmp	rax, 0x9fa0
	je	.label_569
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_569
	cmp	rax, 0x5346414f
	je	.label_569
	jmp	.label_560
.label_549:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_538
.label_577:
	test	rax, rax
	je	.label_569
	cmp	rax, 0x6969
	jne	.label_560
.label_569:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14b, 1
	jmp	.label_590
.label_560:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14d, 0
	jne	.label_591
.label_590:
	mov	r15, r13
	test	byte ptr [rbp + 1], 2
	mov	ebp, dword ptr [rsp + 4]
	je	.label_594
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
.label_594:
	test	ebp, ebp
	js	.label_599
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_574
.label_599:
	and	bl, r14b
	cmp	bl, 1
	jne	.label_586
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_586:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	rbp, r12
	mov	eax, dword ptr [rbp]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_530
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_530
	call	close
.label_530:
	mov	r13, rbx
	mov	qword ptr [r13 + 0x18], 0
.label_591:
	mov	dword ptr [rsp + 0xc], 0
.label_552:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r13 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	byte ptr [rbp], 4
	je	.label_539
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x20], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_539:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x38], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x78], rcx
	mov	rax, qword ptr [r13 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x88], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x80], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	dword ptr [rsp + 8], 0
	xor	eax, eax
	xor	r14d, r14d
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x30], r13
.label_544:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	je	.label_542
	mov	qword ptr [rsp + 0x90], rax
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_578:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_565
	mov	rcx, r13
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_558
	cmp	byte ptr [r13], 0x2e
	jne	.label_558
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_571
	test	al, al
	je	.label_573
	jmp	.label_558
	.section	.text
	.align	16
	#Procedure 0x406339
	.globl sub_406339
	.type sub_406339, @function
sub_406339:

	nop	dword ptr [rax]
.label_571:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_558
.label_573:
	mov	r13, rcx
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_578
	jmp	.label_581
	.section	.text
	.align	16
	#Procedure 0x406358
	.globl sub_406358
	.type sub_406358, @function
sub_406358:

	nop	dword ptr [rax + rax]
.label_558:
	mov	qword ptr [rsp + 0x50], r12
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_563
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x68], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x78]
	cmp	rbx, rax
	jae	.label_595
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_607
	.section	.text
	.align	16
	#Procedure 0x406408
	.globl sub_406408
	.type sub_406408, @function
sub_406408:

	nop	dword ptr [rax + rax]
.label_595:
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_533
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_537
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_585
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	test	byte ptr [rbp], 4
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_540
.label_585:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
.label_540:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
.label_607:
	add	rbx, rdx
	mov	r13, rbp
	jb	.label_547
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbp], 4
	jne	.label_550
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_555
	.section	.text
	.align	16
	#Procedure 0x4064cf
	.globl sub_4064cf
	.type sub_4064cf, @function
sub_4064cf:

	nop	
.label_550:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x68]
	call	memmove
	mov	rbp, r13
.label_555:
	mov	edx, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	je	.label_532
	mov	eax, edx
	and	eax, 0x400
	jne	.label_532
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	rbp, r13
	mov	word ptr [r12 + 0x70], ax
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_568
	.section	.text
	.align	16
	#Procedure 0x406528
	.globl sub_406528
	.type sub_406528, @function
sub_406528:

	nop	dword ptr [rax + rax]
.label_532:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_557
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_557:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	r14, qword ptr [rsp + 0x40]
	ja	.label_580
	mov	eax, dword ptr [(rcx * 4) + label_570]
.label_580:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_568:
	mov	qword ptr [r12 + 0x10], 0
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	mov	rax, r12
	je	.label_543
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rcx
.label_543:
	mov	rbx, rax
	cmp	r14, 0x2710
	jne	.label_535
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_535
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, qword ptr [rsp + 0x30]
	call	filesystem_type
	cmp	rax, 0x6969
	je	.label_601
	cmp	rax, 0x1021994
	je	.label_601
	mov	dword ptr [rsp + 8], 0
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	mov	rbp, r13
	je	.label_535
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	jmp	.label_535
.label_601:
	mov	dword ptr [rsp + 8], 0
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_535:
	inc	r14
	cmp	qword ptr [rsp + 0x58], r14
	mov	rax, r12
	mov	r13, qword ptr [rsp + 0x30]
	mov	r12, rbx
	ja	.label_544
	jmp	.label_542
.label_565:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x40]
	je	.label_564
	mov	dword ptr [r13 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x70]
	or	rax, r14
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r13 + 0x70], cx
.label_564:
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_542
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
	jmp	.label_542
.label_581:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x40]
.label_542:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_546
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_548
	.section	.text
	.align	16
	#Procedure 0x406692
	.globl sub_406692
	.type sub_406692, @function
sub_406692:

	nop	word ptr cs:[rax + rax]
.label_553:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_548:
	test	rcx, rcx
	je	.label_551
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_553
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_553
.label_551:
	cmp	qword ptr [r12 + 0x58], 0
	js	.label_546
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_566:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_559
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_559:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_562
	mov	rdx, qword ptr [rcx + 8]
.label_562:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_566
.label_546:
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_567
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	r14, r14
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_567:
	cmp	qword ptr [rsp + 0x70], 0
	jne	.label_575
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_575
	cmp	dword ptr [rsp], 1
	je	.label_582
	test	r14, r14
	jne	.label_575
.label_582:
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_584
	mov	rsi, qword ptr [r13 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_32
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_588
.label_584:
	mov	rdi, r15
	call	restore_initial_cwd
.label_588:
	mov	rcx, rbp
	test	eax, eax
	je	.label_575
	mov	word ptr [r13 + 0x70], 7
	or	byte ptr [rcx + 1], 0x20
	xor	r14d, r14d
	test	r12, r12
	je	.label_534
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_600:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_596
	call	closedir
.label_596:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_600
	jmp	.label_534
.label_575:
	test	r14, r14
	je	.label_602
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_603
	cmp	r14, 2
	jb	.label_606
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_606
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	jmp	.label_534
.label_602:
	cmp	dword ptr [rsp], 3
	jne	.label_536
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 4
	je	.label_536
	movzx	eax, ax
	cmp	eax, 7
	je	.label_536
	mov	word ptr [r13 + 0x70], 6
.label_536:
	xor	r14d, r14d
	test	r12, r12
	je	.label_534
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_545:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_541
	call	closedir
.label_541:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_545
	jmp	.label_534
.label_603:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	mov	qword ptr [rbx], 0
	jmp	.label_534
.label_606:
	mov	r14, r12
	jmp	.label_534
.label_574:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	r13, rax
	jmp	.label_552
.label_547:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_556
	nop	word ptr [rax + rax]
.label_561:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_576
	call	closedir
.label_576:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_561
.label_556:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [r13 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_538
.label_533:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_579
.label_537:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_579:
	mov	qword ptr [rsp + 0x48], r12
.label_563:
	mov	r12, qword ptr [rsp + 0x30]
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_587
	nop	word ptr cs:[rax + rax]
.label_592:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_589
	call	closedir
.label_589:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_592
.label_587:
	mov	rbx, r12
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x28]
	or	byte ptr [rax + 1], 0x20
	mov	dword ptr [r15], r14d
.label_538:
	xor	r14d, r14d
.label_534:
	mov	rax, r14
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069e0
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
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_608
	xor	ebx, ebx
.label_612:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_610
	test	r13, r13
	je	.label_610
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_608
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_609:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_611
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_609
	jmp	.label_608
	.section	.text
	.align	16
	#Procedure 0x406a4c
	.globl sub_406a4c
	.type sub_406a4c, @function
sub_406a4c:

	nop	dword ptr [rax]
.label_611:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_610:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_612
.label_608:
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
	.align	16
	#Procedure 0x406a73
	.globl sub_406a73
	.type sub_406a73, @function
sub_406a73:

	nop	word ptr cs:[rax + rax]
.label_614:
	add	r15, 0x10
.label_618:
	cmp	r15, rax
	jae	.label_613
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_614
	nop	word ptr cs:[rax + rax]
.label_615:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_615
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_614
.label_613:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_617
.label_616:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_616
.label_617:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x406ae6
	.globl sub_406ae6
	.type sub_406ae6, @function
sub_406ae6:

	nop	word ptr cs:[rax + rax]
.label_619:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_618
	.section	.text
	.align	16
	#Procedure 0x406af9
	.globl sub_406af9
	.type sub_406af9, @function
sub_406af9:

	nop	
.label_620:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_622:
	test	rbx, rbx
	jne	.label_620
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_621
	.section	.text
	.align	16
	#Procedure 0x406b10

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_619
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_619
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_623
	.section	.text
	.align	16
	#Procedure 0x406b2f
	.globl sub_406b2f
	.type sub_406b2f, @function
sub_406b2f:

	nop	
.label_621:
	add	r15, 0x10
.label_623:
	cmp	r15, rax
	jae	.label_619
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_621
	test	r15, r15
	je	.label_621
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_622
	.section	.text
	.align	16
	#Procedure 0x406b50
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_124]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_125]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_126]
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
	#Procedure 0x406bbf
	.globl sub_406bbf
	.type sub_406bbf, @function
sub_406bbf:

	nop	
.label_624:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406bc5
	.globl sub_406bc5
	.type sub_406bc5, @function
sub_406bc5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406bc9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_124]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_125]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_126]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_624
	test	rsi, rsi
	je	.label_624
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
	.section	.text
	.align	16
	#Procedure 0x406c30

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_625
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_625:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_626
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_628
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_627
.label_628:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_627:
	mov	edx, dword ptr [rax]
.label_626:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x406cf4
	.globl sub_406cf4
	.type sub_406cf4, @function
sub_406cf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d00
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
	je	.label_629
	mov	qword ptr [rax], rbx
.label_629:
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
	#Procedure 0x406dec
	.globl sub_406dec
	.type sub_406dec, @function
sub_406dec:

	nop	dword ptr [rax]
.label_632:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_630
	test	rax, rax
	je	.label_631
.label_630:
	pop	rbx
	ret	
.label_631:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406e09

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_632
	test	rbx, rbx
	jne	.label_632
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e20

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_639
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_637
	nop	word ptr cs:[rax + rax]
.label_651:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_644
	mov	rbx, qword ptr [rdi + 8]
.label_644:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_651
	jmp	.label_647
.label_637:
	mov	rbx, rdi
.label_647:
	mov	rdi, rbx
	call	free
.label_639:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_649
	nop	word ptr cs:[rax + rax]
.label_636:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_633
	call	closedir
.label_633:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_636
.label_649:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_641
	xor	ebp, ebp
	test	al, 4
	jne	.label_642
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_646
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_646:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_648
	jmp	.label_642
.label_641:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_642
	call	close
.label_648:
	test	eax, eax
	je	.label_642
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_642:
	lea	rbx, [r14 + 0x60]
	jmp	.label_634
	.section	.text
	.align	16
	#Procedure 0x406f08
	.globl sub_406f08
	.type sub_406f08, @function
sub_406f08:

	nop	dword ptr [rax + rax]
.label_635:
	mov	edi, eax
	call	close
.label_634:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_638
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_635
	jmp	.label_634
.label_638:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_640
	call	hash_free
.label_640:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_643
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_645
	call	hash_free
	jmp	.label_645
.label_643:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_645:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_650
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_650:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f82
	.globl sub_406f82
	.type sub_406f82, @function
sub_406f82:

	nop	word ptr cs:[rax + rax]
.label_652:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406f95
	.globl sub_406f95
	.type sub_406f95, @function
sub_406f95:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f99

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
	je	.label_653
	test	r15, r15
	je	.label_652
.label_653:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406fd0
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
	#Procedure 0x407091
	.globl sub_407091
	.type sub_407091, @function
sub_407091:

	nop	word ptr cs:[rax + rax]
.label_656:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_654
	test	rax, rax
	je	.label_655
.label_654:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070b4
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_655
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_656
	test	rbx, rbx
	jne	.label_656
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_655:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4070e8
	.globl sub_4070e8
	.type sub_4070e8, @function
sub_4070e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x407101
	.globl sub_407101
	.type sub_407101, @function
sub_407101:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407110

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
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_660
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_657
	add	rbx, rax
	je	.label_657
	cmp	rsi, r12
	je	.label_659
	xor	r15d, r15d
	nop	
.label_658:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_661
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_657
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_658
.label_659:
	mov	r15, r12
	jmp	.label_657
.label_661:
	mov	r15, qword ptr [rbx]
.label_657:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_660:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407188
	.globl sub_407188
	.type sub_407188, @function
sub_407188:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407190

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	call	chdir
	mov	ebx, eax
	test	ebx, ebx
	je	.label_676
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	jne	.label_681
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
	test	r15, r15
	je	.label_685
	cmp	r15, 0x1000
	jb	.label_688
	add	r15, rbp
	mov	rbx, -1
	nop	word ptr [rax + rax]
.label_694:
	cmp	byte ptr [rbp + rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_694
	mov	r12d, 0xffffff9c
	test	rbx, rbx
	je	.label_696
	cmp	rbx, 2
	jne	.label_668
	lea	rdi, [rbp + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_687
	mov	byte ptr [rbx], 0
	mov	edi, 0xffffff9c
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	mov	byte ptr [rbx], 0x2f
	js	.label_667
	nop	word ptr cs:[rax + rax]
.label_691:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_691
	jmp	.label_692
.label_676:
	xor	ebx, ebx
	jmp	.label_681
.label_668:
	mov	edi, 0xffffff9c
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_667
	add	rbp, rbx
.label_696:
	mov	rbx, rbp
.label_692:
	cmp	byte ptr [rbx], 0x2f
	je	.label_674
	cmp	rbx, r15
	jbe	.label_678
	mov	edi, OFFSET FLAT:label_680
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:label_664
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4072c6
	.globl sub_4072c6
	.type sub_4072c6, @function
sub_4072c6:

	nop	word ptr cs:[rax + rax]
.label_686:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, rbx
	call	memrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_687
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_693
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_673
	test	r12d, r12d
	js	.label_684
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_666
.label_684:
	mov	r12d, ebx
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	
.label_683:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_683
.label_678:
	mov	rax, r15
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_686
	cmp	rbx, r15
	jae	.label_690
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_677
	test	r12d, r12d
	js	.label_665
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_665
	jmp	.label_666
.label_687:
	mov	dword ptr [r14], 0x24
	jmp	.label_671
.label_690:
	mov	ebx, r12d
.label_665:
	mov	edi, ebx
	call	fchdir
	test	eax, eax
	je	.label_675
	mov	r12d, ebx
	jmp	.label_677
.label_667:
	mov	ebx, dword ptr [r14]
	jmp	.label_679
.label_675:
	test	ebx, ebx
	js	.label_672
	mov	edi, ebx
	call	close
	test	eax, eax
	mov	ebx, 0
	je	.label_681
	jmp	.label_666
.label_673:
	mov	byte ptr [rbp], 0x2f
.label_677:
	mov	ebx, dword ptr [r14]
	test	r12d, r12d
	js	.label_679
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_666
.label_679:
	mov	dword ptr [r14], ebx
.label_671:
	mov	ebx, 0xffffffff
.label_681:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_672:
	xor	ebx, ebx
	jmp	.label_681
.label_693:
	mov	edi, OFFSET FLAT:label_695
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_664
	call	__assert_fail
.label_666:
	mov	edi, OFFSET FLAT:label_669
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:label_670
	call	__assert_fail
.label_685:
	mov	edi, OFFSET FLAT:label_689
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_664
	call	__assert_fail
.label_688:
	mov	edi, OFFSET FLAT:label_682
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:label_664
	call	__assert_fail
.label_674:
	mov	edi, OFFSET FLAT:label_662
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:label_664
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40746f
	.globl sub_40746f
	.type sub_40746f, @function
sub_40746f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407470

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407493
	.globl sub_407493
	.type sub_407493, @function
sub_407493:

	nop	word ptr cs:[rax + rax]
.label_698:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_697:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4074b0
	.globl sub_4074b0
	.type sub_4074b0, @function
sub_4074b0:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4074b1

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_697
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_698
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_699:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4074d5
	.globl sub_4074d5
	.type sub_4074d5, @function
sub_4074d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_699
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_700
	test	rax, rax
	je	.label_699
.label_700:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407510

	.globl openat_save_fail
	.type openat_save_fail, @function
openat_save_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_701
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407542
	.globl sub_407542
	.type sub_407542, @function
sub_407542:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407550

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_702
	test	rsi, rsi
	mov	ecx, 1
	je	.label_703
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_703
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_702:
	mov	ecx, 1
.label_703:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40759b
	.globl sub_40759b
	.type sub_40759b, @function
sub_40759b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075a0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_714
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_706
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_717
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_706
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_706
.label_714:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_706
.label_717:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_711
	nop	dword ptr [rax]
.label_719:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_718
	call	closedir
.label_718:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_719
.label_711:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_704
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_704:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_713
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_713
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_713
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_707
	mov	edi, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_716
.label_713:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_706:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_707:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_15
	xor	eax, eax
	call	openat_safer
.label_716:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_709
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_712
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_715
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_706
.label_709:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_706
.label_712:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_708
	cmp	esi, -0x64
	jne	.label_710
.label_708:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_720
	mov	edi, eax
	call	close
.label_720:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_705
.label_715:
	mov	edi, r15d
	call	close
.label_705:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_706
.label_710:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407747
	.globl sub_407747
	.type sub_407747, @function
sub_407747:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407750

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_722
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_728
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_726
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_731
	mov	r14, qword ptr [r13]
.label_726:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_734
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_730
.label_731:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_728
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_721:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_739
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_741
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_721
	jmp	.label_728
.label_734:
	mov	qword ptr [r13], 0
	jmp	.label_730
.label_739:
	mov	rcx, rax
	jmp	.label_733
.label_741:
	mov	r14, qword ptr [rcx]
.label_733:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_730:
	xor	r12d, r12d
	test	r14, r14
	je	.label_728
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_729
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_736
	cvtsi2ss	xmm1, rax
	jmp	.label_740
.label_736:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_740:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_725
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_732
.label_725:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_732:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_729
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_737
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_289]
	jbe	.label_723
	movss	xmm4, dword ptr [rip + label_277]
	ucomiss	xmm4, xmm3
	jbe	.label_723
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_723
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_284]
	jbe	.label_723
	movss	xmm4, dword ptr [rip + label_289]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_723
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_279]
	ucomiss	xmm5, xmm3
	jb	.label_723
	ucomiss	xmm3, xmm4
	ja	.label_727
.label_723:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_727
.label_737:
	mov	eax, OFFSET FLAT:default_tuning
.label_727:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_729
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_738
	mulss	xmm0, dword ptr [rax + 8]
.label_738:
	movss	xmm1, dword ptr [rip + label_282]
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
	jne	.label_729
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_724
	nop	word ptr cs:[rax + rax]
.label_735:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_735
.label_724:
	mov	qword ptr [r15 + 0x48], 0
.label_729:
	mov	r12, r14
.label_728:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_722:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4079e3
	.globl sub_4079e3
	.type sub_4079e3, @function
sub_4079e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079f0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_767
	.section	.text
	.align	16
	#Procedure 0x407a9f
	.globl sub_407a9f
	.type sub_407a9f, @function
sub_407a9f:

	nop	
.label_813:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_749
	or	al, dl
	jne	.label_749
	test	dil, 1
	jne	.label_811
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_749
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_767
	jmp	.label_749
.label_1079:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_817
	test	rbp, rbp
	je	.label_820
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_820:
	mov	r14d, 1
	jmp	.label_823
.label_1080:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_266
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_762
.label_817:
	xor	r14d, r14d
.label_823:
	mov	eax, OFFSET FLAT:label_266
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_829
	.section	.text
	.align	16
	#Procedure 0x407b6f
	.globl sub_407b6f
	.type sub_407b6f, @function
sub_407b6f:

	nop	
.label_767:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_837
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_844]
.label_1081:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_851
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_267
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1082:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_853
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_853
	xor	r14d, r14d
	nop	
.label_750:
	cmp	r14, rbp
	jae	.label_742
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_742:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_750
.label_853:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_762
.label_1074:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_762
.label_1077:
	mov	al, 1
.label_1075:
	mov	r12b, 1
.label_1078:
	test	r12b, 1
	mov	cl, 1
	je	.label_781
	mov	ecx, eax
.label_781:
	mov	al, cl
.label_1076:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_785
	test	rbp, rbp
	je	.label_790
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_790:
	mov	r14d, 1
	jmp	.label_795
.label_785:
	xor	r14d, r14d
.label_795:
	mov	ecx, OFFSET FLAT:label_267
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_829:
	mov	sil, r12b
.label_762:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_803
	.section	.text
	.align	16
	#Procedure 0x407d31
	.globl sub_407d31
	.type sub_407d31, @function
sub_407d31:

	nop	word ptr cs:[rax + rax]
.label_788:
	inc	r12
.label_803:
	cmp	r11, -1
	je	.label_825
	cmp	r12, r11
	jne	.label_857
	jmp	.label_828
	.section	.text
	.align	16
	#Procedure 0x407d53
	.globl sub_407d53
	.type sub_407d53, @function
sub_407d53:

	nop	word ptr cs:[rax + rax]
.label_825:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_768
.label_857:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_839
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_760
	cmp	r11, -1
	jne	.label_760
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_760:
	cmp	rbx, r11
	jbe	.label_855
.label_839:
	xor	esi, esi
.label_754:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_856
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_860]
.label_987:
	test	r12, r12
	jne	.label_745
	jmp	.label_780
	.section	.text
	.align	16
	#Procedure 0x407de6
	.globl sub_407de6
	.type sub_407de6, @function
sub_407de6:

	nop	word ptr cs:[rax + rax]
.label_855:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_748
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_754
	jmp	.label_791
.label_748:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_754
.label_991:
	xor	eax, eax
	cmp	r11, -1
	je	.label_773
	test	r12, r12
	jne	.label_778
	cmp	r11, 1
	je	.label_780
	xor	r13d, r13d
	jmp	.label_746
.label_980:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_787
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_791
	cmp	r8d, 2
	jne	.label_797
	mov	eax, r9d
	and	al, 1
	jne	.label_797
	cmp	r14, rbp
	jae	.label_798
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_798:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_799
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_799:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_806
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_806:
	add	r14, 3
	mov	r9b, 1
.label_797:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_810
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_810:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_812
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_812
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_812
	cmp	r14, rbp
	jae	.label_782
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_782:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_808
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_808:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_746
.label_981:
	mov	bl, 0x62
	jmp	.label_826
.label_982:
	mov	cl, 0x74
	jmp	.label_770
.label_983:
	mov	bl, 0x76
	jmp	.label_826
.label_984:
	mov	bl, 0x66
	jmp	.label_826
.label_985:
	mov	cl, 0x72
	jmp	.label_770
.label_988:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_834
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_761
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_846
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_846:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_858
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_858:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_862
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_862:
	add	r14, 3
	xor	r9d, r9d
.label_834:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_746
.label_989:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_865
	cmp	r8d, 2
	jne	.label_745
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_745
	jmp	.label_761
.label_990:
	cmp	r8d, 2
	jne	.label_756
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_761
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_765
.label_856:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_766
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_784
.label_773:
	test	r12, r12
	jne	.label_796
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_796
.label_780:
	mov	dl, 1
.label_986:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_761
	xor	eax, eax
	mov	r13b, dl
.label_746:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_805
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_807
	jmp	.label_809
	.section	.text
	.align	16
	#Procedure 0x4080c4
	.globl sub_4080c4
	.type sub_4080c4, @function
sub_4080c4:

	nop	word ptr cs:[rax + rax]
.label_805:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_809
.label_807:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_818
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_815
	.section	.text
	.align	16
	#Procedure 0x4080fd
	.globl sub_4080fd
	.type sub_4080fd, @function
sub_4080fd:

	nop	dword ptr [rax]
.label_809:
	test	sil, sil
.label_815:
	mov	ebx, r15d
	je	.label_753
	jmp	.label_819
.label_818:
	mov	ebx, r15d
	jmp	.label_819
.label_787:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_788
	xor	r15d, r15d
	jmp	.label_745
.label_756:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_770
	xor	eax, eax
	mov	r15b, 0x5c
.label_765:
	xor	r13d, r13d
	jmp	.label_753
.label_770:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_761
.label_826:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_746
	nop	
.label_819:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_791
	cmp	r8d, 2
	jne	.label_801
	mov	eax, r9d
	and	al, 1
	jne	.label_801
	cmp	r14, rbp
	jae	.label_842
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_842:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_847
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_847:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_850
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_850:
	add	r14, 3
	mov	r9b, 1
.label_801:
	cmp	r14, rbp
	jae	.label_764
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_764:
	inc	r14
	jmp	.label_794
.label_766:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_861
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_861:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_838
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_816:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_757
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_775
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_792
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_845
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_836:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_783
	bt	rsi, rdx
	jb	.label_761
.label_783:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_836
.label_845:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_835
	xor	r13d, r13d
.label_835:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_816
	jmp	.label_759
.label_812:
	xor	r13d, r13d
	jmp	.label_746
.label_796:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_746
.label_865:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_745
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_745
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_745
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_824
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_804
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_831
	cmp	r14, rbp
	jae	.label_832
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_832:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_840
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_840:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_866
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_866:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_751
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_751:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_804:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_746
.label_745:
	xor	eax, eax
.label_778:
	xor	r13d, r13d
	jmp	.label_746
.label_838:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_793:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_777
	cmp	rbp, -1
	je	.label_755
	cmp	rbp, -2
	je	.label_757
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_763
	xor	r13d, r13d
.label_763:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_793
	jmp	.label_759
.label_757:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_747
	lea	rax, [r10 + r12]
.label_863:
	cmp	byte ptr [rax + rsi], 0
	je	.label_747
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_863
.label_747:
	mov	qword ptr [rsp + 0x40], rsi
.label_775:
	xor	r13d, r13d
	jmp	.label_792
.label_755:
	xor	r13d, r13d
.label_777:
	mov	r10, qword ptr [rsp + 0x28]
.label_792:
	mov	r12, qword ptr [rsp + 0x40]
.label_759:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_784:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_802
	test	al, al
	je	.label_802
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_746
.label_802:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_814
	.section	.text
	.align	16
	#Procedure 0x4084f7
	.globl sub_4084f7
	.type sub_4084f7, @function
sub_4084f7:

	nop	word ptr [rax + rax]
.label_776:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_814:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_769
	test	sil, 1
	je	.label_772
	cmp	r14, rbp
	jae	.label_822
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_822:
	inc	r14
	xor	esi, esi
	jmp	.label_772
	.section	.text
	.align	16
	#Procedure 0x408535
	.globl sub_408535
	.type sub_408535, @function
sub_408535:

	nop	word ptr cs:[rax + rax]
.label_769:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_791
	cmp	r8d, 2
	jne	.label_827
	mov	eax, r9d
	and	al, 1
	jne	.label_827
	cmp	r14, rbp
	jae	.label_830
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_830:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_833
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_833:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_779
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_779:
	add	r14, 3
	mov	r9b, 1
.label_827:
	cmp	r14, rbp
	jae	.label_849
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_849:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_841
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_841:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_859
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_859:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_772:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_753
	test	r9b, 1
	je	.label_821
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_774
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_744
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_744:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_758
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_758:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_821
	.section	.text
	.align	16
	#Procedure 0x408646
	.globl sub_408646
	.type sub_408646, @function
sub_408646:

	nop	word ptr cs:[rax + rax]
.label_774:
	mov	rbx, rcx
.label_821:
	cmp	r14, rbp
	jae	.label_776
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_776
	.section	.text
	.align	16
	#Procedure 0x40866e
	.globl sub_40866e
	.type sub_40866e, @function
sub_40866e:

	nop	
.label_753:
	test	r9b, 1
	je	.label_786
	and	al, 1
	jne	.label_786
	cmp	r14, rbp
	jae	.label_789
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_789:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_771
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_771:
	add	r14, 2
	xor	r9d, r9d
.label_786:
	mov	ebx, r15d
.label_794:
	cmp	r14, rbp
	jae	.label_800
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_800:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_788
.label_824:
	xor	r13d, r13d
	jmp	.label_746
	.section	.text
	.align	16
	#Procedure 0x4086d1
	.globl sub_4086d1
	.type sub_4086d1, @function
sub_4086d1:

	nop	word ptr cs:[rax + rax]
.label_828:
	mov	rcx, r12
.label_768:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_813
	or	al, dl
	jne	.label_813
	mov	r11, rcx
	jmp	.label_791
.label_761:
	mov	eax, 2
.label_752:
	mov	qword ptr [rsp + 0x38], rax
.label_791:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_864:
	mov	r14, rax
.label_743:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_749:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_843
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_848
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_848
	inc	rdx
	nop	dword ptr [rax + rax]
.label_854:
	cmp	r14, rbp
	jae	.label_852
	mov	byte ptr [rcx + r14], al
.label_852:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_854
	jmp	.label_848
.label_811:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_864
.label_843:
	mov	rcx, qword ptr [rsp + 0x10]
.label_848:
	cmp	r14, rbp
	jae	.label_743
	mov	byte ptr [rcx + r14], 0
	jmp	.label_743
.label_831:
	mov	eax, 5
	jmp	.label_752
.label_837:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408820

	.globl openat_proc_name
	.type openat_proc_name, @function
openat_proc_name:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdx
	mov	r15d, esi
	mov	rbx, rdi
	cmp	byte ptr [r14], 0
	je	.label_867
	mov	ecx, dword ptr [rip + openat_proc_name.proc_status]
	test	ecx, ecx
	jne	.label_875
	mov	edi, OFFSET FLAT:label_870
	mov	esi, 0x10900
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_874
	lea	r12, [rsp]
	mov	esi, 1
	mov	edx, 0x20
	mov	ecx, OFFSET FLAT:label_868
	xor	eax, eax
	mov	rdi, r12
	mov	r8d, ebp
	call	__sprintf_chk
	xor	esi, esi
	mov	rdi, r12
	call	access
	cmp	eax, 1
	sbb	eax, eax
	not	eax
	or	eax, 1
	mov	dword ptr [rip + openat_proc_name.proc_status],  eax
	mov	edi, ebp
	call	close
	mov	ecx, dword ptr [rip + openat_proc_name.proc_status]
.label_875:
	xor	eax, eax
	test	ecx, ecx
	js	.label_869
	mov	rdi, r14
	call	strlen
	add	rax, 0x1b
	cmp	rax, 0xfc1
	jb	.label_873
	mov	rdi, rax
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_869
.label_873:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_872
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, r15d
	call	__sprintf_chk
	movsxd	rdi, eax
	add	rdi, rbx
	mov	rsi, r14
	call	strcpy
	jmp	.label_871
.label_874:
	mov	dword ptr [rip + openat_proc_name.proc_status],  0xffffffff
	xor	eax, eax
	jmp	.label_869
	.section	.text
	.align	16
	#Procedure 0x408913
	.globl sub_408913
	.type sub_408913, @function
sub_408913:

	nop	word ptr cs:[rax + rax]
.label_867:
	mov	byte ptr [rbx], 0
.label_871:
	mov	rax, rbx
.label_869:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408930
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
	#Procedure 0x408949
	.globl sub_408949
	.type sub_408949, @function
sub_408949:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408950

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
	je	.label_876
	cmp	r15, -2
	jb	.label_876
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_876
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_876:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089a6
	.globl sub_4089a6
	.type sub_4089a6, @function
sub_4089a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089b0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089ba
	.globl sub_4089ba
	.type sub_4089ba, @function
sub_4089ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_877
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_877:
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
	#Procedure 0x408a43
	.globl sub_408a43
	.type sub_408a43, @function
sub_408a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a50

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
	jne	.label_879
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_878
	test	cl, cl
	jne	.label_878
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_878
.label_879:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_878
	call	__errno_location
	mov	dword ptr [rax], 0
.label_878:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_880:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	.section	.text
	.align	16
	#Procedure 0x408ab9
	.globl sub_408ab9
	.type sub_408ab9, @function
sub_408ab9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ac3

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_880
	mov	edi, eax
	jmp	fchdir
	.section	.text
	.align	16
	#Procedure 0x408ad0

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
	je	.label_881
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
.label_881:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408b3c
	.globl sub_408b3c
	.type sub_408b3c, @function
sub_408b3c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408b40

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x408b4e
	.globl sub_408b4e
	.type sub_408b4e, @function
sub_408b4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408b50
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x408b5e
	.globl sub_408b5e
	.type sub_408b5e, @function
sub_408b5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408b60

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
	js	.label_882
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_885
	cmp	r12d, 0x7fffffff
	je	.label_887
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
	jne	.label_883
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_883:
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
.label_885:
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
	jbe	.label_888
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_884
.label_888:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_886
	mov	rdi, r14
	call	free
.label_886:
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
.label_884:
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
.label_882:
	call	abort
.label_887:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408d1d
	.globl sub_408d1d
	.type sub_408d1d, @function
sub_408d1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408d20

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_892
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_890
	cmp	dword ptr [rbp], 0x20
	jne	.label_890
.label_892:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_894
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_889:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_891
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_890:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_893
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_889
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_894:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_895:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408de5
	.globl sub_408de5
	.type sub_408de5, @function
sub_408de5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408def
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
	je	.label_896
	test	r14, r14
	je	.label_895
.label_896:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e20

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
	#Procedure 0x408e37
	.globl sub_408e37
	.type sub_408e37, @function
sub_408e37:

	nop	word ptr [rax + rax]
.label_897:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408e45
	.globl sub_408e45
	.type sub_408e45, @function
sub_408e45:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e4a

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_898
	pop	rcx
	ret	
.label_898:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_897
	mov	edi, OFFSET FLAT:label_899
	mov	esi, OFFSET FLAT:label_900
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_901
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x408e80

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_902
	test	al, 1
	je	.label_902
	mov	dl, 1
.label_902:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_909
	and	eax, 2
	jne	.label_909
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_904
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_907
.label_909:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_904
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_907
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_905
	mov	eax, dword ptr [r14]
.label_907:
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
.label_903:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_904:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_906
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_903
	cmp	ecx, 0x4000
	jne	.label_910
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_908
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_908
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_908:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_903
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_911
	cmp	dl, 0x2e
	jne	.label_903
	test	ecx, 0xff0000
	jne	.label_903
.label_911:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_903
.label_906:
	mov	ax, 8
	jmp	.label_903
.label_910:
	mov	ax, 3
	jmp	.label_903
.label_905:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_903
	.section	.text
	.align	16
	#Procedure 0x409015
	.globl sub_409015
	.type sub_409015, @function
sub_409015:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409020
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
	#Procedure 0x409095
	.globl sub_409095
	.type sub_409095, @function
sub_409095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090a0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_925
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_925
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_912
	cmp	rsi, r14
	je	.label_938
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_933
	mov	rax, qword ptr [r12]
.label_937:
	test	rax, rax
	jne	.label_942
	jmp	.label_912
.label_938:
	mov	rax, r14
.label_942:
	xor	ebp, ebp
	test	r15, r15
	je	.label_915
	mov	qword ptr [r15], rax
	jmp	.label_915
.label_933:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_912
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_934:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_929
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_932
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_934
.label_912:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_935
	cvtsi2ss	xmm1, rax
	jmp	.label_939
.label_935:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_939:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_913
	cvtsi2ss	xmm0, rcx
	jmp	.label_922
.label_913:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_922:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_928
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_931
	ucomiss	xmm2, dword ptr [rip + label_289]
	jbe	.label_923
	movss	xmm3, dword ptr [rip + label_277]
	ucomiss	xmm3, xmm2
	jbe	.label_923
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_284]
	jbe	.label_923
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_923
	addss	xmm3, dword ptr [rip + label_289]
	ucomiss	xmm2, xmm3
	jbe	.label_923
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_279]
	ucomiss	xmm5, xmm4
	jb	.label_923
	ucomiss	xmm4, xmm3
	ja	.label_921
.label_923:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_926]
	jmp	.label_921
.label_931:
	mov	eax, OFFSET FLAT:default_tuning
.label_921:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_928
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_920
	mulss	xmm0, xmm2
.label_920:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_283]
	jae	.label_915
	movss	xmm1, dword ptr [rip + label_282]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_915
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_925
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_928
	cmp	rsi, r14
	mov	rax, r14
	je	.label_930
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_936
	mov	rax, qword ptr [r12]
.label_930:
	test	rax, rax
	jne	.label_917
.label_928:
	cmp	qword ptr [r12], 0
	je	.label_940
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_941
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_914
.label_940:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_918]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_919
.label_941:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_915
.label_914:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_919:
	mov	ebp, 1
.label_915:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_929:
	mov	rax, r14
	jmp	.label_937
.label_932:
	mov	rax, qword ptr [rbp]
	jmp	.label_937
.label_936:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_928
	lea	rbp, [rbx + rbp + 8]
.label_927:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_916
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_924
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_927
	jmp	.label_928
.label_916:
	mov	rax, r14
	jmp	.label_930
.label_924:
	mov	rax, qword ptr [rbp]
	jmp	.label_930
.label_925:
	call	abort
.label_917:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4093d1
	.globl sub_4093d1
	.type sub_4093d1, @function
sub_4093d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093e0
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
	#Procedure 0x409413
	.globl sub_409413
	.type sub_409413, @function
sub_409413:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409420
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
	#Procedure 0x409433
	.globl sub_409433
	.type sub_409433, @function
sub_409433:

	nop	word ptr cs:[rax + rax]
.label_943:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409445
	.globl sub_409445
	.type sub_409445, @function
sub_409445:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409453
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
	je	.label_944
	test	r15, r15
	je	.label_943
.label_944:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_948:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40949e
	.globl sub_40949e
	.type sub_40949e, @function
sub_40949e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094a7
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_951
	.section	.text
	.align	16
	#Procedure 0x4094b8
	.globl sub_4094b8
	.type sub_4094b8, @function
sub_4094b8:

	nop	word ptr cs:[rax + rax]
.label_945:
	add	r14, 0x10
.label_951:
	cmp	r14, rax
	jae	.label_948
	cmp	qword ptr [r14], 0
	je	.label_945
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_949
	nop	word ptr cs:[rax + rax]
.label_946:
	test	cl, 1
	je	.label_950
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_950:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_946
.label_949:
	test	cl, cl
	je	.label_947
	mov	rdi, qword ptr [r14]
	call	rax
.label_947:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_945
	.section	.text
	.align	16
	#Procedure 0x409540

	.globl lsetfileconat
	.type lsetfileconat, @function
lsetfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_952
	cmp	byte ptr [rax], 0x2f
	jne	.label_957
.label_952:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_955:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_957:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_953
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_953
	mov	rdi, r14
	call	free
.label_953:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_958
	test	ebx, ebx
	js	.label_959
	cmp	dword ptr [rsp], ebx
	jne	.label_959
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_955
.label_959:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_956
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_955
.label_956:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_954
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_955
.label_958:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_954:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	.section	.text
	.align	16
	#Procedure 0x409638
	.globl sub_409638
	.type sub_409638, @function
sub_409638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409640
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
	#Procedure 0x40964f
	.globl sub_40964f
	.type sub_40964f, @function
sub_40964f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409650

	.globl lgetfileconat
	.type lgetfileconat, @function
lgetfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_964
	cmp	byte ptr [rax], 0x2f
	jne	.label_965
.label_964:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_961:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_962:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_965:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_966
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_966
	mov	rdi, r14
	call	free
.label_966:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_962
	test	ebx, ebx
	js	.label_963
	cmp	dword ptr [rsp], ebx
	jne	.label_963
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_961
.label_963:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_960
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_961
.label_967:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	.section	.text
	.align	16
	#Procedure 0x409721
	.globl sub_409721
	.type sub_409721, @function
sub_409721:

	nop	dword ptr [rax + rax]
.label_960:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_967
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_961
	.section	.text
	.align	16
	#Procedure 0x409750
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
	#Procedure 0x409786
	.globl sub_409786
	.type sub_409786, @function
sub_409786:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409790
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_968:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_968
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4097b1
	.globl sub_4097b1
	.type sub_4097b1, @function
sub_4097b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097c0
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
	je	.label_969
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
.label_969:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409821
	.globl sub_409821
	.type sub_409821, @function
sub_409821:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409895
	.globl sub_409895
	.type sub_409895, @function
sub_409895:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098a2
	.globl sub_4098a2
	.type sub_4098a2, @function
sub_4098a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098c6
	.globl sub_4098c6
	.type sub_4098c6, @function
sub_4098c6:

	nop	word ptr cs:[rax + rax]
