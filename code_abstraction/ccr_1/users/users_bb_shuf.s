	.section	.text
	.align	32
	#Procedure 0x401509
	.globl sub_401509
	.type sub_401509, @function
sub_401509:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40150a
	.globl sub_40150a
	.type sub_40150a, @function
sub_40150a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401542
	.globl sub_401542
	.type sub_401542, @function
sub_401542:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40158a
	.globl sub_40158a
	.type sub_40158a, @function
sub_40158a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015ac
	.globl sub_4015ac
	.type sub_4015ac, @function
sub_4015ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015bd
	.globl sub_4015bd
	.type sub_4015bd, @function
sub_4015bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015d6
	.globl sub_4015d6
	.type sub_4015d6, @function
sub_4015d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015e0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015ea
	.globl sub_4015ea
	.type sub_4015ea, @function
sub_4015ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_9
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_11:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_11
.label_9:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_12
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_13]], OFFSET FLAT:slot0
.label_12:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_10
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_10:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401681
	.globl sub_401681
	.type sub_401681, @function
sub_401681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401690

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_14
	test	rsi, rsi
	mov	ecx, 1
	je	.label_15
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_15
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_14:
	mov	ecx, 1
.label_15:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4016db
	.globl sub_4016db
	.type sub_4016db, @function
sub_4016db:

	nop	dword ptr [rax + rax]
.label_19:
	test	rcx, rcx
	jne	.label_16
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_16:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_17
.label_18:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_17:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401727
	.globl sub_401727
	.type sub_401727, @function
sub_401727:

	nop	dword ptr [rax]
.label_20:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401733

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_19
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_20
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_18
	.section	.text
	.align	32
	#Procedure 0x401760
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40176a
	.globl sub_40176a
	.type sub_40176a, @function
sub_40176a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401770

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
	je	.label_21
	mov	qword ptr [rax], rbx
.label_21:
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
	#Procedure 0x40185c
	.globl sub_40185c
	.type sub_40185c, @function
sub_40185c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401860

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x401865
	.globl sub_401865
	.type sub_401865, @function
sub_401865:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401870

	.globl users
	.type users, @function
users:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	eax, esi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_23
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	list_entries_users
	mov	rdi, qword ptr [rsp + 8]
	call	free
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_23:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018e0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_24
.label_25:
	ret	
.label_24:
	cmp	edi, 0x7f
	je	.label_25
	xor	eax, eax
	jmp	.label_25
	.section	.text
	.align	32
	#Procedure 0x4018f1
	.globl sub_4018f1
	.type sub_4018f1, @function
sub_4018f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401900

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_26
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_28
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_28
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_31
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_31:
	mov	rbx, r14
.label_28:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_26:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_27
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4019a1
	.globl sub_4019a1
	.type sub_4019a1, @function
sub_4019a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019b0
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
	#Procedure 0x4019bf
	.globl sub_4019bf
	.type sub_4019bf, @function
sub_4019bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4019c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_32
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_32:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019e6
	.globl sub_4019e6
	.type sub_4019e6, @function
sub_4019e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_33
	test	rbx, rbx
	jne	.label_33
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_33:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_35
	test	rax, rax
	je	.label_34
.label_35:
	pop	rbx
	ret	
.label_34:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a20
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
	#Procedure 0x401a33
	.globl sub_401a33
	.type sub_401a33, @function
sub_401a33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a40
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
	#Procedure 0x401a4d
	.globl sub_401a4d
	.type sub_401a4d, @function
sub_401a4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a50

	.globl list_entries_users
	.type list_entries_users, @function
list_entries_users:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rsi
	mov	r12, rdi
	mov	esi, 8
	call	xnmalloc
	mov	r14, rax
	test	r12, r12
	je	.label_40
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_37:
	dec	r12
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_36
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_36
	mov	rdi, rbx
	call	extract_trimmed_name
	mov	qword ptr [r14 + r15*8], rax
	inc	r15
