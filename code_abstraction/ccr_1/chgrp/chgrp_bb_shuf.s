	.section	.text
	.align	16
	#Procedure 0x401a59
	.globl sub_401a59
	.type sub_401a59, @function
sub_401a59:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401a5a
	.globl sub_401a5a
	.type sub_401a5a, @function
sub_401a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a92
	.globl sub_401a92
	.type sub_401a92, @function
sub_401a92:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ada
	.globl sub_401ada
	.type sub_401ada, @function
sub_401ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401afc
	.globl sub_401afc
	.type sub_401afc, @function
sub_401afc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b0d
	.globl sub_401b0d
	.type sub_401b0d, @function
sub_401b0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b26
	.globl sub_401b26
	.type sub_401b26, @function
sub_401b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b30

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x401b39
	.globl sub_401b39
	.type sub_401b39, @function
sub_401b39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b40

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
	mov	rax,  qword ptr [word ptr [rip + label_9]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_10]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_11]]
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
	.align	16
	#Procedure 0x401ba8
	.globl sub_401ba8
	.type sub_401ba8, @function
sub_401ba8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bb0

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
	je	.label_13
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_12
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_12
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_12
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
	jmp	.label_13
.label_12:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_13:
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
	#Procedure 0x401c8c
	.globl sub_401c8c
	.type sub_401c8c, @function
sub_401c8c:

	nop	dword ptr [rax]
.label_15:
	mov	qword ptr [rbx], 0
	jmp	.label_14
	.section	.text
	.align	16
	#Procedure 0x401c99

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
	je	.label_14
	cmp	rsi, r13
	je	.label_17
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_20
.label_17:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_14
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_15
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_18
.label_16:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_14
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_18:
	mov	rdi, r14
	call	free_entry
.label_14:
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
	.align	16
	#Procedure 0x401d20
	.globl sub_401d20
	.type sub_401d20, @function
sub_401d20:

	nop	word ptr [rax + rax]
.label_20:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_14
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_19:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_16
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_16
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_19
	jmp	.label_14
	.section	.text
	.align	16
	#Procedure 0x401d60

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_21
	test	rsi, rsi
	mov	ecx, 1
	je	.label_22
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_22
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_21:
	mov	ecx, 1
.label_22:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401dab
	.globl sub_401dab
	.type sub_401dab, @function
sub_401dab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401db0

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_24
	mov	rdi, qword ptr [rax]
	jmp	.label_23
.label_24:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_23:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ddf
	.globl sub_401ddf
	.type sub_401ddf, @function
sub_401ddf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401de0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dea
	.globl sub_401dea
	.type sub_401dea, @function
sub_401dea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401df0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e20

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_27
	cmp	rcx, 0x1021994
	je	.label_27
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_27
	mov	al, 1
.label_27:
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e4b
	.globl sub_401e4b
	.type sub_401e4b, @function
sub_401e4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e50

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
	je	.label_28
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_28:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e7c
	.globl sub_401e7c
	.type sub_401e7c, @function
sub_401e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e80

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_29
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_31:
	cmp	qword ptr [rcx], 0
	je	.label_30
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_32:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_32
	cmp	rsi, rax
	cmova	rax, rsi
.label_30:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_31
.label_29:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ecd
	.globl sub_401ecd
	.type sub_401ecd, @function
sub_401ecd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ed0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_33]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ee4
	.globl sub_401ee4
	.type sub_401ee4, @function
sub_401ee4:

	nop	word ptr cs:[rax + rax]
.label_34:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ef3
	.globl sub_401ef3
	.type sub_401ef3, @function
sub_401ef3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ef5
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_34
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f10

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_35
	cmp	ecx, 0x11
	jne	.label_36
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_35:
	ret	
.label_36:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f2e
	.globl sub_401f2e
	.type sub_401f2e, @function
sub_401f2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f30

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_37
	test	rdx, rdx
	je	.label_37
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_37:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401f5b
	.globl sub_401f5b
	.type sub_401f5b, @function
sub_401f5b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f60

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_38
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_43
	cvtsi2ss	xmm0, rdi
	jmp	.label_39
.label_43:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_39:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_40]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_41]]
	jae	.label_42
.label_38:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_42:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fde
	.globl sub_401fde
	.type sub_401fde, @function
sub_401fde:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401fe0

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
	je	.label_47
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_47
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_44
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_48
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_47
.label_44:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_48
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_60
	test	byte ptr [r14 + 0x48], 4
	jne	.label_60
	mov	esi, OFFSET FLAT:label_50
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_69
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_45
.label_48:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_62
	movzx	eax, ax
	cmp	eax, 4
	je	.label_71
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_73
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_71
.label_73:
	cmp	qword ptr [r14 + 8], 0
	je	.label_77
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_78
	cmp	qword ptr [r14 + 8], 0
	je	.label_77
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_80
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_72
	.section	.text
	.align	16
	#Procedure 0x402117
	.globl sub_402117
	.type sub_402117, @function
sub_402117:

	nop	word ptr [rax + rax]
.label_62:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_49
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_51
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_54
.label_49:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_59
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_62
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_67
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_57
	test	byte ptr [r14 + 0x48], 4
	jne	.label_57
	mov	esi, OFFSET FLAT:label_50
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_46
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_57
.label_84:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_72:
	test	rax, rax
	jne	.label_84
	jmp	.label_80
.label_71:
	test	byte ptr [rbx + 0x72], 2
	je	.label_81
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_81:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_83
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_83:
	mov	word ptr [rbx + 0x70], 6
.label_82:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_47
.label_60:
	mov	r15, rbx
	jmp	.label_45
.label_59:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_52
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_47
.label_51:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_61
	mov	rdi, rbx
	call	free
	jmp	.label_67
.label_52:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_45
.label_78:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_77:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_75
.label_80:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_67
.label_75:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_47
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_82
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_82
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_82
.label_69:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_45
.label_61:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_47
.label_54:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_53
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_55
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_58
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_64
	test	al, 1
	jne	.label_66
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_70
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_76
.label_53:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_47
.label_58:
	mov	rdi, r14
	call	restore_initial_cwd
.label_76:
	test	eax, eax
	je	.label_66
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_66
.label_64:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_79
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_74
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_79
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_79
.label_46:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_57:
	mov	word ptr [r15 + 0x74], 3
.label_67:
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
.label_45:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_63
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_68
	cmp	rax, 2
	jne	.label_55
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_65
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_65
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_68
.label_65:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_63
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_68
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_68
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_68:
	mov	ax, word ptr [r15 + 0x70]
.label_63:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_47
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_85
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_85:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_47
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_47
.label_74:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_79:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_66:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_56
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_56
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_56:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_47:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_55:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402587
	.globl sub_402587
	.type sub_402587, @function
sub_402587:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402590

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402595
	.globl sub_402595
	.type sub_402595, @function
sub_402595:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025a0

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
	jne	.label_100
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
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
.label_100:
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
	je	.label_112
	cmp	r15d, 3
	je	.label_86
	cmp	r15d, 2
	jne	.label_89
	test	r14, r14
	je	.label_94
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	jmp	.label_97
.label_112:
	xor	edi, edi
	test	r14, r14
	je	.label_99
	mov	esi, OFFSET FLAT:label_103
	jmp	.label_97
.label_86:
	test	r12, r12
	je	.label_105
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_109
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	jmp	.label_93
.label_94:
	test	r13, r13
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_87
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	jmp	.label_93
.label_99:
	test	r13, r13
	je	.label_98
	mov	esi, OFFSET FLAT:label_108
	jmp	.label_97
.label_105:
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_102
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	jmp	.label_107
.label_109:
	xor	edi, edi
	test	r13, r13
	je	.label_111
	mov	esi, OFFSET FLAT:label_114
	jmp	.label_93
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	jmp	.label_93
.label_98:
	mov	esi, OFFSET FLAT:label_91
.label_97:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_90
.label_102:
	xor	edi, edi
	test	r13, r13
	je	.label_104
	mov	esi, OFFSET FLAT:label_110
	jmp	.label_107
.label_111:
	mov	esi, OFFSET FLAT:label_101
.label_93:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_90
.label_104:
	mov	esi, OFFSET FLAT:label_101
.label_107:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	call	free
	mov	r12, rbp
	xor	ebp, ebp
.label_90:
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
.label_89:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402782
	.globl sub_402782
	.type sub_402782, @function
sub_402782:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402790
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_118
	.section	.text
	.align	16
	#Procedure 0x40279d
	.globl sub_40279d
	.type sub_40279d, @function
sub_40279d:

	nop	dword ptr [rax]
.label_121:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027ae
	.globl sub_4027ae
	.type sub_4027ae, @function
sub_4027ae:

	nop	word ptr cs:[rax + rax]
.label_116:
	add	r14, 0x10
.label_118:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_121
	cmp	qword ptr [r14], 0
	je	.label_116
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_115
	nop	word ptr cs:[rax + rax]
.label_119:
	test	cl, 1
	je	.label_117
	mov	rdi, qword ptr [rbx]
	call	rax
.label_117:
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
	jne	.label_119
.label_115:
	test	cl, cl
	je	.label_120
	mov	rdi, qword ptr [r14]
	call	rax
.label_120:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_116
	.section	.text
	.align	16
	#Procedure 0x402830

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
	je	.label_123
	cmp	rbx, r15
	jne	.label_122
	cmp	byte ptr [rbx + 1], 0
	je	.label_123
.label_122:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_123:
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
	.align	16
	#Procedure 0x4028ba
	.globl sub_4028ba
	.type sub_4028ba, @function
sub_4028ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028c0

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
	.align	16
	#Procedure 0x4028e2
	.globl sub_4028e2
	.type sub_4028e2, @function
sub_4028e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_135
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
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
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_135:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
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
	.align	16
	#Procedure 0x402adb
	.globl sub_402adb
	.type sub_402adb, @function
sub_402adb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ae0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_138
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_138:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_139
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_141
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_140
.label_141:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_140:
	mov	edx, dword ptr [rax]
.label_139:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ba4
	.globl sub_402ba4
	.type sub_402ba4, @function
sub_402ba4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0

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
	je	.label_142
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_143:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_143
.label_142:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bee
	.globl sub_402bee
	.type sub_402bee, @function
