	.section	.text
	.align	32
	#Procedure 0x401a09
	.globl sub_401a09
	.type sub_401a09, @function
sub_401a09:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401a0a
	.globl sub_401a0a
	.type sub_401a0a, @function
sub_401a0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a42
	.globl sub_401a42
	.type sub_401a42, @function
sub_401a42:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a8a
	.globl sub_401a8a
	.type sub_401a8a, @function
sub_401a8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401aac
	.globl sub_401aac
	.type sub_401aac, @function
sub_401aac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401abd
	.globl sub_401abd
	.type sub_401abd, @function
sub_401abd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ad6
	.globl sub_401ad6
	.type sub_401ad6, @function
sub_401ad6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ae0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	32
	#Procedure 0x401b34
	.globl sub_401b34
	.type sub_401b34, @function
sub_401b34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b40
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
	jne	.label_12
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_17
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_13
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_17
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_17
.label_12:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_17
.label_13:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_26
	nop	dword ptr [rax]
.label_18:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_20
	call	closedir
.label_20:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_18
.label_26:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_19
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_19:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_16
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_16
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_16
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_23
	mov	edi, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_24
.label_16:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_17:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_23:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_14
	xor	eax, eax
	call	openat_safer
.label_24:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_15
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_27
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_21
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_17
.label_15:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_17
.label_27:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_29
	cmp	esi, -0x64
	jne	.label_25
.label_29:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_22
	mov	edi, eax
	call	close
.label_22:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_28
.label_21:
	mov	edi, r15d
	call	close
.label_28:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_17
.label_25:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ce7
	.globl sub_401ce7
	.type sub_401ce7, @function
sub_401ce7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cf0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_30
	test	rbx, rbx
	jne	.label_30
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_30:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_32
	test	rax, rax
	je	.label_31
.label_32:
	pop	rbx
	ret	
.label_31:
	call	xalloc_die
.label_33:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d25
	.globl sub_401d25
	.type sub_401d25, @function
sub_401d25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_33
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_34
	test	rax, rax
	je	.label_33
.label_34:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d60
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d65
	.globl sub_401d65
	.type sub_401d65, @function
sub_401d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d70

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
	je	.label_51
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_48
.label_51:
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_36
	jmp	qword ptr [(r12 * 8) + label_37]
.label_1074:
	add	rsp, 8
	jmp	.label_35
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
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
	jmp	.label_35
.label_1075:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
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
.label_1076:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
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
.label_1077:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
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
.label_1078:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
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
	jmp	.label_35
.label_1079:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
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
	jmp	.label_35
.label_1080:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
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
	jmp	.label_35
.label_1081:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
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
	jmp	.label_35
.label_1083:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
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
	jmp	.label_35
.label_1082:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
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
.label_35:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020c8
	.globl sub_4020c8
	.type sub_4020c8, @function
sub_4020c8:

	nop	dword ptr [rax + rax]
.label_57:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4020d5
	.globl sub_4020d5
	.type sub_4020d5, @function
sub_4020d5:

	nop	dword ptr [rax + rax]
.label_58:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_57
	mov	edi, OFFSET FLAT:label_54
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_56
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4020fd

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_58
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402110
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_59
	test	rdx, rdx
	je	.label_59
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_59:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40217e
	.globl sub_40217e
	.type sub_40217e, @function
sub_40217e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402180

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_60
	test	rsi, rsi
	mov	ecx, 1
	je	.label_61
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_61
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_60:
	mov	ecx, 1
.label_61:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4021cb
	.globl sub_4021cb
	.type sub_4021cb, @function
sub_4021cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_67
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_69
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_64:
	cmp	qword ptr [rax], 0
	je	.label_65
	mov	rdx, rax
	nop	dword ptr [rax]
.label_68:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_68
	inc	r10
.label_65:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_70
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_62:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_62
	inc	r10
.label_70:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_64
	jmp	.label_66
.label_69:
	xor	r10d, r10d
.label_66:
	test	r8, r8
	je	.label_67
	cmp	qword ptr [rax], 0
	je	.label_67
	nop	dword ptr [rax]
.label_71:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_71
	inc	r10
.label_67:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_72
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_63
.label_72:
	xor	eax, eax
.label_63:
	ret	
.label_74:
	mov	r15, qword ptr [rbx]
.label_73:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022a2

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
	jae	.label_77
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_73
	add	rbx, rax
	je	.label_73
	cmp	rsi, r12
	je	.label_76
	xor	r15d, r15d
	nop	
.label_75:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_74
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_73
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_75
.label_76:
	mov	r15, r12
	jmp	.label_73
.label_77:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402308
	.globl sub_402308
	.type sub_402308, @function
sub_402308:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402310
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_81
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_79
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_85:
	cmp	qword ptr [rcx], 0
	je	.label_78
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_82:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_82
	cmp	rdi, rax
	cmova	rax, rdi
.label_78:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_83
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_80:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_80
	cmp	rdi, rax
	cmova	rax, rdi
.label_83:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_85
.label_79:
	test	r8, r8
	je	.label_81
	cmp	qword ptr [rcx], 0
	je	.label_81
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_84:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_84
	cmp	rdx, rax
	cmova	rax, rdx
.label_81:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023c4
	.globl sub_4023c4
	.type sub_4023c4, @function
sub_4023c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023d0

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_96
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_90:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_90
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_88
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_101
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_105
	cmp	eax, 0x22
	jne	.label_88
	mov	ebx, 1
.label_105:
	test	r14, r14
	jne	.label_106
	jmp	.label_86
.label_101:
	test	r14, r14
	je	.label_88
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_88
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_88
.label_106:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_86
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_95
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_87
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_87
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_87
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_103
	cmp	eax, 0x44
	je	.label_103
	cmp	eax, 0x69
	jne	.label_87
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_87
.label_103:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_87:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_95
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_104]
.label_1109:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_93
.label_95:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_94
.label_1110:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_97
.label_1111:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_93
.label_1113:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_93
.label_1107:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_91
.label_1108:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_93:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_89
.label_1112:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_89
.label_1114:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_102
.label_1115:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_102:
	movzx	eax, dl
.label_97:
	and	eax, 1
.label_89:
	mov	rbp, rsi
.label_92:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_86:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_94:
	mov	r13d, ebx
.label_88:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1116:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_91:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_92
.label_1117:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_92
.label_96:
	mov	edi, OFFSET FLAT:label_98
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_100
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4029ed
	.globl sub_4029ed
	.type sub_4029ed, @function
sub_4029ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029f0
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
	jae	.label_110
	xor	ebx, ebx
.label_109:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_111
	test	r13, r13
	je	.label_111
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_110
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_108:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_107
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_108
	jmp	.label_110
	.section	.text
	.align	32
	#Procedure 0x402a5c
	.globl sub_402a5c
	.type sub_402a5c, @function
sub_402a5c:

	nop	dword ptr [rax]
.label_107:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_111:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_109
.label_110:
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
	#Procedure 0x402a83
	.globl sub_402a83
	.type sub_402a83, @function
sub_402a83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_115
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_115:
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
	ja	.label_120
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_113
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_117
	test	esi, esi
	jne	.label_120
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_122
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_131
.label_120:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_123
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_117
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_128
.label_113:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_118
.label_117:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_132
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_112
.label_132:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_112:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_114:
	call	fcntl
.label_118:
	mov	ebp, eax
.label_116:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_128:
	cmp	eax, 6
	jne	.label_123
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_125
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_127
.label_123:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_126
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_130
.label_122:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_131:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_114
.label_125:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_127:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_119
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_124
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_124
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_116
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_129
.label_124:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_116
.label_126:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_130:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_118
.label_119:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_129:
	test	al, al
	je	.label_116
	test	ebp, ebp
	js	.label_116
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_121
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_116
.label_121:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_116
	.section	.text
	.align	32
	#Procedure 0x402d21
	.globl sub_402d21
	.type sub_402d21, @function
sub_402d21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_134
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402d60

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
	#Procedure 0x402d82
	.globl sub_402d82
	.type sub_402d82, @function
sub_402d82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d90
	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:

	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_136
	mov	rdi, qword ptr [rax]
	jmp	.label_135
.label_136:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_135:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dbf
	.globl sub_402dbf
	.type sub_402dbf, @function
sub_402dbf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402dc0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402dca
	.globl sub_402dca
	.type sub_402dca, @function
sub_402dca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0
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
	je	.label_137
	mov	qword ptr [rax], rbx
.label_137:
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
	#Procedure 0x402ebc
	.globl sub_402ebc
	.type sub_402ebc, @function
sub_402ebc:

	nop	dword ptr [rax]
.label_142:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_138
	mov	eax, OFFSET FLAT:label_139
	jmp	.label_140
	.section	.text
	.align	32
	#Procedure 0x402ecf
	.globl sub_402ecf
	.type sub_402ecf, @function
sub_402ecf:

	nop	word ptr cs:[rax + rax]
.label_147:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_141
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_141
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_141
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_141
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_141
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_141
	cmp	byte ptr [rax + 7], 0
	je	.label_142
.label_141:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_143
	mov	eax, OFFSET FLAT:label_144
.label_140:
	cmove	rax, rcx
.label_148:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f22

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
	jne	.label_148
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_147
	cmp	ecx, 0x55
	jne	.label_141
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_141
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_141
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_141
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_141
	cmp	byte ptr [rax + 5], 0
	jne	.label_141
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_145
	mov	eax, OFFSET FLAT:label_146
	jmp	.label_140
	.section	.text
	.align	32
	#Procedure 0x402f90
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_149
	test	rsi, rsi
	je	.label_149
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_149:
	call	abort
.label_150:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403005
	.globl sub_403005
	.type sub_403005, @function
sub_403005:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40300f
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
	je	.label_151
	test	r14, r14
	je	.label_150
.label_151:
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
	.align	32
	#Procedure 0x403040
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
	#Procedure 0x403053
	.globl sub_403053
	.type sub_403053, @function
sub_403053:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403060
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
	.align	32
	#Procedure 0x403121
	.globl sub_403121
	.type sub_403121, @function
sub_403121:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403130

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_162
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_164
.label_162:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_164:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_152
	cmp	r10d, 0x29
	jae	.label_161
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_163
.label_161:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_163:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_152
	cmp	r10d, 0x29
	jae	.label_159
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_160
.label_159:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_160:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_152
	cmp	r10d, 0x29
	jae	.label_157
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_158
.label_157:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_158:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_152
	cmp	r10d, 0x29
	jae	.label_155
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_156
.label_155:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_156:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_152
	cmp	r10d, 0x29
	jae	.label_153
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_154
.label_153:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_154:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_152
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_152
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_152
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_152
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_152:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403312
	.globl sub_403312
	.type sub_403312, @function
sub_403312:

	nop	word ptr cs:[rax + rax]
.label_166:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_165
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_165:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403354
	.globl sub_403354
	.type sub_403354, @function
sub_403354:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403356

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
	jne	.label_167
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_167
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_166
.label_167:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_173:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_171
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4033b0
	.globl sub_4033b0
	.type sub_4033b0, @function
