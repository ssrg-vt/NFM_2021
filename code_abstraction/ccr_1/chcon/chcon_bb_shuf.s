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

	.globl context_user_set
	.type context_user_set, @function
context_user_set:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401af3
	.globl sub_401af3
	.type sub_401af3, @function
sub_401af3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b00

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
	je	.label_9
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
.label_9:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b52
	.globl sub_401b52
	.type sub_401b52, @function
sub_401b52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x401b6a
	.globl sub_401b6a
	.type sub_401b6a, @function
sub_401b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b70
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b83
	.globl sub_401b83
	.type sub_401b83, @function
sub_401b83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b90
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b97
	.globl sub_401b97
	.type sub_401b97, @function
sub_401b97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0

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
	je	.label_10
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_11
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
	je	.label_12
.label_11:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_15
	mov	rax, qword ptr [rax + 8]
	jmp	.label_10
.label_14:
	mov	rdi, rbp
	call	free
.label_13:
	mov	rax, qword ptr [rsp]
.label_10:
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
	#Procedure 0x401c38
	.globl sub_401c38
	.type sub_401c38, @function
sub_401c38:

	nop	word ptr [rax + rax]
.label_15:
	mov	r12b, 1
	mov	r14, rbp
.label_12:
	xor	eax, eax
	test	r15d, r15d
	js	.label_10
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_10
	test	r12b, r12b
	je	.label_13
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_13
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_14
	cmp	rax, rbp
	je	.label_13
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ca0
	.globl context_range_get
	.type context_range_get, @function
context_range_get:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
.label_16:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cc0
	.globl sub_401cc0
	.type sub_401cc0, @function
sub_401cc0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cce

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_16
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ce0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cf3
	.globl sub_401cf3
	.type sub_401cf3, @function
sub_401cf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl setfileconat
	.type setfileconat, @function
setfileconat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xfd8
	mov	r14, rdx
	mov	rbx, rsi
	mov	ebp, edi
	cmp	ebp, -0x64
	je	.label_17
	cmp	byte ptr [rbx], 0x2f
	jne	.label_24
.label_17:
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 0xfd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	setfilecon
.label_24:
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	mov	esi, ebp
	mov	rdx, rbx
	call	openat_proc_name
	mov	r12, rax
	test	r12, r12
	je	.label_21
	mov	rdi, r12
	mov	rsi, r14
	call	setfilecon
	mov	r15d, eax
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	edx, dword ptr [rax]
	cmp	r12, r13
	je	.label_26
	mov	rdi, r12
	mov	r12d, edx
	call	free
	mov	edx, r12d
.label_26:
	cmp	r15d, -1
	jne	.label_19
	mov	eax, edx
	cmp	edx, 0x26
	ja	.label_20
	movabs	rcx, 0x4000102006
	bt	rcx, rax
	jae	.label_20
.label_21:
	lea	rdi, [rsp + 0x10]
	call	save_cwd
	test	eax, eax
	jne	.label_27
	test	ebp, ebp
	js	.label_18
	cmp	dword ptr [rsp + 0x10], ebp
	jne	.label_18
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	r15d, 0xffffffff
	jmp	.label_19
.label_18:
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_23
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	mov	r15d, 0xffffffff
	jmp	.label_19
.label_23:
	mov	rdi, rbx
	mov	rsi, r14
	call	setfilecon
	mov	r15d, eax
	xor	ebx, ebx
	cmp	r15d, -1
	jne	.label_25
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_25:
	lea	rdi, [rsp + 0x10]
	call	restore_cwd
	test	eax, eax
	jne	.label_22
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	test	ebx, ebx
	je	.label_19
	call	__errno_location
	mov	dword ptr [rax], ebx
	jmp	.label_19
.label_20:
	cmp	edx, 0x5f
	je	.label_21
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], edx
.label_19:
	mov	eax, r15d
	add	rsp, 0xfd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_27:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_22:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_restore_fail
	.section	.text
	.align	32
	#Procedure 0x401e90

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_28
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_29
	jmp	hash_free
.label_29:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ea9
	.globl sub_401ea9
	.type sub_401ea9, @function
sub_401ea9:

	nop	word ptr cs:[rax + rax]
.label_28:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x401ec0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_30
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_30:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ee6
	.globl sub_401ee6
	.type sub_401ee6, @function
sub_401ee6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ef0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_31
	test	rbx, rbx
	jne	.label_31
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_31:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_33
	test	rax, rax
	je	.label_32
.label_33:
	pop	rbx
	ret	
.label_32:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f20
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_34
	mov	rcx, qword ptr [rdi]
	jmp	.label_37
	.section	.text
	.align	32
	#Procedure 0x401f2e
	.globl sub_401f2e
	.type sub_401f2e, @function
sub_401f2e:

	nop	
.label_35:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401f36
	.globl sub_401f36
	.type sub_401f36, @function
sub_401f36:

	nop	dword ptr [rax]
.label_36:
	add	rcx, 0x10
.label_37:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_35
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_36
.label_34:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl change_file_context
	.type change_file_context, @function
change_file_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r15d, edi
	mov	qword ptr [rsp + 8], 0
	mov	r13,  qword ptr [word ptr [rip + specified_context]]
	test	r13, r13
	jne	.label_45
	cmp	byte ptr [byte ptr [rip + affect_symlink_referent]],  0
	je	.label_52
	lea	rdx, [rsp + 8]
	mov	edi, r15d
	mov	rsi, r14
	call	getfileconat
	jmp	.label_42
.label_52:
	lea	rdx, [rsp + 8]
	mov	edi, r15d
	mov	rsi, r14
	call	lgetfileconat
.label_42:
	test	eax, eax
	jns	.label_46
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x3d
	jne	.label_40
.label_46:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_51
	lea	rsi, [rsp + 0x14]
	call	compute_context_from_mask
	mov	ebp, 1
	test	eax, eax
	jne	.label_39
	mov	edi, dword ptr [rsp + 0x14]
	call	context_str
	mov	r13, rax
.label_45:
	mov	rsi, qword ptr [rsp + 8]
	test	rsi, rsi
	je	.label_48
	mov	rdi, r13
	call	strcmp
	xor	ebp, ebp
	test	eax, eax
	je	.label_50
.label_48:
	mov	bl,  byte ptr [byte ptr [rip + affect_symlink_referent]]
	mov	rdi, r13
	call	se_const
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rax
	cmp	bl, 0
	je	.label_43
	call	setfileconat
	jmp	.label_47
.label_43:
	call	lsetfileconat
.label_47:
	xor	ebp, ebp
	test	eax, eax
	je	.label_50
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r14, rax
	mov	ebp, 1
	mov	edi, 1
	mov	rsi, r13
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
.label_50:
	cmp	qword ptr [word ptr [rip + specified_context]],  0
	jne	.label_39
	mov	edi, dword ptr [rsp + 0x14]
	call	context_free
	mov	rdi, qword ptr [rsp + 8]
	call	freecon
	jmp	.label_39
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_38
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_38:
	call	error
	mov	ebp, 1
.label_39:
	mov	eax, ebp
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
	#Procedure 0x402121
	.globl sub_402121
	.type sub_402121, @function
sub_402121:

	nop	word ptr cs:[rax + rax]
.label_55:
	xor	eax, eax
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x402134
	.globl sub_402134
	.type sub_402134, @function
sub_402134:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40213e
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_55
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_54]]
.label_53:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402150
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402159
	.globl sub_402159
	.type sub_402159, @function
sub_402159:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402160
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
	#Procedure 0x402193
	.globl sub_402193
	.type sub_402193, @function
sub_402193:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021a0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_56
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_56
.label_57:
	ret	
.label_56:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_57
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021c6
	.globl sub_4021c6
	.type sub_4021c6, @function
sub_4021c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4021de
	.globl sub_4021de
	.type sub_4021de, @function
sub_4021de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4021e0

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
	js	.label_58
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_61
	cmp	r12d, 0x7fffffff
	je	.label_63
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
	jne	.label_59
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_59:
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
.label_61:
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
	jbe	.label_64
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_60
.label_64:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_62
	mov	rdi, r14
	call	free
.label_62:
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
.label_60:
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
.label_58:
	call	abort
.label_63:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40239d
	.globl sub_40239d
	.type sub_40239d, @function
sub_40239d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4023a0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_72
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_72:
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
	ja	.label_74
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_73
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_66
	test	esi, esi
	jne	.label_74
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_78
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_68
.label_74:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_65
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_66
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_77
.label_73:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_66:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_69
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_71
.label_69:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_71:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_77:
	cmp	eax, 6
	jne	.label_65
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_67
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_70
.label_65:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_76
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_75
.label_78:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_68:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_67:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_70:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_76:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_75:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x402554
	.globl sub_402554
	.type sub_402554, @function
sub_402554:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402560
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
	#Procedure 0x402576
	.globl sub_402576
	.type sub_402576, @function
sub_402576:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402580

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
	mov	rcx,  qword ptr [word ptr [rip + label_79]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_80]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_81]]
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
	#Procedure 0x4025ed
	.globl sub_4025ed
	.type sub_4025ed, @function
sub_4025ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4025f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4025fd
	.globl sub_4025fd
	.type sub_4025fd, @function
sub_4025fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402600

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x402607
	.globl sub_402607
	.type sub_402607, @function
sub_402607:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402610

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_82
	call	close
.label_82:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x402629
	.globl sub_402629
	.type sub_402629, @function
sub_402629:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402630

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402634
	.globl sub_402634
	.type sub_402634, @function
sub_402634:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402640

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_83
	test	rdx, rdx
	je	.label_83
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_83:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40266b
	.globl sub_40266b
	.type sub_40266b, @function
sub_40266b:

	nop	dword ptr [rax + rax]
.label_85:
	mov	eax, ebx
.label_84:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40267d
	.globl sub_40267d
	.type sub_40267d, @function
sub_40267d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40268c

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
	ja	.label_85
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
	jmp	.label_84
	.section	.text
	.align	32
	#Procedure 0x4026c0

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
	#Procedure 0x4026f9
	.globl sub_4026f9
	.type sub_4026f9, @function
sub_4026f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402700

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
	#Procedure 0x402711
	.globl sub_402711
	.type sub_402711, @function
sub_402711:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402720
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
	#Procedure 0x402734
	.globl sub_402734
	.type sub_402734, @function
sub_402734:

	nop	word ptr cs:[rax + rax]
.label_91:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_90:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_86]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_87]]
	jae	.label_88
.label_89:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_88:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027a7
	.globl sub_4027a7
	.type sub_4027a7, @function
sub_4027a7:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4027a9

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_89
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_91
	cvtsi2ss	xmm0, rdi
	jmp	.label_90
	.section	.text
	.align	32
	#Procedure 0x4027c0

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
	jae	.label_92
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_98
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_98
	mov	qword ptr [r15 + 0x10], rax
.label_92:
	test	rbx, rbx
	je	.label_93
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_95:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_95
.label_93:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_97
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_96:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_96
	lea	rax, [rax + r8*8]
.label_97:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_94
.label_98:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_94:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40289d
	.globl sub_40289d
	.type sub_40289d, @function
sub_40289d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028a0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_99
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_99:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028b8
	.globl sub_4028b8
	.type sub_4028b8, @function
sub_4028b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028c0

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
	je	.label_100
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_111
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_111
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_111:
	test	eax, eax
	sete	r15b
	jmp	.label_104
.label_100:
	xor	r15d, r15d
.label_104:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_103
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_109
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_109
	and	eax, 0x200
	je	.label_109
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_109
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_109:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_107
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_105
.label_107:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_108
	test	rbx, rbx
	je	.label_101
	cmp	byte ptr [rbx], 0x2e
	jne	.label_101
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_101
	cmp	byte ptr [rbx + 2], 0
	jne	.label_101
