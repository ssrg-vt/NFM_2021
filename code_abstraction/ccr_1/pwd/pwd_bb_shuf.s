	.section	.text
	.align	16
	#Procedure 0x401639
	.globl sub_401639
	.type sub_401639, @function
sub_401639:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40163a
	.globl sub_40163a
	.type sub_40163a, @function
sub_40163a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401672
	.globl sub_401672
	.type sub_401672, @function
sub_401672:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016ba
	.globl sub_4016ba
	.type sub_4016ba, @function
sub_4016ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016dc
	.globl sub_4016dc
	.type sub_4016dc, @function
sub_4016dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016ed
	.globl sub_4016ed
	.type sub_4016ed, @function
sub_4016ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401706
	.globl sub_401706
	.type sub_401706, @function
sub_401706:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401710
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_9
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_9
.label_10:
	ret	
.label_9:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_10
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401736
	.globl sub_401736
	.type sub_401736, @function
sub_401736:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401740

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40174a
	.globl sub_40174a
	.type sub_40174a, @function
sub_40174a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401750
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
	#Procedure 0x401760

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x401769
	.globl sub_401769
	.type sub_401769, @function
sub_401769:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401770

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40177a
	.globl sub_40177a
	.type sub_40177a, @function
sub_40177a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401780

	.globl logical_getcwd
	.type logical_getcwd, @function
logical_getcwd:
	push	rbx
	sub	rsp, 0x120
	mov	edi, OFFSET FLAT:label_11
	call	getenv
	mov	rbx, rax
	xor	ecx, ecx
	test	rbx, rbx
	je	.label_12
	xor	ecx, ecx
	cmp	byte ptr [rbx], 0x2f
	jne	.label_12
	mov	esi, OFFSET FLAT:label_14
	mov	rdi, rbx
	jmp	.label_15
	.section	.text
	.align	16
	#Procedure 0x4017b5
	.globl sub_4017b5
	.type sub_4017b5, @function
sub_4017b5:

	nop	word ptr cs:[rax + rax]
.label_17:
	inc	rax
	mov	esi, OFFSET FLAT:label_14
	mov	rdi, rax
.label_15:
	call	strstr
	test	rax, rax
	je	.label_18
	movzx	ecx, byte ptr [rax + 2]
	cmp	cl, 0x2e
	jne	.label_19
	movzx	ecx, byte ptr [rax + 3]
.label_19:
	test	cl, cl
	je	.label_13
	cmp	cl, 0x2f
	mov	ecx, 0
	jne	.label_17
	jmp	.label_12
.label_18:
	lea	rsi, [rsp + 0x90]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	jne	.label_13
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_16
	call	stat
	test	eax, eax
	jne	.label_13
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_13
	mov	rax, qword ptr [rsp + 0x90]
	cmp	rax, qword ptr [rsp]
	mov	rcx, rbx
	je	.label_12
.label_13:
	xor	ecx, ecx
.label_12:
	mov	rax, rcx
	add	rsp, 0x120
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401846
	.globl sub_401846
	.type sub_401846, @function
sub_401846:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401850

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_21
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_20
.label_21:
	mov	rax, rbx
	pop	rbx
	ret	
.label_20:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401876
	.globl sub_401876
	.type sub_401876, @function
sub_401876:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401880
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_22
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_24:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_24
.label_22:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_26
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_25]], OFFSET FLAT:slot0
.label_26:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_23
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_23:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401911
	.globl sub_401911
	.type sub_401911, @function
sub_401911:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401920
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40192a
	.globl sub_40192a
	.type sub_40192a, @function
sub_40192a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930

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
	je	.label_27
	mov	qword ptr [rax], rbx
.label_27:
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
	#Procedure 0x401a1c
	.globl sub_401a1c
	.type sub_401a1c, @function
sub_401a1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a20

	.globl find_dir_entry
	.type find_dir_entry, @function
find_dir_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r12, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	edi, OFFSET FLAT:label_35
	call	opendir
	mov	r13, rax
	test	r13, r13
	je	.label_40
	mov	rdi, r13
	call	dirfd
	mov	ebx, eax
	test	ebx, ebx
	js	.label_44
	mov	edi, ebx
	call	fchdir
	jmp	.label_49
.label_44:
	mov	edi, OFFSET FLAT:label_35
	call	chdir
.label_49:
	test	eax, eax
	js	.label_50
	lea	rsi, [rsp + 0x18]
	test	ebx, ebx
	js	.label_43
	mov	edi, ebx
	call	fstat
	jmp	.label_30
.label_43:
	mov	edi, OFFSET FLAT:label_16
	call	stat
.label_30:
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 8], r12
	test	eax, eax
	js	.label_34
	mov	r12, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [r15]
	call	__errno_location
	mov	rbx, rax
	nop	word ptr [rax + rax]