sub_4033b0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033bf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_173
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_168
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_168
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_172
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_172:
	mov	rbx, r14
.label_168:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_174:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403445
	.globl sub_403445
	.type sub_403445, @function
sub_403445:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40344b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_175
	test	rax, rax
	je	.label_174
.label_175:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403460

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_190
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_179
	nop	word ptr cs:[rax + rax]
.label_191:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_176
	mov	rbx, qword ptr [rdi + 8]
.label_176:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_191
	jmp	.label_180
.label_179:
	mov	rbx, rdi
.label_180:
	mov	rdi, rbx
	call	free
.label_190:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_183
	nop	word ptr cs:[rax + rax]
.label_188:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_186
	call	closedir
.label_186:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_188
.label_183:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_193
	xor	ebp, ebp
	test	al, 4
	jne	.label_182
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_178
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_178:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_181
	jmp	.label_182
.label_193:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_182
	call	close
.label_181:
	test	eax, eax
	je	.label_182
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_182:
	lea	rbx, [r14 + 0x60]
	jmp	.label_187
	.section	.text
	.align	32
	#Procedure 0x403548
	.globl sub_403548
	.type sub_403548, @function
sub_403548:

	nop	dword ptr [rax + rax]
.label_185:
	mov	edi, eax
	call	close
.label_187:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_189
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_185
	jmp	.label_187
.label_189:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_192
	call	hash_free
.label_192:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_194
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_177
	call	hash_free
	jmp	.label_177
.label_194:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_177:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_184
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_184:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035c2
	.globl sub_4035c2
	.type sub_4035c2, @function
sub_4035c2:

	nop	word ptr cs:[rax + rax]
.label_196:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4035dc
	.globl sub_4035dc
	.type sub_4035dc, @function
sub_4035dc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035e8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_196
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_195
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_196
.label_195:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_196
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_197
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_197:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403650

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
	je	.label_198
	test	r15, r15
	je	.label_199
.label_198:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_199:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40368c
	.globl sub_40368c
	.type sub_40368c, @function
sub_40368c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403690

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_200
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_200:
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
	#Procedure 0x403713
	.globl sub_403713
	.type sub_403713, @function
sub_403713:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403720
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	32
	#Procedure 0x40378f
	.globl sub_40378f
	.type sub_40378f, @function
sub_40378f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403790

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
	jne	.label_201
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_201:
	mov	byte ptr [rdi + 0x1c], 0
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
	je	.label_204
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_209
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_214]
	jbe	.label_203
	movss	xmm1, dword ptr [rip + label_217]
	ucomiss	xmm1, xmm0
	jbe	.label_203
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_208]
	jbe	.label_203
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_203
	addss	xmm1, dword ptr [rip + label_214]
	ucomiss	xmm0, xmm1
	jbe	.label_203
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_202]
	ucomiss	xmm2, xmm0
	jb	.label_203
	ucomiss	xmm0, xmm1
	jbe	.label_203
.label_209:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_216
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_213
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_215
.label_213:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_215:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_206]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_207]
	jae	.label_203
.label_216:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_205
	.section	.text
	.align	32
	#Procedure 0x40391e
	.globl sub_40391e
	.type sub_40391e, @function
sub_40391e:

	nop	
.label_210:
	add	rbx, 2
.label_205:
	cmp	rbx, -1
	je	.label_203
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_212
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_211:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_212
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_211
.label_212:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_210
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_203
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_203
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_203
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
	jmp	.label_204
.label_203:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_204:
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
	#Procedure 0x4039e8
	.globl sub_4039e8
	.type sub_4039e8, @function
sub_4039e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039f7
	.globl sub_4039f7
	.type sub_4039f7, @function
sub_4039f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a00
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
	#Procedure 0x403a17
	.globl sub_403a17
	.type sub_403a17, @function
sub_403a17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_218
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_220
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_220
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_219
.label_220:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_221
	mov	al, 1
	test	rdx, rdx
	je	.label_219
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_221:
	xor	eax, eax
.label_219:
	ret	
.label_218:
	push	rax
	mov	edi, OFFSET FLAT:label_222
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_224
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403a85
	.globl sub_403a85
	.type sub_403a85, @function
sub_403a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a90

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_225
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_225:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_226
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_227
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_228
.label_227:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_228:
	mov	ecx, dword ptr [rax]
.label_226:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b4e
	.globl sub_403b4e
	.type sub_403b4e, @function
sub_403b4e:

	nop	
.label_229:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b57
	.globl sub_403b57
	.type sub_403b57, @function
sub_403b57:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b65

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_229
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_231:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_233
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_134
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403bc1

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_232
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_231
	cmp	dword ptr [rbp], 0x20
	jne	.label_231
.label_232:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_234
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_234:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_233:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_235
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c40

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c50

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_236
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_236:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_238
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_239
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_237
.label_239:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_237:
	mov	edx, dword ptr [rax]
.label_238:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d14
	.globl sub_403d14
	.type sub_403d14, @function
sub_403d14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d20

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
	je	.label_240
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_241
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
	je	.label_242
.label_241:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_245
	mov	rax, qword ptr [rax + 8]
	jmp	.label_240
.label_245:
	mov	r12b, 1
	mov	r14, rbp
.label_242:
	xor	eax, eax
	test	r15d, r15d
	js	.label_240
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_240
	test	r12b, r12b
	je	.label_243
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_243
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_244
	cmp	rax, rbp
	je	.label_243
	call	abort
.label_244:
	mov	rdi, rbp
	call	free
.label_243:
	mov	rax, qword ptr [rsp]
.label_240:
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
	#Procedure 0x403e1a
	.globl sub_403e1a
	.type sub_403e1a, @function
sub_403e1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e20

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14d, esi
	mov	r15, rdi
	mov	rbp, qword ptr [r15]
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], r15
	je	.label_254
	mov	rdi, rbx
	call	dirfd
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	js	.label_261
	mov	qword ptr [rsp + 0x68], rbx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	lea	r12, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_265
.label_254:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_272
	mov	edi, dword ptr [r15 + 0x2c]
.label_272:
	mov	rsi, qword ptr [rbp + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_275
	test	al, 1
	je	.label_279
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_275
.label_279:
	mov	edx, 0x20000
.label_275:
	lea	rcx, [rsp + 8]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_282
	mov	qword ptr [rsp + 0x68], rbx
	lea	r12, [r15 + 0x48]
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_284
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_291
.label_261:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_282:
	xor	ebx, ebx
	cmp	r14d, 3
	jne	.label_249
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_285
.label_284:
	test	byte ptr [r12 + 1], 1
	je	.label_291
	mov	rdi, r15
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r15
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_302
.label_291:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	cmp	r14d, 2
	je	.label_303
	mov	eax, dword ptr [r12]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_305
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_305
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_314
	cmp	rax, 0x9fa0
	je	.label_305
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_305
	cmp	rax, 0x5346414f
	je	.label_305
	jmp	.label_303
.label_302:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_285
.label_314:
	test	rax, rax
	je	.label_305
	cmp	rax, 0x6969
	jne	.label_303
.label_305:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14b, 1
	jmp	.label_307
.label_303:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14d, 0
	jne	.label_323
.label_307:
	mov	r15, rax
	test	byte ptr [r12 + 1], 2
	mov	ebx, dword ptr [rsp + 8]
	je	.label_250
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
.label_250:
	test	ebx, ebx
	js	.label_258
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_262
.label_258:
	and	bpl, r14b
	cmp	bpl, 1
	jne	.label_263
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_263:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	eax, dword ptr [r12]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14d, r13d
	je	.label_269
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	js	.label_269
	call	close
.label_269:
	mov	rbp, rbx
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_265
.label_323:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_278
.label_262:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
.label_278:
	mov	r14d, r13d
	mov	rbp, rax
.label_265:
	mov	dword ptr [rsp + 0x54], r14d
	mov	rax, qword ptr [rbp + 0x38]
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	test	byte ptr [r12], 4
	je	.label_290
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_290:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x58], rax
	mov	rcx, qword ptr [r15 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x98], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x90], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
	xor	ebx, ebx
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x30], r12
.label_281:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	je	.label_306
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0x20], r14
	nop	dword ptr [rax]
.label_320:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_315
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [r12], 0x20
	jne	.label_317
	cmp	byte ptr [r13], 0x2e
	jne	.label_317
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_277
	test	al, al
	je	.label_319
	jmp	.label_317
	.section	.text
	.align	32
	#Procedure 0x4041d7
	.globl sub_4041d7
	.type sub_4041d7, @function
sub_4041d7:

	nop	word ptr [rax + rax]
.label_277:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_317
.label_319:
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	jne	.label_320
	jmp	.label_321
	.section	.text
	.align	32
	#Procedure 0x4041f5
	.globl sub_4041f5
	.type sub_4041f5, @function
sub_4041f5:

	nop	word ptr cs:[rax + rax]
.label_317:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_252
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x80], rdi
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
	cmp	rbx, qword ptr [rsp + 0x88]
	jae	.label_259
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x58]
	jmp	.label_273
	.section	.text
	.align	32
	#Procedure 0x4042a9
	.globl sub_4042a9
	.type sub_4042a9, @function
sub_4042a9:

	nop	dword ptr [rax]
.label_259:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_276
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_283
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_294
	mov	rdx, qword ptr [rsp + 0x58]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x30]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x48]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x48], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x78], rax
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_287
.label_294:
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
.label_287:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, rdx
.label_273:
	add	rbx, rax
	jb	.label_297
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	test	byte ptr [rax], 4
	jne	.label_289
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_308
	.section	.text
	.align	32
	#Procedure 0x40437d
	.globl sub_40437d
	.type sub_40437d, @function
sub_40437d:

	nop	dword ptr [rax]
.label_289:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x80]
	call	memmove
.label_308:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x30]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	je	.label_313
	mov	eax, edx
	and	eax, 0x400
	jne	.label_313
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_288
	.section	.text
	.align	32
	#Procedure 0x4043de
	.globl sub_4043de
	.type sub_4043de, @function
sub_4043de:

	nop	
.label_313:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_298
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
	mov	rbx, qword ptr [rsp + 0x28]
.label_298:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rsi, qword ptr [rsp + 0x20]
	ja	.label_248
	mov	eax, dword ptr [(rcx * 4) + label_274]
.label_248:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_288:
	mov	qword ptr [r12 + 0x10], 0
	test	rsi, rsi
	mov	rax, r12
	je	.label_295
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rsi
.label_295:
	mov	r14, rax
	cmp	rbx, 0x2710
	jne	.label_257
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	jne	.label_257
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	mov	dword ptr [rsp + 0x1c], 0
	cmp	rax, 0x6969
	je	.label_257
	cmp	rax, 0x1021994
	je	.label_257
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_257
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	nop	dword ptr [rax]
.label_257:
	inc	rbx
	cmp	qword ptr [rsp + 0x70], rbx
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_281
	jmp	.label_256
.label_315:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_280
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, qword ptr [rsp + 0x68]
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_280:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_256
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_256
.label_321:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
.label_306:
	mov	rbx, qword ptr [rsp + 0x28]