.label_108:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_110
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_112
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_112
.label_101:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_102
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_106
.label_103:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_105
	and	eax, 0x200
	je	.label_105
	mov	edi, r13d
	call	close
	jmp	.label_105
.label_102:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_105
.label_112:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_110:
	mov	ebp, 0xffffffff
.label_106:
	test	r13d, r13d
	jns	.label_105
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_105:
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
	#Procedure 0x402a46
	.globl sub_402a46
	.type sub_402a46, @function
sub_402a46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50
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
	#Procedure 0x402a69
	.globl sub_402a69
	.type sub_402a69, @function
sub_402a69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a70

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
	je	.label_120
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_120
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_140
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_141
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_120
.label_140:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_141
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_151
	test	byte ptr [r14 + 0x48], 4
	jne	.label_151
	mov	esi, OFFSET FLAT:label_118
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_114
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_117
.label_141:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_119
	movzx	eax, ax
	cmp	eax, 4
	je	.label_121
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_123
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_121
.label_123:
	cmp	qword ptr [r14 + 8], 0
	je	.label_128
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_131
	cmp	qword ptr [r14 + 8], 0
	je	.label_128
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_133
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_148
	.section	.text
	.align	32
	#Procedure 0x402ba7
	.globl sub_402ba7
	.type sub_402ba7, @function
sub_402ba7:

	nop	word ptr [rax + rax]
.label_119:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_142
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_130
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_146
.label_142:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_150
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_119
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_127
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_115
	test	byte ptr [r14 + 0x48], 4
	jne	.label_115
	mov	esi, OFFSET FLAT:label_118
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_139
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_115
.label_129:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_148:
	test	rax, rax
	jne	.label_129
	jmp	.label_133
.label_121:
	test	byte ptr [rbx + 0x72], 2
	je	.label_134
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_134:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_136
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_136:
	mov	word ptr [rbx + 0x70], 6
.label_135:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_120
.label_151:
	mov	r15, rbx
	jmp	.label_117
.label_150:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_143
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_120
.label_130:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_152
	mov	rdi, rbx
	call	free
	jmp	.label_127
.label_143:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_117
.label_131:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_128:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_125
.label_133:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_127
.label_125:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_120
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_135
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_135
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_135
.label_114:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_117
.label_152:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_120
.label_146:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_145
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_113
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_149
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_154
	test	al, 1
	jne	.label_124
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_144
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_153
.label_145:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_120
.label_149:
	mov	rdi, r14
	call	restore_initial_cwd
.label_153:
	test	eax, eax
	je	.label_124
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_124
.label_154:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_132
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_137
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_132
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_132
.label_139:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_115:
	mov	word ptr [r15 + 0x74], 3
.label_127:
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
.label_117:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_126
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_122
	cmp	rax, 2
	jne	.label_113
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_116
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_116
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_122
.label_116:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_126
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_122
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_122
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_122:
	mov	ax, word ptr [r15 + 0x70]
.label_126:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_120
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_138
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_138:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_120
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_120
.label_137:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_132:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_124:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_147
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_147
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_147:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_120:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_113:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403017
	.globl sub_403017
	.type sub_403017, @function
sub_403017:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_155:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_155
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403040

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x40304e
	.globl sub_40304e
	.type sub_40304e, @function
sub_40304e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403050

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_156
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_158
.label_157:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_158:
	xor	eax, eax
.label_159:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403094
	.globl sub_403094
	.type sub_403094, @function
sub_403094:

	nop	
.label_156:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_157
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_159
	.section	.text
	.align	32
	#Procedure 0x4030b0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030b5
	.globl sub_4030b5
	.type sub_4030b5, @function
sub_4030b5:

	nop	word ptr cs:[rax + rax]
.label_160:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030c7
	.globl sub_4030c7
	.type sub_4030c7, @function
sub_4030c7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030d5

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_160
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030f0

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
	#Procedure 0x4030fd
	.globl sub_4030fd
	.type sub_4030fd, @function
sub_4030fd:

	nop	dword ptr [rax]
.label_162:
	mov	ecx, 1
.label_161:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x403110
	.globl sub_403110
	.type sub_403110, @function
sub_403110:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403115

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_162
	test	rsi, rsi
	mov	ecx, 1
	je	.label_161
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_161
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403150

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
	je	.label_164
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_163
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_163
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_163
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
	jmp	.label_164
.label_163:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_164:
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
	#Procedure 0x40322c
	.globl sub_40322c
	.type sub_40322c, @function
sub_40322c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403230

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
	#Procedure 0x403279
	.globl sub_403279
	.type sub_403279, @function
sub_403279:

	nop	dword ptr [rax]
.label_166:
	xor	r14d, r14d
	jmp	.label_165
	.section	.text
	.align	32
	#Procedure 0x403285
	.globl sub_403285
	.type sub_403285, @function
sub_403285:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40328c

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_167
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_168
	jmp	.label_165
.label_167:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_166
	mov	rdi, rax
	call	cycle_check_init
.label_168:
	mov	r14b, 1
.label_165:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032f0

	.globl setfilecon
	.type setfilecon, @function
setfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403303
	.globl sub_403303
	.type sub_403303, @function
sub_403303:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403310

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_169
	cmp	ecx, 0x11
	jne	.label_170
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_169:
	ret	
.label_170:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40332e
	.globl sub_40332e
	.type sub_40332e, @function
sub_40332e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	mov	eax, 0xffffffff
	test	ebp, ebp
	js	.label_171
	mov	rdi, rbx
	call	cdb_free
	mov	dword ptr [rbx], ebp
	xor	eax, eax
.label_171:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403362
	.globl sub_403362
	.type sub_403362, @function
sub_403362:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403370

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403375
	.globl sub_403375
	.type sub_403375, @function
sub_403375:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380

	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403393
	.globl sub_403393
	.type sub_403393, @function
sub_403393:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033a0

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
	#Procedure 0x4033ad
	.globl sub_4033ad
	.type sub_4033ad, @function
sub_4033ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl context_type_set
	.type context_type_set, @function
context_type_set:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033c3
	.globl sub_4033c3
	.type sub_4033c3, @function
sub_4033c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033d0

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
	je	.label_182
	mov	edx, OFFSET FLAT:label_187
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_174
.label_182:
	mov	edx, OFFSET FLAT:label_176
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
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
	mov	esi, OFFSET FLAT:label_177
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_183
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_184]]
.label_996:
	add	rsp, 8
	jmp	.label_175
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
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
	jmp	.label_175
.label_997:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
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
.label_998:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
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
.label_999:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
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
.label_1000:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
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
	jmp	.label_175
.label_1001:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
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
	jmp	.label_175
.label_1002:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
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
	jmp	.label_175
.label_1003:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
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
	jmp	.label_175
.label_1005:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
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
	jmp	.label_175
.label_1004:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
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
.label_175:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403728
	.globl sub_403728
	.type sub_403728, @function
sub_403728:

	nop	dword ptr [rax + rax]
.label_193:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_191
.label_192:
	mov	eax, 1
	test	bpl, bpl
	je	.label_191
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
.label_191:
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
	#Procedure 0x403778
	.globl sub_403778
	.type sub_403778, @function
sub_403778:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40377b

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
	je	.label_193
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_192
	jmp	.label_191
	.section	.text
	.align	32
	#Procedure 0x4037b0
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
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
	#Procedure 0x4037dd
	.globl sub_4037dd
	.type sub_4037dd, @function
sub_4037dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0
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
	#Procedure 0x4037f4
	.globl sub_4037f4
	.type sub_4037f4, @function
sub_4037f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403800

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403822
	.globl sub_403822
	.type sub_403822, @function
sub_403822:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403830

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	mov	edi, dword ptr [rdi]
	jmp	fchdir
	.section	.text
	.align	32
	#Procedure 0x403837
	.globl sub_403837
	.type sub_403837, @function
sub_403837:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403840

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
	je	.label_195
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_206
	test	rbx, rbx
	je	.label_197
	mov	qword ptr [rbx], rax
	jmp	.label_197
.label_206:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_196
	cvtsi2ss	xmm0, rcx
	jmp	.label_201
.label_196:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_201:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_204
	cvtsi2ss	xmm1, rax
	jmp	.label_209
.label_204:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_209:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_199
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_203
	cvtsi2ss	xmm2, rcx
	jmp	.label_207
.label_203:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_207:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_198
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_202
.label_198:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_202:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_199
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_205
	mulss	xmm0, xmm1
.label_205:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_87]]
	jae	.label_197
	movss	xmm1,  dword ptr [dword ptr [rip + label_86]]
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
	je	.label_197
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_195
.label_199:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_208
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_197
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_200
.label_208:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_200:
	mov	ebp, 1
.label_197:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_195:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403a12
	.globl sub_403a12
	.type sub_403a12, @function
sub_403a12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_210
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_210:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a43
	.globl sub_403a43
	.type sub_403a43, @function
sub_403a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_211
	test	rax, rax
	je	.label_212
.label_211:
	pop	rbx
	ret	
.label_212:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a6a
	.globl sub_403a6a
	.type sub_403a6a, @function
sub_403a6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a70

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_213
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_218
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_218
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_219
.label_218:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_214
	mov	al, 1
	test	rbx, rbx
	je	.label_219
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_214:
	xor	eax, eax
.label_219:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_213:
	mov	edi, OFFSET FLAT:label_215
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_217
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403aed
	.globl sub_403aed
	.type sub_403aed, @function
sub_403aed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403af0

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
	#Procedure 0x403b26
	.globl sub_403b26
	.type sub_403b26, @function
sub_403b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30
	.globl context_role_get
	.type context_role_get, @function
context_role_get:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b40
	.globl context_type_get
	.type context_type_get, @function
context_type_get:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_220:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_220
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403b71
	.globl sub_403b71
	.type sub_403b71, @function
sub_403b71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80

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
	#Procedure 0x403b98
	.globl sub_403b98
	.type sub_403b98, @function
sub_403b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ba0

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
.label_240:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_258
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_248]]
.label_896:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_255
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_262
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_897:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_268
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_268
	xor	r14d, r14d
.label_283:
	cmp	r14, r11
	jae	.label_280
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_280:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_283
.label_268:
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
	jmp	.label_294
.label_889:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_294
.label_892:
	mov	al, 1
.label_890:
	mov	r12b, 1
.label_893:
	test	r12b, 1
	mov	cl, 1
	je	.label_301
	mov	ecx, eax
.label_301:
	mov	al, cl
.label_891:
	test	r12b, 1
	jne	.label_304
	test	r11, r11
	je	.label_328
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_328:
	mov	r14d, 1
	jmp	.label_310
.label_304:
	xor	r14d, r14d
.label_310:
	mov	ecx, OFFSET FLAT:label_262
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_294
.label_894:
	test	r12b, 1
	jne	.label_316
	test	r11, r11
	je	.label_233
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_233:
	mov	r14d, 1
	jmp	.label_323
.label_895:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_321
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_294
.label_316:
	xor	r14d, r14d
.label_323:
	mov	eax, OFFSET FLAT:label_321
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_294:
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
	jmp	.label_227
	.section	.text
	.align	32
	#Procedure 0x403e7c
	.globl sub_403e7c
	.type sub_403e7c, @function
sub_403e7c:

	nop	dword ptr [rax]
.label_288:
	inc	rsi
.label_227:
	cmp	rbp, -1
	je	.label_261
	cmp	rsi, rbp
	jne	.label_300
	jmp	.label_266
	.section	.text
	.align	32
	#Procedure 0x403e93
	.globl sub_403e93
	.type sub_403e93, @function