.label_28:
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	call	readdir_ignoring_dot_and_dotdot
	mov	rbp, rax
	test	rbp, rbp
	je	.label_41
	cmp	r12, r14
	jne	.label_42
	mov	rax, qword ptr [rbp]
	test	rax, rax
	jne	.label_45
.label_42:
	lea	rdi, [rbp + 0x13]
	lea	rsi, [rsp + 0xa8]
	call	lstat
	test	eax, eax
	js	.label_28
	mov	rax, qword ptr [rsp + 0xb0]
.label_45:
	cmp	rax, qword ptr [r15 + 8]
	jne	.label_28
	cmp	r12, r14
	je	.label_29
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [r15]
	jne	.label_28
.label_29:
	add	rbp, 0x13
	mov	rdi, rbp
	call	strlen
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rax
	call	file_name_prepend
	mov	bpl, 1
	jmp	.label_39
.label_41:
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	jne	.label_38
	xor	ebp, ebp
.label_39:
	test	r13, r13
	je	.label_33
	mov	rdi, r13
	call	closedir
	test	eax, eax
	jne	.label_33
	test	bpl, bpl
	je	.label_46
	lea	rsi, [rsp + 0x18]
	mov	edx, 0x90
	mov	rdi, r15
	call	memcpy
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_40:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	jmp	.label_32
.label_50:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
.label_32:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	nth_parent
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_34:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	jmp	.label_48
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 8]
	call	nth_parent
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_38:
	mov	rdi, r13
	call	closedir
	mov	dword ptr [rbx], ebp
.label_33:
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
.label_48:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 8]
	call	nth_parent
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x401c70

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
	je	.label_54
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_52
	jmp	.label_53
.label_54:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_53
.label_52:
	mov	eax, 1
	test	bpl, bpl
	je	.label_53
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
.label_53:
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
	#Procedure 0x401cf8
	.globl sub_401cf8
	.type sub_401cf8, @function
sub_401cf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d00

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
	je	.label_55
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_57
	jmp	.label_56
.label_55:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_56
.label_57:
	mov	eax, 1
	test	bpl, bpl
	je	.label_56
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
.label_56:
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
	#Procedure 0x401d79
	.globl sub_401d79
	.type sub_401d79, @function
sub_401d79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d80

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
	je	.label_60
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_59
	jmp	.label_58
.label_60:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_58
.label_59:
	mov	eax, 1
	test	bpl, bpl
	je	.label_58
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
.label_58:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401de3
	.globl sub_401de3
	.type sub_401de3, @function
sub_401de3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401df0

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
	je	.label_63
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_61
	jmp	.label_62
.label_63:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_62
.label_61:
	mov	eax, 1
	test	bpl, bpl
	je	.label_62
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_62:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e4f
	.globl sub_401e4f
	.type sub_401e4f, @function
sub_401e4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e50

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
	je	.label_64
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_66
	jmp	.label_65
.label_64:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_65
.label_66:
	mov	eax, 1
	test	bpl, bpl
	je	.label_65
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_65:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e99
	.globl sub_401e99
	.type sub_401e99, @function
sub_401e99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ea0

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
	je	.label_69
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_68
	jmp	.label_67
.label_69:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_67
.label_68:
	mov	eax, 1
	test	bpl, bpl
	je	.label_67
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_67:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ee5
	.globl sub_401ee5
	.type sub_401ee5, @function
sub_401ee5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ef0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_72
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_71
	jmp	.label_70
.label_72:
	mov	eax, 1
	test	cl, cl
	je	.label_70
.label_71:
	xor	eax, eax
.label_70:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f1f
	.globl sub_401f1f
	.type sub_401f1f, @function
sub_401f1f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f20
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
	#Procedure 0x401f2d
	.globl sub_401f2d
	.type sub_401f2d, @function
sub_401f2d:

	nop	dword ptr [rax]
.label_73:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f33
	.globl sub_401f33
	.type sub_401f33, @function
sub_401f33:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f3b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_73
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl file_name_free
	.type file_name_free, @function
file_name_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x401f65
	.globl sub_401f65
	.type sub_401f65, @function
sub_401f65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f70
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f7a
	.globl sub_401f7a
	.type sub_401f7a, @function
sub_401f7a:

	nop	word ptr [rax + rax]
.label_74:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f83
	.globl sub_401f83
	.type sub_401f83, @function
sub_401f83:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f85
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_74
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_75:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x401fac
	.globl sub_401fac
	.type sub_401fac, @function
sub_401fac:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fb9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_75
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fc0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fca
	.globl sub_401fca
	.type sub_401fca, @function
sub_401fca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl nth_parent
	.type nth_parent, @function