.label_36:
	add	rbx, 0x180
	test	r12, r12
	jne	.label_37
	mov	edx, 8
	mov	ecx, OFFSET FLAT:userid_compare
	mov	rdi, r14
	mov	rsi, r15
	call	qsort
	test	r15, r15
	je	.label_39
	lea	r12, [r15 - 1]
	xor	ebx, ebx
	mov	ebp, 0x20
	nop	word ptr cs:[rax + rax]
.label_41:
	mov	rdi, qword ptr [r14 + rbx*8]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	cmp	rbx, r12
	mov	edi, 0xa
	cmovb	edi, ebp
	call	putchar_unlocked
	inc	rbx
	cmp	r15, rbx
	jne	.label_41
	test	r15, r15
	je	.label_39
	mov	rbx, r14
.label_38:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 8
	dec	r15
	jne	.label_38
	jmp	.label_39
.label_40:
	xor	esi, esi
	mov	edx, 8
	mov	ecx, OFFSET FLAT:userid_compare
	mov	rdi, r14
	call	qsort
.label_39:
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x401b47
	.globl sub_401b47
	.type sub_401b47, @function
sub_401b47:

	nop	word ptr [rax + rax]
.label_42:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b53
	.globl sub_401b53
	.type sub_401b53, @function
sub_401b53:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401b55
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_42
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b70

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_44
	cmp	byte ptr [rax], 0x43
	jne	.label_46
	cmp	byte ptr [rax + 1], 0
	je	.label_43
.label_46:
	mov	esi, OFFSET FLAT:label_45
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_44
.label_43:
	xor	ebx, ebx
.label_44:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ba1
	.globl sub_401ba1
	.type sub_401ba1, @function
sub_401ba1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bb0

	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_47
	add	rax, rbx
	nop	dword ptr [rax]
.label_48:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_47
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_48
.label_47:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c0d
	.globl sub_401c0d
	.type sub_401c0d, @function
sub_401c0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c1a
	.globl sub_401c1a
	.type sub_401c1a, @function
sub_401c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c20
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_49
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_49:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c38
	.globl sub_401c38
	.type sub_401c38, @function
sub_401c38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c40
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
	#Procedure 0x401c59
	.globl sub_401c59
	.type sub_401c59, @function
sub_401c59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c60

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401c6a
	.globl sub_401c6a
	.type sub_401c6a, @function
sub_401c6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c70
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x401c7d
	.globl sub_401c7d
	.type sub_401c7d, @function
sub_401c7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c80
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_50:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c95
	.globl sub_401c95
	.type sub_401c95, @function
sub_401c95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca3

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
	je	.label_50
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
	#Procedure 0x401cf0

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
	je	.label_51
	cmp	r15, -2
	jb	.label_51
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_51
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_51:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d46
	.globl sub_401d46
	.type sub_401d46, @function
sub_401d46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d50
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
	#Procedure 0x401d5f
	.globl sub_401d5f
	.type sub_401d5f, @function
sub_401d5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401d60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x401d6a
	.globl sub_401d6a
	.type sub_401d6a, @function
sub_401d6a:

	nop	word ptr [rax + rax]
.label_54:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_54
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_22
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401de9

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_55
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_56
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_56
.label_55:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_57
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_57:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401e30

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_67
	nop	
.label_66:
	mov	edi, OFFSET FLAT:label_58
	call	strcmp
	test	eax, eax
	je	.label_64
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_66
.label_64:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_58
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_62
	mov	ecx, OFFSET FLAT:label_63
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_59
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_58
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:label_58
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_70
	mov	ecx, OFFSET FLAT:label_71
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
	#Procedure 0x401f4a
	.globl sub_401f4a
	.type sub_401f4a, @function
sub_401f4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

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
	je	.label_74
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_72
	jmp	.label_73
.label_74:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_73
.label_72:
	mov	eax, 1
	test	bpl, bpl
	je	.label_73
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
.label_73:
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
	#Procedure 0x401fd8
	.globl sub_401fd8
	.type sub_401fd8, @function
sub_401fd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0

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
	je	.label_75
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_77
	jmp	.label_76