sub_402bee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402bf0

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
.label_176:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_181
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_186]]
.label_871:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_190
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_195
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_872:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_205
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_205
	xor	r14d, r14d
.label_220:
	cmp	r14, r11
	jae	.label_191
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_191:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_220
.label_205:
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
	jmp	.label_225
.label_864:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_225
.label_867:
	mov	al, 1
.label_865:
	mov	r12b, 1
.label_868:
	test	r12b, 1
	mov	cl, 1
	je	.label_237
	mov	ecx, eax
.label_237:
	mov	al, cl
.label_866:
	test	r12b, 1
	jne	.label_239
	test	r11, r11
	je	.label_242
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_242:
	mov	r14d, 1
	jmp	.label_247
.label_239:
	xor	r14d, r14d
.label_247:
	mov	ecx, OFFSET FLAT:label_195
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_225
.label_869:
	test	r12b, 1
	jne	.label_253
	test	r11, r11
	je	.label_210
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_210:
	mov	r14d, 1
	jmp	.label_177
.label_870:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_149
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_225
.label_253:
	xor	r14d, r14d
.label_177:
	mov	eax, OFFSET FLAT:label_149
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_225:
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
	jmp	.label_207
	.section	.text
	.align	16
	#Procedure 0x402ecc
	.globl sub_402ecc
	.type sub_402ecc, @function
sub_402ecc:

	nop	dword ptr [rax]
.label_201:
	inc	rsi
.label_207:
	cmp	rbp, -1
	je	.label_194
	cmp	rsi, rbp
	jne	.label_216
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x402ee3
	.globl sub_402ee3
	.type sub_402ee3, @function
sub_402ee3:

	nop	word ptr cs:[rax + rax]
.label_194:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_200
.label_216:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_208
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_211
	cmp	rbp, -1
	jne	.label_211
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
.label_211:
	cmp	rbx, rbp
	jbe	.label_223
.label_208:
	xor	r8d, r8d
.label_167:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_226
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_230]]
.label_880:
	test	rsi, rsi
	jne	.label_218
	jmp	.label_148
	.section	.text
	.align	16
	#Procedure 0x402f7e
	.globl sub_402f7e
	.type sub_402f7e, @function
sub_402f7e:

	nop	
.label_223:
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
	jne	.label_245
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_167
	jmp	.label_159
.label_245:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_167
.label_884:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_258
	test	rsi, rsi
	jne	.label_144
	cmp	rbp, 1
	je	.label_148
	xor	r13d, r13d
	jmp	.label_150
.label_873:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_154
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
	cmp	r12d, 2
	jne	.label_157
	mov	eax, r9d
	and	al, 1
	jne	.label_157
	cmp	r14, r11
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_163
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_163:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_169
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_169:
	add	r14, 3
	mov	r9b, 1
.label_157:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_175:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_180
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_180
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_180
	cmp	r14, r11
	jae	.label_155
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_155:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_257
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_257:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_150
.label_874:
	mov	bl, 0x62
	jmp	.label_203
.label_875:
	mov	cl, 0x74
	jmp	.label_213
.label_876:
	mov	bl, 0x76
	jmp	.label_203
.label_877:
	mov	bl, 0x66
	jmp	.label_203
.label_878:
	mov	cl, 0x72
	jmp	.label_213
.label_881:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_215
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
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
	jae	.label_221
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_221:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_232
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_232:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_235
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_235:
	add	r14, 3
	xor	r9d, r9d
.label_215:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_150
.label_882:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_243
	cmp	r12d, 2
	jne	.label_218
	cmp	byte ptr [rsp + 7], 0
	je	.label_218
	jmp	.label_156
.label_883:
	cmp	r12d, 2
	jne	.label_251
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_204
.label_226:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_233
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
.label_214:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_170
	test	r8b, r8b
	je	.label_170
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_150
.label_258:
	test	rsi, rsi
	jne	.label_178
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_178
.label_148:
	mov	dl, 1
.label_879:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_156
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_150:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_187
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_188
	jmp	.label_192
	.section	.text
	.align	16
	#Procedure 0x4032c4
	.globl sub_4032c4
	.type sub_4032c4, @function
sub_4032c4:

	nop	word ptr cs:[rax + rax]
.label_187:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_192
.label_188:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_196
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_204
	jmp	.label_166
	.section	.text
	.align	16
	#Procedure 0x40330d
	.globl sub_40330d
	.type sub_40330d, @function
sub_40330d:

	nop	dword ptr [rax]
.label_192:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_166
	jmp	.label_204
.label_196:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_166
.label_154:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_201
	xor	r15d, r15d
	jmp	.label_218
.label_251:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_213
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_204
.label_213:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_156
.label_203:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_150
	nop	word ptr cs:[rax + rax]
.label_166:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
	cmp	r12d, 2
	jne	.label_222
	mov	eax, r9d
	and	al, 1
	jne	.label_222
	cmp	r14, r11
	jae	.label_240
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_240:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_256
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_256:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_249
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	r14, 3
	mov	r9b, 1
.label_222:
	cmp	r14, r11
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_252:
	inc	r14
	jmp	.label_224
.label_233:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_255
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_255:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_241:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_162
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_165
	cmp	rbp, -2
	je	.label_179
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_173
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_202:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_184
	bt	rsi, rdx
	jb	.label_159
.label_184:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_202
.label_173:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_198
	xor	r13d, r13d
.label_198:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_241
	jmp	.label_214
.label_180:
	xor	r13d, r13d
	jmp	.label_150
.label_178:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_150
.label_243:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_218
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_218
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_218
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_227
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_158
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_152
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_152:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_212
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_246
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_246:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_248
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_248:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_150
.label_218:
	xor	eax, eax
.label_144:
	xor	r13d, r13d
	jmp	.label_150
.label_170:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_254
	.section	.text
	.align	16
	#Procedure 0x4035f3
	.globl sub_4035f3
	.type sub_4035f3, @function
sub_4035f3:

	nop	word ptr cs:[rax + rax]
.label_219:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_254:
	test	r8b, r8b
	je	.label_145
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_147
	cmp	r14, r11
	jae	.label_151
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_151:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_147
	.section	.text
	.align	16
	#Procedure 0x40363c
	.globl sub_40363c
	.type sub_40363c, @function
sub_40363c:

	nop	dword ptr [rax]
.label_145:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_159
	cmp	r12d, 2
	jne	.label_161
	mov	eax, r9d
	and	al, 1
	jne	.label_161
	cmp	r14, r11
	jae	.label_164
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_164:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_168
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_168:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_174
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_174:
	add	r14, 3
	mov	r9b, 1
.label_161:
	cmp	r14, r11
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_234:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_183
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_183:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_189
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_189:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_147:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_204
	test	r9b, 1
	je	.label_206
	mov	ebx, eax
	and	bl, 1
	jne	.label_206
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_209
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_209:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_231
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_231:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_206:
	cmp	r14, r11
	jae	.label_219
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_219
	.section	.text
	.align	16
	#Procedure 0x403743
	.globl sub_403743
	.type sub_403743, @function
sub_403743:

	nop	word ptr cs:[rax + rax]
.label_204:
	test	r9b, 1
	je	.label_228
	and	al, 1
	jne	.label_228
	cmp	r14, r11
	jae	.label_229
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_146
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_146:
	add	r14, 2
	xor	r9d, r9d
.label_228:
	mov	ebx, r15d
.label_224:
	cmp	r14, r11
	jae	.label_236
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_236:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_201
.label_165:
	xor	r13d, r13d
.label_162:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_214
.label_179:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_250
	mov	rsi, qword ptr [rsp + 0x50]
.label_217:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_199
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_217
	xor	r13d, r13d
	jmp	.label_214
.label_250:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_214
.label_199:
	xor	r13d, r13d
	jmp	.label_214
.label_227:
	xor	r13d, r13d
	jmp	.label_150
.label_158:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_150
	.section	.text
	.align	16
	#Procedure 0x403818
	.globl sub_403818
	.type sub_403818, @function
sub_403818:

	nop	dword ptr [rax + rax]
.label_200:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_153
	or	dl, al
	je	.label_159
.label_153:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_171
	or	dl, al
	jne	.label_171
	test	r10b, 1
	jne	.label_172
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_171
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_176
.label_171:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_182
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_185
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_185
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_197:
	cmp	r14, r11
	jae	.label_193
	mov	byte ptr [rcx + r14], al
.label_193:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_197
	jmp	.label_185
.label_156:
	mov	qword ptr [rsp + 0x20], rbp
.label_159:
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
.label_238:
	mov	r14, rax
.label_244:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_172:
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
	jmp	.label_238
.label_182:
	mov	rcx, qword ptr [rsp + 8]
.label_185:
	cmp	r14, r11
	jae	.label_244
	mov	byte ptr [rcx + r14], 0
	jmp	.label_244
.label_181:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4039ac
	.globl sub_4039ac
	.type sub_4039ac, @function
sub_4039ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039b0
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
	.align	16
	#Procedure 0x4039c9
	.globl sub_4039c9
	.type sub_4039c9, @function
sub_4039c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_259
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_259:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4039f6
	.globl sub_4039f6
	.type sub_4039f6, @function
sub_4039f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_260
	test	rbx, rbx
	jne	.label_260
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_260:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_262
	test	rax, rax
	je	.label_261
.label_262:
	pop	rbx
	ret	
.label_261:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a30
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_263
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_263:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a48
	.globl sub_403a48
	.type sub_403a48, @function
sub_403a48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a50

	.globl parse_group
	.type parse_group, @function
parse_group:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	ebx, 0xffffffff
	cmp	byte ptr [r14], 0
	je	.label_268
	mov	rdi, r14
	call	getgrnam
	test	rax, rax
	je	.label_266
	mov	ebx, dword ptr [rax + 0x10]
	jmp	.label_267
.label_264:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
.label_266:
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_265
	mov	rdi, r14
	call	xstrtoul
	test	eax, eax
	jne	.label_264
	mov	rbx, qword ptr [rsp]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_264
.label_267:
	call	endgrent
.label_268:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ae0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ae7
	.globl sub_403ae7
	.type sub_403ae7, @function