nth_parent:
	push	rbx
	mov	rbx, rdi
	mov	edi, 3
	mov	rsi, rbx
	call	xnmalloc
	test	rbx, rbx
	mov	rdx, rax
	je	.label_76
	lea	rcx, [rbx + rbx*2]
	mov	rdx, rax
.label_77:
	mov	byte ptr [rdx + 2], 0x2f
	mov	word ptr [rdx], 0x2e2e
	add	rdx, 3
	dec	rbx
	jne	.label_77
	mov	rdx, rax
	add	rdx, rcx
.label_76:
	mov	byte ptr [rdx - 1], 0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40200e
	.globl sub_40200e
	.type sub_40200e, @function
sub_40200e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402010

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
	je	.label_88
	mov	edx, OFFSET FLAT:label_93
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_80
.label_88:
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
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
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_89
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_90]]
.label_459:
	add	rsp, 8
	jmp	.label_81
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
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
	jmp	.label_81
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
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
.label_462:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
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
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
	jmp	.label_81
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
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
	jmp	.label_81
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
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
	jmp	.label_81
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
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
	jmp	.label_81
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
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
	jmp	.label_81
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
.label_81:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402368
	.globl sub_402368
	.type sub_402368, @function
sub_402368:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402370

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_97
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_97:
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
	#Procedure 0x4023f3
	.globl sub_4023f3
	.type sub_4023f3, @function
sub_4023f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_98:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_98
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402421
	.globl sub_402421
	.type sub_402421, @function
sub_402421:

	nop	word ptr cs:[rax + rax]
.label_99:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40243e
	.globl sub_40243e
	.type sub_40243e, @function
sub_40243e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402447

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_99
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_101
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_99
.label_101:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_99
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_100
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_100:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024b0

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_102
	xor	eax, eax
	cmp	byte ptr [rdi + 1], 0x2e
	sete	al
	mov	al, byte ptr [rdi + rax + 1]
	test	al, al
	sete	cl
	cmp	al, 0x2f
	sete	al
	or	al, cl
	ret	
.label_102:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024d2
	.globl sub_4024d2
	.type sub_4024d2, @function
sub_4024d2:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_104
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_107
	mov	ecx, OFFSET FLAT:label_108
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402554
	.globl sub_402554
	.type sub_402554, @function
sub_402554:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402560

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
	je	.label_109
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
.label_109:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4025b2
	.globl sub_4025b2
	.type sub_4025b2, @function
sub_4025b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025c0

	.globl file_name_init
	.type file_name_init, @function
file_name_init:
	push	rbx
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbx + 8], 0x2000
	mov	edi, 0x2000
	call	xmalloc
	mov	qword ptr [rbx], rax
	lea	rcx, [rax + 0x1fff]
	mov	qword ptr [rbx + 0x10], rcx
	mov	byte ptr [rax + 0x1fff], 0
	mov	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025fa
	.globl sub_4025fa
	.type sub_4025fa, @function
sub_4025fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402600
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40260a
	.globl sub_40260a
	.type sub_40260a, @function
sub_40260a:

	nop	word ptr [rax + rax]
.label_112:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_110
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_110:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402644
	.globl sub_402644
	.type sub_402644, @function
sub_402644:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402646

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
	jne	.label_111
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_111
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_112
.label_111:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x402680

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
	mov	rcx,  qword ptr [word ptr [rip + label_113]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_114]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_115]]
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
	#Procedure 0x4026ed
	.globl sub_4026ed
	.type sub_4026ed, @function
sub_4026ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4026fd
	.globl sub_4026fd
	.type sub_4026fd, @function
sub_4026fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402700

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x402707
	.globl sub_402707
	.type sub_402707, @function
sub_402707:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402710

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_116
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_117
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402735
	.globl sub_402735
	.type sub_402735, @function
sub_402735:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402740

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x402745
	.globl sub_402745
	.type sub_402745, @function
sub_402745:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40275a
	.globl sub_40275a
	.type sub_40275a, @function
sub_40275a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_118
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_120
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_120
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_123
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_123:
	mov	rbx, r14
.label_120:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_118:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_119
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402801
	.globl sub_402801
	.type sub_402801, @function
sub_402801:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402810

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_124
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_124
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_124:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402836
	.globl sub_402836
	.type sub_402836, @function
sub_402836:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402840

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
	jne	.label_132
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
	je	.label_131
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_133
	mov	eax, OFFSET FLAT:label_134
	jmp	.label_129
.label_131:
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
	je	.label_130
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_127
	mov	eax, OFFSET FLAT:label_128
	jmp	.label_129
.label_130:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_125
	mov	eax, OFFSET FLAT:label_126
.label_129:
	cmove	rax, rcx
.label_132:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028fd
	.globl sub_4028fd
	.type sub_4028fd, @function