sub_403e93:

	nop	word ptr cs:[rax + rax]
.label_261:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_266
.label_300:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_271
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_260
	cmp	rbp, -1
	jne	.label_260
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
.label_260:
	cmp	rbx, rbp
	jbe	.label_285
.label_271:
	xor	r8d, r8d
.label_238:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_287
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_290]]
.label_907:
	test	rsi, rsi
	jne	.label_281
	jmp	.label_296
	.section	.text
	.align	32
	#Procedure 0x403f2e
	.globl sub_403f2e
	.type sub_403f2e, @function
sub_403f2e:

	nop	
.label_285:
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
	jne	.label_308
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_238
	jmp	.label_254
.label_308:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_238
.label_911:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_324
	test	rsi, rsi
	jne	.label_325
	cmp	rbp, 1
	je	.label_296
	xor	r13d, r13d
	jmp	.label_235
.label_900:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_331
	cmp	byte ptr [rsp + 7], 0
	jne	.label_243
	cmp	r12d, 2
	jne	.label_322
	mov	eax, r9d
	and	al, 1
	jne	.label_322
	cmp	r14, r11
	jae	.label_334
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_334:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_222
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	add	r14, 3
	mov	r9b, 1
.label_322:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_295
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_295:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_242
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_242
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_242
	cmp	r14, r11
	jae	.label_256
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_256:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_252
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_252:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_235
.label_901:
	mov	bl, 0x62
	jmp	.label_231
.label_902:
	mov	cl, 0x74
	jmp	.label_270
.label_903:
	mov	bl, 0x76
	jmp	.label_231
.label_904:
	mov	bl, 0x66
	jmp	.label_231
.label_905:
	mov	cl, 0x72
	jmp	.label_270
.label_908:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_278
	cmp	byte ptr [rsp + 7], 0
	jne	.label_243
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
	jae	.label_284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_291
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_291:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_297
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	add	r14, 3
	xor	r9d, r9d
.label_278:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_235
.label_909:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_307
	cmp	r12d, 2
	jne	.label_281
	cmp	byte ptr [rsp + 7], 0
	je	.label_281
	jmp	.label_243
.label_910:
	cmp	r12d, 2
	jne	.label_314
	cmp	byte ptr [rsp + 7], 0
	jne	.label_243
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_241
.label_287:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_319
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
.label_277:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_230
	test	r8b, r8b
	je	.label_230
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_235
.label_324:
	test	rsi, rsi
	jne	.label_239
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_239
.label_296:
	mov	dl, 1
.label_906:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_243
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_235:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_250
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_251
	jmp	.label_257
	.section	.text
	.align	32
	#Procedure 0x404274
	.globl sub_404274
	.type sub_404274, @function
sub_404274:

	nop	word ptr cs:[rax + rax]
.label_250:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_257
.label_251:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_263
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_241
	jmp	.label_275
	.section	.text
	.align	32
	#Procedure 0x4042bd
	.globl sub_4042bd
	.type sub_4042bd, @function
sub_4042bd:

	nop	dword ptr [rax]
.label_257:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_275
	jmp	.label_241
.label_263:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_275
.label_331:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_288
	xor	r15d, r15d
	jmp	.label_281
.label_314:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_270
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_241
.label_270:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_243
.label_231:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_235
	nop	word ptr cs:[rax + rax]
.label_275:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_243
	cmp	r12d, 2
	jne	.label_302
	mov	eax, r9d
	and	al, 1
	jne	.label_302
	cmp	r14, r11
	jae	.label_305
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_305:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_226
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_226:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_312
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_312:
	add	r14, 3
	mov	r9b, 1
.label_302:
	cmp	r14, r11
	jae	.label_315
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_315:
	inc	r14
	jmp	.label_317
.label_319:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_320
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_320:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_333:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_335
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_225
	cmp	rbp, -2
	je	.label_273
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_274
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_279:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_292
	bt	rsi, rdx
	jb	.label_254
.label_292:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_279
.label_274:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_246
	xor	r13d, r13d
.label_246:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_333
	jmp	.label_277
.label_242:
	xor	r13d, r13d
	jmp	.label_235
.label_239:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_235
.label_307:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_281
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_281
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_281
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_221
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_249
	cmp	byte ptr [rsp + 7], 0
	jne	.label_243
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_298
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_298:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_237
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_237:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_309
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_309:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_311
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_311:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_235
.label_281:
	xor	eax, eax
.label_325:
	xor	r13d, r13d
	jmp	.label_235
.label_230:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_318
	.section	.text
	.align	32
	#Procedure 0x4045a3
	.globl sub_4045a3
	.type sub_4045a3, @function
sub_4045a3:

	nop	word ptr cs:[rax + rax]
.label_282:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_318:
	test	r8b, r8b
	je	.label_326
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_327
	cmp	r14, r11
	jae	.label_329
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_329:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_327
	.section	.text
	.align	32
	#Procedure 0x4045ec
	.globl sub_4045ec
	.type sub_4045ec, @function
sub_4045ec:

	nop	dword ptr [rax]
.label_326:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_254
	cmp	r12d, 2
	jne	.label_223
	mov	eax, r9d
	and	al, 1
	jne	.label_223
	cmp	r14, r11
	jae	.label_224
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_224:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_228
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_228:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_286
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_286:
	add	r14, 3
	mov	r9b, 1
.label_223:
	cmp	r14, r11
	jae	.label_332
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_332:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_245
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_253
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_253:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_327:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_241
	test	r9b, 1
	je	.label_269
	mov	ebx, eax
	and	bl, 1
	jne	.label_269
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_272
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_272:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_276
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_276:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_269:
	cmp	r14, r11
	jae	.label_282
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_282
	.section	.text
	.align	32
	#Procedure 0x4046f3
	.globl sub_4046f3
	.type sub_4046f3, @function
sub_4046f3:

	nop	word ptr cs:[rax + rax]
.label_241:
	test	r9b, 1
	je	.label_236
	and	al, 1
	jne	.label_236
	cmp	r14, r11
	jae	.label_289
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_289:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_267
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_267:
	add	r14, 2
	xor	r9d, r9d
.label_236:
	mov	ebx, r15d
.label_317:
	cmp	r14, r11
	jae	.label_299
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_299:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_288
.label_225:
	xor	r13d, r13d
.label_335:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_277
.label_273:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_313
	mov	rsi, qword ptr [rsp + 0x50]
.label_265:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_293
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_265
	xor	r13d, r13d
	jmp	.label_277
.label_313:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_277
.label_293:
	xor	r13d, r13d
	jmp	.label_277
.label_221:
	xor	r13d, r13d
	jmp	.label_235
.label_249:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_235
	.section	.text
	.align	32
	#Procedure 0x4047c8
	.globl sub_4047c8
	.type sub_4047c8, @function
sub_4047c8:

	nop	dword ptr [rax + rax]
.label_266:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_330
	or	dl, al
	je	.label_254
.label_330:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_232
	or	dl, al
	jne	.label_232
	test	r10b, 1
	jne	.label_234
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_232
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_240
.label_232:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_244
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_247
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_247
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	r14, r11
	jae	.label_259
	mov	byte ptr [rcx + r14], al
.label_259:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_264
	jmp	.label_247
.label_243:
	mov	qword ptr [rsp + 0x20], rbp
.label_254:
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
.label_303:
	mov	r14, rax
.label_306:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_234:
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
	jmp	.label_303
.label_244:
	mov	rcx, qword ptr [rsp + 8]
.label_247:
	cmp	r14, r11
	jae	.label_306
	mov	byte ptr [rcx + r14], 0
	jmp	.label_306
.label_258:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40495c
	.globl sub_40495c
	.type sub_40495c, @function
sub_40495c:

	nop	dword ptr [rax]
.label_340:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_339
	mov	edi, OFFSET FLAT:label_336
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_338
	call	__assert_fail
.label_339:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404988
	.globl sub_404988
	.type sub_404988, @function
sub_404988:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40498d

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_340
	pop	rcx
	ret	
.label_347:
	mov	r14, qword ptr [r15]
	jmp	.label_341
	.section	.text
	.align	32
	#Procedure 0x4049a5
	.globl sub_4049a5
	.type sub_4049a5, @function
sub_4049a5:

	nop	word ptr [rax + rax]
.label_346:
	add	r14, 0x10
.label_350:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_347
	cmp	qword ptr [r14], 0
	je	.label_346
	test	r14, r14
	je	.label_346
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_345:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_345
	jmp	.label_346
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_347
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_347
	mov	r14, qword ptr [r15]
	jmp	.label_350
	.section	.text
	.align	32
	#Procedure 0x4049fb
	.globl sub_4049fb
	.type sub_4049fb, @function
sub_4049fb:

	nop	dword ptr [rax + rax]
.label_344:
	add	r14, 0x10
.label_341:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_342
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_344
	nop	word ptr cs:[rax + rax]
.label_348:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_348
	jmp	.label_344
.label_342:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_349
	nop	dword ptr [rax]
.label_343:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_343
.label_349:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x404a66
	.globl sub_404a66
	.type sub_404a66, @function
sub_404a66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a70

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
	#Procedure 0x404a9d
	.globl sub_404a9d
	.type sub_404a9d, @function
sub_404a9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404aa0
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
	#Procedure 0x404ab3
	.globl sub_404ab3
	.type sub_404ab3, @function
sub_404ab3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x404ac5
	.globl sub_404ac5
	.type sub_404ac5, @function
sub_404ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ad0

	.globl lsetfileconat
	.type lsetfileconat, @function
lsetfileconat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xfd8
	mov	r14, rdx
	mov	rbx, rsi
	mov	ebp, edi
	cmp	ebp, -0x64
	je	.label_354
	cmp	byte ptr [rbx], 0x2f
	jne	.label_359
.label_354:
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 0xfd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	lsetfilecon
.label_359:
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	mov	esi, ebp
	mov	rdx, rbx
	call	openat_proc_name
	mov	r12, rax
	test	r12, r12
	je	.label_357
	mov	rdi, r12
	mov	rsi, r14
	call	lsetfilecon
	mov	r15d, eax
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	edx, dword ptr [rax]
	cmp	r12, r13
	je	.label_360
	mov	rdi, r12
	mov	r12d, edx
	call	free
	mov	edx, r12d
.label_360:
	cmp	r15d, -1
	jne	.label_352
	mov	eax, edx
	cmp	edx, 0x26
	ja	.label_356
	movabs	rcx, 0x4000102006
	bt	rcx, rax
	jae	.label_356
.label_357:
	lea	rdi, [rsp + 0x10]
	call	save_cwd
	test	eax, eax
	jne	.label_353
	test	ebp, ebp
	js	.label_355
	cmp	dword ptr [rsp + 0x10], ebp
	jne	.label_355
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	r15d, 0xffffffff
	jmp	.label_352
.label_355:
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_361
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	mov	r15d, 0xffffffff
	jmp	.label_352
.label_361:
	mov	rdi, rbx
	mov	rsi, r14
	call	lsetfilecon
	mov	r15d, eax
	xor	ebx, ebx
	cmp	r15d, -1
	jne	.label_358
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_358:
	lea	rdi, [rsp + 0x10]
	call	restore_cwd
	test	eax, eax
	jne	.label_351
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	test	ebx, ebx
	je	.label_352
	call	__errno_location
	mov	dword ptr [rax], ebx
	jmp	.label_352
.label_356:
	cmp	edx, 0x5f
	je	.label_357
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], edx
.label_352:
	mov	eax, r15d
	add	rsp, 0xfd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_353:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_351:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_restore_fail