.label_75:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_76
.label_77:
	mov	eax, 1
	test	bpl, bpl
	je	.label_76
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
.label_76:
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
	#Procedure 0x402059
	.globl sub_402059
	.type sub_402059, @function
sub_402059:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402060

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
	je	.label_80
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_79
	jmp	.label_78
.label_80:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_78
.label_79:
	mov	eax, 1
	test	bpl, bpl
	je	.label_78
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
.label_78:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020c3
	.globl sub_4020c3
	.type sub_4020c3, @function
sub_4020c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0

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
	je	.label_83
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_81
	jmp	.label_82
.label_83:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_82
.label_81:
	mov	eax, 1
	test	bpl, bpl
	je	.label_82
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_82:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40212f
	.globl sub_40212f
	.type sub_40212f, @function
sub_40212f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402130

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
	je	.label_84
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_86
	jmp	.label_85
.label_84:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_85
.label_86:
	mov	eax, 1
	test	bpl, bpl
	je	.label_85
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_85:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402179
	.globl sub_402179
	.type sub_402179, @function
sub_402179:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402180

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
	je	.label_89
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_88
	jmp	.label_87
.label_89:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_87
.label_88:
	mov	eax, 1
	test	bpl, bpl
	je	.label_87
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_87:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021c5
	.globl sub_4021c5
	.type sub_4021c5, @function
sub_4021c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_91
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_92
	jmp	.label_90
.label_91:
	mov	eax, 1
	test	cl, cl
	je	.label_90
.label_92:
	xor	eax, eax
.label_90:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021ff
	.globl sub_4021ff
	.type sub_4021ff, @function
sub_4021ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402200

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_71
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_93
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402225
	.globl sub_402225
	.type sub_402225, @function
sub_402225:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402230

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
	#Procedure 0x402269
	.globl sub_402269
	.type sub_402269, @function
sub_402269:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402270
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
	#Procedure 0x402281
	.globl sub_402281
	.type sub_402281, @function
sub_402281:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402290
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
	#Procedure 0x4022a4
	.globl sub_4022a4
	.type sub_4022a4, @function
sub_4022a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4022be
	.globl sub_4022be
	.type sub_4022be, @function
sub_4022be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4022c0

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
	js	.label_94
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_97
	cmp	r12d, 0x7fffffff
	je	.label_99
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
	jne	.label_95
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_95:
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
.label_97:
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
	jbe	.label_100
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_96
.label_100:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_98
	mov	rdi, r14
	call	free
.label_98:
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
.label_96:
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
.label_94:
	call	abort
.label_99:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40247d
	.globl sub_40247d
	.type sub_40247d, @function
sub_40247d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402480

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
	#Procedure 0x4024c9
	.globl sub_4024c9
	.type sub_4024c9, @function
sub_4024c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4024d0
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_101
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_101:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_102
	mov	edx, OFFSET FLAT:label_103
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_104
	cmp	eax, 0x76
	jne	.label_102
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_104:
	xor	edi, edi
	call	rbx
.label_102:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025c1
	.globl sub_4025c1
	.type sub_4025c1, @function
sub_4025c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025d0
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
	#Procedure 0x4025e6
	.globl sub_4025e6
	.type sub_4025e6, @function
sub_4025e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025f0
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
	#Procedure 0x402617
	.globl sub_402617
	.type sub_402617, @function
sub_402617:

	nop	word ptr [rax + rax]
.label_107:
	test	sil, 1
	je	.label_105
	xor	al, 1
	jne	.label_105
	mov	edi, dword ptr [rdi + 4]
	test	edi, edi
	jle	.label_105
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_105
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_105
	xor	eax, eax
	jmp	.label_106
.label_105:
	mov	al, 1
.label_106:
	pop	rcx
	ret	
.label_109:
	xor	eax, eax
.label_108:
	push	rax
	test	sil, 2
	je	.label_107
	test	al, al
	jne	.label_107
	xor	eax, eax
	jmp	.label_106
	.section	.text
	.align	32
	#Procedure 0x40265f

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_109
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_108
	.section	.text
	.align	32
	#Procedure 0x402670
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_110
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_110:
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
	#Procedure 0x4026f3
	.globl sub_4026f3
	.type sub_4026f3, @function