.label_256:
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	je	.label_271
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_296
	.section	.text
	.align	32
	#Procedure 0x404537
	.globl sub_404537
	.type sub_404537, @function
sub_404537:

	nop	word ptr [rax + rax]
.label_301:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_296:
	test	rcx, rcx
	je	.label_300
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_301
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_301
.label_300:
	cmp	qword ptr [r14 + 0x58], 0
	js	.label_271
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_316:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_293
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_293:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_311
	mov	rdx, qword ptr [rcx + 8]
.label_311:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_316
.label_271:
	test	byte ptr [r12], 4
	je	.label_260
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x58]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_260:
	cmp	qword ptr [rsp + 0x68], 0
	mov	eax, dword ptr [rsp + 0xc]
	jne	.label_268
	test	al, al
	je	.label_268
	cmp	dword ptr [rsp + 0x54], 1
	je	.label_312
	test	rbx, rbx
	jne	.label_268
.label_312:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_324
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_247
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_251
.label_324:
	mov	rdi, r15
	call	restore_initial_cwd
.label_251:
	test	eax, eax
	je	.label_268
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	xor	ebx, ebx
	test	r14, r14
	je	.label_249
	xor	ebx, ebx
.label_264:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_310
	call	closedir
.label_310:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_264
	jmp	.label_249
.label_268:
	test	rbx, rbx
	je	.label_266
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_267
	cmp	rbx, 2
	jb	.label_270
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_270
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	jmp	.label_249
.label_266:
	cmp	dword ptr [rsp + 0x54], 3
	jne	.label_255
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_255
	movzx	eax, ax
	cmp	eax, 7
	je	.label_255
	mov	word ptr [rbp + 0x70], 6
.label_255:
	xor	ebx, ebx
	test	r14, r14
	je	.label_249
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_292:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_286
	call	closedir
.label_286:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_292
	jmp	.label_249
.label_267:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [rbp], 0
	jmp	.label_249
.label_270:
	mov	rbx, r14
	jmp	.label_249
.label_297:
	mov	rdi, r12
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_299
	nop	word ptr cs:[rax + rax]
.label_309:
	mov	rbx, qword ptr [rax + 0x10]
	mov	r12, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_304
	call	closedir
.label_304:
	mov	rdi, r12
	call	free
	test	rbx, rbx
	mov	rax, rbx
	jne	.label_309
.label_299:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_285
.label_276:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_318
.label_283:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_318:
	mov	qword ptr [rsp + 0x60], r12
	mov	rbp, qword ptr [rsp + 0x38]
.label_252:
	mov	r13, rbp
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x30]
	je	.label_322
.label_253:
	mov	rbp, qword ptr [rax + 0x10]
	mov	rbx, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_246
	call	closedir
.label_246:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rax, rbp
	jne	.label_253
.label_322:
	mov	rbx, r13
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	mov	dword ptr [r15], r14d
.label_285:
	xor	ebx, ebx
.label_249:
	mov	rax, rbx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40485f
	.globl sub_40485f
	.type sub_40485f, @function
sub_40485f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404860

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_334
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_334
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_363
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_367
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_369
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_371
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_376
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_378
	mov	edi, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_330
.label_363:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_334
.label_367:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_338
.label_369:
	lea	r13, [r12 + 0x70]
.label_338:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_341
	cmp	edx, 4
	je	.label_344
	test	al, 0x40
	je	.label_380
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_344
.label_380:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_352
	test	ah, 0x10
	jne	.label_356
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_353
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_366
	.section	.text
	.align	32
	#Procedure 0x4049b4
	.globl sub_4049b4
	.type sub_4049b4, @function
sub_4049b4:

	nop	word ptr cs:[rax + rax]
.label_341:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_361
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_373
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_341
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_359
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_325
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_325
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_354
	mov	edi, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_374
.label_351:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_366:
	test	rax, rax
	jne	.label_351
	jmp	.label_353
.label_344:
	test	ecx, 0x20000
	je	.label_355
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_355:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_360
	nop	dword ptr [rax]
.label_343:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_364
	call	closedir
.label_364:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_343
	mov	qword ptr [r14 + 8], 0
.label_360:
	mov	word ptr [r12 + 0x70], 6
.label_375:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_334
.label_361:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_381
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_326
	mov	rdi, r12
	call	free
	jmp	.label_359
.label_371:
	mov	r15, r12
	jmp	.label_332
.label_373:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_337
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_334
.label_376:
	mov	r15, r12
	jmp	.label_332
.label_337:
	test	ax, 0x102
	je	.label_345
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_348
	call	hash_free
	jmp	.label_348
.label_356:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_365:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_349
	call	closedir
.label_349:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_365
	mov	qword ptr [r14 + 8], 0
.label_352:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_370
.label_353:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_359
.label_370:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_334
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_375
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_375
	mov	word ptr [r13], 7
	jmp	.label_375
.label_378:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_14
	xor	eax, eax
	call	openat_safer
.label_330:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_331
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_332
.label_326:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_334
	mov	r15, qword ptr [r12 + 8]
.label_381:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_346
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_347
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_350
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_358
	test	al, 1
	jne	.label_327
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_247
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_368
.label_346:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_334
.label_331:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_332
.label_345:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_348:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_333
	cmp	rbx, r12
	jne	.label_335
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_333
.label_335:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_333:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_379
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_332
.label_379:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_332
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_332
.label_350:
	mov	rdi, r14
	call	restore_initial_cwd
.label_368:
	test	eax, eax
	je	.label_327
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_327
.label_358:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_328
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_377
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_328
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_328
.label_354:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_14
	xor	eax, eax
	call	openat_safer
.label_374:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_372
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_325
.label_372:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_325:
	mov	word ptr [r15 + 0x74], 3
.label_359:
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
.label_332:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_362
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_329
	cmp	rax, 2
	jne	.label_347
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_357
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_357
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_329
	cmp	rax, 0x58465342
	je	.label_329
.label_357:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_362
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_329
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_329
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_329:
	mov	ax, word ptr [r15 + 0x70]
.label_362:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_334
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_339
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_339:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_334
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_334
.label_377:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_342
	cmp	esi, -0x64
	jne	.label_347
.label_342:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_336
	mov	edi, eax
	call	close
.label_336:
	mov	dword ptr [r14 + 0x2c], ebp
.label_328:
	mov	edi, dword ptr [rbx]
	call	close
.label_327:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_340
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_340
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_340:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_334:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_347:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404fe3
	.globl sub_404fe3
	.type sub_404fe3, @function
sub_404fe3:

	nop	word ptr cs:[rax + rax]
.label_383:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ff5
	.globl sub_404ff5
	.type sub_404ff5, @function
sub_404ff5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405003

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_382
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_383
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_382:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_384
	cmp	qword ptr [rax + 0x58], 0
	js	.label_384
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_383
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_384
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_384
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_384:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x405080

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
	#Procedure 0x4050a8
	.globl sub_4050a8
	.type sub_4050a8, @function
sub_4050a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050b0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4050ba
	.globl sub_4050ba
	.type sub_4050ba, @function
sub_4050ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0

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
	#Procedure 0x4050d7
	.globl sub_4050d7
	.type sub_4050d7, @function
sub_4050d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050e0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x4050ee
	.globl sub_4050ee
	.type sub_4050ee, @function
sub_4050ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4050f0
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
	je	.label_385
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
.label_385:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405151
	.globl sub_405151
	.type sub_405151, @function
sub_405151:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405160

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_386
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_386
	test	byte ptr [rbx + 1], 1
	je	.label_386
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_386:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x405193
	.globl sub_405193
	.type sub_405193, @function
sub_405193:

	nop	word ptr cs:[rax + rax]
.label_388:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051a9

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_389
	test	r14, r14
	je	.label_390
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
	jmp	.label_388
.label_390:
	mov	rdi, rbx
.label_387:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	.section	.text
	.align	32
	#Procedure 0x405209
	.globl sub_405209
	.type sub_405209, @function
sub_405209:

	nop
	nop	dword ptr [rax + rax]
.label_389:
	xor	r15d, r15d
	test	r14, r14
	je	.label_388
	mov	rdi, r14
	jmp	.label_387
	.section	.text
	.align	32
	#Procedure 0x405220

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
	mov	esi, OFFSET FLAT:label_403
	call	setlocale
	mov	edi, OFFSET FLAT:label_411
	mov	esi, OFFSET FLAT:label_412
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_411
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rsp + 0x10]
	call	chopt_init
	mov	r12d, 0xffffffff
	mov	ecx, 0x10
	xor	r13d, r13d
	jmp	.label_391
.label_1054:
	mov	dword ptr [rsp + 0x10], 0
	mov	ecx, r14d
	nop	word ptr cs:[rax + rax]
.label_391:
	mov	r14d, ecx
	mov	edx, OFFSET FLAT:label_397
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x47
	jle	.label_404
	add	eax, -0x48
	cmp	eax, 0x3b
	ja	.label_407
	mov	ecx, 0x11
	jmp	qword ptr [(rax * 8) + label_413]
.label_1048:
	mov	ecx, 2
	jmp	.label_391
.label_1049:
	mov	ecx, 0x10
	jmp	.label_391
.label_1050:
	mov	byte ptr [rsp + 0x14], 1
	mov	ecx, r14d
	jmp	.label_391
.label_1051:
	mov	dword ptr [rsp + 0x10], 1
	mov	ecx, r14d
	jmp	.label_391
.label_1052:
	mov	byte ptr [rsp + 0x21], 1
	mov	ecx, r14d
	jmp	.label_391
.label_1053:
	xor	r12d, r12d
	mov	ecx, r14d
	jmp	.label_391
.label_1055:
	mov	r12d, 1
	mov	ecx, r14d
	jmp	.label_391
.label_1056:
	xor	r13d, r13d
	mov	ecx, r14d
	jmp	.label_391
.label_1057:
	mov	r13b, 1
	mov	ecx, r14d
	jmp	.label_391
.label_1058:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + reference_file],  rax
	mov	ecx, r14d
	jmp	.label_391
.label_404:
	cmp	eax, -1
	jne	.label_410
	mov	r15d, 0x10
	cmp	byte ptr [rsp + 0x14], 0
	je	.label_415
	cmp	r14d, 0x10
	jne	.label_416
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_415
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_416:
	mov	r15d, r14d
.label_415:
	test	r12d, r12d
	setne	byte ptr [rsp + 0x20]
	movsxd	rax, dword ptr [rip + optind]
	mov	ecx, ebp
	sub	ecx, eax
	mov	rsi, qword ptr [rip + reference_file]
	cmp	rsi, 1
	mov	edx, 1
	adc	edx, 0
	cmp	ecx, edx
	jl	.label_396
	test	rsi, rsi
	je	.label_409
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_398
	mov	ebp, dword ptr [rsp + 0x58]
	mov	edi, ebp
	call	gid_to_name
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_394
.label_409:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	r12, qword ptr [rbx + rax*8]
	xor	eax, eax
	cmp	byte ptr [r12], 0
	je	.label_420
	mov	rdi, r12
	call	xstrdup