.label_363:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_362
	test	cl, cl
	jne	.label_362
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_362:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c8b
	.globl sub_404c8b
	.type sub_404c8b, @function
sub_404c8b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c95

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
	je	.label_363
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_362
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_362
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl process_file
	.type process_file, @function
process_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x30]
	mov	r12, qword ptr [r15 + 0x38]
	movzx	eax, word ptr [r15 + 0x70]
	mov	bl, 1
	mov	ecx, eax
	dec	ecx
	movzx	ecx, cx
	cmp	ecx, 9
	ja	.label_382
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_364]]
.label_949:
	mov	bl, 1
	cmp	byte ptr [byte ptr [rip + recurse]],  1
	jne	.label_366
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	mov	bl, 1
	test	rax, rax
	je	.label_369
	mov	rcx, qword ptr [r15 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_369
	mov	rcx, qword ptr [r15 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_369
	cmp	byte ptr [r12], 0x2f
	jne	.label_380
	cmp	byte ptr [r12 + 1], 0
	je	.label_381
.label_380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_376
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, r12
	mov	r8, rbx
	call	error
	jmp	.label_384
.label_950:
	mov	rdi, r14
	mov	rsi, r15
	call	cycle_warning_required
	mov	bl, 1
	test	al, al
	je	.label_366
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
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
	jmp	.label_369
.label_951:
	mov	qword ptr [rsp], r14
	mov	r14d, dword ptr [r15 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
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
	mov	r14, qword ptr [rsp]
	mov	rdx, rbp
	jmp	.label_375
.label_952:
	mov	bl, 1
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	test	al, al
	jne	.label_366
	jmp	.label_369
.label_953:
	mov	ebp, dword ptr [r15 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_385
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_375
.label_954:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_387
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_388
.label_387:
	mov	eax, dword ptr [r15 + 0x40]
	mov	dword ptr [rsp], eax
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rbp, r14
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp]
	mov	rdx, r14
	mov	r14, rbp
.label_375:
	call	error
.label_366:
	mov	ax, word ptr [r15 + 0x70]
.label_382:
	movzx	eax, ax
	cmp	eax, 6
	jne	.label_365
	test	bl, bl
	je	.label_365
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	test	rax, rax
	je	.label_365
	mov	rcx, qword ptr [r15 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_365
	mov	rcx, qword ptr [r15 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_365
	cmp	byte ptr [r12], 0x2f
	jne	.label_368
	cmp	byte ptr [r12 + 1], 0
	je	.label_371
.label_368:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rdx, r12
	mov	r12, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_376
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_386:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_372
.label_365:
	test	bl, bl
	je	.label_372
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_373
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
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
.label_373:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, r13
	call	change_file_context
	test	eax, eax
	je	.label_372
	xor	ebx, ebx
.label_372:
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	test	al, al
	jne	.label_383
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r15
	call	rpl_fts_set
.label_383:
	and	bl, 1
.label_369:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_388:
	mov	qword ptr [r15 + 0x20], 1
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	rpl_fts_set
	mov	bl, 1
	jmp	.label_369
.label_371:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_386
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_384:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
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
	mov	rsi, r15
	call	rpl_fts_set
	mov	rdi, r14
	call	rpl_fts_read
	jmp	.label_369
	.section	.text
	.align	32
	#Procedure 0x4050ea
	.globl sub_4050ea
	.type sub_4050ea, @function
sub_4050ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050f0
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
	#Procedure 0x4050ff
	.globl sub_4050ff
	.type sub_4050ff, @function
sub_4050ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405100

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
	#Procedure 0x4051be
	.globl sub_4051be
	.type sub_4051be, @function
sub_4051be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4051c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_394
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_394:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051de
	.globl sub_4051de
	.type sub_4051de, @function
sub_4051de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4051e0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051e9
	.globl sub_4051e9
	.type sub_4051e9, @function
sub_4051e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051fa
	.globl sub_4051fa
	.type sub_4051fa, @function
sub_4051fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405200

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
	jne	.label_400
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
	je	.label_399
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_401
	mov	eax, OFFSET FLAT:label_402
	jmp	.label_397
.label_399:
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
	je	.label_398
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_395
	mov	eax, OFFSET FLAT:label_396
	jmp	.label_397
.label_398:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_321
	mov	eax, OFFSET FLAT:label_262
.label_397:
	cmove	rax, rcx
.label_400:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052bd
	.globl sub_4052bd
	.type sub_4052bd, @function
sub_4052bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052c0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052c7
	.globl sub_4052c7
	.type sub_4052c7, @function
sub_4052c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

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
	mov	eax, OFFSET FLAT:label_404
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052f5
	.globl sub_4052f5
	.type sub_4052f5, @function
sub_4052f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

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
	#Procedure 0x405317
	.globl sub_405317
	.type sub_405317, @function
sub_405317:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405320

	.globl context_free
	.type context_free, @function
context_free:
	ret	
	.section	.text
	.align	32
	#Procedure 0x405321
	.globl sub_405321
	.type sub_405321, @function
sub_405321:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

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
	je	.label_407
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_405
	jmp	.label_406
.label_407:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_406
.label_405:
	mov	eax, 1
	test	bpl, bpl
	je	.label_406
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
.label_406:
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
	#Procedure 0x4053b8
	.globl sub_4053b8
	.type sub_4053b8, @function
sub_4053b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053c0

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
	je	.label_408
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_410
	jmp	.label_409
.label_408:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_409
.label_410:
	mov	eax, 1
	test	bpl, bpl
	je	.label_409
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
.label_409:
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
	#Procedure 0x405439
	.globl sub_405439
	.type sub_405439, @function
sub_405439:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405440

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
	je	.label_413
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_412
	jmp	.label_411
.label_413:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_411
.label_412:
	mov	eax, 1
	test	bpl, bpl
	je	.label_411
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
.label_411:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054a3
	.globl sub_4054a3
	.type sub_4054a3, @function
sub_4054a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0

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
	je	.label_416
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_414
	jmp	.label_415
.label_416:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_415
.label_414:
	mov	eax, 1
	test	bpl, bpl
	je	.label_415
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_415:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40550f
	.globl sub_40550f
	.type sub_40550f, @function
sub_40550f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405510

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
	je	.label_417
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_419
	jmp	.label_418
.label_417:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_418
.label_419:
	mov	eax, 1
	test	bpl, bpl
	je	.label_418
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_418:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405559
	.globl sub_405559
	.type sub_405559, @function
sub_405559:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405560

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
	je	.label_422
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_421
	jmp	.label_420
.label_422:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_420
.label_421:
	mov	eax, 1
	test	bpl, bpl
	je	.label_420
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_420:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055a5
	.globl sub_4055a5
	.type sub_4055a5, @function
sub_4055a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055b0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_424
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_425
	jmp	.label_423
.label_424:
	mov	eax, 1
	test	cl, cl
	je	.label_423
.label_425:
	xor	eax, eax
.label_423:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055df
	.globl sub_4055df
	.type sub_4055df, @function
sub_4055df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4055e0
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
	#Procedure 0x405607
	.globl sub_405607
	.type sub_405607, @function
sub_405607:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610
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
	#Procedure 0x405682
	.globl sub_405682
	.type sub_405682, @function
sub_405682:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405690

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_426
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_429:
	cmp	qword ptr [rcx], 0
	je	.label_427
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_428:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_428
	cmp	rsi, rax
	cmova	rax, rsi
.label_427:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_429
.label_426:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056dd
	.globl sub_4056dd
	.type sub_4056dd, @function
sub_4056dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056f3
	.globl sub_4056f3
	.type sub_4056f3, @function
sub_4056f3:

	nop	word ptr cs:[rax + rax]
.label_430:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40570e
	.globl sub_40570e
	.type sub_40570e, @function
sub_40570e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405717

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_430
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_432
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_430
.label_432:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_430
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_431
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_431:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405780

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_433
	nop	
.label_445:
	mov	edi, OFFSET FLAT:label_437
	call	strcmp
	test	eax, eax
	je	.label_443
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_445
.label_443:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_437
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_435
	mov	ecx, OFFSET FLAT:label_436
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_434
	mov	esi, OFFSET FLAT:label_442
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_434
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_437
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_436
	mov	ecx, OFFSET FLAT:label_437
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_440
	mov	ecx, OFFSET FLAT:label_403
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
	#Procedure 0x40589a
	.globl sub_40589a
	.type sub_40589a, @function
sub_40589a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_446
	call	rpl_calloc
	test	rax, rax
	je	.label_446
	pop	rcx
	ret	
.label_446:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4058c6
	.globl sub_4058c6
	.type sub_4058c6, @function
sub_4058c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058d8
	.globl sub_4058d8
	.type sub_4058d8, @function
sub_4058d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058e0

	.globl compute_context_from_mask
	.type compute_context_from_mask, @function
compute_context_from_mask:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	rbx, rdi
	call	context_new
	mov	r14d, eax
	test	r14d, r14d
	je	.label_448
	mov	rsi,  qword ptr [word ptr [rip + specified_user]]
	mov	r13b, 1
	test	rsi, rsi
	je	.label_447
	mov	edi, r14d
	call	context_user_set
	test	eax, eax
	je	.label_447
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi,  qword ptr [word ptr [rip + specified_user]]
	call	quote
	mov	rbx, rax
	xor	edi, edi
	mov	ecx, OFFSET FLAT:label_449
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	r8, rbx
	call	error
.label_447:
	mov	rsi,  qword ptr [word ptr [rip + specified_range]]
	test	rsi, rsi
	je	.label_457
	mov	edi, r14d
	call	context_range_set
	test	eax, eax
	je	.label_457
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi,  qword ptr [word ptr [rip + specified_range]]
	call	quote
	mov	rbx, rax
	xor	edi, edi
	mov	ecx, OFFSET FLAT:label_456
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	r8, rbx
	call	error
.label_457:
	mov	rsi,  qword ptr [word ptr [rip + specified_role]]
	test	rsi, rsi
	je	.label_451
	mov	edi, r14d
	call	context_role_set
	test	eax, eax
	je	.label_451
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi,  qword ptr [word ptr [rip + specified_role]]
	call	quote
	mov	rbx, rax
	xor	edi, edi
	mov	ecx, OFFSET FLAT:label_452
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	r8, rbx
	call	error
.label_451:
	mov	rsi,  qword ptr [word ptr [rip + specified_type]]
	test	rsi, rsi
	je	.label_454
	mov	edi, r14d
	call	context_type_set
	test	eax, eax
	je	.label_454
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi,  qword ptr [word ptr [rip + specified_type]]
	call	quote
	mov	rbx, rax
	xor	edi, edi
	mov	ecx, OFFSET FLAT:label_455
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	mov	r8, rbx
	call	error
	jmp	.label_458
.label_453:
	mov	dword ptr [rbp], r14d
	xor	eax, eax
.label_459:
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
	#Procedure 0x405a8f
	.globl sub_405a8f
	.type sub_405a8f, @function
sub_405a8f:

	nop	dword ptr [rax]
.label_454:
	test	r13b, r13b
	jne	.label_453
.label_458:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	edi, r14d
	call	context_free
	mov	dword ptr [rbx], ebp
	mov	eax, 1
	jmp	.label_459
.label_448:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	eax, 1
	jmp	.label_459
	.section	.text
	.align	32
	#Procedure 0x405af0

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
	jne	.label_461
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_461
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_462
.label_461:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_462:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_463
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_463:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b5e
	.globl sub_405b5e
	.type sub_405b5e, @function
sub_405b5e:

	nop	
.label_464:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	.section	.text
	.align	32
	#Procedure 0x405b6a
	.globl sub_405b6a
	.type sub_405b6a, @function
sub_405b6a:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b6e

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_464
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
	.section	.text
	.align	32
	#Procedure 0x405b90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b98
	.globl sub_405b98
	.type sub_405b98, @function
sub_405b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ba0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_465]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bb4
	.globl sub_405bb4
	.type sub_405bb4, @function
sub_405bb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0

	.globl security_check_context
	.type security_check_context, @function
security_check_context:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bd3
	.globl sub_405bd3
	.type sub_405bd3, @function
sub_405bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405be0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x405beb
	.globl sub_405beb
	.type sub_405beb, @function
sub_405beb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bf0

	.globl se_const
	.type se_const, @function
se_const:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bf4
	.globl sub_405bf4
	.type sub_405bf4, @function
sub_405bf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c00

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
	je	.label_466
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_466:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c2c
	.globl sub_405c2c
	.type sub_405c2c, @function
sub_405c2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	mov	dword ptr [rdi], 0xffffff9c
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c37
	.globl sub_405c37
	.type sub_405c37, @function
sub_405c37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c40
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c53
	.globl sub_405c53
	.type sub_405c53, @function
sub_405c53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_467
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_468]]
.label_467:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c77
	.globl sub_405c77
	.type sub_405c77, @function
sub_405c77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c80

	.globl openat_save_fail
	.type openat_save_fail, @function
openat_save_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
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
	.align	32
	#Procedure 0x405cb2
	.globl sub_405cb2
	.type sub_405cb2, @function
sub_405cb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_470
	.section	.text
	.align	32
	#Procedure 0x405ccd
	.globl sub_405ccd
	.type sub_405ccd, @function
sub_405ccd:

	nop	dword ptr [rax]
.label_476:
	add	r14, 0x10
.label_470:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_475
	cmp	qword ptr [r14], 0
	je	.label_476
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_471
	nop	word ptr cs:[rax + rax]
.label_473:
	test	cl, 1
	je	.label_474
	mov	rdi, qword ptr [rbx]
	call	rax
.label_474:
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
	jne	.label_473
.label_471:
	test	cl, cl
	je	.label_472
	mov	rdi, qword ptr [r14]
	call	rax
.label_472:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_476
.label_475:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d53
	.globl sub_405d53
	.type sub_405d53, @function
sub_405d53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d60

	.globl context_new
	.type context_new, @function
context_new:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d70
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
	#Procedure 0x405d83
	.globl sub_405d83
	.type sub_405d83, @function
sub_405d83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90
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
	#Procedure 0x405d9d
	.globl sub_405d9d
	.type sub_405d9d, @function
sub_405d9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405da0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_477
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_477:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_478
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_480
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_479
.label_480:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_479:
	mov	edx, dword ptr [rax]
.label_478:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e64
	.globl sub_405e64
	.type sub_405e64, @function
sub_405e64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e7a
	.globl sub_405e7a
	.type sub_405e7a, @function
sub_405e7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e80
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e93
	.globl sub_405e93
	.type sub_405e93, @function
sub_405e93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ea0

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
	#Procedure 0x405eac
	.globl sub_405eac
	.type sub_405eac, @function
sub_405eac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl lgetfileconat
	.type lgetfileconat, @function
lgetfileconat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xfd8
	mov	r14, rdx
	mov	rbx, rsi
	mov	ebp, edi
	cmp	ebp, -0x64
	je	.label_491
	cmp	byte ptr [rbx], 0x2f
	jne	.label_485
.label_491:
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 0xfd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	lgetfilecon
.label_485:
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	mov	esi, ebp
	mov	rdx, rbx
	call	openat_proc_name
	mov	r12, rax
	test	r12, r12
	je	.label_482
	mov	rdi, r12
	mov	rsi, r14
	call	lgetfilecon
	mov	r15d, eax
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	edx, dword ptr [rax]
	cmp	r12, r13
	je	.label_486
	mov	rdi, r12
	mov	r12d, edx
	call	free
	mov	edx, r12d
.label_486:
	cmp	r15d, -1
	jne	.label_483
	mov	eax, edx
	cmp	edx, 0x26
	ja	.label_481
	movabs	rcx, 0x4000102006
	bt	rcx, rax
	jae	.label_481
.label_482:
	lea	rdi, [rsp + 0x10]
	call	save_cwd
	test	eax, eax
	jne	.label_490
	test	ebp, ebp
	js	.label_489
	cmp	dword ptr [rsp + 0x10], ebp
	jne	.label_489
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	r15d, 0xffffffff
	jmp	.label_483
.label_489:
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_487
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	mov	r15d, 0xffffffff
	jmp	.label_483
.label_487:
	mov	rdi, rbx
	mov	rsi, r14
	call	lgetfilecon
	mov	r15d, eax
	xor	ebx, ebx
	cmp	r15d, -1
	jne	.label_484
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_484:
	lea	rdi, [rsp + 0x10]
	call	restore_cwd
	test	eax, eax
	jne	.label_488
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	test	ebx, ebx
	je	.label_483
	call	__errno_location
	mov	dword ptr [rax], ebx
	jmp	.label_483
.label_481:
	cmp	edx, 0x5f
	je	.label_482
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], edx
.label_483:
	mov	eax, r15d
	add	rsp, 0xfd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_490:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_488:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_restore_fail
.label_492:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_495
	mov	qword ptr [r14], r14
.label_493:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_495
	.section	.text
	.align	32
	#Procedure 0x406060

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
	je	.label_492
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_494
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
	je	.label_495
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_494
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_493
.label_494:
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
	#Procedure 0x4060db
	.globl sub_4060db
	.type sub_4060db, @function
sub_4060db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0

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
	jmp	.label_496
	.section	.text
	.align	32
	#Procedure 0x4060fe
	.globl sub_4060fe
	.type sub_4060fe, @function
sub_4060fe:

	nop	
.label_497:
	add	rbx, 2
.label_496:
	cmp	rbx, -1
	je	.label_498
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_497
	mov	r14, rbx
.label_498:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406124
	.globl sub_406124
	.type sub_406124, @function
sub_406124:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406130

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406143
	.globl sub_406143
	.type sub_406143, @function
sub_406143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406150

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40615a
	.globl sub_40615a
	.type sub_40615a, @function
sub_40615a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406160
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
	#Procedure 0x406170

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x406179
	.globl sub_406179
	.type sub_406179, @function
sub_406179:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406180

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40618a
	.globl sub_40618a
	.type sub_40618a, @function
sub_40618a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406190

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061a3
	.globl sub_4061a3
	.type sub_4061a3, @function
sub_4061a3:

	nop	word ptr cs:[rax + rax]
.label_502:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_505:
	test	rcx, rcx
	je	.label_503
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_502
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_502
	.section	.text
	.align	32
	#Procedure 0x4061da

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_505
	.section	.text
	.align	32
	#Procedure 0x4061e4
	.globl sub_4061e4
	.type sub_4061e4, @function
sub_4061e4:

	nop	word ptr [rax + rax]
.label_503:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_500
	nop	word ptr cs:[rax + rax]
.label_501:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_499
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_499:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_504
	mov	rcx, qword ptr [rsi + 8]
.label_504:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_501
.label_500:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406237
	.globl sub_406237
	.type sub_406237, @function
sub_406237:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406240
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
	#Procedure 0x40624d
	.globl sub_40624d
	.type sub_40624d, @function
sub_40624d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406250

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40625a
	.globl sub_40625a
	.type sub_40625a, @function
sub_40625a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406260
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40626d
	.globl sub_40626d
	.type sub_40626d, @function
sub_40626d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406270
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
	#Procedure 0x406280
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40628a
	.globl sub_40628a
	.type sub_40628a, @function
sub_40628a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406290
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062a3
	.globl sub_4062a3
	.type sub_4062a3, @function
sub_4062a3:

	nop	word ptr cs:[rax + rax]
.label_507:
	mov	ecx, 1
	jmp	.label_506
	.section	.text
	.align	32
	#Procedure 0x4062b7
	.globl sub_4062b7
	.type sub_4062b7, @function
sub_4062b7:

	nop	word ptr cs:[rax + rax]
.label_509:
	cmp	rax, 0x58465342
	je	.label_506
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_507
.label_508:
	xor	ecx, ecx
.label_506:
	mov	eax, ecx
	pop	rcx
	ret	
.label_510:
	test	rax, rax
	je	.label_508
	cmp	rax, 0x6969
	je	.label_508
	cmp	rax, 0x9fa0
	je	.label_508
	jmp	.label_507
	.section	.text
	.align	32
	#Procedure 0x4062f3

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_510
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_509
	cmp	rax, 0x52654973
	je	.label_506
	cmp	rax, 0x5346414f
	je	.label_508
	jmp	.label_507
	.section	.text
	.align	32
	#Procedure 0x406320

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
	je	.label_511
	mov	ecx,  dword ptr [dword ptr [rip + openat_proc_name.proc_status]]
	test	ecx, ecx
	jne	.label_519
	mov	edi, OFFSET FLAT:label_514
	mov	esi, 0x10900
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_518
	lea	r12, [rsp]
	mov	esi, 1
	mov	edx, 0x20
	mov	ecx, OFFSET FLAT:label_512
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
	mov	dword ptr [dword ptr [rip + openat_proc_name.proc_status]],  eax
	mov	edi, ebp
	call	close
	mov	ecx,  dword ptr [dword ptr [rip + openat_proc_name.proc_status]]
.label_519:
	xor	eax, eax
	test	ecx, ecx
	js	.label_513
	mov	rdi, r14
	call	strlen
	add	rax, 0x1b
	cmp	rax, 0xfc1
	jb	.label_517
	mov	rdi, rax
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_513
.label_517:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_516
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, r15d
	call	__sprintf_chk
	movsxd	rdi, eax
	add	rdi, rbx
	mov	rsi, r14
	call	strcpy
	jmp	.label_515
.label_518:
	mov	dword ptr [dword ptr [rip + openat_proc_name.proc_status]],  0xffffffff
	xor	eax, eax
	jmp	.label_513
	.section	.text
	.align	32
	#Procedure 0x406413
	.globl sub_406413
	.type sub_406413, @function
sub_406413:

	nop	word ptr cs:[rax + rax]
.label_511:
	mov	byte ptr [rbx], 0
.label_515:
	mov	rax, rbx
.label_513:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406430

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x406439
	.globl sub_406439
	.type sub_406439, @function
sub_406439:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406440

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
	mov	rax,  qword ptr [word ptr [rip + label_79]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_80]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_81]]
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
	#Procedure 0x4064a8
	.globl sub_4064a8
	.type sub_4064a8, @function