sub_4026f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402700
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
	#Procedure 0x402733
	.globl sub_402733
	.type sub_402733, @function
sub_402733:

	nop	word ptr cs:[rax + rax]
.label_113:
	xor	eax, eax
	jmp	.label_111
	.section	.text
	.align	32
	#Procedure 0x402744
	.globl sub_402744
	.type sub_402744, @function
sub_402744:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40274e
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_113
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_112]]
.label_111:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402760

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
	je	.label_126
	mov	edx, OFFSET FLAT:label_117
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_123
.label_126:
	mov	edx, OFFSET FLAT:label_124
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
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
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_129
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_130]]
.label_330:
	add	rsp, 8
	jmp	.label_116
.label_129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
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
	jmp	.label_116
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
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
.label_332:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
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
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
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
.label_334:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
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
	jmp	.label_116
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
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
	jmp	.label_116
.label_336:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
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
	jmp	.label_116
.label_337:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
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
	jmp	.label_116
.label_339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
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
	jmp	.label_116
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
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
.label_116:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ab8
	.globl sub_402ab8
	.type sub_402ab8, @function
sub_402ab8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ac0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ac8
	.globl sub_402ac8
	.type sub_402ac8, @function
sub_402ac8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ad0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_134:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_133
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_135
	.section	.text
	.align	32
	#Procedure 0x402af9
	.globl sub_402af9
	.type sub_402af9, @function
sub_402af9:

	nop	dword ptr [rax]
.label_133:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_135:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_136
	inc	r9
	cmp	r9, 0xa
	jb	.label_134
.label_136:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b2f
	.globl sub_402b2f
	.type sub_402b2f, @function
sub_402b2f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402b30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_137:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_137
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402b51
	.globl sub_402b51
	.type sub_402b51, @function
sub_402b51:

	nop	word ptr cs:[rax + rax]
.label_139:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_138
	test	cl, cl
	jne	.label_138
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_138:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b8b
	.globl sub_402b8b
	.type sub_402b8b, @function
sub_402b8b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b95

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
	je	.label_139
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_138
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_138
	.section	.text
	.align	32
	#Procedure 0x402bd0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_140
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_140:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402bf3
	.globl sub_402bf3
	.type sub_402bf3, @function
sub_402bf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c00

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_141
	test	rax, rax
	je	.label_142
.label_141:
	pop	rbx
	ret	
.label_142:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402c1a
	.globl sub_402c1a
	.type sub_402c1a, @function
sub_402c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c20

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_143
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_143:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_71
	mov	edx, OFFSET FLAT:label_103
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_147
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_144
	cmp	eax, 0x76
	je	.label_145
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_146
.label_145:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402d04
	.globl sub_402d04
	.type sub_402d04, @function
sub_402d04:

	nop	dword ptr [rax]
.label_144:
	xor	edi, edi
.label_146:
	call	rcx
.label_147:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d20

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
	#Procedure 0x402d37
	.globl sub_402d37
	.type sub_402d37, @function
sub_402d37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d40

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_149
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_148
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_149
.label_148:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_149
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_150
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_150:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_149:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402db7
	.globl sub_402db7
	.type sub_402db7, @function
sub_402db7:

	nop	word ptr [rax + rax]
.label_153:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	edi, ebx
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402df8
	.globl sub_402df8
	.type sub_402df8, @function
sub_402df8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e02

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_153
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_157
	mov	ecx, OFFSET FLAT:label_158
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402eb0

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
	jne	.label_163
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
	je	.label_159
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_164
	mov	eax, OFFSET FLAT:label_165
	jmp	.label_162
.label_159:
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
	je	.label_168
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_160
	mov	eax, OFFSET FLAT:label_161
	jmp	.label_162
.label_168:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_166
	mov	eax, OFFSET FLAT:label_167