sub_403ae7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0
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
	jae	.label_270
	xor	ebx, ebx
.label_272:
	cmp	qword ptr [r13], 0
	je	.label_271
	test	r13, r13
	je	.label_271
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_273:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_270
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_273
.label_271:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_272
.label_270:
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
	#Procedure 0x403b67
	.globl sub_403b67
	.type sub_403b67, @function
sub_403b67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b80

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
	je	.label_274
	cmp	r15, -2
	jb	.label_274
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_274
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_274:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bd6
	.globl sub_403bd6
	.type sub_403bd6, @function
sub_403bd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

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
	#Procedure 0x403c08
	.globl sub_403c08
	.type sub_403c08, @function
sub_403c08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c10

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
	#Procedure 0x403c27
	.globl sub_403c27
	.type sub_403c27, @function
sub_403c27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c30
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
	.align	16
	#Procedure 0x403c44
	.globl sub_403c44
	.type sub_403c44, @function
sub_403c44:

	nop	word ptr cs:[rax + rax]
.label_276:
	test	esi, esi
	js	.label_275
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_275
	mov	edi, esi
.label_277:
	call	close
.label_275:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c6d

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
	jne	.label_279
	cmp	esi, -0x64
	jne	.label_278
.label_279:
	test	dl, dl
	je	.label_276
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_275
	mov	edi, eax
	jmp	.label_277
.label_278:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403c9b
	.globl sub_403c9b
	.type sub_403c9b, @function
sub_403c9b:

	nop	dword ptr [rax + rax]
.label_283:
	cmp	rax, 0x58465342
	je	.label_280
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_281
.label_282:
	xor	ecx, ecx
.label_280:
	mov	eax, ecx
	pop	rcx
	ret	
.label_281:
	mov	ecx, 1
	jmp	.label_280
	.section	.text
	.align	16
	#Procedure 0x403cbf
	.globl sub_403cbf
	.type sub_403cbf, @function
sub_403cbf:

	nop	word ptr cs:[rax + rax]
.label_284:
	test	rax, rax
	je	.label_282
	cmp	rax, 0x6969
	je	.label_282
	cmp	rax, 0x9fa0
	je	.label_282
	jmp	.label_281
	.section	.text
	.align	16
	#Procedure 0x403ce3

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_284
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_283
	cmp	rax, 0x52654973
	je	.label_280
	cmp	rax, 0x5346414f
	je	.label_282
	jmp	.label_281
	.section	.text
	.align	16
	#Procedure 0x403d10
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d19
	.globl sub_403d19
	.type sub_403d19, @function
sub_403d19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d20

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d2a
	.globl sub_403d2a
	.type sub_403d2a, @function
sub_403d2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_285
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_287
	jmp	.label_286
.label_288:
	xor	r14d, r14d
	jmp	.label_286
	.section	.text
	.align	16
	#Procedure 0x403d70
	.globl sub_403d70
	.type sub_403d70, @function
sub_403d70:

	nop	dword ptr [rax]
.label_285:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_288
	mov	rdi, rax
	call	cycle_check_init
.label_287:
	mov	r14b, 1
.label_286:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403da0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403da4
	.globl sub_403da4
	.type sub_403da4, @function
sub_403da4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403db0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dbd
	.globl sub_403dbd
	.type sub_403dbd, @function
sub_403dbd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403dc0
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
	mov	edx, OFFSET FLAT:label_290
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_289
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_291]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_292]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_293]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_294
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_295
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
	.align	16
	#Procedure 0x403eac
	.globl sub_403eac
	.type sub_403eac, @function
sub_403eac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0

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
	#Procedure 0x403ebc
	.globl sub_403ebc
	.type sub_403ebc, @function
sub_403ebc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ec0

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_297
	mov	rdi, qword ptr [rax]
	jmp	.label_296
.label_297:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_296:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403eef
	.globl sub_403eef
	.type sub_403eef, @function
sub_403eef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403ef0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ef5
	.globl sub_403ef5
	.type sub_403ef5, @function
sub_403ef5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f00
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f0a
	.globl sub_403f0a
	.type sub_403f0a, @function
sub_403f0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f10
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_298
	call	rpl_calloc
	test	rax, rax
	je	.label_298
	pop	rcx
	ret	
.label_298:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f36
	.globl sub_403f36
	.type sub_403f36, @function
sub_403f36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f45
	.globl sub_403f45
	.type sub_403f45, @function
sub_403f45:

	nop	word ptr cs:[rax + rax]
.label_302:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f55
	.globl sub_403f55
	.type sub_403f55, @function
sub_403f55:

	nop	dword ptr [rax + rax]
.label_303:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_302
	mov	edi, OFFSET FLAT:label_299
	mov	esi, OFFSET FLAT:label_300
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_301
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403f7d

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_303
	pop	rcx
	ret	
.label_304:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x403f9c
	.globl sub_403f9c
	.type sub_403f9c, @function
sub_403f9c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_304
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fb0

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
	je	.label_305
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_306
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_305
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
	je	.label_307
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
	jmp	.label_306
.label_307:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_308
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_308
	mov	rdi, qword ptr [rsp]
	call	free
.label_305:
	xor	r14d, r14d
.label_306:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_308:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4040d8
	.globl sub_4040d8
	.type sub_4040d8, @function
sub_4040d8:

	nop	dword ptr [rax + rax]
.label_310:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_309
	mov	qword ptr [r14], r14
.label_312:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_309
	.section	.text
	.align	16
	#Procedure 0x404100

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
	je	.label_310
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_311
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
	je	.label_309
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_311
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_312
.label_311:
	xor	ebp, ebp
.label_309:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40417b
	.globl sub_40417b
	.type sub_40417b, @function
sub_40417b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404180
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40418a
	.globl sub_40418a
	.type sub_40418a, @function
sub_40418a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404190
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_313
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_315:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_315
.label_313:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_317
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_316]], OFFSET FLAT:slot0
.label_317:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_314
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_314:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404221
	.globl sub_404221
	.type sub_404221, @function
sub_404221:

	nop	word ptr cs:[rax + rax]
.label_319:
	cmp	edi, 0x7f
	je	.label_318
	xor	eax, eax
	jmp	.label_318
	.section	.text
	.align	16
	#Procedure 0x404239
	.globl sub_404239
	.type sub_404239, @function
sub_404239:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404248
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_319
.label_318:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404250

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
	je	.label_328
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_320
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_320
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_320:
	test	eax, eax
	sete	r15b
	jmp	.label_324
.label_328:
	xor	r15d, r15d
.label_324:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_327
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_323
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_323
	and	eax, 0x200
	je	.label_323
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_323
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_323:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_330
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_325
.label_330:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_332
	test	rbx, rbx
	je	.label_322
	cmp	byte ptr [rbx], 0x2e
	jne	.label_322
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_322
	cmp	byte ptr [rbx + 2], 0
	jne	.label_322
.label_332:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_331
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_321
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_321
.label_322:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_326
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_329
.label_327:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_325
	and	eax, 0x200
	je	.label_325
	mov	edi, r13d
	call	close
	jmp	.label_325
.label_326:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_325
.label_321:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_331:
	mov	ebp, 0xffffffff
.label_329:
	test	r13d, r13d
	jns	.label_325
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_325:
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
	.align	16
	#Procedure 0x4043d6
	.globl sub_4043d6
	.type sub_4043d6, @function
sub_4043d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_333
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_334]]
.label_333:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043f7
	.globl sub_4043f7
	.type sub_4043f7, @function
sub_4043f7:

	nop	word ptr [rax + rax]
.label_335:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404407
	.globl sub_404407
	.type sub_404407, @function
sub_404407:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404415

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_335
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404430

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40443a
	.globl sub_40443a
	.type sub_40443a, @function
sub_40443a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_336
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_338
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_338
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_341
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_341:
	mov	rbx, r14
.label_338:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_336:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_337
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4044e1
	.globl sub_4044e1
	.type sub_4044e1, @function
sub_4044e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_342
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_344
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_344
.label_342:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_343
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_343:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_346:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_347
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_346
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4045b0

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
	jae	.label_351
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_355:
	cmp	qword ptr [r15], 0
	je	.label_349
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_354
	nop	word ptr cs:[rax + rax]
.label_348:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_350
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_352
	.section	.text
	.align	16
	#Procedure 0x404626
	.globl sub_404626
	.type sub_404626, @function
sub_404626:

	nop	word ptr cs:[rax + rax]
.label_350:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_352:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_348
.label_354:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_349
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_353
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_356
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_357
.label_356:
	xor	eax, eax
	jmp	.label_351
	.section	.text
	.align	16
	#Procedure 0x404694
	.globl sub_404694
	.type sub_404694, @function
sub_404694:

	nop	word ptr cs:[rax + rax]
.label_353:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_357:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_349:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_355
	mov	al, 1
.label_351:
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
	#Procedure 0x4046d0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046d7
	.globl sub_4046d7
	.type sub_4046d7, @function
sub_4046d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_359:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_358
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_360
	.section	.text
	.align	16
	#Procedure 0x404709
	.globl sub_404709
	.type sub_404709, @function
sub_404709:

	nop	dword ptr [rax]
.label_358:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_360:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_361
	inc	r9
	cmp	r9, 0xa
	jb	.label_359
.label_361:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40473f
	.globl sub_40473f
	.type sub_40473f, @function
sub_40473f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404740

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_362
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_362:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_363
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_365
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_364
.label_365:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_364:
	mov	ecx, dword ptr [rax]
.label_363:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047fe
	.globl sub_4047fe
	.type sub_4047fe, @function
sub_4047fe:

	nop	
.label_368:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_372:
	test	rcx, rcx
	je	.label_366
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_368
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_368
	.section	.text
	.align	16
	#Procedure 0x40482a

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_372
	.section	.text
	.align	16
	#Procedure 0x404834
	.globl sub_404834
	.type sub_404834, @function
sub_404834:

	nop	word ptr [rax + rax]
.label_366:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_370
	nop	word ptr cs:[rax + rax]
.label_371:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_369
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_369:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_367
	mov	rcx, qword ptr [rsi + 8]
.label_367:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_371
.label_370:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404887
	.globl sub_404887
	.type sub_404887, @function