.label_420:
	mov	qword ptr [rsp + 0x30], rax
	mov	ebp, 0xffffffff
	cmp	byte ptr [r12], 0
	je	.label_394
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_402
	mov	ebp, dword ptr [rax + 0x10]
	jmp	.label_400
.label_402:
	lea	rcx, [rsp + 0x38]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_403
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_414
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, rbp
	shr	rax, 0x20
	jne	.label_414
.label_400:
	call	endgrent
.label_394:
	test	r13b, r13b
	je	.label_418
	mov	al, byte ptr [rsp + 0x14]
	test	al, al
	je	.label_418
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_399
.label_418:
	or	r15d, 0x400
	movsxd	rax, dword ptr [rip + optind]
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
.label_410:
	cmp	eax, 0xffffff7d
	je	.label_401
	cmp	eax, 0xffffff7e
	jne	.label_407
	xor	edi, edi
	call	usage
.label_401:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_421
	mov	edx, OFFSET FLAT:label_422
	mov	r8d, OFFSET FLAT:label_423
	mov	r9d, OFFSET FLAT:label_424
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_407:
	mov	edi, 1
	call	usage
.label_396:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_405
	mov	esi, OFFSET FLAT:label_408
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
.label_398:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + reference_file]
	mov	edi, 4
	jmp	.label_395
.label_399:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_406
.label_395:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_405:
	mov	esi, OFFSET FLAT:label_417
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
.label_414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	.section	.text
	.align	32
	#Procedure 0x405640

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_426
	cmp	byte ptr [rax], 0x43
	jne	.label_428
	cmp	byte ptr [rax + 1], 0
	je	.label_425
.label_428:
	mov	esi, OFFSET FLAT:label_427
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_426
.label_425:
	xor	ebx, ebx
.label_426:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405671
	.globl sub_405671
	.type sub_405671, @function
sub_405671:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405680

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40568a
	.globl sub_40568a
	.type sub_40568a, @function
sub_40568a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405690

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
	je	.label_433
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_437
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_437
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_437:
	test	eax, eax
	sete	r14b
	jmp	.label_444
.label_433:
	xor	r14d, r14d
.label_444:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_445
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_431
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_431
	and	eax, 0x200
	je	.label_431
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_431
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_431:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_440
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_441
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_443
.label_445:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_429
	and	eax, 0x200
	je	.label_429
	mov	edi, r13d
	call	close
	jmp	.label_429
.label_441:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_443:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_429
.label_440:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_435
	test	rbx, rbx
	je	.label_439
	cmp	byte ptr [rbx], 0x2e
	jne	.label_439
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_439
	cmp	byte ptr [rbx + 2], 0
	jne	.label_439
.label_435:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_438
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_442
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_442
	mov	eax, dword ptr [r15 + 0x48]
.label_439:
	test	ah, 2
	jne	.label_446
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_447
.label_446:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_448
	cmp	esi, -0x64
	jne	.label_434
.label_448:
	test	r14b, r14b
	je	.label_430
	test	al, 4
	jne	.label_432
	test	esi, esi
	js	.label_432
	mov	edi, esi
	jmp	.label_436
.label_442:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_438:
	mov	ebp, 0xffffffff
.label_447:
	test	r13d, r13d
	jns	.label_429
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_429
.label_430:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_432
	mov	edi, eax
.label_436:
	call	close
.label_432:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_429:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_434:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405879
	.globl sub_405879
	.type sub_405879, @function
sub_405879:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405880

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
	je	.label_449
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_449
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_459
	cmp	rsi, r14
	je	.label_466
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_469
	mov	rax, qword ptr [r12]
.label_465:
	test	rax, rax
	jne	.label_471
	jmp	.label_459
.label_466:
	mov	rax, r14
.label_471:
	xor	ebp, ebp
	test	r15, r15
	je	.label_453
	mov	qword ptr [r15], rax
	jmp	.label_453
.label_469:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_459
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_455:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_452
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_456
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_455
.label_459:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_460
	cvtsi2ss	xmm1, rax
	jmp	.label_468
.label_460:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_468:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_472
	cvtsi2ss	xmm0, rcx
	jmp	.label_478
.label_472:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_478:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_451
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_457
	ucomiss	xmm2, dword ptr [rip + label_214]
	jbe	.label_458
	movss	xmm3, dword ptr [rip + label_217]
	ucomiss	xmm3, xmm2
	jbe	.label_458
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_208]
	jbe	.label_458
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_458
	addss	xmm3, dword ptr [rip + label_214]
	ucomiss	xmm2, xmm3
	jbe	.label_458
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_202]
	ucomiss	xmm5, xmm4
	jb	.label_458
	ucomiss	xmm4, xmm3
	ja	.label_462
.label_458:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_461]
	jmp	.label_462
.label_457:
	mov	eax, OFFSET FLAT:default_tuning
.label_462:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_451
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_474
	mulss	xmm0, xmm2
.label_474:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_207]
	jae	.label_453
	movss	xmm1, dword ptr [rip + label_206]
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
	je	.label_453
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_449
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_451
	cmp	rsi, r14
	mov	rax, r14
	je	.label_454
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_463
	mov	rax, qword ptr [r12]
.label_454:
	test	rax, rax
	jne	.label_467
.label_451:
	cmp	qword ptr [r12], 0
	je	.label_464
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_470
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_473
.label_464:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_476]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_477
.label_470:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_453
.label_473:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_477:
	mov	ebp, 1
.label_453:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_452:
	mov	rax, r14
	jmp	.label_465
.label_456:
	mov	rax, qword ptr [rbp]
	jmp	.label_465
.label_463:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_451
	lea	rbp, [rbx + rbp + 8]
.label_450:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_475
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_479
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_450
	jmp	.label_451
.label_475:
	mov	rax, r14
	jmp	.label_454
.label_479:
	mov	rax, qword ptr [rbp]
	jmp	.label_454
.label_449:
	call	abort
.label_467:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405bb1
	.globl sub_405bb1
	.type sub_405bb1, @function
sub_405bb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	32
	#Procedure 0x405c15
	.globl sub_405c15
	.type sub_405c15, @function
sub_405c15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c20
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
	jae	.label_480
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_484
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_483:
	cmp	qword ptr [rax], 0
	je	.label_492
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_485:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_485
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_492:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_493
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_486:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_486
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_493:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_483
.label_484:
	test	r8, r8
	je	.label_480
	cmp	qword ptr [rax], 0
	je	.label_480
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_481:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_481
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_480:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_482
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_494
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_488]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_489]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_490]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_491
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_487
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
	.align	32
	#Procedure 0x405d8f
	.globl sub_405d8f
	.type sub_405d8f, @function
sub_405d8f:

	nop	
.label_496:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_495
	mov	qword ptr [r14], r14
.label_498:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_495
	.section	.text
	.align	32
	#Procedure 0x405db0

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
	je	.label_496
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_497
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_495
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_497
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_498
.label_497:
	xor	ebp, ebp
.label_495:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e21
	.globl sub_405e21
	.type sub_405e21, @function
sub_405e21:

	nop	word ptr cs:[rax + rax]
.label_518:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_499
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
	.align	32
	#Procedure 0x405e68
	.globl sub_405e68
	.type sub_405e68, @function
sub_405e68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e6d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_518
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_520
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_504
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_505
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_514
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_502
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_506
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_507
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_508
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_516
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_509
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_510
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_519
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_422
	mov	ecx, OFFSET FLAT:label_515
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_503
	mov	esi, OFFSET FLAT:label_512
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_503
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_513
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_503:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_515
	mov	ecx, OFFSET FLAT:label_421
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_511
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_421
	mov	ecx, OFFSET FLAT:label_500
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4060e0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4060f1
	.globl sub_4060f1
	.type sub_4060f1, @function
sub_4060f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406100

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
	#Procedure 0x40610d
	.globl sub_40610d
	.type sub_40610d, @function
sub_40610d:

	nop	dword ptr [rax]
.label_521:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40611e
	.globl sub_40611e
	.type sub_40611e, @function
sub_40611e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406127
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_523
	.section	.text
	.align	32
	#Procedure 0x406138
	.globl sub_406138
	.type sub_406138, @function
sub_406138:

	nop	word ptr cs:[rax + rax]
.label_525:
	add	r14, 0x10
.label_523:
	cmp	r14, rax
	jae	.label_521
	cmp	qword ptr [r14], 0
	je	.label_525
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_526
	nop	word ptr cs:[rax + rax]
.label_522:
	test	cl, 1
	je	.label_527
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_527:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_522
.label_526:
	test	cl, cl
	je	.label_524
	mov	rdi, qword ptr [r14]
	call	rax
.label_524:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_525
	.section	.text
	.align	32
	#Procedure 0x4061c0

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
	.align	32
	#Procedure 0x4061d9
	.globl sub_4061d9
	.type sub_4061d9, @function
sub_4061d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0

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
	mov	qword ptr [rsp + 0xa8], rax
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
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_564:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_561
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_566]
.label_1001:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_572
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_144
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1002:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_589
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_589
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_600:
	cmp	r14, r11
	jae	.label_597
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_597:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_600
.label_589:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_609
.label_994:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_609
.label_997:
	mov	al, 1
.label_995:
	mov	r12b, 1
.label_998:
	test	r12b, 1
	mov	cl, 1
	je	.label_619
	mov	ecx, eax
.label_619:
	mov	al, cl
.label_996:
	test	r12b, 1
	jne	.label_621
	test	r11, r11
	je	.label_623
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_623:
	mov	r14d, 1
	jmp	.label_625
.label_621:
	xor	r14d, r14d
.label_625:
	mov	ecx, OFFSET FLAT:label_144
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_609
.label_999:
	test	r12b, 1
	jne	.label_636
	test	r11, r11
	je	.label_639
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_639:
	mov	r14d, 1
	jmp	.label_643
.label_1000:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_143
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_609
.label_636:
	xor	r14d, r14d
.label_643:
	mov	eax, OFFSET FLAT:label_143
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_609:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_544
	.section	.text
	.align	32
	#Procedure 0x4064cd
	.globl sub_4064cd
	.type sub_4064cd, @function
sub_4064cd:

	nop	dword ptr [rax]
.label_602:
	inc	rsi
.label_544:
	cmp	rbp, -1
	je	.label_581
	cmp	rsi, rbp
	jne	.label_583
	jmp	.label_584
	.section	.text
	.align	32
	#Procedure 0x4064e3
	.globl sub_4064e3
	.type sub_4064e3, @function
sub_4064e3:

	nop	word ptr cs:[rax + rax]
.label_581:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_590
.label_583:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_592
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_563
	cmp	rbp, -1
	jne	.label_563
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_563:
	cmp	rbx, rbp
	jbe	.label_610
.label_592:
	xor	r8d, r8d
.label_545:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_611
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_613]
.label_1012:
	test	rsi, rsi
	jne	.label_603
	jmp	.label_536
	.section	.text
	.align	32
	#Procedure 0x406585
	.globl sub_406585
	.type sub_406585, @function
sub_406585:

	nop	word ptr cs:[rax + rax]