sub_4028fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402900

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40290e
	.globl sub_40290e
	.type sub_40290e, @function
sub_40290e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402910

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
	js	.label_138
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_141
	cmp	r12d, 0x7fffffff
	je	.label_136
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
	jne	.label_139
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_139:
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
.label_141:
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
	jbe	.label_137
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_140
.label_137:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_135
	mov	rdi, r14
	call	free
.label_135:
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
.label_140:
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
.label_138:
	call	abort
.label_136:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402acd
	.globl sub_402acd
	.type sub_402acd, @function
sub_402acd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ad0
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
	#Procedure 0x402adf
	.globl sub_402adf
	.type sub_402adf, @function
sub_402adf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402ae0

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_142:
	mov	rdi, r14
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_143
	mov	rdi, rbx
	add	rdi, 0x13
	call	dot_or_dotdot
	test	al, al
	mov	rax, rbx
	jne	.label_142
.label_143:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b20
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
	#Procedure 0x402b53
	.globl sub_402b53
	.type sub_402b53, @function
sub_402b53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_144
.label_145:
	ret	
.label_144:
	cmp	edi, 0x7f
	je	.label_145
	xor	eax, eax
	jmp	.label_145
	.section	.text
	.align	16
	#Procedure 0x402b71
	.globl sub_402b71
	.type sub_402b71, @function
sub_402b71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b8a
	.globl sub_402b8a
	.type sub_402b8a, @function
sub_402b8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x402b99
	.globl sub_402b99
	.type sub_402b99, @function
sub_402b99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0

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
	mov	rax,  qword ptr [word ptr [rip + label_113]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_114]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_115]]
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
	#Procedure 0x402c08
	.globl sub_402c08
	.type sub_402c08, @function
sub_402c08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c10
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
	#Procedure 0x402c82
	.globl sub_402c82
	.type sub_402c82, @function
sub_402c82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c90
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
	#Procedure 0x402c9d
	.globl sub_402c9d
	.type sub_402c9d, @function
sub_402c9d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ca0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_146
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_147
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_147:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cdd
	.globl sub_402cdd
	.type sub_402cdd, @function
sub_402cdd:

	nop	dword ptr [rax]
.label_153:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_146
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	.section	.text
	.align	16
	#Procedure 0x402d1e

	.globl robust_getcwd
	.type robust_getcwd, @function
robust_getcwd:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rdi
	lea	rdi, [rsp]
	call	get_root_dev_ino
	mov	r15, rax
	test	r15, r15
	je	.label_153
	lea	rsi, [rsp + 0x10]
	mov	edi, OFFSET FLAT:label_16
	call	stat
	test	eax, eax
	js	.label_151
	mov	ebx, 1
	lea	r12, [rsp + 0x10]
	jmp	.label_152
	.section	.text
	.align	16
	#Procedure 0x402d64
	.globl sub_402d64
	.type sub_402d64, @function
sub_402d64:

	nop	word ptr cs:[rax + rax]
.label_149:
	mov	rdx, rbx
	inc	rbx
	mov	rdi, r12
	mov	rsi, r14
	call	find_dir_entry