sub_404887:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404890
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_373
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_373:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4048b3
	.globl sub_4048b3
	.type sub_4048b3, @function
sub_4048b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_374
	test	rax, rax
	je	.label_375
.label_374:
	pop	rbx
	ret	
.label_375:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4048da
	.globl sub_4048da
	.type sub_4048da, @function
sub_4048da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4048ea
	.globl sub_4048ea
	.type sub_4048ea, @function
sub_4048ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048f0
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
	.align	16
	#Procedure 0x404904
	.globl sub_404904
	.type sub_404904, @function
sub_404904:

	nop	word ptr cs:[rax + rax]
.label_377:
	mov	eax, ebx
.label_376:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40491d
	.globl sub_40491d
	.type sub_40491d, @function
sub_40491d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40492c

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
	ja	.label_377
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
	jmp	.label_376
	.section	.text
	.align	16
	#Procedure 0x404960

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
	je	.label_378
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_379:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_379
	inc	r14
.label_378:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049a6
	.globl sub_4049a6
	.type sub_4049a6, @function
sub_4049a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049b0

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
	jae	.label_386
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_386
	test	r14b, 0x12
	je	.label_386
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_387
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
	je	.label_401
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_400
	mov	esi, OFFSET FLAT:label_265
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_382
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_400:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_391
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_391:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_396
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_392
.label_386:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_385:
	xor	eax, eax
.label_387:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b26
	.globl sub_404b26
	.type sub_404b26, @function
sub_404b26:

	nop	word ptr cs:[rax + rax]
.label_390:
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
	jne	.label_389
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_399
.label_389:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_399:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_398
	mov	qword ptr [rbp + 0x10], rbx
.label_395:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_384
.label_398:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_383
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_384:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_392
	jmp	.label_402
.label_383:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_395
	.section	.text
	.align	16
	#Procedure 0x404bd4
	.globl sub_404bd4
	.type sub_404bd4, @function
sub_404bd4:

	nop	word ptr cs:[rax + rax]
.label_392:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_380
	cmp	rax, 3
	jb	.label_380
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_380
	nop	dword ptr [rax + rax]
.label_381:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_380
	dec	rax
	cmp	rax, 1
	ja	.label_381
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_390
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_388
.label_402:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_397
	cmp	r12, 2
	jb	.label_397
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_397:
	mov	r12, qword ptr [rsp + 0x18]
.label_396:
	mov	esi, OFFSET FLAT:label_265
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_388
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_393
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_394
	mov	esi, OFFSET FLAT:label_50
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_394
	or	byte ptr [r13 + 0x48], 4
.label_394:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_387
.label_388:
	mov	rbx, qword ptr [rsp + 0x10]
.label_393:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_382:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_401:
	mov	rdi, r13
	call	free
	jmp	.label_385
	.section	.text
	.align	16
	#Procedure 0x404d24
	.globl sub_404d24
	.type sub_404d24, @function
sub_404d24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d30

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
	je	.label_404
	movzx	eax, word ptr [rbp + 0x18]
	and	eax, 0xf000
	mov	r12d, 0x900
	cmp	eax, 0x8000
	je	.label_407
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_404
	mov	r12d, 0x10900
.label_407:
	mov	dword ptr [rsp], ecx
	mov	dword ptr [rsp + 4], r8d
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	call	openat
	test	eax, eax
	jns	.label_409
	call	__errno_location
	mov	rcx, rax
	cmp	dword ptr [rcx], 0xd
	jne	.label_408
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x8000
	jne	.label_408
	or	r12d, 1
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	mov	rbx, rcx
	call	openat
	mov	rcx, rbx
	test	eax, eax
	js	.label_408
.label_409:
	lea	rsi, [rsp + 8]
	mov	r15d, eax
	mov	edi, eax
	call	fstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_403
	mov	rax, qword ptr [rbp + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_403
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_403
	cmp	r13d, -1
	je	.label_406
	mov	ebx, 2
	cmp	dword ptr [rsp + 0x24], r13d
	jne	.label_403
.label_406:
	cmp	dword ptr [rsp + 0xd0], -1
	je	.label_410
	mov	ebx, 2
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	dword ptr [rsp + 0x28], eax
	jne	.label_403
.label_410:
	mov	edi, r15d
	mov	esi, dword ptr [rsp]
	mov	edx, dword ptr [rsp + 4]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_405
.label_403:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r15d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_404
.label_405:
	mov	edi, r15d
	call	close
	xor	ecx, ecx
	test	eax, eax
	setne	cl
	lea	ebx, [rcx*4 + 2]
	jmp	.label_404
	.section	.text
	.align	16
	#Procedure 0x404e9c
	.globl sub_404e9c
	.type sub_404e9c, @function
sub_404e9c:

	nop	dword ptr [rax + rax]
.label_408:
	xor	ebx, ebx
	cmp	dword ptr [rcx], 0xd
	setne	bl
	add	ebx, 5
.label_404:
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
	.align	16
	#Procedure 0x404ec0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ec9
	.globl sub_404ec9
	.type sub_404ec9, @function
sub_404ec9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0

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
	.align	16
	#Procedure 0x404f58
	.globl sub_404f58
	.type sub_404f58, @function
sub_404f58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f60

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
	.align	16
	#Procedure 0x404fd9
	.globl sub_404fd9
	.type sub_404fd9, @function
sub_404fd9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

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
	.align	16
	#Procedure 0x405043
	.globl sub_405043
	.type sub_405043, @function
sub_405043:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405050

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
	.align	16
	#Procedure 0x4050af
	.globl sub_4050af
	.type sub_4050af, @function
sub_4050af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4050b0

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
	.align	16
	#Procedure 0x4050f9
	.globl sub_4050f9
	.type sub_4050f9, @function
sub_4050f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405100

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
	.align	16
	#Procedure 0x405145
	.globl sub_405145
	.type sub_405145, @function
sub_405145:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150

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
	.align	16
	#Procedure 0x40517f
	.globl sub_40517f
	.type sub_40517f, @function
sub_40517f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405180

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
	.align	16
	#Procedure 0x4051c9
	.globl sub_4051c9
	.type sub_4051c9, @function
sub_4051c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_434
	test	r14, r14
	je	.label_432
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
	jmp	.label_433
.label_433:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_434:
	xor	r15d, r15d
	test	r14, r14
	je	.label_433
	mov	rdi, r14
	jmp	.label_435
.label_432:
	mov	rdi, rbx
.label_435:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	.section	.text
	.align	16
	#Procedure 0x405246
	.globl sub_405246
	.type sub_405246, @function
sub_405246:

	nop	
	nop	dword ptr [rax + rax]
.label_436:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x405259

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_436
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_437
	jmp	hash_free
.label_437:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405272
	.globl sub_405272
	.type sub_405272, @function
sub_405272:

	nop	word ptr cs:[rax + rax]
.label_438:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405285

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_439
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_438
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_442
.label_440:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4052b7
	.globl sub_4052b7
	.type sub_4052b7, @function
sub_4052b7:

	nop	dword ptr [rax]
.label_439:
	test	rcx, rcx
	jne	.label_441
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_441:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_440
.label_442:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x405300
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405308
	.globl sub_405308
	.type sub_405308, @function
sub_405308:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_443
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_443
.label_444:
	ret	
.label_443:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_444
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405336
	.globl sub_405336
	.type sub_405336, @function
sub_405336:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_446
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_449
	mov	ecx, OFFSET FLAT:label_450
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4053b4
	.globl sub_4053b4
	.type sub_4053b4, @function
sub_4053b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053c0
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
	#Procedure 0x4053f3
	.globl sub_4053f3
	.type sub_4053f3, @function
sub_4053f3:

	nop	word ptr cs:[rax + rax]
.label_451:
	ret	
.label_453:
	xor	eax, eax
	jmp	.label_451
	.section	.text
	.align	16
	#Procedure 0x405405
	.globl sub_405405
	.type sub_405405, @function
sub_405405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40540f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_453
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_452]]
	.section	.text
	.align	16
	#Procedure 0x405420

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
	#Procedure 0x40542d
	.globl sub_40542d
	.type sub_40542d, @function
sub_40542d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405430

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_456
	test	byte ptr [r14 + 0x48], 1
	je	.label_456
	mov	dl, 1
.label_456:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_458
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_458
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_457
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_464
.label_458:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_457
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_459
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_461
.label_459:
	mov	eax, dword ptr [r14]
.label_464:
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
.label_455:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_457:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_462
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_455
	cmp	ecx, 0x4000
	jne	.label_463
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_454
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_454
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_454:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_455
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_460
	cmp	cl, 0x2e
	jne	.label_455
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_455
.label_460:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_455
.label_462:
	mov	ax, 8
	jmp	.label_455
.label_463:
	mov	ax, 3
	jmp	.label_455
.label_461:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_455
	.section	.text
	.align	16
	#Procedure 0x4055b8
	.globl sub_4055b8
	.type sub_4055b8, @function
sub_4055b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0

	.globl chownat
	.type chownat, @function
chownat:
	xor	r8d, r8d
	jmp	fchownat
	.section	.text
	.align	16
	#Procedure 0x4055c8
	.globl sub_4055c8
	.type sub_4055c8, @function
sub_4055c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055d8
	.globl sub_4055d8
	.type sub_4055d8, @function
sub_4055d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055e0
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055e7
	.globl sub_4055e7
	.type sub_4055e7, @function
sub_4055e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055fa
	.globl sub_4055fa
	.type sub_4055fa, @function
sub_4055fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405600

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_465
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_465:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x405622
	.globl sub_405622
	.type sub_405622, @function
sub_405622:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_466:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_466
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x405651
	.globl sub_405651
	.type sub_405651, @function
sub_405651:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660
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
	.align	16
	#Procedure 0x4056d2
	.globl sub_4056d2
	.type sub_4056d2, @function
sub_4056d2:

	nop	word ptr cs:[rax + rax]
.label_467:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_469:
	xor	eax, eax
.label_468:
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
	.align	16
	#Procedure 0x40570c
	.globl sub_40570c
	.type sub_40570c, @function
sub_40570c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40570f

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_469
	test	ah, 2
	jne	.label_467
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_468
.label_470:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	.section	.text
	.align	16
	#Procedure 0x40573a
	.globl sub_40573a
	.type sub_40573a, @function