.label_162:
	cmove	rax, rcx
.label_163:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f6d
	.globl sub_402f6d
	.type sub_402f6d, @function
sub_402f6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f70

	.globl userid_compare
	.type userid_compare, @function
userid_compare:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	.section	.text
	.align	32
	#Procedure 0x402f7b
	.globl sub_402f7b
	.type sub_402f7b, @function
sub_402f7b:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

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
	#Procedure 0x402fb6
	.globl sub_402fb6
	.type sub_402fb6, @function
sub_402fb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_71
	call	setlocale
	mov	edi, OFFSET FLAT:label_173
	mov	esi, OFFSET FLAT:label_176
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_173
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	edx, OFFSET FLAT:label_58
	mov	ecx, OFFSET FLAT:label_62
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_169
	push	OFFSET FLAT:label_170
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebp, eax
	cmp	ebp, 1
	je	.label_175
	test	ebp, ebp
	jne	.label_172
	mov	edi, OFFSET FLAT:label_157
	mov	esi, 1
	jmp	.label_171
.label_175:
	mov	rdi, qword ptr [rbx + rax*8]
	xor	esi, esi
.label_171:
	call	users
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4030af
	.globl sub_4030af
	.type sub_4030af, @function
sub_4030af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4030b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_177
	call	rpl_calloc
	test	rax, rax
	je	.label_177
	pop	rcx
	ret	
.label_177:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4030d6
	.globl sub_4030d6
	.type sub_4030d6, @function
sub_4030d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_178
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_178
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_178:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403106
	.globl sub_403106
	.type sub_403106, @function
sub_403106:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403110
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40311a
	.globl sub_40311a
	.type sub_40311a, @function
sub_40311a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403120
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40312a
	.globl sub_40312a
	.type sub_40312a, @function
sub_40312a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403130

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
.label_283:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_248
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_286]]
.label_365:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_179
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_167
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_366:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_193
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_193
	xor	r14d, r14d
.label_207:
	cmp	r14, r11
	jae	.label_202
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_202:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_207
.label_193:
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
	jmp	.label_213
.label_358:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_213
.label_361:
	mov	al, 1
.label_359:
	mov	r12b, 1
.label_362:
	test	r12b, 1
	mov	cl, 1
	je	.label_229
	mov	ecx, eax
.label_229:
	mov	al, cl
.label_360:
	test	r12b, 1
	jne	.label_232
	test	r11, r11
	je	.label_234
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_234:
	mov	r14d, 1
	jmp	.label_240
.label_232:
	xor	r14d, r14d
.label_240:
	mov	ecx, OFFSET FLAT:label_167
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_213
.label_363:
	test	r12b, 1
	jne	.label_250
	test	r11, r11
	je	.label_251
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_251:
	mov	r14d, 1
	jmp	.label_246
.label_364:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_166
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_213
.label_250:
	xor	r14d, r14d
.label_246:
	mov	eax, OFFSET FLAT:label_166
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_213:
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
	jmp	.label_219
	.section	.text
	.align	32
	#Procedure 0x40340c
	.globl sub_40340c
	.type sub_40340c, @function
sub_40340c:

	nop	dword ptr [rax]
.label_204:
	inc	rsi
.label_219:
	cmp	rbp, -1
	je	.label_183
	cmp	rsi, rbp
	jne	.label_185
	jmp	.label_186
	.section	.text
	.align	32
	#Procedure 0x403423
	.globl sub_403423
	.type sub_403423, @function
sub_403423:

	nop	word ptr cs:[rax + rax]
.label_183:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_186
.label_185:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_196
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_198
	cmp	rbp, -1
	jne	.label_198
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
.label_198:
	cmp	rbx, rbp
	jbe	.label_211
.label_196:
	xor	r8d, r8d
.label_224:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_214
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_218]]
.label_379:
	test	rsi, rsi
	jne	.label_209
	jmp	.label_223
	.section	.text
	.align	32
	#Procedure 0x4034be
	.globl sub_4034be
	.type sub_4034be, @function
sub_4034be:

	nop	