.label_610:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_628
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_545
	jmp	.label_641
.label_628:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_545
.label_1016:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_531
	test	rsi, rsi
	jne	.label_533
	cmp	rbp, 1
	je	.label_536
	xor	r13d, r13d
	jmp	.label_532
.label_1005:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_541
	cmp	byte ptr [rsp + 6], 0
	jne	.label_543
	cmp	r12d, 2
	jne	.label_548
	mov	eax, r9d
	and	al, 1
	jne	.label_548
	cmp	r14, r11
	jae	.label_550
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_550:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_554
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_554:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_608
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_608:
	add	r14, 3
	mov	r9b, 1
.label_548:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_565
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_565:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_568
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_568
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_568
	cmp	r14, r11
	jae	.label_631
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_631:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_542
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_542:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_532
.label_1006:
	mov	bl, 0x62
	jmp	.label_530
.label_1007:
	mov	cl, 0x74
	jmp	.label_539
.label_1008:
	mov	bl, 0x76
	jmp	.label_530
.label_1009:
	mov	bl, 0x66
	jmp	.label_530
.label_1010:
	mov	cl, 0x72
	jmp	.label_539
.label_1013:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_598
	cmp	byte ptr [rsp + 6], 0
	jne	.label_569
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_607
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_607:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_616
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_616:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_620
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_620:
	add	r14, 3
	xor	r9d, r9d
.label_598:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_532
.label_1014:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_626
	cmp	r12d, 2
	jne	.label_603
	cmp	byte ptr [rsp + 6], 0
	je	.label_603
	jmp	.label_569
.label_1015:
	cmp	r12d, 2
	jne	.label_637
	cmp	byte ptr [rsp + 6], 0
	jne	.label_569
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_594
.label_611:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_646
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
.label_528:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_547
	test	r8b, r8b
	je	.label_547
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_532
.label_531:
	test	rsi, rsi
	jne	.label_614
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_614
.label_536:
	mov	dl, 1
.label_1011:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_569
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_532:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_574
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_576
	jmp	.label_580
	.section	.text
	.align	32
	#Procedure 0x4068d4
	.globl sub_4068d4
	.type sub_4068d4, @function
sub_4068d4:

	nop	word ptr cs:[rax + rax]
.label_574:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_580
.label_576:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_587
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_594
	jmp	.label_575
	.section	.text
	.align	32
	#Procedure 0x40691d
	.globl sub_40691d
	.type sub_40691d, @function
sub_40691d:

	nop	dword ptr [rax]
.label_580:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_575
	jmp	.label_594
.label_587:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_575
.label_541:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_602
	xor	r15d, r15d
	jmp	.label_603
.label_637:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_539
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_594
.label_539:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_569
.label_530:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_532
	nop	word ptr cs:[rax + rax]
.label_575:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_543
	cmp	r12d, 2
	jne	.label_624
	mov	eax, r9d
	and	al, 1
	jne	.label_624
	cmp	r14, r11
	jae	.label_593
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_593:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_629
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_629:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_586
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_586:
	add	r14, 3
	mov	r9b, 1
.label_624:
	cmp	r14, r11
	jae	.label_642
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_642:
	inc	r14
	jmp	.label_644
.label_646:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_647
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_647:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_638:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_552
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_556
	cmp	rbp, -2
	je	.label_560
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_599
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_557:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_640
	bt	rsi, rdx
	jb	.label_579
.label_640:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_557
.label_599:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_577
	xor	r13d, r13d
.label_577:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_638
	jmp	.label_528
.label_568:
	xor	r13d, r13d
	jmp	.label_532
.label_614:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_532
.label_626:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_603
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_603
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_603
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_605
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_567
	cmp	byte ptr [rsp + 6], 0
	jne	.label_538
	cmp	r14, r11
	jae	.label_553
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_553:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_632
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_632:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_627
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_627:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_529
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_529:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_532
.label_603:
	xor	eax, eax
.label_533:
	xor	r13d, r13d
	jmp	.label_532
.label_547:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_645
	.section	.text
	.align	32
	#Procedure 0x406c02
	.globl sub_406c02
	.type sub_406c02, @function
sub_406c02:

	nop	word ptr cs:[rax + rax]
.label_604:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_645:
	test	r8b, r8b
	je	.label_534
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_535
	cmp	r14, r11
	jae	.label_537
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_537:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_535
	.section	.text
	.align	32
	#Procedure 0x406c4c
	.globl sub_406c4c
	.type sub_406c4c, @function
sub_406c4c:

	nop	dword ptr [rax]
.label_534:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_641
	cmp	r12d, 2
	jne	.label_551
	mov	eax, r9d
	and	al, 1
	jne	.label_551
	cmp	r14, r11
	jae	.label_555
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_555:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_558
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_558:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_562
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_562:
	add	r14, 3
	mov	r9b, 1
.label_551:
	cmp	r14, r11
	jae	.label_635
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_635:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_573
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_573:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_578
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_578:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_535:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_594
	test	r9b, 1
	je	.label_595
	mov	ebx, eax
	and	bl, 1
	jne	.label_595
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_596
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_596:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_601
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_601:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_595:
	cmp	r14, r11
	jae	.label_604
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_604
	.section	.text
	.align	32
	#Procedure 0x406d53
	.globl sub_406d53
	.type sub_406d53, @function
sub_406d53:

	nop	word ptr cs:[rax + rax]
.label_594:
	test	r9b, 1
	je	.label_612
	and	al, 1
	jne	.label_612
	cmp	r14, r11
	jae	.label_615
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_615:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_582
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_582:
	add	r14, 2
	xor	r9d, r9d
.label_612:
	mov	ebx, r15d
.label_644:
	cmp	r14, r11
	jae	.label_617
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_617:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_602
.label_556:
	xor	r13d, r13d
.label_552:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_528
.label_560:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_634
	mov	rsi, qword ptr [rsp + 0x58]
.label_618:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_622
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_618
	xor	r13d, r13d
	jmp	.label_528
.label_634:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_528
.label_622:
	xor	r13d, r13d
	jmp	.label_528
.label_605:
	xor	r13d, r13d
	jmp	.label_532
.label_567:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_532
	.section	.text
	.align	32
	#Procedure 0x406e28
	.globl sub_406e28
	.type sub_406e28, @function
sub_406e28:

	nop	dword ptr [rax + rax]
.label_584:
	mov	rcx, rsi
.label_590:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_540
	or	al, dl
	je	.label_546
.label_540:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_549
	or	al, dl
	jne	.label_549
	test	r10b, 1
	jne	.label_559
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_549
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_564
.label_549:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_570
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_571
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_571
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_588:
	cmp	r14, r11
	jae	.label_606
	mov	byte ptr [rcx + r14], al
.label_606:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_588
	jmp	.label_571
.label_543:
	mov	qword ptr [rsp + 0x20], rbp
.label_641:
	mov	rdx, rdi
	jmp	.label_591
.label_569:
	mov	qword ptr [rsp + 0x20], rbp
.label_579:
	mov	rdx, rdi
	mov	eax, 2
.label_585:
	mov	qword ptr [rsp + 0x38], rax
.label_591:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
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
.label_630:
	mov	r14, rax
.label_633:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_546:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_591
.label_559:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_630
.label_570:
	mov	rcx, qword ptr [rsp + 8]
.label_571:
	cmp	r14, r11
	jae	.label_633
	mov	byte ptr [rcx + r14], 0
	jmp	.label_633
.label_538:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_585
.label_561:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406fe7
	.globl sub_406fe7
	.type sub_406fe7, @function
sub_406fe7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ff0

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
	js	.label_649
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_648
	mov	dword ptr [r14], ebp
	jmp	.label_649
.label_648:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_649:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40703f
	.globl sub_40703f
	.type sub_40703f, @function
sub_40703f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407040

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
	jne	.label_650
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_659
	cvtsi2ss	xmm0, rsi
	jmp	.label_663
.label_659:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_663:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_206]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_207]
	jae	.label_658
.label_650:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_667
	.section	.text
	.align	32
	#Procedure 0x4070cb
	.globl sub_4070cb
	.type sub_4070cb, @function
sub_4070cb:

	nop	dword ptr [rax + rax]
.label_661:
	add	rbx, 2
.label_667:
	cmp	rbx, -1
	je	.label_658
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_651
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_656:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_651
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_656
.label_651:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_661
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_658
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_652
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_658
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
	je	.label_665
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_652
.label_665:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_660
	.section	.text
	.align	32
	#Procedure 0x4071ee
	.globl sub_4071ee
	.type sub_4071ee, @function
sub_4071ee:

	nop	
.label_654:
	add	r12, 0x10
.label_660:
	cmp	r12, r15
	jae	.label_666
	cmp	qword ptr [r12], 0
	je	.label_654
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_653
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_668:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_664
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_657
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_655
	.section	.text
	.align	32
	#Procedure 0x40725a
	.globl sub_40725a
	.type sub_40725a, @function
sub_40725a:

	nop	word ptr [rax + rax]
.label_657:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_655:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_668
.label_653:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_654
.label_666:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_662
	mov	rdi, qword ptr [rsp]
	call	free
.label_658:
	xor	ebp, ebp
.label_652:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_664:
	call	abort
.label_662:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4072ca
	.globl sub_4072ca
	.type sub_4072ca, @function
sub_4072ca:

	nop	word ptr [rax + rax]
.label_669:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072d3
	.globl sub_4072d3
	.type sub_4072d3, @function
sub_4072d3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072dc

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_669
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072f0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_670]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x407304
	.globl sub_407304
	.type sub_407304, @function
sub_407304:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407310
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_671
	call	rpl_calloc
	test	rax, rax
	je	.label_671
	pop	rcx
	ret	
.label_671:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407336
	.globl sub_407336
	.type sub_407336, @function
sub_407336:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407340
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_672
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_675
	.section	.text
	.align	32
	#Procedure 0x407352
	.globl sub_407352
	.type sub_407352, @function
sub_407352:

	nop	word ptr cs:[rax + rax]
.label_673:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407366
	.globl sub_407366
	.type sub_407366, @function
sub_407366:

	nop	dword ptr [rax + rax]
.label_674:
	add	rcx, 0x10
.label_675:
	cmp	rcx, rdx
	jae	.label_673
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_674
.label_672:
	ret	
	.section	.text
	.align	32
	#Procedure 0x407380
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
	#Procedure 0x4073b3
	.globl sub_4073b3
	.type sub_4073b3, @function
sub_4073b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_676
	test	rax, rax
	je	.label_677
.label_676:
	pop	rbx
	ret	
.label_677:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4073da
	.globl sub_4073da
	.type sub_4073da, @function
sub_4073da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073e0
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
	.align	32
	#Procedure 0x4073f8
	.globl sub_4073f8
	.type sub_4073f8, @function
sub_4073f8:

	nop	dword ptr [rax + rax]
.label_678:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407405
	.globl sub_407405
	.type sub_407405, @function
sub_407405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407413

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
	je	.label_679
	test	r15, r15
	je	.label_678
.label_679:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_681:
	mov	eax, ebx