sub_40573a:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40573e

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_470
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
	.section	.text
	.align	16
	#Procedure 0x405760

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
	jae	.label_471
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_477
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_477
	mov	qword ptr [r15 + 0x10], rax
.label_471:
	test	rbx, rbx
	je	.label_474
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_472:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_472
.label_474:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_476
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_473:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_473
	lea	rax, [rax + r8*8]
.label_476:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_475
.label_477:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_475:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40583d
	.globl sub_40583d
	.type sub_40583d, @function
sub_40583d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405840

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
	je	.label_478
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
.label_478:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058ca
	.globl sub_4058ca
	.type sub_4058ca, @function
sub_4058ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_265
	call	setlocale
	mov	edi, OFFSET FLAT:label_483
	mov	esi, OFFSET FLAT:label_506
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_483
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rsp + 0x10]
	call	chopt_init
	mov	r13d, 0xffffffff
	mov	ecx, 0x10
	xor	r12d, r12d
	jmp	.label_482
.label_931:
	mov	dword ptr [rsp + 0x10], 0
	mov	ecx, r14d
	nop	word ptr cs:[rax + rax]
.label_482:
	mov	r14d, ecx
	mov	edx, OFFSET FLAT:label_497
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x47
	jle	.label_502
	add	eax, -0x48
	cmp	eax, 0x3b
	ja	.label_496
	mov	ecx, 0x11
	jmp	qword ptr [word ptr [+ (rax * 8) + label_505]]
.label_925:
	mov	ecx, 2
	jmp	.label_482
.label_926:
	mov	ecx, 0x10
	jmp	.label_482
.label_927:
	mov	byte ptr [rsp + 0x14], 1
	mov	ecx, r14d
	jmp	.label_482
.label_928:
	mov	dword ptr [rsp + 0x10], 1
	mov	ecx, r14d
	jmp	.label_482
.label_929:
	mov	byte ptr [rsp + 0x21], 1
	mov	ecx, r14d
	jmp	.label_482
.label_930:
	xor	r13d, r13d
	mov	ecx, r14d
	jmp	.label_482
.label_932:
	mov	r13d, 1
	mov	ecx, r14d
	jmp	.label_482
.label_933:
	xor	r12d, r12d
	mov	ecx, r14d
	jmp	.label_482
.label_934:
	mov	r12b, 1
	mov	ecx, r14d
	jmp	.label_482
.label_935:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	mov	ecx, r14d
	jmp	.label_482
.label_502:
	cmp	eax, -1
	jne	.label_504
	mov	r15d, 0x10
	cmp	byte ptr [rsp + 0x14], 0
	je	.label_479
	cmp	r14d, 0x10
	jne	.label_485
	cmp	r13d, 1
	mov	r13d, 0
	jne	.label_479
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_487
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_485:
	mov	r15d, r14d
.label_479:
	test	r13d, r13d
	setne	byte ptr [rsp + 0x20]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	edx, ebp
	sub	edx, eax
	mov	rcx,  qword ptr [word ptr [rip + reference_file]]
	cmp	rcx, 1
	mov	esi, 1
	adc	esi, 0
	cmp	edx, esi
	jl	.label_494
	test	rcx, rcx
	je	.label_503
	mov	rdi,  qword ptr [word ptr [rip + reference_file]]
	lea	rsi, [rsp + 0x38]
	call	stat
	test	eax, eax
	jne	.label_484
	mov	ebp, dword ptr [rsp + 0x58]
	mov	edi, ebp
	call	gid_to_name
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_492
.label_503:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rbp, qword ptr [rbx + rax*8]
	xor	eax, eax
	cmp	byte ptr [rbp], 0
	je	.label_490
	mov	rdi, rbp
	call	xstrdup
.label_490:
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	call	parse_group
	mov	ebp, eax
.label_492:
	test	r12b, r12b
	je	.label_481
	mov	al, byte ptr [rsp + 0x14]
	test	al, al
	je	.label_481
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_480
.label_481:
	or	r15d, 0x400
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rbx + rax*8]
	lea	rax, [rsp + 0x10]
	mov	qword ptr [rsp], rax
	mov	edx, 0xffffffff
	mov	r8d, 0xffffffff
	mov	r9d, 0xffffffff
	mov	esi, r15d
	mov	ecx, ebp
	call	chown_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_504:
	cmp	eax, 0xffffff7d
	je	.label_493
	cmp	eax, 0xffffff7e
	jne	.label_496
	xor	edi, edi
	call	usage
.label_493:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_498
	mov	edx, OFFSET FLAT:label_449
	mov	r8d, OFFSET FLAT:label_499
	mov	r9d, OFFSET FLAT:label_500
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_496:
	mov	edi, 1
	call	usage
.label_494:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_486
	mov	esi, OFFSET FLAT:label_491
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
.label_484:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	edi, 4
	jmp	.label_488
.label_480:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_489
.label_488:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_486:
	mov	esi, OFFSET FLAT:label_495
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
	.section	.text
	.align	16
	#Procedure 0x405c74
	.globl sub_405c74
	.type sub_405c74, @function
sub_405c74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c80

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
	je	.label_507
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
.label_507:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405cd2
	.globl sub_405cd2
	.type sub_405cd2, @function
sub_405cd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ce0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ced
	.globl sub_405ced
	.type sub_405ced, @function
sub_405ced:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405cfa
	.globl sub_405cfa
	.type sub_405cfa, @function
sub_405cfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d00
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
	.align	16
	#Procedure 0x405d10

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x405d19
	.globl sub_405d19
	.type sub_405d19, @function
sub_405d19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d20

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x405d2a
	.globl sub_405d2a
	.type sub_405d2a, @function
sub_405d2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d30

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
	je	.label_512
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_513
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_511
	cvtsi2ss	xmm0, rax
	jmp	.label_508
.label_515:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_519:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_517
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_518
.label_510:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_514:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_513
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_515
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_519
.label_511:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_508:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_510
	cvtsi2ss	xmm1, rcx
	jmp	.label_514
.label_517:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_518:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_513
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_520
	mulss	xmm0, dword ptr [rcx + 8]
.label_520:
	movss	xmm1,  dword ptr [dword ptr [rip + label_40]]
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
	jne	.label_513
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_509
	nop	dword ptr [rax + rax]
.label_516:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_516
.label_509:
	mov	qword ptr [r15 + 0x48], 0
.label_513:
	mov	rax, r14
.label_512:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405eb6
	.globl sub_405eb6
	.type sub_405eb6, @function
sub_405eb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0

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
	mov	rcx,  qword ptr [word ptr [rip + label_9]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_10]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_11]]
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
	.align	16
	#Procedure 0x405f2d
	.globl sub_405f2d
	.type sub_405f2d, @function
sub_405f2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f30

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x405f3d
	.globl sub_405f3d
	.type sub_405f3d, @function
sub_405f3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f40

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x405f47
	.globl sub_405f47
	.type sub_405f47, @function
sub_405f47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f50

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
	jne	.label_525
	cmp	byte ptr [rdx + 0x10], 0
	jne	.label_525
	xor	esi, esi
	cmp	dword ptr [rdx], 2
	sete	sil
	shl	esi, 3
.label_525:
	or	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	test	rax, rax
	je	.label_524
	mov	bl, 1
	nop	dword ptr [rax]
.label_521:
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
	jne	.label_521
.label_524:
	mov	r15, qword ptr [rsp + 0x40]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_527
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_528
	xor	ebx, ebx
	jmp	.label_527
.label_528:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_527:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_526
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_522
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_526:
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
	.align	16
	#Procedure 0x406066
	.globl sub_406066
	.type sub_406066, @function
sub_406066:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406070

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_529
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_530:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_529
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_530
.label_529:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060bc
	.globl sub_4060bc
	.type sub_4060bc, @function
sub_4060bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4060c0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060cb
	.globl sub_4060cb
	.type sub_4060cb, @function
sub_4060cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4060da
	.globl sub_4060da
	.type sub_4060da, @function
sub_4060da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060e0

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
	je	.label_531
	mov	qword ptr [rax], rbx
.label_531:
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
	#Procedure 0x4061cc
	.globl sub_4061cc
	.type sub_4061cc, @function
sub_4061cc:

	nop	dword ptr [rax]
.label_537:
	mov	edi, OFFSET FLAT:label_532
	mov	esi, OFFSET FLAT:label_533
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_534
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4061e9
	.globl sub_4061e9
	.type sub_4061e9, @function
sub_4061e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061ec

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_537
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_535
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_535
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_536
.label_535:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_538
	mov	al, 1
	test	rbx, rbx
	je	.label_536
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_538:
	xor	eax, eax
.label_536:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_539
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_539:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406267
	.globl sub_406267
	.type sub_406267, @function
sub_406267:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406270

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
	jae	.label_555
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_548:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_548
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_544
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_556
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_542
	cmp	eax, 0x22
	jne	.label_544
	mov	r12d, 1
.label_542:
	test	rbp, rbp
	jne	.label_546
	jmp	.label_553
.label_556:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_544
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_544
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_544
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_546:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_553
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_557
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_541
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_541
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_547
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_549
	cmp	ecx, 0x44
	je	.label_549
	cmp	ecx, 0x69
	jne	.label_547
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_547
.label_549:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_547
.label_541:
	mov	rsi, r14
.label_547:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_557
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_543]]
.label_1003:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_540
.label_557:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_545
.label_1004:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_540
.label_1005:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_540
.label_1007:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_540
.label_1001:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_554
.label_1002:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_540
.label_1006:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_540
.label_1008:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_540
.label_1009:
	lea	rdi, [rsp]
	mov	edx, 7
.label_540:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_554:
	mov	rsi, r14
.label_1011:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_553:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_545:
	mov	r15d, r12d
.label_544:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1010:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_554
.label_1012:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_554
.label_555:
	mov	edi, OFFSET FLAT:label_550
	mov	esi, OFFSET FLAT:label_551
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_552
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x406512
	.globl sub_406512
	.type sub_406512, @function
sub_406512:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406520

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_559
	cmp	byte ptr [rax], 0x43
	jne	.label_561
	cmp	byte ptr [rax + 1], 0
	je	.label_558