.label_152:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [r15]
	jne	.label_149
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rax, qword ptr [r15 + 8]
	jne	.label_149
	mov	rax, qword ptr [r14 + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_150
	mov	esi, OFFSET FLAT:label_116
	xor	edx, edx
	mov	rdi, r14
	call	file_name_prepend
.label_150:
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_151:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_16
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e00
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
	#Procedure 0x402e0f
	.globl sub_402e0f
	.type sub_402e0f, @function
sub_402e0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402e10

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
	#Procedure 0x402e46
	.globl sub_402e46
	.type sub_402e46, @function
sub_402e46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e50

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
	je	.label_155
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_154
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_154
.label_155:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_154
	test	cl, cl
	jne	.label_154
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_154:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402eb6
	.globl sub_402eb6
	.type sub_402eb6, @function
sub_402eb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402eca
	.globl sub_402eca
	.type sub_402eca, @function
sub_402eca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x402edd
	.globl sub_402edd
	.type sub_402edd, @function
sub_402edd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0
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
	#Procedure 0x402ef0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402efa
	.globl sub_402efa
	.type sub_402efa, @function
sub_402efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f08
	.globl sub_402f08
	.type sub_402f08, @function
sub_402f08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_156
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_158
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_158
.label_156:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_157
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_159
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_161
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_157:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_159:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_162
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0
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
	#Procedure 0x402fdf
	.globl sub_402fdf
	.type sub_402fdf, @function
sub_402fdf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402fe0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_163
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_163:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403003
	.globl sub_403003
	.type sub_403003, @function
sub_403003:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403010

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_164
	test	rax, rax
	je	.label_165
.label_164:
	pop	rbx
	ret	
.label_165:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40302a
	.globl sub_40302a
	.type sub_40302a, @function
sub_40302a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030

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
	#Procedure 0x40305d
	.globl sub_40305d
	.type sub_40305d, @function
sub_40305d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403060
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
	#Procedure 0x403073
	.globl sub_403073
	.type sub_403073, @function
sub_403073:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	ebp, edi
	mov	edi, OFFSET FLAT:label_166
	call	getenv
	test	rax, rax
	setne	r14b
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_116
	call	setlocale
	mov	edi, OFFSET FLAT:label_167
	mov	esi, OFFSET FLAT:label_179
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_167
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_174
	.section	.text
	.align	16
	#Procedure 0x4030d6
	.globl sub_4030d6
	.type sub_4030d6, @function
sub_4030d6:

	nop	word ptr cs:[rax + rax]
.label_169:
	xor	r14d, r14d
.label_174:
	mov	edx, OFFSET FLAT:label_177
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_182
	mov	r14b, 1
	cmp	eax, 0x4c
	je	.label_174
	cmp	eax, 0x50
	je	.label_169
	jmp	.label_170
.label_182:
	cmp	eax, -1
	jne	.label_173
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jge	.label_175
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_175:
	test	r14b, r14b
	je	.label_168
	call	logical_getcwd
	test	rax, rax
	je	.label_168
	mov	rdi, rax
	call	puts
	jmp	.label_176
.label_168:
	call	xgetcwd
	mov	rbx, rax
	test	rbx, rbx
	je	.label_172
	mov	rdi, rbx
	call	puts
	mov	rdi, rbx
	call	free
	jmp	.label_176
.label_172:
	call	file_name_init
	mov	rbx, rax
	mov	rdi, rbx
	call	robust_getcwd
	mov	rdi, qword ptr [rbx + 0x10]
	call	puts
	mov	rdi, rbx
	call	file_name_free
.label_176:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_173:
	cmp	eax, 0xffffff7d
	je	.label_178
	cmp	eax, 0xffffff7e
	jne	.label_170
	xor	edi, edi
	call	usage
.label_178:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_180
	mov	edx, OFFSET FLAT:label_107
	mov	r8d, OFFSET FLAT:label_181
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_170:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4031f2
	.globl sub_4031f2
	.type sub_4031f2, @function
sub_4031f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403200
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40320a
	.globl sub_40320a
	.type sub_40320a, @function
sub_40320a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403210

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
.label_224:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_202
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_231]]
.label_387:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_237
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_126
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_388:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_252
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_252
	xor	r14d, r14d
.label_263:
	cmp	r14, r11
	jae	.label_261
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_261:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_263
.label_252:
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
	jmp	.label_188
.label_380:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_188
.label_383:
	mov	al, 1
.label_381:
	mov	r12b, 1
.label_384:
	test	r12b, 1
	mov	cl, 1
	je	.label_277
	mov	ecx, eax
.label_277:
	mov	al, cl
.label_382:
	test	r12b, 1
	jne	.label_279
	test	r11, r11
	je	.label_206
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_206:
	mov	r14d, 1
	jmp	.label_286
.label_279:
	xor	r14d, r14d
.label_286:
	mov	ecx, OFFSET FLAT:label_126
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_188
.label_385:
	test	r12b, 1
	jne	.label_295
	test	r11, r11
	je	.label_243
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_243:
	mov	r14d, 1
	jmp	.label_185
.label_386:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_188
.label_295:
	xor	r14d, r14d
.label_185:
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_188:
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
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x4034ec
	.globl sub_4034ec
	.type sub_4034ec, @function
sub_4034ec:

	nop	dword ptr [rax]
.label_241:
	inc	rsi
.label_200:
	cmp	rbp, -1
	je	.label_244
	cmp	rsi, rbp
	jne	.label_288
	jmp	.label_249
	.section	.text
	.align	16
	#Procedure 0x403503
	.globl sub_403503
	.type sub_403503, @function
sub_403503:

	nop	word ptr cs:[rax + rax]
.label_244:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_249
.label_288:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_255
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_258
	cmp	rbp, -1
	jne	.label_258
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
.label_258:
	cmp	rbx, rbp
	jbe	.label_267
.label_255:
	xor	r8d, r8d
.label_230:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_268
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_271]]
.label_398:
	test	rsi, rsi
	jne	.label_265
	jmp	.label_196
	.section	.text
	.align	16
	#Procedure 0x40359e
	.globl sub_40359e
	.type sub_40359e, @function
sub_40359e:

	nop	
.label_267:
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
	jne	.label_284
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_230
	jmp	.label_205