.label_211:
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
	jne	.label_238
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_224
	jmp	.label_245
.label_238:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_224
.label_383:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_257
	test	rsi, rsi
	jne	.label_260
	cmp	rbp, 1
	je	.label_223
	xor	r13d, r13d
	jmp	.label_187
.label_372:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_266
	cmp	byte ptr [rsp + 7], 0
	jne	.label_205
	cmp	r12d, 2
	jne	.label_268
	mov	eax, r9d
	and	al, 1
	jne	.label_268
	cmp	r14, r11
	jae	.label_255
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_255:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_271
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_271:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_275
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_275:
	add	r14, 3
	mov	r9b, 1
.label_268:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_282
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_282:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_284
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_284
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_284
	cmp	r14, r11
	jae	.label_180
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_180:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_291
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_291:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_187
.label_373:
	mov	bl, 0x62
	jmp	.label_191
.label_374:
	mov	cl, 0x74
	jmp	.label_195
.label_375:
	mov	bl, 0x76
	jmp	.label_191
.label_376:
	mov	bl, 0x66
	jmp	.label_191
.label_377:
	mov	cl, 0x72
	jmp	.label_195
.label_380:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_200
	cmp	byte ptr [rsp + 7], 0
	jne	.label_205
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
	jae	.label_208
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_208:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_221
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_221:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_225
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	add	r14, 3
	xor	r9d, r9d
.label_200:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_187
.label_381:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_235
	cmp	r12d, 2
	jne	.label_209
	cmp	byte ptr [rsp + 7], 0
	je	.label_209
	jmp	.label_205
.label_382:
	cmp	r12d, 2
	jne	.label_247
	cmp	byte ptr [rsp + 7], 0
	jne	.label_205
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_192
.label_214:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_253
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
.label_199:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_276
	test	r8b, r8b
	je	.label_276
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_187
.label_257:
	test	rsi, rsi
	jne	.label_212
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_212
.label_223:
	mov	dl, 1
.label_378:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_205
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_187:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_287
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_289
	jmp	.label_181
	.section	.text
	.align	32
	#Procedure 0x403804
	.globl sub_403804
	.type sub_403804, @function
sub_403804:

	nop	word ptr cs:[rax + rax]
.label_287:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_181
.label_289:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_184
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_192
	jmp	.label_190
	.section	.text
	.align	32
	#Procedure 0x40384d
	.globl sub_40384d
	.type sub_40384d, @function
sub_40384d:

	nop	dword ptr [rax]
.label_181:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_190
	jmp	.label_192
.label_184:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_190
.label_266:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_204
	xor	r15d, r15d
	jmp	.label_209
.label_247:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_195
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_192
.label_195:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_205
.label_191:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_187
	nop	word ptr cs:[rax + rax]
.label_190:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_205
	cmp	r12d, 2
	jne	.label_230
	mov	eax, r9d
	and	al, 1
	jne	.label_230
	cmp	r14, r11
	jae	.label_233
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_233:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_267
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_267:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_243
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_243:
	add	r14, 3
	mov	r9b, 1
.label_230:
	cmp	r14, r11
	jae	.label_249
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_249:
	inc	r14
	jmp	.label_228
.label_253:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_254
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_254:
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
	je	.label_270
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_273
	cmp	rbp, -2
	je	.label_277
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_280
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_188:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_288
	bt	rsi, rdx
	jb	.label_245
.label_288:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_188
.label_280:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_237
	xor	r13d, r13d
.label_237:
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
	jmp	.label_199
.label_284:
	xor	r13d, r13d
	jmp	.label_187
.label_212:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_187
.label_235:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_209
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_209
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_209
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_265
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_210
	cmp	byte ptr [rsp + 7], 0
	jne	.label_205
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_226
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_226:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_222
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_239
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_239:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_242
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_242:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_187
.label_209:
	xor	eax, eax
.label_260:
	xor	r13d, r13d
	jmp	.label_187
.label_276:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_252
	.section	.text
	.align	32
	#Procedure 0x403b33
	.globl sub_403b33
	.type sub_403b33, @function