.label_561:
	mov	esi, OFFSET FLAT:label_560
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_559
.label_558:
	xor	ebx, ebx
.label_559:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406551
	.globl sub_406551
	.type sub_406551, @function
sub_406551:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406560

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	16
	#Procedure 0x40656d
	.globl sub_40656d
	.type sub_40656d, @function
sub_40656d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406570

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
	js	.label_563
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_562
	mov	dword ptr [r14], ebp
	jmp	.label_563
.label_562:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_563:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065bf
	.globl sub_4065bf
	.type sub_4065bf, @function
sub_4065bf:

	nop	
.label_564:
	add	rbx, 2
.label_566:
	cmp	rbx, -1
	je	.label_565
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_564
	mov	r14, rbx
.label_565:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065e4
	.globl sub_4065e4
	.type sub_4065e4, @function
sub_4065e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0

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
	jmp	.label_566
	.section	.text
	.align	16
	#Procedure 0x40660e
	.globl sub_40660e
	.type sub_40660e, @function
sub_40660e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406610

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_567
	.section	.text
	.align	16
	#Procedure 0x406616
	.globl sub_406616
	.type sub_406616, @function
sub_406616:

	nop	word ptr cs:[rax + rax]
.label_568:
	mov	edi, eax
	call	close
.label_567:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_569
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_568
	jmp	.label_567
.label_569:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406643
	.globl sub_406643
	.type sub_406643, @function
sub_406643:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406650

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_265
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_570
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406675
	.globl sub_406675
	.type sub_406675, @function
sub_406675:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406680

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x406685
	.globl sub_406685
	.type sub_406685, @function
sub_406685:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406690

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
	je	.label_574
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_575
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
	je	.label_576
.label_575:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_572
	mov	rax, qword ptr [rax + 8]
	jmp	.label_574
.label_571:
	mov	rdi, rbp
	call	free
.label_573:
	mov	rax, qword ptr [rsp]
.label_574:
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
	#Procedure 0x406728
	.globl sub_406728
	.type sub_406728, @function
sub_406728:

	nop	word ptr [rax + rax]
.label_572:
	mov	r12b, 1
	mov	r14, rbp
.label_576:
	xor	eax, eax
	test	r15d, r15d
	js	.label_574
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_574
	test	r12b, r12b
	je	.label_573
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_573
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_571
	cmp	rax, rbp
	je	.label_573
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406790

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_577
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_577:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4067ae
	.globl sub_4067ae
	.type sub_4067ae, @function
sub_4067ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4067b0
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
	.align	16
	#Procedure 0x4067d7
	.globl sub_4067d7
	.type sub_4067d7, @function
sub_4067d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_578
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_583:
	cmp	qword ptr [rsi], 0
	je	.label_580
	mov	rax, rsi
	nop	dword ptr [rax]
.label_581:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_581
	inc	rdx
.label_580:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_583
.label_578:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_579
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_582
.label_579:
	xor	eax, eax
.label_582:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406839
	.globl sub_406839
	.type sub_406839, @function
sub_406839:

	nop	dword ptr [rax]
.label_584:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40684b

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_585
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_584
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_585:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406877
	.globl sub_406877
	.type sub_406877, @function
sub_406877:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406880
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_586
	mov	rcx, qword ptr [rdi]
	jmp	.label_589
	.section	.text
	.align	16
	#Procedure 0x40688e
	.globl sub_40688e
	.type sub_40688e, @function
sub_40688e:

	nop	
.label_587:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406896
	.globl sub_406896
	.type sub_406896, @function
sub_406896:

	nop	dword ptr [rax]
.label_588:
	add	rcx, 0x10
.label_589:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_587
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_588
.label_586:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068b0
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
.label_594:
	cmp	qword ptr [rcx], rbx
	jne	.label_590
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_591
.label_590:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_594
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_593:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_592
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_593
	jmp	.label_592
.label_591:
	mov	rcx, qword ptr [rdx]
.label_592:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x406916
	.globl sub_406916
	.type sub_406916, @function
sub_406916:

	nop	word ptr cs:[rax + rax]
.label_596:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_597:
	xor	eax, eax
.label_595:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406935
	.globl sub_406935
	.type sub_406935, @function
sub_406935:

	nop	
.label_598:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_596
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_595
	.section	.text
	.align	16
	#Procedure 0x406951

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_598
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_597
	.section	.text
	.align	16
	#Procedure 0x406980

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
	#Procedure 0x4069b6
	.globl sub_4069b6
	.type sub_4069b6, @function
sub_4069b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069c0

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
	je	.label_599
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_601
	jmp	.label_600
.label_599:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_600
.label_601:
	mov	eax, 1
	test	bpl, bpl
	je	.label_600
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
.label_600:
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
	#Procedure 0x406a3d
	.globl sub_406a3d
	.type sub_406a3d, @function
sub_406a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a40
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
	.align	16
	#Procedure 0x406a54
	.globl sub_406a54
	.type sub_406a54, @function
sub_406a54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a60

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x406a6a
	.globl sub_406a6a
	.type sub_406a6a, @function
sub_406a6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a70
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x406a7d
	.globl sub_406a7d
	.type sub_406a7d, @function
sub_406a7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a80
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
	.align	16
	#Procedure 0x406a90

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_602
	nop	dword ptr [rax]
.label_604:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_603
	call	closedir
.label_603:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_604
.label_602:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x406aca
	.globl sub_406aca
	.type sub_406aca, @function
sub_406aca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ad0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ad9
	.globl sub_406ad9
	.type sub_406ad9, @function
sub_406ad9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ae0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_609
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_611
	nop	word ptr cs:[rax + rax]
.label_607:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_612
	mov	rbx, qword ptr [rdi + 8]
.label_612:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_607
	jmp	.label_608
.label_611:
	mov	rbx, rdi
.label_608:
	mov	rdi, rbx
	call	free
.label_609:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_610
	call	fts_lfree
.label_610:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_613
	xor	ebx, ebx
	test	al, 4
	jne	.label_606
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_616
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_616:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_614
	jmp	.label_606
.label_613:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_606
	call	close
.label_614:
	test	eax, eax
	je	.label_606
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_606:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_605
	call	hash_free
.label_605:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_615
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_615:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bd8
	.globl sub_406bd8
	.type sub_406bd8, @function
sub_406bd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406be0

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
	.align	16
	#Procedure 0x406c17
	.globl sub_406c17
	.type sub_406c17, @function
sub_406c17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c20

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_617
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_619
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_617:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_618
	cmp	qword ptr [rax + 0x58], 0
	js	.label_618
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_619
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_618
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_618
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_618:
	add	rsp, 0x18
	ret	
.label_619:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406cb2
	.globl sub_406cb2
	.type sub_406cb2, @function
sub_406cb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cc0
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
	#Procedure 0x406cd3
	.globl sub_406cd3
	.type sub_406cd3, @function
sub_406cd3:

	nop	word ptr cs:[rax + rax]
.label_624:
	add	r14, 0x10
.label_626:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_621
	cmp	qword ptr [r14], 0
	je	.label_624
	test	r14, r14
	je	.label_624
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_622:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_622
	jmp	.label_624
.label_620:
	add	r14, 0x10
.label_627:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_625
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_620
	nop	word ptr cs:[rax + rax]
.label_629:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_629
	jmp	.label_620
	.section	.text
	.align	16
	#Procedure 0x406d45

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_621
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_621
	mov	r14, qword ptr [r15]
	jmp	.label_626
	.section	.text
	.align	16
	#Procedure 0x406d60
	.globl sub_406d60
	.type sub_406d60, @function
sub_406d60:

	nop	dword ptr [rax + rax]
.label_621:
	mov	r14, qword ptr [r15]
	jmp	.label_627
	.section	.text
	.align	16
	#Procedure 0x406d6a
	.globl sub_406d6a
	.type sub_406d6a, @function
sub_406d6a:

	nop	word ptr [rax + rax]
.label_625:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_628
	nop	dword ptr [rax]
.label_623:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_623
.label_628:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x406da6
	.globl sub_406da6
	.type sub_406da6, @function
sub_406da6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406db0
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
	#Procedure 0x406dbf
	.globl sub_406dbf
	.type sub_406dbf, @function
sub_406dbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406dc0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_630:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_630
	mov	dword ptr [rdi + 0x10], esi
	ret	
.label_635:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_631
	.section	.text
	.align	16
	#Procedure 0x406dec

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_634
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_635
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_635
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_633
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_631
.label_634:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_631:
	test	ebx, ebx
	js	.label_633
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_633
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_632
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_633
.label_632:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_633:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ea3
	.globl sub_406ea3
	.type sub_406ea3, @function
sub_406ea3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406eb0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_636
	xor	eax, eax
.label_639:
	cmp	qword ptr [r8], 0
	je	.label_637
	test	r8, r8
	je	.label_637
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_638:
	cmp	rax, rdx
	jae	.label_636
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_638
.label_637:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_639
.label_636:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ef3
	.globl sub_406ef3
	.type sub_406ef3, @function
sub_406ef3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_640
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_641
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_640
.label_641:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_640
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_642
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_642:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_640:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x406f77
	.globl sub_406f77
	.type sub_406f77, @function
sub_406f77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_643
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_643
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_643:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x406fa6
	.globl sub_406fa6
	.type sub_406fa6, @function
sub_406fa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fb0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x406fbe
	.globl sub_406fbe
	.type sub_406fbe, @function
sub_406fbe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406fc0

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
	js	.label_644
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_647
	cmp	r12d, 0x7fffffff
	je	.label_649
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
	jne	.label_645
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_645:
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
.label_647:
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
	jbe	.label_650
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_646
.label_650:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_648
	mov	rdi, r14
	call	free
.label_648:
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
.label_646:
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
.label_644:
	call	abort
.label_649:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40717d
	.globl sub_40717d
	.type sub_40717d, @function
sub_40717d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407180

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
	jae	.label_651
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_651:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4071a5
	.globl sub_4071a5
	.type sub_4071a5, @function
sub_4071a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071b0
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
	jne	.label_659
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_652
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_657
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_652
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_652
.label_659:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_652
.label_657:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_656
	call	fts_lfree