sub_4064a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064b0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_520
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_522
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_521
.label_522:
	call	xalloc_die
.label_523:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4064e7
	.globl sub_4064e7
	.type sub_4064e7, @function
sub_4064e7:

	nop	dword ptr [rax]
.label_520:
	test	rcx, rcx
	jne	.label_524
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_524:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_523
.label_521:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x406530

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_525
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_385
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406560
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40656a
	.globl sub_40656a
	.type sub_40656a, @function
sub_40656a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406570

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
	je	.label_526
	mov	qword ptr [rax], rbx
.label_526:
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
	#Procedure 0x40665c
	.globl sub_40665c
	.type sub_40665c, @function
sub_40665c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406660

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_527
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_528]]
	jbe	.label_529
	movss	xmm1,  dword ptr [dword ptr [rip + label_532]]
	ucomiss	xmm1, xmm0
	jbe	.label_529
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_531]]
	jbe	.label_529
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_529
	addss	xmm1,  dword ptr [dword ptr [rip + label_528]]
	ucomiss	xmm0, xmm1
	jbe	.label_529
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_530]]
	ucomiss	xmm2, xmm0
	jb	.label_529
	ucomiss	xmm0, xmm1
	ja	.label_527
.label_529:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_527:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066d4
	.globl sub_4066d4
	.type sub_4066d4, @function