sub_403b33:

	nop	word ptr cs:[rax + rax]
.label_206:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_252:
	test	r8b, r8b
	je	.label_261
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_262
	cmp	r14, r11
	jae	.label_263
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_263:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_262
	.section	.text
	.align	32
	#Procedure 0x403b7c
	.globl sub_403b7c
	.type sub_403b7c, @function
sub_403b7c:

	nop	dword ptr [rax]
.label_261:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_245
	cmp	r12d, 2
	jne	.label_269
	mov	eax, r9d
	and	al, 1
	jne	.label_269
	cmp	r14, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_272:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_274
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_274:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_201
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_201:
	add	r14, 3
	mov	r9b, 1
.label_269:
	cmp	r14, r11
	jae	.label_241
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_241:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_258
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_258:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_290
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_290:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_262:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_192
	test	r9b, 1
	je	.label_194
	mov	ebx, eax
	and	bl, 1
	jne	.label_194
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_197
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_197:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_259
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_259:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_194:
	cmp	r14, r11
	jae	.label_206
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_206
	.section	.text
	.align	32
	#Procedure 0x403c83
	.globl sub_403c83
	.type sub_403c83, @function
sub_403c83:

	nop	word ptr cs:[rax + rax]
.label_192:
	test	r9b, 1
	je	.label_215
	and	al, 1
	jne	.label_215
	cmp	r14, r11
	jae	.label_217
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_217:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_281
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_281:
	add	r14, 2
	xor	r9d, r9d
.label_215:
	mov	ebx, r15d
.label_228:
	cmp	r14, r11
	jae	.label_227
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_227:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_204
.label_273:
	xor	r13d, r13d
.label_270:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_199
.label_277:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_244
	mov	rsi, qword ptr [rsp + 0x50]
.label_220:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_278
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_220
	xor	r13d, r13d
	jmp	.label_199
.label_244:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_199
.label_278:
	xor	r13d, r13d
	jmp	.label_199
.label_265:
	xor	r13d, r13d
	jmp	.label_187
.label_210:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_187
	.section	.text
	.align	32
	#Procedure 0x403d58
	.globl sub_403d58
	.type sub_403d58, @function
sub_403d58:

	nop	dword ptr [rax + rax]
.label_186:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_264
	or	dl, al
	je	.label_245
.label_264:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_182
	or	dl, al
	jne	.label_182
	test	r10b, 1
	jne	.label_279
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_182
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_283
.label_182:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_285
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_189
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_189
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_216:
	cmp	r14, r11
	jae	.label_203
	mov	byte ptr [rcx + r14], al
.label_203:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_216
	jmp	.label_189
.label_205:
	mov	qword ptr [rsp + 0x20], rbp
.label_245:
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
.label_231:
	mov	r14, rax
.label_236:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_279:
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
	jmp	.label_231
.label_285:
	mov	rcx, qword ptr [rsp + 8]
.label_189:
	cmp	r14, r11
	jae	.label_236
	mov	byte ptr [rcx + r14], 0
	jmp	.label_236
.label_248:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403eec
	.globl sub_403eec
	.type sub_403eec, @function
sub_403eec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ef0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_292
	test	rdx, rdx
	je	.label_292
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_292:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403f1b
	.globl sub_403f1b
	.type sub_403f1b, @function
sub_403f1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f20

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
	mov	rcx,  qword ptr [word ptr [rip + label_293]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_294]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
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
	#Procedure 0x403f8d
	.globl sub_403f8d
	.type sub_403f8d, @function
sub_403f8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f90

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x403f9d
	.globl sub_403f9d
	.type sub_403f9d, @function
sub_403f9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fa0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x403fa7
	.globl sub_403fa7
	.type sub_403fa7, @function
sub_403fa7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

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
	je	.label_296
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_298
	jmp	.label_297
.label_296:
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
	.align	32
	#Procedure 0x40402d
	.globl sub_40402d
	.type sub_40402d, @function