.label_680:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40745d
	.globl sub_40745d
	.type sub_40745d, @function
sub_40745d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40746c

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
	ja	.label_681
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
	jmp	.label_680
.label_683:
	call	xalloc_die
.label_685:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4074aa
	.globl sub_4074aa
	.type sub_4074aa, @function
sub_4074aa:

	nop	word ptr cs:[rax + rax]
.label_686:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_683
	mov	qword ptr [rsi], rbx
.label_684:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_682
	test	rax, rax
	je	.label_683
.label_682:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074de
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_686
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_685
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_684
	call	free
	xor	eax, eax
	jmp	.label_682
	.section	.text
	.align	32
	#Procedure 0x407510
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	32
	#Procedure 0x40757e
	.globl sub_40757e
	.type sub_40757e, @function
sub_40757e:

	nop	
.label_692:
	test	rcx, rcx
	jne	.label_687
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_687:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_691
.label_693:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_690
	test	rbx, rbx
	jne	.label_690
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_689:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4075d1
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_692
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_689
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_693
.label_690:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_688
	test	rax, rax
	je	.label_689
.label_688:
	pop	rbx
	ret	
.label_691:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407617
	.globl sub_407617
	.type sub_407617, @function
sub_407617:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407620

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
	jae	.label_704
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_700
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_711
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_712
	mov	r14, qword ptr [r13]
.label_711:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_696
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_695
.label_712:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_700
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_709:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_705
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_707
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_709
	jmp	.label_700
.label_696:
	mov	qword ptr [r13], 0
	jmp	.label_695
.label_705:
	mov	rcx, rax
	jmp	.label_714
.label_707:
	mov	r14, qword ptr [rcx]
.label_714:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_695:
	xor	r12d, r12d
	test	r14, r14
	je	.label_700
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_699
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_703
	cvtsi2ss	xmm1, rax
	jmp	.label_706
.label_703:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_706:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_710
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_713
.label_710:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_713:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_699
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_701
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_214]
	jbe	.label_698
	movss	xmm4, dword ptr [rip + label_217]
	ucomiss	xmm4, xmm3
	jbe	.label_698
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_698
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_208]
	jbe	.label_698
	movss	xmm4, dword ptr [rip + label_214]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_698
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_202]
	ucomiss	xmm5, xmm3
	jb	.label_698
	ucomiss	xmm3, xmm4
	ja	.label_694
.label_698:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_694
.label_701:
	mov	eax, OFFSET FLAT:default_tuning
.label_694:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_699
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_702
	mulss	xmm0, dword ptr [rax + 8]
.label_702:
	movss	xmm1, dword ptr [rip + label_206]
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
	jne	.label_699
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_708
	nop	word ptr cs:[rax + rax]
.label_697:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_697
.label_708:
	mov	qword ptr [r15 + 0x48], 0
.label_699:
	mov	r12, r14
.label_700:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_704:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4078b3
	.globl sub_4078b3
	.type sub_4078b3, @function
sub_4078b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078c0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_715
	test	rdx, rdx
	je	.label_715
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_715:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4078eb
	.globl sub_4078eb
	.type sub_4078eb, @function
sub_4078eb:

	nop	dword ptr [rax + rax]
.label_716:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4078f5
	.globl sub_4078f5
	.type sub_4078f5, @function
sub_4078f5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078fb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_716
	test	rdx, rdx
	je	.label_716
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
	.align	32
	#Procedure 0x407960
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_717
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_720:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_720
.label_717:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_721
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_718], OFFSET FLAT:slot0
.label_721:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_719
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_719:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079f1
	.globl sub_4079f1
	.type sub_4079f1, @function
sub_4079f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a00
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a08
	.globl sub_407a08
	.type sub_407a08, @function
sub_407a08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a10

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
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_725
	nop	word ptr cs:[rax + rax]
.label_733:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_722
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_726
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_734:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_729
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_732
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_724
	.section	.text
	.align	32
	#Procedure 0x407a99
	.globl sub_407a99
	.type sub_407a99, @function
sub_407a99:

	nop	dword ptr [rax]
.label_732:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_724:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_734
	mov	r13, qword ptr [r14]
.label_726:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_722
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_727
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_731
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_735
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_723
.label_731:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_728
.label_735:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_730
.label_723:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_728:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_722:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_733
	mov	al, 1
.label_725:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_730:
	xor	eax, eax
	jmp	.label_725
.label_729:
	call	abort
.label_727:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407b77
	.globl sub_407b77
	.type sub_407b77, @function
sub_407b77:

	nop	word ptr [rax + rax]
.label_737:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_736
	call	__errno_location
	mov	dword ptr [rax], 0
.label_736:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b9b

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
	jne	.label_737
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_736
	test	cl, cl
	jne	.label_736
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_736
.label_742:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_738
.label_741:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_741
.label_738:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x407c0f
	.globl sub_407c0f
	.type sub_407c0f, @function
sub_407c0f:

	nop	word ptr cs:[rax + rax]
.label_739:
	add	r15, 0x10
.label_745:
	cmp	r15, rax
	jae	.label_742
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_739
	nop	word ptr cs:[rax + rax]
.label_740:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_740
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_739
.label_747:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_745
	.section	.text
	.align	32
	#Procedure 0x407c59
	.globl sub_407c59
	.type sub_407c59, @function
sub_407c59:

	nop	
.label_743:
	add	r15, 0x10
.label_748:
	cmp	r15, rax
	jae	.label_747
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_743
	test	r15, r15
	je	.label_743
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_746
	.section	.text
	.align	32
	#Procedure 0x407c7a

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_747
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_747
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_748
	.section	.text
	.align	32
	#Procedure 0x407c99
	.globl sub_407c99
	.type sub_407c99, @function
sub_407c99:

	nop	
.label_744:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_746:
	test	rbx, rbx
	jne	.label_744
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_743
	.section	.text
	.align	32
	#Procedure 0x407cb0

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
	jne	.label_754
	test	al, 1
	je	.label_754
	mov	dl, 1
.label_754:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_752
	and	eax, 2
	jne	.label_752
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_753
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_749
.label_752:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_753
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_749
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_757
	mov	eax, dword ptr [r14]
.label_749:
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
.label_751:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_753:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_758
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_751
	cmp	ecx, 0x4000
	jne	.label_755
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_750
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_750
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_750:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_751
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_756
	cmp	dl, 0x2e
	jne	.label_751
	test	ecx, 0xff0000
	jne	.label_751
.label_756:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_751
.label_758:
	mov	ax, 8
	jmp	.label_751
.label_755:
	mov	ax, 3
	jmp	.label_751
.label_757:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_751
	.section	.text
	.align	32
	#Procedure 0x407e45
	.globl sub_407e45
	.type sub_407e45, @function
sub_407e45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e50

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_763
	test	ah, 2
	jne	.label_762
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_760
.label_762:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_764
	mov	edi, eax
	call	close
.label_764:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_763:
	xor	eax, eax
.label_760:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_761
	.section	.text
	.align	32
	#Procedure 0x407e9a
	.globl sub_407e9a
	.type sub_407e9a, @function
sub_407e9a:

	nop	word ptr [rax + rax]
.label_765:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ea9
	.globl sub_407ea9
	.type sub_407ea9, @function
sub_407ea9:

	nop	word ptr [rax + rax]
.label_759:
	mov	edi, eax
	call	close
.label_761:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_765
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_759
	jmp	.label_761
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ed4
	.globl sub_407ed4
	.type sub_407ed4, @function
sub_407ed4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ee0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x407eee
	.globl sub_407eee
	.type sub_407eee, @function
sub_407eee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407ef0

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
	js	.label_769
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_772
	cmp	r12d, 0x7fffffff
	je	.label_767
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
	jne	.label_770
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_770:
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
.label_772:
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
	jbe	.label_768
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_771
.label_768:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_766
	mov	rdi, r14
	call	free
.label_766:
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
.label_771:
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
.label_769:
	call	abort
.label_767:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4080ad
	.globl sub_4080ad
	.type sub_4080ad, @function
sub_4080ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4080b0

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
	je	.label_773
	cmp	r15, -2
	jb	.label_773
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_773
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_773:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408106
	.globl sub_408106
	.type sub_408106, @function
sub_408106:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408110

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
	.align	32
	#Procedure 0x408120
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x408128
	.globl sub_408128
	.type sub_408128, @function
sub_408128:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408130
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_774
	xor	eax, eax
.label_776:
	cmp	qword ptr [r9], 0
	je	.label_775
	test	r9, r9
	je	.label_775
	mov	r8, r9
	nop	
.label_777:
	cmp	rax, rdx
	jae	.label_774
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_777
	mov	r8, qword ptr [rdi + 8]
.label_775:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_776
.label_774:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408176
	.globl sub_408176
	.type sub_408176, @function
sub_408176:

	nop	word ptr cs:[rax + rax]
.label_778:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408185
	.globl sub_408185
	.type sub_408185, @function
sub_408185:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40818d

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
	je	.label_778
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
	.align	32
	#Procedure 0x4081f0

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
	jae	.label_788
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_783
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_783
	mov	qword ptr [r13], rdi
	jmp	.label_780
.label_788:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_780:
	test	rbx, rbx
	je	.label_784
	nop	dword ptr [rax]
.label_786:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_786
	mov	rdi, qword ptr [r13]
.label_784:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_781
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_785
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_787
	mov	rdx, rsi
	jmp	.label_790
.label_783:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_782
.label_787:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_789:
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
	jne	.label_789
.label_790:
	test	rcx, rcx
	je	.label_785
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_779:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_779
.label_785:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_781:
	mov	qword ptr [rcx + 0x10], 0
.label_782:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40836e
	.globl sub_40836e
	.type sub_40836e, @function
sub_40836e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408370

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
	.align	32
	#Procedure 0x408393
	.globl sub_408393
	.type sub_408393, @function
sub_408393:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083a0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_406
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_791
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_791:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083e2
	.globl sub_4083e2
	.type sub_4083e2, @function
sub_4083e2:

	nop	word ptr cs:[rax + rax]
.label_792:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4083f5
	.globl sub_4083f5
	.type sub_4083f5, @function
sub_4083f5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083f9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_792
	test	rsi, rsi
	je	.label_792
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
	.align	32
	#Procedure 0x408460
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408465
	.globl sub_408465
	.type sub_408465, @function
sub_408465:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408470

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_793:
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
	ja	.label_793
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084bb
	.globl sub_4084bb
	.type sub_4084bb, @function
sub_4084bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084c0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084c5
	.globl sub_4084c5
	.type sub_4084c5, @function
sub_4084c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084d0

	.globl chown_files
	.type chown_files, @function
chown_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	dword ptr [rsp + 0x2c], r8d
	mov	dword ptr [rsp + 0x24], ecx
	mov	dword ptr [rsp + 4], edx
	mov	eax, esi
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	dword ptr [rsp + 0x28], r9d
	and	r9d, r8d
	xor	esi, esi
	mov	dword ptr [rsp + 0x3c], r9d
	cmp	r9d, -1
	jne	.label_831
	cmp	byte ptr [r13 + 0x10], 0
	jne	.label_831
	xor	esi, esi
	cmp	dword ptr [r13], 2
	sete	sil
	shl	esi, 3