.label_656:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_658
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_658:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_654
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_654
	test	byte ptr [rbx + 0x48], 4
	jne	.label_654
	mov	esi, OFFSET FLAT:label_50
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_661
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_655
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_653
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_652
.label_654:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_652:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_661:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_652
.label_655:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_660
.label_653:
	mov	edi, ebp
	call	close
.label_660:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_652
	.section	.text
	.align	16
	#Procedure 0x4072e2
	.globl sub_4072e2
	.type sub_4072e2, @function
sub_4072e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072f0
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
	.align	16
	#Procedure 0x407304
	.globl sub_407304
	.type sub_407304, @function
sub_407304:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407310

	.globl lchownat
	.type lchownat, @function
lchownat:
	mov	r8d, 0x100
	jmp	fchownat
	.section	.text
	.align	16
	#Procedure 0x40731b
	.globl sub_40731b
	.type sub_40731b, @function
sub_40731b:

	nop	dword ptr [rax + rax]
.label_663:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_662
	test	cl, cl
	jne	.label_662
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_662:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40734b
	.globl sub_40734b
	.type sub_40734b, @function
sub_40734b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407355

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
	je	.label_663
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_662
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_662
	.section	.text
	.align	16
	#Procedure 0x407390

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
	ja	.label_694
	jmp	qword ptr [word ptr [+ (rax * 8) + label_670]]
.label_902:
	cmp	byte ptr [rsi + 4], 0
	je	.label_694
	mov	rax, qword ptr [rsi + 8]
	mov	r15b, 1
	test	rax, rax
	je	.label_666
	mov	rcx, qword ptr [r14 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_666
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_666
	mov	rbp, r8
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbx], 0x2f
	jne	.label_671
	cmp	byte ptr [rbx + 1], 0
	je	.label_676
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_673
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
	mov	edx, OFFSET FLAT:label_489
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
.label_677:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_691
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
	jmp	.label_666
.label_903:
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
	je	.label_694
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_664
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
	jmp	.label_666
.label_904:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_679
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_681
	jmp	.label_682
.label_905:
	mov	r15b, 1
	cmp	byte ptr [rsi + 4], 0
	je	.label_666
.label_694:
	mov	eax, r13d
	and	eax, r12d
	cmp	eax, -1
	jne	.label_689
	cmp	dword ptr [rsi], 2
	jne	.label_689
	cmp	qword ptr [rsi + 8], 0
	jne	.label_689
	cmp	byte ptr [rsi + 0x10], 0
	je	.label_693
.label_689:
	lea	rdx, [r14 + 0x78]
	cmp	byte ptr [rsi + 0x10], 0
	je	.label_695
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x90]
	cmp	eax, 0xa000
	jne	.label_695
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
	je	.label_695
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	lea	rdx, [rsp + 0x38]
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_707
	mov	r15, rdx
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_672
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
	jmp	.label_679
.label_695:
	cmp	r12d, -1
	je	.label_687
	mov	ecx, dword ptr [rdx + 0x1c]
	cmp	ecx, r12d
	sete	al
	cmp	r13d, -1
	je	.label_683
	cmp	ecx, r12d
	je	.label_692
	jmp	.label_683
.label_906:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_679
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	r15, rsi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, r13d
	call	error
	xor	edx, edx
	mov	rsi, r15
	jmp	.label_707
.label_907:
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_709
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_710
.label_709:
	mov	qword ptr [rsp + 0x20], r8
	mov	r12b, 1
	xor	edx, edx
	xor	r13d, r13d
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_679
	mov	r13d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_665
.label_682:
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
.label_707:
	xor	r13d, r13d
.label_679:
	xor	r15d, r15d
	jmp	.label_674
.label_687:
	mov	al, 1
	cmp	r13d, -1
	je	.label_683
.label_692:
	cmp	dword ptr [rdx + 0x20], r13d
	sete	al
.label_683:
	movzx	ecx, word ptr [r14 + 0x70]
	cmp	ecx, 6
	ja	.label_668
	mov	edi, 0x56
	bt	edi, ecx
	jae	.label_668
	mov	rcx, qword ptr [rsi + 8]
	test	rcx, rcx
	je	.label_668
	mov	rdi, qword ptr [rdx + 8]
	cmp	rdi, qword ptr [rcx]
	jne	.label_668
	mov	rdi, qword ptr [rdx]
	cmp	rdi, qword ptr [rcx + 8]
	jne	.label_668
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbp], 0x2f
	jne	.label_698
	cmp	byte ptr [rbp + 1], 0
	je	.label_701
.label_698:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_673
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
	mov	edx, OFFSET FLAT:label_489
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_697:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_691
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_666
.label_668:
	test	al, al
	mov	qword ptr [rsp + 0x20], r8
	je	.label_678
	mov	edi, dword ptr [r8 + 0x2c]
	cmp	byte ptr [rsi + 0x10], 0
	mov	dword ptr [rsp + 0x14], ebp
	mov	qword ptr [rsp + 0x28], rdx
	je	.label_680
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
	ja	.label_690
	mov	r12b, 1
	xor	r15d, r15d
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ebx, dword ptr [rsp + 0x10]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_675]]
.label_860:
	mov	r12b, 1
	mov	r13b, 1
	jmp	.label_696
.label_678:
	mov	r12b, 1
	xor	r13d, r13d
.label_696:
	mov	r15b, 1
.label_674:
	cmp	dword ptr [rsi], 2
	je	.label_702
	mov	eax, r15d
	and	al, 1
	test	r13b, r13b
	je	.label_704
	mov	ecx, r12d
	and	cl, r15b
	je	.label_704
	cmp	ebp, -1
	je	.label_706
	cmp	dword ptr [rdx + 0x1c], ebp
	jne	.label_708
.label_706:
	cmp	ebx, -1
	je	.label_704
	cmp	dword ptr [rdx + 0x20], ebx
	jne	.label_708
.label_704:
	cmp	dword ptr [rsi], 0
	jne	.label_702
	test	al, al
	movzx	eax, r12b
	lea	eax, [rax + rax*2 + 1]
	mov	ebp, 3
	cmovne	ebp, eax
	xor	r12d, r12d
	test	rdx, rdx
	mov	ebx, 0
	jne	.label_711
	jmp	.label_667
.label_708:
	movzx	ecx, r12b
	inc	ecx
	test	al, al
	mov	ebp, 3
	cmovne	ebp, ecx
.label_711:
	mov	edi, dword ptr [rdx + 0x1c]
	mov	r13, rsi
	mov	rbx, rdx
	call	uid_to_name
	mov	r12, rax
	mov	edi, dword ptr [rbx + 0x20]
	call	gid_to_name
	mov	rsi, r13
	mov	rbx, rax
.label_667:
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
.label_702:
	cmp	byte ptr [rsi + 4], 0
	jne	.label_688
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	call	rpl_fts_set
.label_688:
	and	r15b, 1
.label_666:
	mov	eax, r15d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_680:
	mov	rsi, r9
	mov	edx, ebp
	mov	ebp, ebx
	mov	ecx, ebx
	call	lchownat
	test	eax, eax
	sete	r15b
	mov	r12b, 1
	je	.label_700
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r12b
	mov	al, 1
	je	.label_703
	mov	eax, r15d
.label_703:
	mov	r15b, al
.label_700:
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ebx, ebp
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_705
.label_710:
	mov	qword ptr [r14 + 0x20], 1
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, r14
	call	rpl_fts_set
	mov	r15b, 1
	jmp	.label_666
.label_861:
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
.label_705:
	mov	r13b, 1
	test	r15b, 1
	jne	.label_674
.label_862:
	mov	r13b, 1
	cmp	byte ptr [rsi + 0x11], 0
	jne	.label_674
	mov	dword ptr [rsp + 0x10], ebx
	mov	ebx, ebp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	cmp	ebx, -1
	je	.label_684
	mov	esi, OFFSET FLAT:label_685
	jmp	.label_686
.label_693:
	lea	rdx, [r14 + 0x78]
	mov	al, 1
	jmp	.label_683
.label_701:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_669
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
	jmp	.label_697
.label_684:
	mov	esi, OFFSET FLAT:label_699
.label_686:
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
	jmp	.label_674
.label_676:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_669
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
	jmp	.label_677
.label_690:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407b36
	.globl sub_407b36
	.type sub_407b36, @function
sub_407b36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b40

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
	.align	16
	#Procedure 0x407b6d
	.globl sub_407b6d
	.type sub_407b6d, @function
sub_407b6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407b70

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b84
	.globl sub_407b84
	.type sub_407b84, @function
sub_407b84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b90

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_712:
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
	ja	.label_712
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407bdb
	.globl sub_407bdb
	.type sub_407bdb, @function
sub_407bdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407be0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_713
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_714:
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
	jne	.label_714
.label_713:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c13
	.globl sub_407c13
	.type sub_407c13, @function
sub_407c13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c20
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
	#Procedure 0x407c2f
	.globl sub_407c2f
	.type sub_407c2f, @function
sub_407c2f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407c30

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_715
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_716]]
	jbe	.label_717
	movss	xmm1,  dword ptr [dword ptr [rip + label_720]]
	ucomiss	xmm1, xmm0
	jbe	.label_717
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_719]]
	jbe	.label_717
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_717
	addss	xmm1,  dword ptr [dword ptr [rip + label_716]]
	ucomiss	xmm0, xmm1
	jbe	.label_717
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_718]]
	ucomiss	xmm2, xmm0
	jb	.label_717
	ucomiss	xmm0, xmm1
	ja	.label_715
.label_717:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_715:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ca4
	.globl sub_407ca4
	.type sub_407ca4, @function
sub_407ca4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cb0

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
	.align	16
	#Procedure 0x407cc8
	.globl sub_407cc8
	.type sub_407cc8, @function
sub_407cc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cd0
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
	.align	16
	#Procedure 0x407cdd
	.globl sub_407cdd
	.type sub_407cdd, @function
sub_407cdd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407ce0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x407cee
	.globl sub_407cee
	.type sub_407cee, @function
sub_407cee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407cf0

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
	je	.label_721
	test	rbx, rbx
	je	.label_721
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_723:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_722
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_722
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_723
	jmp	.label_721
.label_722:
	mov	r15, qword ptr [rbx]