.label_284:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_230
.label_402:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_190
	test	rsi, rsi
	jne	.label_193
	cmp	rbp, 1
	je	.label_196
	xor	r13d, r13d
	jmp	.label_191
.label_391:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_201
	cmp	byte ptr [rsp + 7], 0
	jne	.label_203
	cmp	r12d, 2
	jne	.label_204
	mov	eax, r9d
	and	al, 1
	jne	.label_204
	cmp	r14, r11
	jae	.label_208
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_208:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_211
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_211:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_215
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_215:
	add	r14, 3
	mov	r9b, 1
.label_204:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_220
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_220:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_221
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_221
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_221
	cmp	r14, r11
	jae	.label_238
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_238:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_266
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_266:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_191
.label_392:
	mov	bl, 0x62
	jmp	.label_251
.label_393:
	mov	cl, 0x74
	jmp	.label_254
.label_394:
	mov	bl, 0x76
	jmp	.label_251
.label_395:
	mov	bl, 0x66
	jmp	.label_251
.label_396:
	mov	cl, 0x72
	jmp	.label_254
.label_399:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_259
	cmp	byte ptr [rsp + 7], 0
	jne	.label_203
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
	jae	.label_264
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_264:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_272
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_272:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_275
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_275:
	add	r14, 3
	xor	r9d, r9d
.label_259:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_191
.label_400:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_283
	cmp	r12d, 2
	jne	.label_265
	cmp	byte ptr [rsp + 7], 0
	je	.label_265
	jmp	.label_203
.label_401:
	cmp	r12d, 2
	jne	.label_292
	cmp	byte ptr [rsp + 7], 0
	jne	.label_203
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_223
.label_268:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_194
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
.label_186:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_189
	test	r8b, r8b
	je	.label_189
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_191
.label_190:
	test	rsi, rsi
	jne	.label_226
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_226
.label_196:
	mov	dl, 1
.label_397:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_203
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_191:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_232
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_234
	jmp	.label_239
	.section	.text
	.align	16
	#Procedure 0x4038e4
	.globl sub_4038e4
	.type sub_4038e4, @function
sub_4038e4:

	nop	word ptr cs:[rax + rax]
.label_232:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_239
.label_234:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_245
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_223
	jmp	.label_235
	.section	.text
	.align	16
	#Procedure 0x40392d
	.globl sub_40392d
	.type sub_40392d, @function
sub_40392d:

	nop	dword ptr [rax]
.label_239:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_235
	jmp	.label_223
.label_245:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_235
.label_201:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_241
	xor	r15d, r15d
	jmp	.label_265
.label_292:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_254
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_223
.label_254:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_203
.label_251:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_191
	nop	word ptr cs:[rax + rax]
.label_235:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_203
	cmp	r12d, 2
	jne	.label_192
	mov	eax, r9d
	and	al, 1
	jne	.label_192
	cmp	r14, r11
	jae	.label_280
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_280:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_287
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_287:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_253
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	add	r14, 3
	mov	r9b, 1
.label_192:
	cmp	r14, r11
	jae	.label_293
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_293:
	inc	r14
	jmp	.label_183
.label_194:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_187
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_187:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_256:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_209
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_213
	cmp	rbp, -2
	je	.label_217
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_219
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_233:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_225
	bt	rsi, rdx
	jb	.label_205
.label_225:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_233
.label_219:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_247
	xor	r13d, r13d
.label_247:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_256
	jmp	.label_186
.label_221:
	xor	r13d, r13d
	jmp	.label_191
.label_226:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_191
.label_283:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_265
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_265
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_265
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_269
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_248
	cmp	byte ptr [rsp + 7], 0
	jne	.label_203
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_228
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_228:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_197
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_197:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_285
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_285:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_289
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_289:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_191
.label_265:
	xor	eax, eax
.label_193:
	xor	r13d, r13d
	jmp	.label_191
.label_189:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_184
	.section	.text
	.align	16
	#Procedure 0x403c13
	.globl sub_403c13
	.type sub_403c13, @function
sub_403c13:

	nop	word ptr cs:[rax + rax]
.label_262:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_184:
	test	r8b, r8b
	je	.label_250
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_195
	cmp	r14, r11
	jae	.label_198
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_198:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_195
	.section	.text
	.align	16
	#Procedure 0x403c5c
	.globl sub_403c5c
	.type sub_403c5c, @function
sub_403c5c:

	nop	dword ptr [rax]
.label_250:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_205
	cmp	r12d, 2
	jne	.label_210
	mov	eax, r9d
	and	al, 1
	jne	.label_210
	cmp	r14, r11
	jae	.label_212
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_212:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_282
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_282:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_274
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_274:
	add	r14, 3
	mov	r9b, 1