.label_831:
	or	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	mov	r12b, 1
	test	rdx, rdx
	je	.label_858
	mov	bpl, 1
	mov	qword ptr [rsp + 0x40], r14
	jmp	.label_797
.label_872:
	mov	esi, OFFSET FLAT:label_827
.label_861:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x10]
	xor	r15d, r15d
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_869
.label_814:
	mov	edi, r12d
	call	close
	xor	ecx, ecx
	test	eax, eax
	setne	cl
	lea	ebx, [rcx*4 + 2]
	jmp	.label_810
	.section	.text
	.align	32
	#Procedure 0x40858e
	.globl sub_40858e
	.type sub_40858e, @function
sub_40858e:

	nop	
.label_797:
	mov	r9, qword ptr [rdx + 0x30]
	mov	rbx, qword ptr [rdx + 0x38]
	movzx	eax, word ptr [rdx + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 9
	ja	.label_821
	jmp	qword ptr [(rax * 8) + label_883]
.label_1068:
	cmp	byte ptr [r13 + 4], 0
	je	.label_821
	mov	rax, qword ptr [r13 + 8]
	mov	r12b, 1
	test	rax, rax
	je	.label_842
	mov	rcx, qword ptr [rdx + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_842
	mov	rcx, qword ptr [rdx + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_842
	mov	r13, rdx
	cmp	byte ptr [rbx], 0x2f
	jne	.label_893
	cmp	byte ptr [rbx + 1], 0
	je	.label_895
.label_893:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_868
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_406
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_813:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_806
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, r14
	call	rpl_fts_read
	mov	r13, qword ptr [rsp + 0x1b0]
	jmp	.label_842
.label_1069:
	mov	rdi, r14
	mov	rsi, rdx
	mov	r15, rdx
	mov	r12, r9
	call	cycle_warning_required
	mov	r9, r12
	mov	rdx, r15
	test	al, al
	je	.label_821
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_824
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	r13, qword ptr [rsp + 0x1b0]
	call	error
	jmp	.label_842
.label_1070:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_845
	xor	r12d, r12d
	jmp	.label_802
.label_1071:
	mov	r12b, 1
	cmp	byte ptr [r13 + 4], 0
	je	.label_842
.label_821:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	cmp	dword ptr [rsp + 0x3c], -1
	mov	qword ptr [rsp + 0x30], rdx
	jne	.label_857
	cmp	dword ptr [r13], 2
	jne	.label_857
	cmp	qword ptr [r13 + 8], 0
	je	.label_867
	nop	dword ptr [rax + rax]
.label_857:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_871
	jmp	.label_815
.label_1072:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_877
	xor	r12d, r12d
	jmp	.label_802
.label_1073:
	cmp	qword ptr [rdx + 0x58], 0
	jne	.label_880
	cmp	qword ptr [rdx + 0x20], 0
	je	.label_881
.label_880:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 3], bpl
	mov	r14b, 1
	xor	r15d, r15d
	xor	ebp, ebp
	cmp	byte ptr [r13 + 0x11], 0
	mov	qword ptr [rsp + 0x30], rdx
	je	.label_884
	xor	r12d, r12d
	jmp	.label_802
.label_845:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_888
	jmp	.label_889
.label_877:
	mov	ebp, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_134
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_886
.label_884:
	mov	ebx, dword ptr [rdx + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_794
.label_889:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_886:
	call	error
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_802
.label_867:
	lea	r15, [rdx + 0x78]
	cmp	byte ptr [r13 + 0x10], 0
	mov	al, 1
	mov	ebp, dword ptr [rsp + 0x2c]
	je	.label_805
	nop	word ptr cs:[rax + rax]
.label_871:
	mov	eax, dword ptr [rdx + 0x90]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_815
	mov	esi, dword ptr [r14 + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, r9
	lea	r15, [rsp + 0xe8]
	mov	rcx, r15
	mov	rbx, r9
	call	__fxstatat
	mov	r9, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	test	eax, eax
	je	.label_815
	mov	r14b, 1
	cmp	byte ptr [r13 + 0x11], 0
	je	.label_822
	xor	ebp, ebp
	jmp	.label_828
	.section	.text
	.align	32
	#Procedure 0x4088c7
	.globl sub_4088c7
	.type sub_4088c7, @function
sub_4088c7:

	nop	word ptr [rax + rax]
.label_815:
	cmp	ebp, -1
	je	.label_835
	mov	ecx, dword ptr [r15 + 0x1c]
	cmp	ecx, ebp
	sete	al
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_805
	cmp	ecx, ebp
	je	.label_870
	jmp	.label_805
.label_835:
	mov	al, 1
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_805
.label_870:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [r15 + 0x20], eax
	sete	al
.label_805:
	movzx	ecx, word ptr [rdx + 0x70]
	cmp	ecx, 6
	ja	.label_847
	mov	edx, 0x56
	bt	edx, ecx
	jae	.label_847
	mov	rcx, qword ptr [r13 + 8]
	test	rcx, rcx
	je	.label_847
	mov	rdx, qword ptr [r15 + 8]
	cmp	rdx, qword ptr [rcx]
	jne	.label_847
	mov	rdx, qword ptr [r15]
	cmp	rdx, qword ptr [rcx + 8]
	jne	.label_847
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	byte ptr [rbp], 0x2f
	jne	.label_862
	cmp	byte ptr [rbp + 1], 0
	je	.label_859
.label_862:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_868
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_406
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_846:
	movzx	ebp, byte ptr [rsp + 3]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_806
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r13, qword ptr [rsp + 0x1b0]
	jmp	.label_842
	.section	.text
	.align	32
	#Procedure 0x4089e3
	.globl sub_4089e3
	.type sub_4089e3, @function
sub_4089e3:

	nop	word ptr cs:[rax + rax]
.label_847:
	test	al, al
	je	.label_894
	mov	ebx, dword ptr [r14 + 0x2c]
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x10], 0
	je	.label_887
	cmp	dword ptr [rsp + 0x3c], -1
	je	.label_795
	movzx	eax, word ptr [r15 + 0x18]
	and	eax, 0xf000
	mov	ebp, 0x900
	cmp	eax, 0x8000
	je	.label_865
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_795
	mov	ebp, 0x10900
.label_865:
	xor	eax, eax
	mov	edi, ebx
	mov	r13, r9
	mov	rsi, r9
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_807
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 0xd
	jne	.label_812
	mov	ecx, dword ptr [r15 + 0x18]
	mov	eax, 0xf000
	and	ecx, eax
	mov	eax, 0xd
	cmp	ecx, 0x8000
	jne	.label_812
	or	ebp, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsi, r13
	mov	edx, ebp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_882
.label_807:
	mov	edi, 1
	mov	esi, r12d
	lea	rdx, [rsp + 0x50]
	call	__fxstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_826
	mov	rax, qword ptr [r15 + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_826
	mov	rax, qword ptr [r15]
	cmp	rax, qword ptr [rsp + 0x50]
	jne	.label_826
	mov	eax, dword ptr [rsp + 0x2c]
	cmp	eax, -1
	mov	ebx, 2
	je	.label_855
	cmp	dword ptr [rsp + 0x6c], eax
	jne	.label_826
.label_855:
	cmp	dword ptr [rsp + 0x28], -1
	je	.label_841
	mov	eax, dword ptr [rsp + 0x28]
	cmp	dword ptr [rsp + 0x70], eax
	jne	.label_826
.label_841:
	mov	edi, r12d
	mov	esi, dword ptr [rsp + 4]
	mov	edx, dword ptr [rsp + 0x24]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_814
.label_826:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_810
.label_894:
	mov	r14b, 1
	xor	ebp, ebp
	mov	r12b, 1
	jmp	.label_802
.label_887:
	mov	r8d, 0x100
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
	je	.label_878
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r14b
	mov	al, 1
	je	.label_876
	mov	eax, r12d
.label_876:
	mov	r12b, al
	jmp	.label_878
.label_822:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_863
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	call	error
.label_828:
	lea	r15, [rsp + 0xe8]
	xor	r12d, r12d
	jmp	.label_802
.label_881:
	mov	qword ptr [rdx + 0x20], 1
	mov	rsi, rdx
	mov	edx, 1
	mov	rdi, r14
	call	rpl_fts_set
	mov	r12b, 1
	jmp	.label_842
.label_859:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_851
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
	jmp	.label_846
.label_895:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_851
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
	jmp	.label_813
.label_882:
	mov	eax, dword ptr [r14]
.label_812:
	xor	ebx, ebx
	cmp	eax, 0xd
	setne	bl
	add	ebx, 5
.label_810:
	mov	r9, r13
	add	ebx, -2
	cmp	ebx, 4
	ja	.label_825
	mov	r14b, 1
	xor	r12d, r12d
	xor	ebp, ebp
	jmp	qword ptr [(rbx * 8) + label_819]
.label_987:
	mov	r14b, 1
	mov	bpl, 1
	mov	r12b, 1
	jmp	.label_802
.label_988:
	mov	rax, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rax + 0x2c]
.label_795:
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r9
	mov	edx, dword ptr [rsp + 4]
	mov	ecx, dword ptr [rsp + 0x24]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
.label_878:
	mov	bpl, 1
	test	r12b, 1
	jne	.label_802
.label_989:
	mov	bpl, 1
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	jne	.label_802
	call	__errno_location
	cmp	dword ptr [rsp + 4], -1
	mov	r13d, dword ptr [rax]
	je	.label_836
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_839
	jmp	.label_840
.label_836:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_843
.label_840:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
.label_802:
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	rdx, qword ptr [r13]
	mov	rax, rdx
	shr	rax, 0x20
	cmp	edx, 2
	je	.label_856
	mov	ecx, r12d
	and	cl, 1
	test	bpl, bpl
	je	.label_832
	mov	ebx, r12d
	and	bl, r14b
	mov	r13, qword ptr [rsp + 0x1b0]
	je	.label_832
	cmp	dword ptr [rsp + 4], -1
	je	.label_873
	mov	esi, dword ptr [rsp + 4]
	cmp	dword ptr [r15 + 0x1c], esi
	jne	.label_875
.label_873:
	cmp	dword ptr [rsp + 0x24], -1
	je	.label_832
	mov	esi, dword ptr [rsp + 0x24]
	cmp	dword ptr [r15 + 0x20], esi
	jne	.label_875
	nop	dword ptr [rax]
.label_832:
	test	edx, edx
	jne	.label_856
	test	cl, cl
	movzx	eax, r14b
	lea	r14d, [rax + rax*2 + 1]
	mov	eax, 3
	cmove	r14d, eax
	test	r15, r15
	mov	ebp, 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	jne	.label_879
	jmp	.label_885
.label_875:
	movzx	r14d, r14b
	inc	r14d
	test	cl, cl
	mov	eax, 3
	cmove	r14d, eax
.label_879:
	mov	ebx, dword ptr [r15 + 0x1c]
	mov	edi, ebx
	call	getpwuid
	test	rax, rax
	je	.label_890
	mov	rdi, qword ptr [rax]
	jmp	.label_891
.label_890:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_891:
	call	xstrdup
	mov	rbp, rax
	mov	ebx, dword ptr [r15 + 0x20]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_804
	mov	rdi, qword ptr [rax]
	jmp	.label_796
.label_804:
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	umaxtostr
	mov	rdi, rax
.label_796:
	mov	r13, qword ptr [rsp + 0x1b0]
	call	xstrdup
	mov	qword ptr [rsp + 0x48], rax
.label_885:
	cmp	r14d, 1
	jne	.label_800
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_801
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_817
.label_800:
	mov	rbx, qword ptr [r13 + 0x18]
	mov	r15, qword ptr [r13 + 0x20]
	mov	rdi, rbx
	mov	rsi, r15
	call	user_group_str
	mov	qword ptr [rsp + 0x10], rax
	test	rbx, rbx
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, rbp
	cmove	rdi, rbx
	test	r15, r15
	mov	rsi, qword ptr [rsp + 0x48]
	cmove	rsi, r15
	call	user_group_str
	and	r14b, 7
	cmp	r14b, 4
	mov	r13, qword ptr [rsp + 0x18]
	je	.label_823
	cmp	r14b, 3
	je	.label_829
	cmp	r14b, 2
	jne	.label_830
	test	rbx, rbx
	je	.label_833
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_834
	jmp	.label_809
.label_823:
	test	rbx, rbx
	je	.label_837
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_838
	jmp	.label_809
.label_829:
	test	rax, rax
	je	.label_844
	test	rbx, rbx
	je	.label_811
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_849
	jmp	.label_809
.label_833:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_850
	mov	esi, OFFSET FLAT:label_820
	jmp	.label_809
.label_837:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_852
	mov	esi, OFFSET FLAT:label_848
	jmp	.label_809
.label_844:
	xor	edi, edi
	test	rbx, rbx
	je	.label_854
	mov	esi, OFFSET FLAT:label_860
	jmp	.label_861
.label_811:
	mov	rbx, rax
	xor	edi, edi
	test	r15, r15
	je	.label_864
	mov	esi, OFFSET FLAT:label_866
	jmp	.label_809
.label_850:
	mov	esi, OFFSET FLAT:label_808
	jmp	.label_809
.label_852:
	mov	esi, OFFSET FLAT:label_853
	jmp	.label_809
.label_854:
	test	r15, r15
	je	.label_872
	mov	esi, OFFSET FLAT:label_874
	jmp	.label_861
.label_864:
	mov	esi, OFFSET FLAT:label_827
.label_809:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x10]
.label_869:
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r15
	call	__printf_chk
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	call	free
.label_817:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	al, byte ptr [r13 + 4]
.label_856:
	test	al, al
	mov	r14, qword ptr [rsp + 0x40]
	jne	.label_892
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x30]
	call	rpl_fts_set
.label_892:
	and	r12b, 1
	movzx	ebp, byte ptr [rsp + 3]
.label_842:
	and	r12b, bpl
	mov	rdi, r14
	call	rpl_fts_read
	mov	rdx, rax
	test	rdx, rdx
	mov	ebp, r12d
	jne	.label_797
.label_858:
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_798
	mov	rax, qword ptr [rsp + 0x1b0]
	cmp	byte ptr [rax + 0x11], 0
	je	.label_799
	xor	r12d, r12d
	jmp	.label_798
.label_799:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_798:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_816
	mov	ebx, dword ptr [rbp]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_818
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_816:
	mov	eax, r12d
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_830:
	call	abort
.label_825:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4090bf
	.globl sub_4090bf
	.type sub_4090bf, @function
sub_4090bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4090c0

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_897
	mov	rdi, qword ptr [rax]
	jmp	.label_896
.label_897:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_896:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090ef
	.globl sub_4090ef
	.type sub_4090ef, @function
sub_4090ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4090f0
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
	.align	32
	#Procedure 0x409108
	.globl sub_409108
	.type sub_409108, @function
sub_409108:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409110

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdx
	mov	r12d, esi
	mov	r14, rdi
	cmp	r12d, 0x1000
	jae	.label_904
	mov	eax, r12d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_904
	test	r12b, 0x12
	je	.label_904
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_917
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r12d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r12b, 2
	cmove	eax, r12d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r14]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_923
	mov	rax, r14
	mov	r14, rbx
	mov	r15, rax
	lea	rbx, [rax + 8]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_919:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_919
	inc	rbp
	mov	rbx, r14
	mov	r14, r15