sub_40402d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404030
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40403a
	.globl sub_40403a
	.type sub_40403a, @function
sub_40403a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404040
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
	#Procedure 0x40404f
	.globl sub_40404f
	.type sub_40404f, @function
sub_40404f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404050

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x404059
	.globl sub_404059
	.type sub_404059, @function
sub_404059:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404060

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
	mov	rax,  qword ptr [word ptr [rip + label_293]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_294]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_295]]
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
	#Procedure 0x4040c8
	.globl sub_4040c8
	.type sub_4040c8, @function
sub_4040c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040d0
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
	#Procedure 0x404142
	.globl sub_404142
	.type sub_404142, @function
sub_404142:

	nop	word ptr cs:[rax + rax]
.label_299:
	lea	rdi, [r12 + r12*2]
	inc	r12
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	dword ptr [rax + rax]
.label_300:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	je	.label_301
	mov	rdi, rbx
	mov	esi, ebp
	call	desirable_utmp_entry
	test	al, al
	je	.label_300
	cmp	r12, qword ptr [rsp]
	jne	.label_299
	mov	edx, 0x180
	mov	rdi, r13
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r13, rax
	jmp	.label_299
	.section	.text
	.align	32
	#Procedure 0x4041aa

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, ecx
	mov	r14, rdx
	mov	r15, rsi
	mov	qword ptr [rsp], 0
	call	utmpxname
	call	setutxent
	xor	r13d, r13d
	xor	r12d, r12d
	jmp	.label_300
.label_301:
	call	endutxent
	mov	qword ptr [r15], r12
	mov	qword ptr [r14], r13
	xor	eax, eax
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
	#Procedure 0x4041f3
	.globl sub_4041f3
	.type sub_4041f3, @function
sub_4041f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404200

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40420a
	.globl sub_40420a
	.type sub_40420a, @function
sub_40420a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404210
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
	#Procedure 0x404220

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x404229
	.globl sub_404229
	.type sub_404229, @function
sub_404229:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40423a
	.globl sub_40423a
	.type sub_40423a, @function
sub_40423a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404240

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_22
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_303:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404273
	.globl sub_404273
	.type sub_404273, @function
sub_404273:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404275
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_303
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x404290
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_305
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_62
	mov	ecx, OFFSET FLAT:label_63
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404304
	.globl sub_404304
	.type sub_404304, @function
sub_404304:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404310
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
	#Procedure 0x40431d
	.globl sub_40431d
	.type sub_40431d, @function
sub_40431d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404320
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_308
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_308
.label_309:
	ret	
.label_308:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_309
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404346
	.globl sub_404346
	.type sub_404346, @function
sub_404346:

	nop	word ptr cs:[rax + rax]
.label_311:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_310
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_310:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404384
	.globl sub_404384
	.type sub_404384, @function
sub_404384:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404386

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
	jne	.label_312
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_312
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_311
.label_312:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x4043c0

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
	#Procedure 0x4043ed
	.globl sub_4043ed
	.type sub_4043ed, @function
sub_4043ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043f0
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
	#Procedure 0x404403
	.globl sub_404403
	.type sub_404403, @function
sub_404403:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404418
	.globl sub_404418
	.type sub_404418, @function
sub_404418:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40442a
	.globl sub_40442a
	.type sub_40442a, @function
sub_40442a:

	nop	word ptr [rax + rax]
.label_313:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x40443c
	.globl sub_40443c
	.type sub_40443c, @function
sub_40443c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404449

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_313
	ret	
	.section	.text
	.align	32
	#Procedure 0x404450
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x40445a
	.globl sub_40445a
	.type sub_40445a, @function
sub_40445a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404460

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
	#Procedure 0x404497
	.globl sub_404497
	.type sub_404497, @function
sub_404497:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404505
	.globl sub_404505
	.type sub_404505, @function
sub_404505:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404512
	.globl sub_404512
	.type sub_404512, @function
sub_404512:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404536
	.globl sub_404536
	.type sub_404536, @function
sub_404536:

	nop	word ptr cs:[rax + rax]