sub_4066d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066e0

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_533
	nop	dword ptr [rax]
.label_535:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_534
	call	closedir
.label_534:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_535
.label_533:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40671a
	.globl sub_40671a
	.type sub_40671a, @function
sub_40671a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406720

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_536
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_536:
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
	#Procedure 0x4067a3
	.globl sub_4067a3
	.type sub_4067a3, @function
sub_4067a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067b0

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
	#Procedure 0x4067e7
	.globl sub_4067e7
	.type sub_4067e7, @function
sub_4067e7:

	nop	word ptr [rax + rax]
.label_537:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	.section	.text
	.align	32
	#Procedure 0x4067f9
	.globl sub_4067f9
	.type sub_4067f9, @function
sub_4067f9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406803

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_537
	mov	edi, eax
	jmp	fchdir
	.section	.text
	.align	32
	#Procedure 0x406810

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
	je	.label_548
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_545
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_541
	cvtsi2ss	xmm0, rax
	jmp	.label_546
.label_541:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_546:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_540
	cvtsi2ss	xmm1, rcx
	jmp	.label_539
.label_540:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_539:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_545
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_550
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_538
.label_550:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_538:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_547
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_549
.label_547:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_549:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_545
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_544
	mulss	xmm0, dword ptr [rcx + 8]
.label_544:
	movss	xmm1,  dword ptr [dword ptr [rip + label_86]]
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
	jne	.label_545
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_542
	nop	dword ptr [rax + rax]
.label_543:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_543
.label_542:
	mov	qword ptr [r15 + 0x48], 0
.label_545:
	mov	rax, r14
.label_548:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406996
	.globl sub_406996
	.type sub_406996, @function
sub_406996:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069a0

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x2f
	call	__strspn_c1
	add	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069b3
	.globl sub_4069b3
	.type sub_4069b3, @function
sub_4069b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0

	.globl context_range_set
	.type context_range_set, @function
context_range_set:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069d3
	.globl sub_4069d3
	.type sub_4069d3, @function
sub_4069d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_551
	xor	eax, eax
.label_554:
	cmp	qword ptr [r8], 0
	je	.label_552
	test	r8, r8
	je	.label_552
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_553:
	cmp	rax, rdx
	jae	.label_551
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_553
.label_552:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_554
.label_551:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a23
	.globl sub_406a23
	.type sub_406a23, @function
sub_406a23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a30

	.globl context_role_set
	.type context_role_set, @function
context_role_set:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a43
	.globl sub_406a43
	.type sub_406a43, @function
sub_406a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a50

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_376
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_555
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_555:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a8d
	.globl sub_406a8d
	.type sub_406a8d, @function
sub_406a8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a90

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_557
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_559
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_559
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_556
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_560
.label_559:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_560
.label_557:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_560:
	test	ebx, ebx
	js	.label_556
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_556
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_558
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_556
.label_558:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_556:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b53
	.globl sub_406b53
	.type sub_406b53, @function
sub_406b53:

	nop	word ptr cs:[rax + rax]
.label_562:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_561
	.section	.text
	.align	32
	#Procedure 0x406b70
	.globl sub_406b70
	.type sub_406b70, @function
sub_406b70:

	nop	dword ptr [rax + rax]
.label_563:
	mov	ax, 8
	jmp	.label_561
.label_569:
	mov	ax, 3
	jmp	.label_561
	.section	.text
	.align	32
	#Procedure 0x406b8a

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_564
	test	byte ptr [r14 + 0x48], 1
	je	.label_564
	mov	dl, 1
.label_564:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_566
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_566
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_565
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_567
.label_566:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_565
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_568
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_562
.label_568:
	mov	eax, dword ptr [r14]
.label_567:
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
.label_561:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_565:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_563
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_561
	cmp	ecx, 0x4000
	jne	.label_569
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_570
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_570
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_570:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_561
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_571
	cmp	cl, 0x2e
	jne	.label_561
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_561
.label_571:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_561
	.section	.text
	.align	32
	#Procedure 0x406cf0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_572
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_577:
	cmp	qword ptr [rsi], 0
	je	.label_573
	mov	rax, rsi
	nop	dword ptr [rax]
.label_574:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_574
	inc	rdx
.label_573:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_577
.label_572:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_575
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_576
.label_575:
	xor	eax, eax
.label_576:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d49
	.globl sub_406d49
	.type sub_406d49, @function
sub_406d49:

	nop	dword ptr [rax]
.label_580:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_578
	cmp	qword ptr [rax + 0x58], 0
	js	.label_578
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_579
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_578
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_578
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_578:
	add	rsp, 0x18
	ret	
.label_579:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406da1
	.globl sub_406da1
	.type sub_406da1, @function
sub_406da1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406daf

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_580
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_579
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_581:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_583:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_584
	inc	r9
	cmp	r9, 0xa
	jb	.label_582
.label_584:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e1f
	.globl sub_406e1f
	.type sub_406e1f, @function
sub_406e1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406e20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_582:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_581
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_583
	.section	.text
	.align	32
	#Procedure 0x406e49
	.globl sub_406e49
	.type sub_406e49, @function
sub_406e49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e50

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
	je	.label_586
	cmp	rbx, r15
	jne	.label_585
	cmp	byte ptr [rbx + 1], 0
	je	.label_586
.label_585:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_586:
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
	#Procedure 0x406eda
	.globl sub_406eda
	.type sub_406eda, @function
sub_406eda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ee0

	.globl getfileconat
	.type getfileconat, @function
getfileconat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xfd8
	mov	r14, rdx
	mov	rbx, rsi
	mov	ebp, edi
	cmp	ebp, -0x64
	je	.label_593
	cmp	byte ptr [rbx], 0x2f
	jne	.label_597
.label_593:
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 0xfd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	getfilecon
.label_597:
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	mov	esi, ebp
	mov	rdx, rbx
	call	openat_proc_name
	mov	r12, rax
	test	r12, r12
	je	.label_587
	mov	rdi, r12
	mov	rsi, r14
	call	getfilecon
	mov	r15d, eax
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	edx, dword ptr [rax]
	cmp	r12, r13
	je	.label_588
	mov	rdi, r12
	mov	r12d, edx
	call	free
	mov	edx, r12d
.label_588:
	cmp	r15d, -1
	jne	.label_589
	mov	eax, edx
	cmp	edx, 0x26
	ja	.label_595
	movabs	rcx, 0x4000102006
	bt	rcx, rax
	jae	.label_595
.label_587:
	lea	rdi, [rsp + 0x10]
	call	save_cwd
	test	eax, eax
	jne	.label_591
	test	ebp, ebp
	js	.label_594
	cmp	dword ptr [rsp + 0x10], ebp
	jne	.label_594
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	r15d, 0xffffffff
	jmp	.label_589
.label_594:
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_592
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	mov	r15d, 0xffffffff
	jmp	.label_589
.label_592:
	mov	rdi, rbx
	mov	rsi, r14
	call	getfilecon
	mov	r15d, eax
	xor	ebx, ebx
	cmp	r15d, -1
	jne	.label_596
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_596:
	lea	rdi, [rsp + 0x10]
	call	restore_cwd
	test	eax, eax
	jne	.label_590
	lea	rdi, [rsp + 0x10]
	call	free_cwd
	test	ebx, ebx
	je	.label_589
	call	__errno_location
	mov	dword ptr [rax], ebx
	jmp	.label_589
.label_595:
	cmp	edx, 0x5f
	je	.label_587
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], edx
.label_589:
	mov	eax, r15d
	add	rsp, 0xfd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_591:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_590:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_restore_fail
	.section	.text
	.align	32
	#Procedure 0x407070

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
	jne	.label_598
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_598:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070a4
	.globl sub_4070a4
	.type sub_4070a4, @function
sub_4070a4:

	nop	word ptr cs:[rax + rax]
.label_599:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_600:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070cf
	.globl sub_4070cf
	.type sub_4070cf, @function
sub_4070cf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4070d0

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
	js	.label_600
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_599
	mov	dword ptr [r14], ebp
	jmp	.label_600
	.section	.text
	.align	32
	#Procedure 0x407100

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
	jae	.label_601
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_601
	test	r14b, 0x12
	je	.label_601
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_616
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
	je	.label_615
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_617
	mov	esi, OFFSET FLAT:label_403
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_620
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_617:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_604
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_604:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_612
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_605
.label_601:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_621:
	xor	eax, eax
.label_616:
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
	#Procedure 0x407276
	.globl sub_407276
	.type sub_407276, @function
sub_407276:

	nop	word ptr cs:[rax + rax]
.label_603:
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
	jne	.label_602
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_614
.label_602:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_614:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_622
	mov	qword ptr [rbp + 0x10], rbx
.label_611:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_619
.label_622:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_623
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_619:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_605
	jmp	.label_609
.label_623:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_611
	.section	.text
	.align	32
	#Procedure 0x407324
	.globl sub_407324
	.type sub_407324, @function
sub_407324:

	nop	word ptr cs:[rax + rax]
.label_605:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_608
	cmp	rax, 3
	jb	.label_608
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_608
	nop	dword ptr [rax + rax]
.label_618:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_608
	dec	rax
	cmp	rax, 1
	ja	.label_618
	nop	word ptr cs:[rax + rax]
.label_608:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_603
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_607
.label_609:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_610
	cmp	r12, 2
	jb	.label_610
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_610:
	mov	r12, qword ptr [rsp + 0x18]
.label_612:
	mov	esi, OFFSET FLAT:label_403
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_607
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_606
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_613
	mov	esi, OFFSET FLAT:label_118
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_613
	or	byte ptr [r13 + 0x48], 4
.label_613:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_616
.label_607:
	mov	rbx, qword ptr [rsp + 0x10]
.label_606:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_620:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_615:
	mov	rdi, r13
	call	free
	jmp	.label_621
	.section	.text
	.align	32
	#Procedure 0x407474
	.globl sub_407474
	.type sub_407474, @function
sub_407474:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407480

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
	#Procedure 0x4074a8
	.globl sub_4074a8
	.type sub_4074a8, @function
sub_4074a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074b0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074b5
	.globl sub_4074b5
	.type sub_4074b5, @function
sub_4074b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074c0
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
	#Procedure 0x4074d4
	.globl sub_4074d4
	.type sub_4074d4, @function
sub_4074d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074e0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074ea
	.globl sub_4074ea
	.type sub_4074ea, @function
sub_4074ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074f0

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
	je	.label_677
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_631
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_633
.label_677:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_645
	mov	edi, dword ptr [rbx + 0x2c]
.label_645:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_650
	test	al, 1
	je	.label_654
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_650
.label_654:
	mov	edx, 0x20000
.label_650:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_659
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_663
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_667
.label_631:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_659:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_666
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_647
.label_663:
	test	byte ptr [rbx + 0x49], 1
	je	.label_667
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
	je	.label_628
.label_667:
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
	jne	.label_633
	cmp	ebp, 2
	jne	.label_641
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_642
.label_641:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_646
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_646
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_655
.label_628:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_647
.label_646:
	mov	r15, rbx
	xor	r12d, r12d
.label_655:
	xor	r12b, 1
.label_642:
	cmp	ebp, 3
	je	.label_664
	test	r12b, r12b
	jne	.label_664
	mov	dword ptr [rsp + 4], r12d
.label_643:
	mov	rbx, r15
	jmp	.label_633