.label_210:
	cmp	r14, r11
	jae	.label_294
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_294:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_214
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_214:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_236
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_236:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_195:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_223
	test	r9b, 1
	je	.label_216
	mov	ebx, eax
	and	bl, 1
	jne	.label_216
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_257
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_257:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_273
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_273:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_216:
	cmp	r14, r11
	jae	.label_262
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_262
	.section	.text
	.align	16
	#Procedure 0x403d63
	.globl sub_403d63
	.type sub_403d63, @function
sub_403d63:

	nop	word ptr cs:[rax + rax]
.label_223:
	test	r9b, 1
	je	.label_222
	and	al, 1
	jne	.label_222
	cmp	r14, r11
	jae	.label_270
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_270:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_260
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_260:
	add	r14, 2
	xor	r9d, r9d
.label_222:
	mov	ebx, r15d
.label_183:
	cmp	r14, r11
	jae	.label_276
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_276:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_241
.label_213:
	xor	r13d, r13d
.label_209:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_186
.label_217:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_290
	mov	rsi, qword ptr [rsp + 0x50]
.label_240:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_291
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_240
	xor	r13d, r13d
	jmp	.label_186
.label_290:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_186
.label_291:
	xor	r13d, r13d
	jmp	.label_186
.label_269:
	xor	r13d, r13d
	jmp	.label_191
.label_248:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_191
	.section	.text
	.align	16
	#Procedure 0x403e38
	.globl sub_403e38
	.type sub_403e38, @function
sub_403e38:

	nop	dword ptr [rax + rax]
.label_249:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_199
	or	dl, al
	je	.label_205
.label_199:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_207
	or	dl, al
	jne	.label_207
	test	r10b, 1
	jne	.label_218
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_207
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_224
.label_207:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_227
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_229
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_229
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_246:
	cmp	r14, r11
	jae	.label_242
	mov	byte ptr [rcx + r14], al
.label_242:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_246
	jmp	.label_229
.label_203:
	mov	qword ptr [rsp + 0x20], rbp
.label_205:
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
.label_278:
	mov	r14, rax
.label_281:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_218:
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
	jmp	.label_278
.label_227:
	mov	rcx, qword ptr [rsp + 8]
.label_229:
	cmp	r14, r11
	jae	.label_281
	mov	byte ptr [rcx + r14], 0
	jmp	.label_281
.label_202:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403fcc
	.globl sub_403fcc
	.type sub_403fcc, @function
sub_403fcc:

	nop	dword ptr [rax]
.label_296:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403fd6
	.globl sub_403fd6
	.type sub_403fd6, @function
sub_403fd6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fdb

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_296
	test	rdx, rdx
	je	.label_296
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_299:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_297
.label_298:
	mov	eax, 1
	test	bpl, bpl
	je	.label_297
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
.label_297:
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
	#Procedure 0x404048
	.globl sub_404048
	.type sub_404048, @function
sub_404048:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40404b

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
	je	.label_299
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_298
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x404080
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
	#Procedure 0x4040c9
	.globl sub_4040c9
	.type sub_4040c9, @function
sub_4040c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_301
	cmp	byte ptr [rax], 0x43
	jne	.label_303
	cmp	byte ptr [rax + 1], 0
	je	.label_300
.label_303:
	mov	esi, OFFSET FLAT:label_302
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_301
.label_300:
	xor	ebx, ebx
.label_301:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404101
	.globl sub_404101
	.type sub_404101, @function
sub_404101:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404110

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
	#Procedure 0x404147
	.globl sub_404147
	.type sub_404147, @function
sub_404147:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404150
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
	#Procedure 0x404163
	.globl sub_404163
	.type sub_404163, @function
sub_404163:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170

	.globl file_name_prepend
	.type file_name_prepend, @function
file_name_prepend:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x10]
	sub	r12, qword ptr [rbx]
	lea	rax, [r15 + 1]
	cmp	r12, rax
	jae	.label_304
	mov	rax, qword ptr [rbx + 8]
	lea	rbp, [r15 + rax]
	lea	rsi, [r15 + rax + 1]
	mov	edi, 2
	call	xnmalloc
	mov	r13, rax
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r12
	lea	rax, [rbp + rbp + 2]
	mov	qword ptr [rsp], rax
	lea	rdi, [r13 + rbp*2 + 2]
	sub	rdi, rdx
	mov	qword ptr [rbx + 0x10], rdi
	mov	rbp, qword ptr [rbx]
	add	r12, rbp
	mov	rsi, r12
	call	memcpy
	mov	rdi, rbp
	call	free
	mov	qword ptr [rbx], r13
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
.label_304:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, r15
	not	rcx
	lea	rdx, [rax + rcx]
	mov	qword ptr [rbx + 0x10], rdx
	mov	byte ptr [rax + rcx], 0x2f
	mov	rdi, qword ptr [rbx + 0x10]
	inc	rdi
	mov	rsi, r14
	mov	rdx, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	memcpy
	.section	.text
	.align	16
	#Procedure 0x404221
	.globl sub_404221
	.type sub_404221, @function