.label_721:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d50
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d59
	.globl sub_407d59
	.type sub_407d59, @function
sub_407d59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d60

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_489
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_724
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_724:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d9d
	.globl sub_407d9d
	.type sub_407d9d, @function
sub_407d9d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407da0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x407daa
	.globl sub_407daa
	.type sub_407daa, @function
sub_407daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407db0

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
	je	.label_762
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_774
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_732
.label_762:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_730
	mov	edi, dword ptr [rbx + 0x2c]
.label_730:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_736
	test	al, 1
	je	.label_739
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_736
.label_739:
	mov	edx, 0x20000
.label_736:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_770
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_746
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_750
.label_774:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_770:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_749
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_734
.label_746:
	test	byte ptr [rbx + 0x49], 1
	je	.label_750
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
	je	.label_758
.label_750:
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
	jne	.label_732
	cmp	ebp, 2
	jne	.label_725
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_727
.label_725:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_731
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_731
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_740
.label_758:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_734
.label_731:
	mov	r15, rbx
	xor	r12d, r12d
.label_740:
	xor	r12b, 1
.label_727:
	cmp	ebp, 3
	je	.label_747
	test	r12b, r12b
	jne	.label_747
	mov	dword ptr [rsp + 4], r12d
.label_759:
	mov	rbx, r15
	jmp	.label_732
.label_747:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_751
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_751:
	test	ebx, ebx
	js	.label_756
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_759
.label_756:
	cmp	ebp, 3
	jne	.label_760
	test	r12b, r12b
	je	.label_760
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_760:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_764
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_764
	call	close
.label_764:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_732:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_778
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_778:
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
.label_767:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_737
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_777:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_765
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_769
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_769
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_772
	test	al, al
	je	.label_763
	jmp	.label_769
	.section	.text
	.align	16
	#Procedure 0x4080e1
	.globl sub_4080e1
	.type sub_4080e1, @function
sub_4080e1:

	nop	word ptr cs:[rax + rax]
.label_772:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_769
.label_763:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_777
	jmp	.label_779
	.section	.text
	.align	16
	#Procedure 0x408103
	.globl sub_408103
	.type sub_408103, @function
sub_408103:

	nop	word ptr cs:[rax + rax]
.label_769:
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
	je	.label_742
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_744
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_745
	.section	.text
	.align	16
	#Procedure 0x40815c
	.globl sub_40815c
	.type sub_40815c, @function
sub_40815c:

	nop	dword ptr [rax]
.label_744:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_742
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_728
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
	jmp	.label_754
.label_728:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_754:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_745:
	add	rbp, rdx
	jb	.label_771
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_773
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_733
	.section	.text
	.align	16
	#Procedure 0x408213
	.globl sub_408213
	.type sub_408213, @function
sub_408213:

	nop	word ptr cs:[rax + rax]
.label_773:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_733:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_748
	test	byte ptr [rbx + 0x49], 4
	jne	.label_748
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_753
	.section	.text
	.align	16
	#Procedure 0x408274
	.globl sub_408274
	.type sub_408274, @function
sub_408274:

	nop	word ptr cs:[rax + rax]
.label_748:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_752
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_741
.label_752:
	xor	ebx, ebx
.label_741:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_753:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_768
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_768:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_757
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_757
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_757:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_767
	jmp	.label_737
.label_765:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_766
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_766:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_737
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_737
.label_779:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_737:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_755
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_755:
	test	byte ptr [rbx + 0x48], 4
	je	.label_761
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_761:
	test	r13, r13
	jne	.label_726
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_726
	cmp	r15d, 1
	je	.label_775
	test	rdx, rdx
	jne	.label_726
.label_775:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_776
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_70
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_729
.label_776:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_729:
	mov	rdx, r12
	test	eax, eax
	je	.label_726
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_735
.label_726:
	test	rdx, rdx
	je	.label_738
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_743
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_743:
	cmp	rdx, 2
	jb	.label_749
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_749
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_749
.label_738:
	cmp	r15d, 3
	jne	.label_735
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_735
	movzx	eax, ax
	cmp	eax, 7
	je	.label_735
	mov	word ptr [r14 + 0x70], 6
.label_735:
	mov	rdi, rbp
	call	fts_lfree
.label_734:
	xor	ebp, ebp
.label_749:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_742:
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
	jmp	.label_734
.label_771:
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
	jmp	.label_734
	.section	.text
	.align	16
	#Procedure 0x40853d
	.globl sub_40853d
	.type sub_40853d, @function
sub_40853d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408540
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_780
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_780:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40855e
	.globl sub_40855e
	.type sub_40855e, @function
sub_40855e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408560

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
	.align	16
	#Procedure 0x408599
	.globl sub_408599
	.type sub_408599, @function
sub_408599:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4085a0

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
	.align	16
	#Procedure 0x4085b1
	.globl sub_4085b1
	.type sub_4085b1, @function
sub_4085b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085c0
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
	.align	16
	#Procedure 0x4085d4
	.globl sub_4085d4
	.type sub_4085d4, @function
sub_4085d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085e0

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
	jne	.label_781
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_781:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x408614
	.globl sub_408614
	.type sub_408614, @function
sub_408614:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408620

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
	jne	.label_787
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
	je	.label_786
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_788
	mov	eax, OFFSET FLAT:label_789
	jmp	.label_784
.label_786:
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
	je	.label_785
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_782
	mov	eax, OFFSET FLAT:label_783
	jmp	.label_784
.label_785:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_149
	mov	eax, OFFSET FLAT:label_195
.label_784:
	cmove	rax, rcx
.label_787:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086dd
	.globl sub_4086dd
	.type sub_4086dd, @function
sub_4086dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4086e0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086ea
	.globl sub_4086ea
	.type sub_4086ea, @function
sub_4086ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086f0

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
	je	.label_800
	mov	edx, OFFSET FLAT:label_795
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_803
.label_800:
	mov	edx, OFFSET FLAT:label_804
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_803:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_808
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
	mov	esi, OFFSET FLAT:label_805
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_791
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_792]]
.label_987:
	add	rsp, 8
	jmp	.label_790
.label_791:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_799
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
	jmp	.label_790
.label_988:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_806
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
.label_989:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_802
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
.label_990:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_797
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
.label_991:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_793
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
	jmp	.label_790
.label_992:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_796
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
	jmp	.label_790
.label_993:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_794
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
	jmp	.label_790
.label_994:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_798
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
	jmp	.label_790
.label_996:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_801
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
	jmp	.label_790
.label_995:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_807
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
.label_790:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a48
	.globl sub_408a48
	.type sub_408a48, @function
sub_408a48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_815
	nop	
.label_814:
	mov	edi, OFFSET FLAT:label_498
	call	strcmp
	test	eax, eax
	je	.label_812
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_814
.label_812:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_498
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_816
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_449
	mov	ecx, OFFSET FLAT:label_450
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_809
	mov	esi, OFFSET FLAT:label_811
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_809
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_810
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_809:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_817
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_498
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_450
	mov	ecx, OFFSET FLAT:label_498
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_813
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_818
	mov	ecx, OFFSET FLAT:label_265
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
	.align	16
	#Procedure 0x408b6a
	.globl sub_408b6a
	.type sub_408b6a, @function
sub_408b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b70
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
	.align	16
	#Procedure 0x408b7f
	.globl sub_408b7f
	.type sub_408b7f, @function
sub_408b7f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408b80

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
	je	.label_819
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_830
	test	rbx, rbx
	je	.label_821
	mov	qword ptr [rbx], rax
	jmp	.label_821
.label_830:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_820
	cvtsi2ss	xmm0, rcx
	jmp	.label_825
.label_820:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_825:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_828
	cvtsi2ss	xmm1, rax
	jmp	.label_833
.label_828:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_833:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_823
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_827
	cvtsi2ss	xmm2, rcx
	jmp	.label_831
.label_827:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_831:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_822
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_826
.label_822:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_826:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_823
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_829
	mulss	xmm0, xmm1
.label_829:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_41]]
	jae	.label_821
	movss	xmm1,  dword ptr [dword ptr [rip + label_40]]
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
	je	.label_821
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_819
.label_823:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_832
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_821
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_824
.label_832:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_824:
	mov	ebp, 1
.label_821:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_819:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408d52
	.globl sub_408d52
	.type sub_408d52, @function
sub_408d52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d60

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_834
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_834:
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
	#Procedure 0x408de3
	.globl sub_408de3
	.type sub_408de3, @function
sub_408de3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408df0

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
	jne	.label_835
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_835
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_836
.label_835:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_836:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_837
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_837:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e5e
	.globl sub_408e5e
	.type sub_408e5e, @function
sub_408e5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408e60

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
	.align	16
	#Procedure 0x408e8d
	.globl sub_408e8d
	.type sub_408e8d, @function
sub_408e8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408e90

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
	.align	16
	#Procedure 0x408ea3
	.globl sub_408ea3
	.type sub_408ea3, @function
sub_408ea3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408eb0
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
	.align	16
	#Procedure 0x408ec7
	.globl sub_408ec7
	.type sub_408ec7, @function
sub_408ec7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ed0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_847
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_847:
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
	ja	.label_848
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_843
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_844
	test	esi, esi
	jne	.label_848
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_850
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_841
.label_848:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_840
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_844
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_846
.label_843:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_844:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_851
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_839
.label_851:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_839:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_846:
	cmp	eax, 6
	jne	.label_840
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_849
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_838
.label_840:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_842
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_845
.label_850:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_841:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_849:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_838:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_842:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_845:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x409084
	.globl sub_409084
	.type sub_409084, @function
sub_409084:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409090
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
	.align	16
	#Procedure 0x4090a6
	.globl sub_4090a6
	.type sub_4090a6, @function
sub_4090a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409115
	.globl sub_409115
	.type sub_409115, @function
sub_409115:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409122
	.globl sub_409122
	.type sub_409122, @function
sub_409122:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409146
	.globl sub_409146
	.type sub_409146, @function
sub_409146:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409159
	.globl sub_409159
	.type sub_409159, @function
sub_409159:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409160

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x409170

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x40917f
	.globl sub_40917f
	.type sub_40917f, @function
sub_40917f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409180

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x409190

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