.label_664:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_668
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_668:
	test	ebx, ebx
	js	.label_673
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_643
.label_673:
	cmp	ebp, 3
	jne	.label_675
	test	r12b, r12b
	je	.label_675
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_675:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_626
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_626
	call	close
.label_626:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_633:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_637
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_637:
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
.label_639:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_651
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_636:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_678
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_624
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_624
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_674
	test	al, al
	je	.label_665
	jmp	.label_624
	.section	.text
	.align	32
	#Procedure 0x407821
	.globl sub_407821
	.type sub_407821, @function
sub_407821:

	nop	word ptr cs:[rax + rax]
.label_674:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_624
.label_665:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_636
	jmp	.label_638
	.section	.text
	.align	32
	#Procedure 0x407843
	.globl sub_407843
	.type sub_407843, @function
sub_407843:

	nop	word ptr cs:[rax + rax]
.label_624:
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
	je	.label_656
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_657
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_658
	.section	.text
	.align	32
	#Procedure 0x40789c
	.globl sub_40789c
	.type sub_40789c, @function
sub_40789c:

	nop	dword ptr [rax]
.label_657:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_656
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_660
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
	jmp	.label_670
.label_660:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_670:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_658:
	add	rbp, rdx
	jb	.label_648
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_630
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_671
	.section	.text
	.align	32
	#Procedure 0x407953
	.globl sub_407953
	.type sub_407953, @function
sub_407953:

	nop	word ptr cs:[rax + rax]
.label_630:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_671:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_661
	test	byte ptr [rbx + 0x49], 4
	jne	.label_661
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_625
	.section	.text
	.align	32
	#Procedure 0x4079b4
	.globl sub_4079b4
	.type sub_4079b4, @function
sub_4079b4:

	nop	word ptr cs:[rax + rax]
.label_661:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_662
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_627
.label_662:
	xor	ebx, ebx
.label_627:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_625:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_640
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_640:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_634
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_634
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_634:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_639
	jmp	.label_651
.label_678:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_653
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_653:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_651
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_651
.label_638:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_651:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_672
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_672:
	test	byte ptr [rbx + 0x48], 4
	je	.label_676
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_676:
	test	r13, r13
	jne	.label_629
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_629
	cmp	r15d, 1
	je	.label_632
	test	rdx, rdx
	jne	.label_629
.label_632:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_635
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_144
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_644
.label_635:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_644:
	mov	rdx, r12
	test	eax, eax
	je	.label_629
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_649
.label_629:
	test	rdx, rdx
	je	.label_652
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_669
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_669:
	cmp	rdx, 2
	jb	.label_666
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_666
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_666
.label_652:
	cmp	r15d, 3
	jne	.label_649
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_649
	movzx	eax, ax
	cmp	eax, 7
	je	.label_649
	mov	word ptr [r14 + 0x70], 6
.label_649:
	mov	rdi, rbp
	call	fts_lfree
.label_647:
	xor	ebp, ebp
.label_666:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_656:
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
	jmp	.label_647
.label_648:
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
	jmp	.label_647
	.section	.text
	.align	32
	#Procedure 0x407c7d
	.globl sub_407c7d
	.type sub_407c7d, @function
sub_407c7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c80

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_679
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_679:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c97
	.globl sub_407c97
	.type sub_407c97, @function
sub_407c97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ca0

	.globl openat_restore_fail
	.type openat_restore_fail, @function
openat_restore_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_680
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
	.align	32
	#Procedure 0x407cd2
	.globl sub_407cd2
	.type sub_407cd2, @function
sub_407cd2:

	nop	word ptr cs:[rax + rax]
.label_681:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x407cec
	.globl sub_407cec
	.type sub_407cec, @function
sub_407cec:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cf9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_681
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d00
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
	jne	.label_682
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_683
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_686
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_683
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_683
.label_682:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_683
.label_686:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_688
	call	fts_lfree
.label_688:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_690
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_690:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_685
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_685
	test	byte ptr [rbx + 0x48], 4
	jne	.label_685
	mov	esi, OFFSET FLAT:label_118
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_689
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_691
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_687
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_683
.label_685:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_683:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_689:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_683
.label_691:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_684
.label_687:
	mov	edi, ebp
	call	close
.label_684:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_683
	.section	.text
	.align	32
	#Procedure 0x407e32
	.globl sub_407e32
	.type sub_407e32, @function
sub_407e32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e40

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_692
	cmp	rcx, 0x1021994
	je	.label_692
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_692
	mov	al, 1
.label_692:
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e6b
	.globl sub_407e6b
	.type sub_407e6b, @function
sub_407e6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e70
	.globl context_user_get
	.type context_user_get, @function
context_user_get:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e80

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
	#Procedure 0x407e94
	.globl sub_407e94
	.type sub_407e94, @function
sub_407e94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ea0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_693
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_693
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_693:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x407ec6
	.globl sub_407ec6
	.type sub_407ec6, @function
sub_407ec6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ed0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x407eda
	.globl sub_407eda
	.type sub_407eda, @function
sub_407eda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ee0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_694
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_694:
	xor	eax, eax
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
	#Procedure 0x407f00

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_695
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_696:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_695
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_696
.label_695:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f4c
	.globl sub_407f4c
	.type sub_407f4c, @function
sub_407f4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f50
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f63
	.globl sub_407f63
	.type sub_407f63, @function
sub_407f63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f70
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f79
	.globl sub_407f79
	.type sub_407f79, @function
sub_407f79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f80

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
	jae	.label_697
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_704:
	cmp	qword ptr [r15], 0
	je	.label_701
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_706
	nop	word ptr cs:[rax + rax]
.label_700:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_702
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_703
	.section	.text
	.align	32
	#Procedure 0x407ff6
	.globl sub_407ff6
	.type sub_407ff6, @function
sub_407ff6:

	nop	word ptr cs:[rax + rax]
.label_702:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_703:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_700
.label_706:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_701
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_705
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_698
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_699
.label_705:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_699:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_701:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_704
	mov	al, 1
.label_697:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_698:
	xor	eax, eax
	jmp	.label_697
	.section	.text
	.align	32
	#Procedure 0x408095
	.globl sub_408095
	.type sub_408095, @function
sub_408095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_403
	call	setlocale
	mov	edi, OFFSET FLAT:label_724
	mov	esi, OFFSET FLAT:label_725
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_724
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r14d, 0x10
	mov	r12d, 0xffffffff
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	xor	r15d, r15d
	jmp	.label_708
.label_1033:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	nop	
.label_708:
	mov	edx, OFFSET FLAT:label_709
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x84
	ja	.label_717
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_720]]
.label_1022:
	mov	r14d, 0x11
	jmp	.label_708
.label_1023:
	mov	r14d, 2
	jmp	.label_708
.label_1024:
	mov	r14d, 0x10
	jmp	.label_708
.label_1025:
	mov	byte ptr [byte ptr [rip + recurse]],  1
	jmp	.label_708
.label_1026:
	xor	r12d, r12d
	jmp	.label_708
.label_1027:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_range]],  rax
	mov	r13b, 1
	jmp	.label_708
.label_1028:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_role]],  rax
	mov	r13b, 1
	jmp	.label_708
.label_1029:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_type]],  rax
	mov	r13b, 1
	jmp	.label_708
.label_1030:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_user]],  rax
	mov	r13b, 1
	jmp	.label_708
.label_1031:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_708
.label_1032:
	mov	r12d, 1
	jmp	.label_708
.label_1034:
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_708
.label_1035:
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_708
.label_1021:
	cmp	byte ptr [byte ptr [rip + recurse]],  1
	jne	.label_732
	cmp	r14d, 0x10
	jne	.label_734
	cmp	r12d, 1
	je	.label_738
	mov	byte ptr [byte ptr [rip + affect_symlink_referent]],  0
	jmp	.label_740
.label_732:
	test	r12d, r12d
	setne	byte ptr [byte ptr [rip + affect_symlink_referent]]
.label_740:
	mov	r14d, 0x10
	jmp	.label_730
.label_734:
	test	r12d, r12d
	je	.label_712
	mov	byte ptr [byte ptr [rip + affect_symlink_referent]],  1
.label_730:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, ebp
	sub	ecx, eax
	cmp	r15, 1
	mov	edx, 1
	mov	esi, 1
	adc	esi, 0
	test	r13b, r13b
	cmovne	esi, edx
	cmp	ecx, esi
	jl	.label_718
	test	r15, r15
	je	.label_726
	mov	qword ptr [rsp + 0x10], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r15
	call	getfilecon
	test	eax, eax
	js	.label_729
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [word ptr [rip + specified_context]],  rax
	test	r13b, r13b
	je	.label_722
	test	r15, r15
	je	.label_722
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_711
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
.label_726:
	test	r13b, r13b
	je	.label_721
	mov	qword ptr [word ptr [rip + specified_context]],  0
	jmp	.label_722
.label_721:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rdi, qword ptr [rbx + rax*8]
	mov	qword ptr [word ptr [rip + specified_context]],  rdi
	call	se_const
	mov	rdi, rax
	call	security_check_context
	test	eax, eax
	js	.label_733
.label_722:
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	je	.label_737
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	xor	al, 1
	test	al, 1
	jne	.label_737
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [word ptr [rip + root_dev_ino]],  rax
	test	rax, rax
	jne	.label_710
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_715
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_376
	jmp	.label_739
.label_737:
	mov	qword ptr [word ptr [rip + root_dev_ino]],  0
.label_710:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rbx + rax*8]
	or	r14d, 8
	mov	esi, r14d
	call	process_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_717:
	cmp	eax, 0xffffff7d
	je	.label_741
	cmp	eax, 0xffffff7e
	jne	.label_707
	xor	edi, edi
	call	usage
.label_707:
	mov	edi, 1
	call	usage
.label_741:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_437
	mov	edx, OFFSET FLAT:label_435
	mov	r8d, OFFSET FLAT:label_713
	mov	r9d, OFFSET FLAT:label_714
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_718:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_727
	mov	esi, OFFSET FLAT:label_728
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
.label_729:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
.label_739:
	call	quotearg_style
.label_723:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_727:
	mov	esi, OFFSET FLAT:label_731
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
.label_738:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_735
	jmp	.label_736
.label_712:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_716
.label_736:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_733:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi,  qword ptr [word ptr [rip + specified_context]]
	call	quote
	jmp	.label_723
	.section	.text
	.align	32
	#Procedure 0x4084d7
	.globl sub_4084d7
	.type sub_4084d7, @function
sub_4084d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084e0
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084f3
	.globl sub_4084f3
	.type sub_4084f3, @function
sub_4084f3:

	nop	word ptr cs:[rax + rax]
.label_742:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40850b

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_743
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_742
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_743:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408537
	.globl sub_408537
	.type sub_408537, @function
sub_408537:

	nop	word ptr [rax + rax]
.label_745:
	cmp	edi, 0x7f
	je	.label_744
	xor	eax, eax
	jmp	.label_744
	.section	.text
	.align	32
	#Procedure 0x408549
	.globl sub_408549
	.type sub_408549, @function
sub_408549:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408558
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_745
.label_744:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408560

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
	je	.label_746
	cmp	r15, -2
	jb	.label_746
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_746
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_746:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085b6
	.globl sub_4085b6
	.type sub_4085b6, @function
sub_4085b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085c0

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	push	rax
	mov	edi, dword ptr [rdi]
	test	edi, edi
	js	.label_747
	call	close
	test	eax, eax
	jne	.label_751
.label_747:
	pop	rax
	ret	
.label_751:
	mov	edi, OFFSET FLAT:label_748
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:label_750
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4085eb
	.globl sub_4085eb
	.type sub_4085eb, @function