sub_404221:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404230

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
	#Procedure 0x404269
	.globl sub_404269
	.type sub_404269, @function
sub_404269:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404270

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
	#Procedure 0x404281
	.globl sub_404281
	.type sub_404281, @function
sub_404281:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404290
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
	#Procedure 0x4042a4
	.globl sub_4042a4
	.type sub_4042a4, @function
sub_4042a4:

	nop	word ptr cs:[rax + rax]
.label_308:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4042b5
	.globl sub_4042b5
	.type sub_4042b5, @function
sub_4042b5:

	nop	dword ptr [rax]
.label_309:
	call	xalloc_die
.label_306:
	test	rcx, rcx
	jne	.label_305
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_305:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_308
.label_307:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x404303

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_306
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_309
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_307
	.section	.text
	.align	16
	#Procedure 0x404330
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
	#Procedure 0x404346
	.globl sub_404346
	.type sub_404346, @function
sub_404346:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404358
	.globl sub_404358
	.type sub_404358, @function
sub_404358:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404360
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
	#Procedure 0x404387
	.globl sub_404387
	.type sub_404387, @function
sub_404387:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404390

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_310
	test	rsi, rsi
	mov	ecx, 1
	je	.label_311
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_311
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_310:
	mov	ecx, 1
.label_311:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4043db
	.globl sub_4043db
	.type sub_4043db, @function
sub_4043db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0
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
	#Procedure 0x4043f9
	.globl sub_4043f9
	.type sub_4043f9, @function
sub_4043f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404400

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40440a
	.globl sub_40440a
	.type sub_40440a, @function
sub_40440a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404410
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_312
	call	rpl_calloc
	test	rax, rax
	je	.label_312
	pop	rcx
	ret	
.label_312:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404436
	.globl sub_404436
	.type sub_404436, @function
sub_404436:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_313
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_313:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404466
	.globl sub_404466
	.type sub_404466, @function
sub_404466:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404470

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_314
	test	rbx, rbx
	jne	.label_314
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_314:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_316
	test	rax, rax
	je	.label_315
.label_316:
	pop	rbx
	ret	
.label_315:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4044a0

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
	#Procedure 0x4044b7
	.globl sub_4044b7
	.type sub_4044b7, @function
sub_4044b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_317
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_180
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_317:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
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
	#Procedure 0x404603
	.globl sub_404603
	.type sub_404603, @function
sub_404603:

	nop	word ptr cs:[rax + rax]
.label_326:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404613
	.globl sub_404613
	.type sub_404613, @function
sub_404613:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404615
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_326
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x404630

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
	je	.label_327
	cmp	r15, -2
	jb	.label_327
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_327
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_327:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404686
	.globl sub_404686
	.type sub_404686, @function
sub_404686:

	nop	word ptr cs:[rax + rax]
.label_331:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_329:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_330
	inc	r9
	cmp	r9, 0xa
	jb	.label_328
.label_330:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046bf
	.globl sub_4046bf
	.type sub_4046bf, @function
sub_4046bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4046c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_328:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_331
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_329
	.section	.text
	.align	16
	#Procedure 0x4046e9
	.globl sub_4046e9
	.type sub_4046e9, @function
sub_4046e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_332
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_334]]
.label_332:
	xor	eax, eax
	jmp	.label_333
	.section	.text
	.align	16
	#Procedure 0x404705
	.globl sub_404705
	.type sub_404705, @function
sub_404705:

	nop	word ptr cs:[rax + rax]
.label_333:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404710

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_341
	nop	
.label_340:
	mov	edi, OFFSET FLAT:label_180
	call	strcmp
	test	eax, eax
	je	.label_338
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_340
.label_338:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_180
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_107
	mov	ecx, OFFSET FLAT:label_108
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_335
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_335
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_180
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_108
	mov	ecx, OFFSET FLAT:label_180
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_344
	mov	ecx, OFFSET FLAT:label_116
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
	#Procedure 0x40482a
	.globl sub_40482a
	.type sub_40482a, @function
sub_40482a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_161
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4048c5
	.globl sub_4048c5
	.type sub_4048c5, @function
sub_4048c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048d2
	.globl sub_4048d2
	.type sub_4048d2, @function
sub_4048d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048f6
	.globl sub_4048f6
	.type sub_4048f6, @function
sub_4048f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404909
	.globl sub_404909
	.type sub_404909, @function
sub_404909:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404910

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x404920

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x40492f
	.globl sub_40492f
	.type sub_40492f, @function
sub_40492f:

	nop	