.label_923:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_905
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r15, qword ptr [r14]
	xor	r14d, r14d
	test	r15, r15
	je	.label_908
	mov	edi, 0x110
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_903
	mov	byte ptr [r14 + 0x108], 0
	mov	qword ptr [r14 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x50], rax
	mov	qword ptr [r14 + 0x38], rbp
	mov	dword ptr [r14 + 0x40], 0
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x72], 0
	mov	word ptr [r14 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x58], -1
	mov	qword ptr [r14 + 0x68], -1
.label_908:
	mov	byte ptr [rsp + 0xf], 1
	test	r13, r13
	je	.label_909
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_909:
	xor	ebp, ebp
	test	r15, r15
	mov	qword ptr [rsp + 0x28], r14
	je	.label_901
	and	r12d, 0x800
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x20], r13
	nop	word ptr cs:[rax + rax]
.label_920:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	r12d, r12d
	jne	.label_900
	cmp	rbp, 3
	jb	.label_900
	cmp	byte ptr [r15 + rbp - 1], 0x2f
	jne	.label_900
	nop	word ptr cs:[rax + rax]
.label_910:
	cmp	byte ptr [r15 + rbp - 2], 0x2f
	jne	.label_900
	dec	rbp
	cmp	rbp, 1
	ja	.label_910
	nop	word ptr cs:[rax + rax]
.label_900:
	mov	r14d, r12d
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_926
	mov	qword ptr [rsp + 0x40], rbx
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_925
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_902
	.section	.text
	.align	32
	#Procedure 0x409409
	.globl sub_409409
	.type sub_409409, @function
sub_409409:

	nop	dword ptr [rax]
.label_925:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_902:
	mov	r13, qword ptr [rsp + 0x20]
	test	r13, r13
	je	.label_916
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], rbx
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_906
.label_916:
	mov	qword ptr [r12 + 0x10], 0
	test	rbx, rbx
	mov	rbp, r12
	je	.label_906
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbx
.label_906:
	mov	rbx, qword ptr [rsp + 0x40]
	inc	rbx
	mov	rax, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x38], rax
	test	r15, r15
	mov	qword ptr [rsp + 0x18], r12
	mov	r12d, r14d
	jne	.label_920
	test	r13, r13
	je	.label_901
	cmp	rbx, 2
	jb	.label_901
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	rbp, rax
.label_901:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_911
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_913
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_915
	jmp	.label_898
.label_904:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_918:
	xor	eax, eax
.label_917:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_905:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_921
.label_926:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_898
.label_903:
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_924
.label_911:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx], 0
.label_898:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_899
	nop	dword ptr [rax + rax]
.label_912:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_922
	call	closedir
.label_922:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_912
.label_899:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_924:
	mov	rdi, rbp
.label_921:
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_918
.label_913:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_898
	mov	rdi, rax
	call	cycle_check_init
.label_915:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_914
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_927
	mov	edi, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_907
.label_927:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:label_14
	xor	eax, eax
	call	openat_safer
.label_907:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_914
	or	byte ptr [rbx + 0x48], 4
.label_914:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_917
	.section	.text
	.align	32
	#Procedure 0x409652
	.globl sub_409652
	.type sub_409652, @function
sub_409652:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409660
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_928:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_928
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x409681
	.globl sub_409681
	.type sub_409681, @function
sub_409681:

	nop	word ptr cs:[rax + rax]
.label_929:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409695
	.globl sub_409695
	.type sub_409695, @function
sub_409695:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409699

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
	je	.label_929
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
.label_930:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x409703
	.globl sub_409703
	.type sub_409703, @function
sub_409703:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409705

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_931
	cmp	ecx, 0x11
	jne	.label_930
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_931:
	ret	
	.section	.text
	.align	32
	#Procedure 0x409720
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
	#Procedure 0x40972f
	.globl sub_40972f
	.type sub_40972f, @function
sub_40972f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409730
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
	#Procedure 0x409766
	.globl sub_409766
	.type sub_409766, @function
sub_409766:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409770
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
	.align	32
	#Procedure 0x4097e5
	.globl sub_4097e5
	.type sub_4097e5, @function
sub_4097e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_932
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_933
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_935
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_422
	mov	ecx, OFFSET FLAT:label_515
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_934
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x409864
	.globl sub_409864
	.type sub_409864, @function
sub_409864:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409870
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
	#Procedure 0x40987f
	.globl sub_40987f
	.type sub_40987f, @function
sub_40987f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409880
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
	je	.label_936
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
.label_936:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4098e8
	.globl sub_4098e8
	.type sub_4098e8, @function
sub_4098e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_403
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_937
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409915
	.globl sub_409915
	.type sub_409915, @function
sub_409915:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409920
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
	jae	.label_942
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_943:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_940
	test	rdx, rdx
	jne	.label_943
	jmp	.label_938
.label_938:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_941:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_939
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_941
.label_939:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_942:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409999
	.globl sub_409999
	.type sub_409999, @function
sub_409999:

	nop	word ptr cs:[rax + rax]
.label_940:
	test	rdx, rdx
	je	.label_938
	mov	rax, qword ptr [rdx]
	jmp	.label_939
.label_944:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099ba

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_945
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_944
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_945:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4099df
	.globl sub_4099df
	.type sub_4099df, @function
sub_4099df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4099e0
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
	.align	32
	#Procedure 0x4099f9
	.globl sub_4099f9
	.type sub_4099f9, @function
sub_4099f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409a00

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
	je	.label_946
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
.label_946:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409a95
	.globl sub_409a95
	.type sub_409a95, @function
sub_409a95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409aa0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_947
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_948:
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
	jne	.label_948
.label_947:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ad3
	.globl sub_409ad3
	.type sub_409ad3, @function
sub_409ad3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ae0

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
	#Procedure 0x409aec
	.globl sub_409aec
	.type sub_409aec, @function
sub_409aec:

	nop	dword ptr [rax]
.label_951:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409af5
	.globl sub_409af5
	.type sub_409af5, @function
sub_409af5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409afd
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_951
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_950
	test	rbx, rbx
	jne	.label_950
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_950:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_949
	test	rax, rax
	je	.label_951
.label_949:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b40

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
	je	.label_952
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_952:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b6c
	.globl sub_409b6c
	.type sub_409b6c, @function
sub_409b6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409bd5
	.globl sub_409bd5
	.type sub_409bd5, @function
sub_409bd5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409be2
	.globl sub_409be2
	.type sub_409be2, @function
sub_409be2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c06
	.globl sub_409c06
	.type sub_409c06, @function
sub_409c06:

	nop	word ptr cs:[rax + rax]