sub_4085eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_761
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_764
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_752
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_753
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_762
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_758
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_754
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_755
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_760
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_759
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_756
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_757
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_761:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_763
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
	#Procedure 0x4087b6
	.globl sub_4087b6
	.type sub_4087b6, @function
sub_4087b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_767
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_765
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_765
.label_767:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_769
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_765:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_770
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_766
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_385
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_766:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_768
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_769:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_771:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408885
	.globl sub_408885
	.type sub_408885, @function
sub_408885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408890

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
	jae	.label_771
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_772:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4088b6
	.globl sub_4088b6
	.type sub_4088b6, @function
sub_4088b6:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4088b8

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_772
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088d0
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
	mov	edx, OFFSET FLAT:label_773
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_779
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_774]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_775]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_776]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_777
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_778
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
	#Procedure 0x4089bc
	.globl sub_4089bc
	.type sub_4089bc, @function
sub_4089bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4089c0

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rdi
	call	chdir
	mov	ebx, eax
	xor	eax, eax
	test	ebx, ebx
	je	.label_781
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	mov	eax, ebx
	jne	.label_781
	mov	rdi, r13
	call	strlen
	mov	r15, rax
	lea	rdi, [rsp + 8]
	call	cdb_init
	test	r15, r15
	je	.label_782
	cmp	r15, 0xfff
	jbe	.label_785
	add	r15, r13
	mov	esi, 0x2f
	mov	rdi, r13
	call	__strspn_c1
	mov	rbx, rax
	test	rbx, rbx
	je	.label_780
	cmp	rbx, 2
	jne	.label_794
	lea	rdi, [r13 + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_797
	mov	byte ptr [rbx], 0
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_786
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	jmp	.label_780
.label_794:
	lea	rdi, [rsp + 8]
	mov	esi, OFFSET FLAT:label_376
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_786
	add	r13, rbx
.label_780:
	cmp	byte ptr [r13], 0x2f
	je	.label_789
	cmp	r13, r15
	ja	.label_792
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0x1000
	jl	.label_793
	lea	r12, [rsp + 8]
	nop	word ptr [rax + rax]
.label_788:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, r13
	call	memrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_797
	mov	byte ptr [rbx], 0
	mov	rax, rbx
	sub	rax, r13
	cmp	rax, 0x1000
	jge	.label_800
	mov	rdi, r12
	mov	rsi, r13
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_786
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0xfff
	jg	.label_788
.label_793:
	cmp	r13, r15
	jae	.label_791
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_786
.label_791:
	lea	rdi, [rsp + 8]
	call	cdb_fchdir
	test	eax, eax
	je	.label_796
.label_786:
	mov	ebx, dword ptr [r14]
	lea	rdi, [rsp + 8]
	call	cdb_free
	mov	dword ptr [r14], ebx
	jmp	.label_799
.label_797:
	mov	dword ptr [r14], 0x24
.label_799:
	mov	eax, 0xffffffff
.label_781:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_796:
	lea	rdi, [rsp + 8]
	call	cdb_free
	xor	eax, eax
	jmp	.label_781
.label_800:
	mov	edi, OFFSET FLAT:label_783
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_784
	call	__assert_fail
.label_782:
	mov	edi, OFFSET FLAT:label_790
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_784
	call	__assert_fail
.label_785:
	mov	edi, OFFSET FLAT:label_795
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:label_784
	call	__assert_fail
.label_789:
	mov	edi, OFFSET FLAT:label_798
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:label_784
	call	__assert_fail
.label_792:
	mov	edi, OFFSET FLAT:label_787
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:label_784
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x408c08
	.globl sub_408c08
	.type sub_408c08, @function
sub_408c08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_801
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_802
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_804
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_435
	mov	ecx, OFFSET FLAT:label_436
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x408c84
	.globl sub_408c84
	.type sub_408c84, @function
sub_408c84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c90
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
	#Procedure 0x408ca4
	.globl sub_408ca4
	.type sub_408ca4, @function
sub_408ca4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cb0
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
.label_809:
	cmp	qword ptr [rcx], rbx
	jne	.label_805
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_806
.label_805:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_809
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_808:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_807
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_808
	jmp	.label_807
.label_806:
	mov	rcx, qword ptr [rdx]
.label_807:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d16
	.globl sub_408d16
	.type sub_408d16, @function
sub_408d16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d20

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
	je	.label_813
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_812
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_813
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
	je	.label_810
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
	jmp	.label_812
.label_811:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408e00
	.globl sub_408e00
	.type sub_408e00, @function
sub_408e00:

	nop	dword ptr [rax + rax]
.label_810:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_811
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_811
	mov	rdi, qword ptr [rsp]
	call	free
.label_813:
	xor	r14d, r14d
.label_812:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_816:
	test	esi, esi
	js	.label_817
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_817
	mov	edi, esi
.label_815:
	call	close
.label_817:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_814:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408e72
	.globl sub_408e72
	.type sub_408e72, @function
sub_408e72:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e77

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
	jne	.label_818
	cmp	esi, -0x64
	jne	.label_814
.label_818:
	test	dl, dl
	je	.label_816
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_817
	mov	edi, eax
	jmp	.label_815
	.section	.text
	.align	32
	#Procedure 0x408ea0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_825
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_827
	nop	word ptr cs:[rax + rax]
.label_822:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_819
	mov	rbx, qword ptr [rdi + 8]
.label_819:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_822
	jmp	.label_823
.label_827:
	mov	rbx, rdi
.label_823:
	mov	rdi, rbx
	call	free
.label_825:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_826
	call	fts_lfree
.label_826:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_830
	xor	ebx, ebx
	test	al, 4
	jne	.label_821
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_824
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_824:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_828
	jmp	.label_821
.label_830:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_821
	call	close
.label_828:
	test	eax, eax
	je	.label_821
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_821:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_820
	call	hash_free
.label_820:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_829
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_829:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f98
	.globl sub_408f98
	.type sub_408f98, @function
sub_408f98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fa0

	.globl process_files
	.type process_files, @function
process_files:
	push	rbp
	push	r14
	push	rbx
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	test	rax, rax
	je	.label_835
	mov	bl, 1
	nop	
.label_834:
	mov	rdi, r14
	mov	rsi, rax
	call	process_file
	and	bl, al
	mov	rdi, r14
	call	rpl_fts_read
	test	rax, rax
	jne	.label_834
.label_835:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_836
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_831
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_836:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_832
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_833
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_832:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409047
	.globl sub_409047
	.type sub_409047, @function
sub_409047:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409050
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_837
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_838:
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
	jne	.label_838
.label_837:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409083
	.globl sub_409083
	.type sub_409083, @function
sub_409083:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409090

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_840
	cmp	byte ptr [rax], 0x43
	jne	.label_842
	cmp	byte ptr [rax + 1], 0
	je	.label_839
.label_842:
	mov	esi, OFFSET FLAT:label_841
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_840
.label_839:
	xor	ebx, ebx
.label_840:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090c1
	.globl sub_4090c1
	.type sub_4090c1, @function
sub_4090c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090d0
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
	jae	.label_843
	xor	ebx, ebx
.label_846:
	cmp	qword ptr [r13], 0
	je	.label_845
	test	r13, r13
	je	.label_845
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_844:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_843
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_844
.label_845:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_846
.label_843:
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
	#Procedure 0x409147
	.globl sub_409147
	.type sub_409147, @function
sub_409147:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409150
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409163
	.globl sub_409163
	.type sub_409163, @function
sub_409163:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409170
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
	#Procedure 0x40917f
	.globl sub_40917f
	.type sub_40917f, @function
sub_40917f:

	nop	
.label_850:
	mov	qword ptr [rbx], 0
	jmp	.label_847
	.section	.text
	.align	32
	#Procedure 0x409189

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
	je	.label_847
	cmp	rsi, r13
	je	.label_851
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_849
.label_851:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_847
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_850
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_852
.label_848:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_847
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_852:
	mov	rdi, r14
	call	free_entry
.label_847:
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
	#Procedure 0x409210
	.globl sub_409210
	.type sub_409210, @function
sub_409210:

	nop	word ptr [rax + rax]
.label_849:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_847
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_853:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_848
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_848
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_853
	jmp	.label_847
	.section	.text
	.align	32
	#Procedure 0x409250
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_854
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_857:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_857
.label_854:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_858
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_855]], OFFSET FLAT:slot0
.label_858:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_856
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_856:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092e1
	.globl sub_4092e1
	.type sub_4092e1, @function
sub_4092e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092f0
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
	#Procedure 0x4092ff
	.globl sub_4092ff
	.type sub_4092ff, @function
sub_4092ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409300
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
	#Procedure 0x409314
	.globl sub_409314
	.type sub_409314, @function
sub_409314:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409320
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40932a
	.globl sub_40932a
	.type sub_40932a, @function
sub_40932a:

	nop	word ptr [rax + rax]
.label_860:
	mov	edi, eax
	call	close
.label_859:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_861
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_860
	jmp	.label_859
	.section	.text
	.align	32
	#Procedure 0x409351

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_859
	.section	.text
	.align	32
	#Procedure 0x409357
	.globl sub_409357
	.type sub_409357, @function
sub_409357:

	nop	word ptr cs:[rax + rax]
.label_861:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409363
	.globl sub_409363
	.type sub_409363, @function
sub_409363:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409370

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x409380
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409390

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_865
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_864
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_862
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_864
	mov	esi, OFFSET FLAT:label_867
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_863
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_863:
	mov	rbx, r14
.label_864:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_865:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_866
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409431
	.globl sub_409431
	.type sub_409431, @function
sub_409431:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409440

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_868
	test	ah, 2
	jne	.label_870
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_869
.label_870:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_868:
	xor	eax, eax
.label_869:
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
	#Procedure 0x40948d
	.globl sub_40948d
	.type sub_40948d, @function
sub_40948d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409490
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x40949a
	.globl sub_40949a
	.type sub_40949a, @function
sub_40949a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094a0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094aa
	.globl sub_4094aa
	.type sub_4094aa, @function
sub_4094aa:

	nop	word ptr [rax + rax]
.label_872:
	mov	r15, qword ptr [rbx]
.label_871:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094c2

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
	je	.label_871
	test	rbx, rbx
	je	.label_871
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_873:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_872
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_872
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_873
	jmp	.label_871
	.section	.text
	.align	32
	#Procedure 0x409510
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x409519
	.globl sub_409519
	.type sub_409519, @function
sub_409519:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409520
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x409527
	.globl sub_409527
	.type sub_409527, @function
sub_409527:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409530

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
	je	.label_874
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
.label_874:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095ba
	.globl sub_4095ba
	.type sub_4095ba, @function
sub_4095ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095c0

	.globl context_str
	.type context_str, @function
context_str:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095d0

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
	je	.label_875
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_876:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_876
	inc	r14
.label_875:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x409616
	.globl sub_409616
	.type sub_409616, @function
sub_409616:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409620

	.globl freecon
	.type freecon, @function
freecon:
	ret	
	.section	.text
	.align	32
	#Procedure 0x409621
	.globl sub_409621
	.type sub_409621, @function
sub_409621:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409630

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:label_118
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_877
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_877:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409673
	.globl sub_409673
	.type sub_409673, @function
sub_409673:

	nop	word ptr cs:[rax + rax]
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
	.section	.text
	.align	32
	#Procedure 0x409729
	.globl sub_409729
	.type sub_409729, @function
sub_409729:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409730

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x409740

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x40974f
	.globl sub_40974f
	.type sub_40974f, @function
sub_40974f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409750

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x409760

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
