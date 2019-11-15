	.section	.text
	.align	32
	#Procedure 0x4016a9
	.globl sub_4016a9
	.type sub_4016a9, @function
sub_4016a9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4016aa
	.globl sub_4016aa
	.type sub_4016aa, @function
sub_4016aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016e2
	.globl sub_4016e2
	.type sub_4016e2, @function
sub_4016e2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40172a
	.globl sub_40172a
	.type sub_40172a, @function
sub_40172a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40174c
	.globl sub_40174c
	.type sub_40174c, @function
sub_40174c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40175d
	.globl sub_40175d
	.type sub_40175d, @function
sub_40175d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401776
	.globl sub_401776
	.type sub_401776, @function
sub_401776:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401780
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
	je	.label_9
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
.label_9:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4017e8
	.globl sub_4017e8
	.type sub_4017e8, @function
sub_4017e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_10
	test	rbx, rbx
	jne	.label_10
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_12:
	call	xalloc_die
.label_10:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_11
	test	rax, rax
	je	.label_12
.label_11:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401820
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
	#Procedure 0x40182f
	.globl sub_40182f
	.type sub_40182f, @function
sub_40182f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401830

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_13
	test	rax, rax
	je	.label_14
.label_13:
	pop	rbx
	ret	
.label_14:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40184a
	.globl sub_40184a
	.type sub_40184a, @function
sub_40184a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401850

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401861
	.globl sub_401861
	.type sub_401861, @function
sub_401861:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401870
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
	#Procedure 0x401889
	.globl sub_401889
	.type sub_401889, @function
sub_401889:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401890

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_15
	test	rsi, rsi
	mov	ecx, 1
	je	.label_16
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_16
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_15:
	mov	ecx, 1
.label_16:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4018db
	.globl sub_4018db
	.type sub_4018db, @function
sub_4018db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401954
	.globl sub_401954
	.type sub_401954, @function
sub_401954:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401960
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
	je	.label_23
	mov	qword ptr [rax], rbx
.label_23:
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
	#Procedure 0x401a4c
	.globl sub_401a4c
	.type sub_401a4c, @function
sub_401a4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a50
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401a5a
	.globl sub_401a5a
	.type sub_401a5a, @function
sub_401a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a60

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
	je	.label_36
	mov	edx, OFFSET FLAT:label_27
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_33
.label_36:
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
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
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_39
	jmp	qword ptr [(r12 * 8) + label_40]
.label_503:
	add	rsp, 8
	jmp	.label_26
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
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
	jmp	.label_26
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
.label_505:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
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
	jmp	.label_26
.label_508:
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
	jmp	.label_26
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	jmp	.label_26
.label_510:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	jmp	.label_26
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
	jmp	.label_26
.label_511:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
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
.label_26:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401db8
	.globl sub_401db8
	.type sub_401db8, @function
sub_401db8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_43:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_43
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x401de1
	.globl sub_401de1
	.type sub_401de1, @function
sub_401de1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401df0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401dfe
	.globl sub_401dfe
	.type sub_401dfe, @function
sub_401dfe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401e00

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
	js	.label_44
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_47
	cmp	r12d, 0x7fffffff
	je	.label_49
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
	jne	.label_45
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_45:
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
.label_47:
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
	jbe	.label_50
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_46
.label_50:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_48
	mov	rdi, r14
	call	free
.label_48:
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
.label_46:
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
.label_44:
	call	abort
.label_49:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401fbd
	.globl sub_401fbd
	.type sub_401fbd, @function
sub_401fbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401fc0
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
	#Procedure 0x401ff6
	.globl sub_401ff6
	.type sub_401ff6, @function
sub_401ff6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402000

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
	jmp	.label_77
	.section	.text
	.align	32
	#Procedure 0x4020af
	.globl sub_4020af
	.type sub_4020af, @function
sub_4020af:

	nop	
.label_125:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_88
	or	al, dl
	jne	.label_88
	test	dil, 1
	jne	.label_123
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_88
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_77
	jmp	.label_88
.label_540:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_130
	test	rbp, rbp
	je	.label_133
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_133:
	mov	r14d, 1
	jmp	.label_135
.label_541:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_79
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_71
.label_130:
	xor	r14d, r14d
.label_135:
	mov	eax, OFFSET FLAT:label_79
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_80
	.section	.text
	.align	32
	#Procedure 0x40217f
	.globl sub_40217f
	.type sub_40217f, @function
sub_40217f:

	nop	
.label_77:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_153
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_148]
.label_542:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_162
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_105
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_543:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_51
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_51
	xor	r14d, r14d
	nop	
.label_64:
	cmp	r14, rbp
	jae	.label_59
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_59:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_64
.label_51:
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
	jmp	.label_71
.label_535:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_71
.label_538:
	mov	al, 1
.label_536:
	mov	r12b, 1
.label_539:
	test	r12b, 1
	mov	cl, 1
	je	.label_108
	mov	ecx, eax
.label_108:
	mov	al, cl
.label_537:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_92
	test	rbp, rbp
	je	.label_98
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_98:
	mov	r14d, 1
	jmp	.label_100
.label_92:
	xor	r14d, r14d
.label_100:
	mov	ecx, OFFSET FLAT:label_105
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_80:
	mov	sil, r12b
.label_71:
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
	jmp	.label_112
	.section	.text
	.align	32
	#Procedure 0x402341
	.globl sub_402341
	.type sub_402341, @function
sub_402341:

	nop	word ptr cs:[rax + rax]
.label_114:
	inc	r12
.label_112:
	cmp	r11, -1
	je	.label_141
	cmp	r12, r11
	jne	.label_144
	jmp	.label_146
	.section	.text
	.align	32
	#Procedure 0x402363
	.globl sub_402363
	.type sub_402363, @function
sub_402363:

	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_104
.label_144:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_154
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_136
	cmp	r11, -1
	jne	.label_136
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_136:
	cmp	rbx, r11
	jbe	.label_168
.label_154:
	xor	esi, esi
.label_66:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_170
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_173]
.label_469:
	test	r12, r12
	jne	.label_58
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x4023f6
	.globl sub_4023f6
	.type sub_4023f6, @function
sub_4023f6:

	nop	word ptr cs:[rax + rax]
.label_168:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_62
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_66
	jmp	.label_99
.label_62:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_66
.label_473:
	xor	eax, eax
	cmp	r11, -1
	je	.label_82
	test	r12, r12
	jne	.label_86
	cmp	r11, 1
	je	.label_89
	xor	r13d, r13d
	jmp	.label_68
.label_462:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_94
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_99
	cmp	r8d, 2
	jne	.label_103
	mov	eax, r9d
	and	al, 1
	jne	.label_103
	cmp	r14, rbp
	jae	.label_106
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_106:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_109
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_109:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_116
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_116:
	add	r14, 3
	mov	r9b, 1
.label_103:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_122
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_122:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_60
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_60
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_60
	cmp	r14, rbp
	jae	.label_129
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_129:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_124
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_124:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_68
.label_463:
	mov	bl, 0x62
	jmp	.label_142
.label_464:
	mov	cl, 0x74
	jmp	.label_137
.label_465:
	mov	bl, 0x76
	jmp	.label_142
.label_466:
	mov	bl, 0x66
	jmp	.label_142
.label_467:
	mov	cl, 0x72
	jmp	.label_137
.label_470:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_151
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_65
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
	jae	.label_158
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_158:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_171:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_175
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_175:
	add	r14, 3
	xor	r9d, r9d
.label_151:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_68
.label_471:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_52
	cmp	r8d, 2
	jne	.label_58
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_58
	jmp	.label_65
.label_472:
	cmp	r8d, 2
	jne	.label_53
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_65
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_72
.label_170:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_75
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_121
.label_82:
	test	r12, r12
	jne	.label_101
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_101
.label_89:
	mov	dl, 1
.label_468:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_65
	xor	eax, eax
	mov	r13b, dl
.label_68:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_113
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_117
	jmp	.label_118
	.section	.text
	.align	32
	#Procedure 0x4026d4
	.globl sub_4026d4
	.type sub_4026d4, @function
sub_4026d4:

	nop	word ptr cs:[rax + rax]
.label_113:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_118
.label_117:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_78
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_127
	.section	.text
	.align	32
	#Procedure 0x40270d
	.globl sub_40270d
	.type sub_40270d, @function
sub_40270d:

	nop	dword ptr [rax]
.label_118:
	test	sil, sil
.label_127:
	mov	ebx, r15d
	je	.label_91
	jmp	.label_132
.label_78:
	mov	ebx, r15d
	jmp	.label_132
.label_94:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_114
	xor	r15d, r15d
	jmp	.label_58
.label_53:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_137
	xor	eax, eax
	mov	r15b, 0x5c
.label_72:
	xor	r13d, r13d
	jmp	.label_91
.label_137:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_65
.label_142:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_68
	nop	
.label_132:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_99
	cmp	r8d, 2
	jne	.label_152
	mov	eax, r9d
	and	al, 1
	jne	.label_152
	cmp	r14, rbp
	jae	.label_156
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_156:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_159
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_159:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_161
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_161:
	add	r14, 3
	mov	r9b, 1
.label_152:
	cmp	r14, rbp
	jae	.label_169
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_169:
	inc	r14
	jmp	.label_119
.label_75:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_174
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_174:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_177
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_165:
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
	je	.label_69
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_84
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_102
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_96
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_63:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_56
	bt	rsi, rdx
	jb	.label_65
.label_56:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_63
.label_96:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_120
	xor	r13d, r13d
.label_120:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_165
	jmp	.label_83
.label_60:
	xor	r13d, r13d
	jmp	.label_68
.label_101:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_68
.label_52:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_58
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_58
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_58
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_139
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_167
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_95
	cmp	r14, rbp
	jae	.label_115
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_115:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_155
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_155:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_128
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_128:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_176
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_176:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_167:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_68
.label_58:
	xor	eax, eax
.label_86:
	xor	r13d, r13d
	jmp	.label_68
.label_177:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_81:
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
	je	.label_110
	cmp	rbp, -1
	je	.label_67
	cmp	rbp, -2
	je	.label_69
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_74
	xor	r13d, r13d
.label_74:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_81
	jmp	.label_83
.label_69:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_87
	lea	rax, [r10 + r12]
.label_147:
	cmp	byte ptr [rax + rsi], 0
	je	.label_87
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_147
.label_87:
	mov	qword ptr [rsp + 0x40], rsi
.label_84:
	xor	r13d, r13d
	jmp	.label_102
.label_67:
	xor	r13d, r13d
.label_110:
	mov	r10, qword ptr [rsp + 0x28]
.label_102:
	mov	r12, qword ptr [rsp + 0x40]
.label_83:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_121:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_111
	test	al, al
	je	.label_111
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_68
.label_111:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_126
	.section	.text
	.align	32
	#Procedure 0x402b07
	.globl sub_402b07
	.type sub_402b07, @function
sub_402b07:

	nop	word ptr [rax + rax]
.label_85:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_126:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_131
	test	sil, 1
	je	.label_76
	cmp	r14, rbp
	jae	.label_134
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_134:
	inc	r14
	xor	esi, esi
	jmp	.label_76
	.section	.text
	.align	32
	#Procedure 0x402b45
	.globl sub_402b45
	.type sub_402b45, @function
sub_402b45:

	nop	word ptr cs:[rax + rax]
.label_131:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_99
	cmp	r8d, 2
	jne	.label_145
	mov	eax, r9d
	and	al, 1
	jne	.label_145
	cmp	r14, rbp
	jae	.label_90
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_90:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_150
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_150:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_140
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_140:
	add	r14, 3
	mov	r9b, 1
.label_145:
	cmp	r14, rbp
	jae	.label_160
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_164
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_164:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_172
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_172:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_76:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_91
	test	r9b, 1
	je	.label_54
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_138
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_61
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_61:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_70
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_70:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_54
	.section	.text
	.align	32
	#Procedure 0x402c56
	.globl sub_402c56
	.type sub_402c56, @function
sub_402c56:

	nop	word ptr cs:[rax + rax]
.label_138:
	mov	rbx, rcx
.label_54:
	cmp	r14, rbp
	jae	.label_85
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_85
	.section	.text
	.align	32
	#Procedure 0x402c7e
	.globl sub_402c7e
	.type sub_402c7e, @function
sub_402c7e:

	nop	
.label_91:
	test	r9b, 1
	je	.label_93
	and	al, 1
	jne	.label_93
	cmp	r14, rbp
	jae	.label_97
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_97:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_143
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_143:
	add	r14, 2
	xor	r9d, r9d
.label_93:
	mov	ebx, r15d
.label_119:
	cmp	r14, rbp
	jae	.label_73
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_73:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_114
.label_139:
	xor	r13d, r13d
	jmp	.label_68
	.section	.text
	.align	32
	#Procedure 0x402ce1
	.globl sub_402ce1
	.type sub_402ce1, @function
sub_402ce1:

	nop	word ptr cs:[rax + rax]
.label_146:
	mov	rcx, r12
.label_104:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_125
	or	al, dl
	jne	.label_125
	mov	r11, rcx
	jmp	.label_99
.label_65:
	mov	eax, 2
.label_55:
	mov	qword ptr [rsp + 0x38], rax
.label_99:
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
.label_149:
	mov	r14, rax
.label_57:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_88:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_157
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_107
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_107
	inc	rdx
	nop	dword ptr [rax + rax]
.label_166:
	cmp	r14, rbp
	jae	.label_163
	mov	byte ptr [rcx + r14], al
.label_163:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_166
	jmp	.label_107
.label_123:
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
	jmp	.label_149
.label_157:
	mov	rcx, qword ptr [rsp + 0x10]
.label_107:
	cmp	r14, rbp
	jae	.label_57
	mov	byte ptr [rcx + r14], 0
	jmp	.label_57
.label_95:
	mov	eax, 5
	jmp	.label_55
.label_153:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402e30
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
	je	.label_178
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
.label_178:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402e91
	.globl sub_402e91
	.type sub_402e91, @function
sub_402e91:

	nop	word ptr cs:[rax + rax]
.label_179:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402ea5
	.globl sub_402ea5
	.type sub_402ea5, @function
sub_402ea5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402eaf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_179
	call	rpl_calloc
	test	rax, rax
	je	.label_179
	pop	rcx
	ret	
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_181
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_185
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402f11

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_180
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_183
	cmp	dword ptr [rbp], 0x20
	jne	.label_183
.label_180:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_182
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_182:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_181:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_186
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
	#Procedure 0x402f90
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
	#Procedure 0x402fa3
	.globl sub_402fa3
	.type sub_402fa3, @function
sub_402fa3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fb0

	.globl io_error
	.type io_error, @function
io_error:
	push	rbx
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax]
.label_187:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402ff6
	.globl sub_402ff6
	.type sub_402ff6, @function
sub_402ff6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ffb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_187
	test	rdx, rdx
	je	.label_187
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_202:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
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
	#Procedure 0x403058
	.globl sub_403058
	.type sub_403058, @function
sub_403058:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403067

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_202
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
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
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_195
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_195
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_199
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_199
	mov	ecx, OFFSET FLAT:label_200
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_209:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403255
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_206]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_207]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_208]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_209
	test	rsi, rsi
	je	.label_209
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_214:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_210
	mov	qword ptr [rsi], rbx
.label_213:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_212
	test	rax, rax
	je	.label_210
.label_212:
	pop	rbx
	ret	
.label_210:
	call	xalloc_die
.label_211:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4032f2
	.globl sub_4032f2
	.type sub_4032f2, @function
sub_4032f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032fe
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_214
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_211
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_213
	call	free
	xor	eax, eax
	jmp	.label_212
	.section	.text
	.align	32
	#Procedure 0x403330
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
	#Procedure 0x4033f1
	.globl sub_4033f1
	.type sub_4033f1, @function
sub_4033f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403400

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_215
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_215
	test	byte ptr [rbx + 1], 1
	je	.label_215
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_215:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403433
	.globl sub_403433
	.type sub_403433, @function
sub_403433:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403440

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_240
	call	setlocale
	test	rax, rax
	setne	byte ptr [rip + locale_ok]
	mov	edi, OFFSET FLAT:label_245
	mov	esi, OFFSET FLAT:label_249
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_245
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + equal_width],  0
	mov	qword ptr [rip + separator], OFFSET FLAT:label_250
	mov	eax, dword ptr [rip + optind]
	xor	ebx, ebx
	cmp	eax, ebp
	jge	.label_251
	xor	ebx, ebx
.label_279:
	movsxd	rcx, eax
	mov	rcx, qword ptr [r15 + rcx*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_261
	movsx	ecx, byte ptr [rcx + 1]
	cmp	ecx, 0x2e
	je	.label_251
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_251
.label_261:
	mov	edx, OFFSET FLAT:label_264
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_266
	cmp	eax, 0x66
	je	.label_267
	cmp	eax, 0x73
	je	.label_269
	cmp	eax, 0x77
	jne	.label_270
	mov	byte ptr [rip + equal_width],  1
	jmp	.label_272
.label_267:
	mov	rbx, qword ptr [rip + optarg]
	jmp	.label_272
.label_269:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator],  rax
.label_272:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jl	.label_279
	jmp	.label_251
.label_266:
	cmp	eax, -1
	jne	.label_281
	mov	eax, dword ptr [rip + optind]
.label_251:
	mov	r13d, ebp
	sub	r13d, eax
	je	.label_296
	cmp	r13d, 4
	jae	.label_286
	xor	r14d, r14d
	test	rbx, rbx
	mov	dword ptr [rsp + 0x14], ebp
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x58], r13
	je	.label_287
	xor	r14d, r14d
	xor	ebp, ebp
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x40357c
	.globl sub_40357c
	.type sub_40357c, @function
sub_40357c:

	nop	dword ptr [rax]
.label_292:
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	inc	r14
	lea	rbp, [rcx + rbp + 1]
.label_291:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	al, 0x25
	jne	.label_293
	cmp	byte ptr [rbx + rbp + 1], 0x25
	je	.label_292
	jmp	.label_295
.label_293:
	test	al, al
	jne	.label_292
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	jmp	.label_277
.label_295:
	lea	rdi, [rbx + rbp + 1]
	inc	rbp
	mov	esi, OFFSET FLAT:label_299
	call	strspn
	mov	r15, rax
	add	r15, rbp
	lea	rdi, [rbx + r15]
	mov	esi, OFFSET FLAT:label_273
	call	strspn
	mov	r12, rax
	add	r12, r15
	mov	al, byte ptr [rbx + r12]
	cmp	al, 0x2e
	jne	.label_302
	lea	rdi, [rbx + r12 + 1]
	mov	esi, OFFSET FLAT:label_273
	call	strspn
	lea	r12, [rax + r12 + 1]
	mov	al, byte ptr [rbx + r12]
.label_302:
	xor	ecx, ecx
	cmp	al, 0x4c
	sete	cl
	lea	rbp, [rcx + r12]
	movsx	esi, byte ptr [rbx + rbp]
	test	esi, esi
	je	.label_306
	mov	qword ptr [rsp + 0x30], rcx
	mov	edi, OFFSET FLAT:label_243
	mov	edx, 9
	call	memchr
	test	rax, rax
	je	.label_226
	lea	r13, [rbx + r12]
	inc	rbp
	xor	r15d, r15d
	jmp	.label_229
	.section	.text
	.align	32
	#Procedure 0x40363c
	.globl sub_40363c
	.type sub_40363c, @function
sub_40363c:

	nop	dword ptr [rax]
.label_241:
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	inc	r15
	lea	rbp, [rcx + rbp + 1]
.label_229:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	al, 0x25
	jne	.label_233
	cmp	byte ptr [rbx + rbp + 1], 0x25
	je	.label_241
	jmp	.label_238
	.section	.text
	.align	32
	#Procedure 0x403663
	.globl sub_403663
	.type sub_403663, @function
sub_403663:

	nop	word ptr cs:[rax + rax]
.label_233:
	test	al, al
	jne	.label_241
	add	rbp, 2
	mov	rdi, rbp
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0x4c
	lea	rdi, [rbp + r12 + 1]
	add	r13, qword ptr [rsp + 0x30]
	mov	rsi, r13
	call	strcpy
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_254
	cmp	byte ptr [rip + equal_width],  1
	je	.label_256
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rbx, rbp
	jmp	.label_260
.label_287:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	xor	r15d, r15d
	jmp	.label_262
.label_254:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
.label_260:
	mov	ebp, dword ptr [rsp + 0x14]
.label_262:
	mov	r12d, dword ptr [rip + optind]
	movsxd	r13, r12d
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax + r13*8]
	movsx	eax, byte ptr [rsi]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_237
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, rsi
	mov	rbx, rsi
	call	strlen
	mov	rbp, rax
	mov	esi, OFFSET FLAT:label_273
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, rbx
	call	strspn
	cmp	rbp, rax
	jne	.label_278
	mov	rax, qword ptr [rsp + 0x58]
	cmp	eax, 1
	mov	rbx, qword ptr [rsp + 0x68]
	je	.label_280
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rax + r13*8 + 8]
	movsx	ecx, byte ptr [rbp]
	lea	eax, [rcx - 0x30]
	cmp	eax, 9
	ja	.label_285
	mov	qword ptr [rsp + 0x90], rcx
	mov	rdi, rbp
	call	strlen
	mov	qword ptr [rsp + 0x98], rax
	mov	esi, OFFSET FLAT:label_273
	mov	rdi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0x98], rax
	jne	.label_285
	mov	rax, qword ptr [rsp + 0x58]
	cmp	eax, 3
	jb	.label_280
	mov	rax, qword ptr [rsp + 0x90]
	cmp	al, 0x31
	mov	rsi, qword ptr [rsp + 0x20]
	jne	.label_294
	cmp	byte ptr [rbp + 1], 0
	jne	.label_294
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rax + r13*8 + 0x10]
	movsx	eax, byte ptr [rbp]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_294
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	mov	esi, OFFSET FLAT:label_273
	mov	rdi, rbp
	call	strspn
	cmp	r13, rax
	jne	.label_285
.label_280:
	mov	al, byte ptr [rip + equal_width]
	mov	rcx, qword ptr [rsp + 0x30]
	or	al, cl
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x14]
	jne	.label_219
	mov	rdi, qword ptr [rip + separator]
	call	strlen
	cmp	rax, 1
	jne	.label_219
	mov	rcx, qword ptr [rsp + 0x58]
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_221
	mov	rdi, qword ptr [rsp + 0x20]
	cmove	rdi, rax
	lea	eax, [rcx + r12 - 1]
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rbp + rax*8]
	call	seq_fast
	test	al, al
	jne	.label_216
	movsxd	r12, dword ptr [rip + optind]
	mov	rsi, qword ptr [rbp + r12*8]
.label_294:
	mov	ebp, dword ptr [rsp + 0x14]
	jmp	.label_237
.label_278:
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x68]
	jmp	.label_237
.label_285:
	mov	ebp, dword ptr [rsp + 0x14]
.label_219:
	mov	rsi, qword ptr [rsp + 0x20]
.label_237:
	inc	r12d
	mov	dword ptr [rip + optind],  r12d
	lea	rdi, [rsp + 0xe0]
	call	scan_arg
	fld	xword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	r13d, dword ptr [rsp + 0xf8]
	movsxd	rax, dword ptr [rip + optind]
	fld1	
	xor	r12d, r12d
	mov	edi, 1
	cmp	eax, ebp
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	jge	.label_247
	fstp	st(0)
	fstp	xword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x58], rdx
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xc0]
	call	scan_arg
	fld	xword ptr [rsp + 0xc0]
	mov	esi, dword ptr [rsp + 0xd8]
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	fld	st(0)
	fstp	xword ptr [rsp + 0x14]
	jge	.label_265
	mov	ebp, esi
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_232
	jnp	.label_274
.label_232:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xa0]
	call	scan_arg
	fld	xword ptr [rsp + 0x14]
	fstp	xword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	r12d, ebp
	mov	ecx, dword ptr [rsp + 0xb8]
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x68]
	mov	esi, ecx
	mov	rdx, rax
	jmp	.label_282
.label_247:
	xor	ebp, ebp
	mov	esi, r13d
.label_282:
	fxch	st(1)
	fstp	xword ptr [rsp + 0x14]
	jmp	.label_289
.label_265:
	fstp	st(0)
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rsp + 0xd0]
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x68]
	mov	rdx, rax
	xor	r12d, r12d
.label_289:
	fldz	
	fld	st(1)
	fstp	xword ptr [rsp + 0x58]
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	jne	.label_223
	jp	.label_223
	mov	eax, r12d
	or	eax, ebp
	jne	.label_223
	fld1	
	fld	xword ptr [rsp + 0x20]
	fucomip	st(1)
	fstp	st(0)
	jne	.label_223
	jp	.label_223
	fld	xword ptr [rsp + 0x58]
	fucomip	st(1)
	jb	.label_223
	test	esi, esi
	jne	.label_223
	fld	xword ptr [rsp + 0x14]
	fucomip	st(1)
	jb	.label_223
	mov	rax, qword ptr [rsp + 0x30]
	or	al, byte ptr [rip + equal_width]
	test	al, 1
	jne	.label_223
	fstp	st(0)
	mov	qword ptr [rsp + 0x30], rdi
	mov	rdi, qword ptr [rip + separator]
	mov	r13, rdx
	mov	dword ptr [rsp + 0x48], esi
	call	strlen
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0x48]
	mov	rdx, r13
	fldz	
	cmp	rax, 1
	jne	.label_223
	fstp	st(0)
	fld	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_230
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_217
	fld	xword ptr [rsp + 0x14]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_239
	jp	.label_239
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_230
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	jns	.label_246
	jmp	.label_217
.label_239:
	fstp	st(0)
	mov	edi, OFFSET FLAT:label_290
	call	xstrdup
	mov	qword ptr [rsp + 0x40], rax
.label_246:
	mov	rdi, qword ptr [rsp + 0x80]
	cmp	byte ptr [rdi], 0x2d
	je	.label_253
	mov	rsi, qword ptr [rsp + 0x40]
	cmp	byte ptr [rsi], 0x2d
	je	.label_253
	call	seq_fast
	test	al, al
	jne	.label_216
	mov	rdi, qword ptr [rsp + 0x80]
.label_253:
	call	free
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	fldz	
	mov	rdx, r13
	mov	esi, dword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x30]
.label_223:
	test	rbx, rbx
	fld	xword ptr [rsp + 0x20]
	jne	.label_220
	cmp	ebp, r12d
	cmovge	r12d, ebp
	cmp	r12d, 0x7fffffff
	mov	ebx, OFFSET FLAT:label_268
	je	.label_220
	cmp	esi, 0x7fffffff
	je	.label_220
	cmp	byte ptr [rip + equal_width],  1
	jne	.label_275
	mov	eax, r12d
	sub	eax, ebp
	cdqe	
	add	rax, rdi
	mov	ecx, r12d
	sub	ecx, esi
	movsxd	rcx, ecx
	add	rcx, rdx
	test	r12d, r12d
	sete	r8b
	setne	dil
	test	esi, esi
	setne	dl
	sete	bl
	and	dl, r8b
	movzx	edx, dl
	sub	rcx, rdx
	and	bl, dil
	movzx	edx, bl
	add	rdx, rcx
	test	ebp, ebp
	sete	cl
	and	cl, dil
	movzx	r8d, cl
	add	r8, rax
	cmp	r8, rdx
	cmovbe	r8, rdx
	mov	ebx, OFFSET FLAT:label_268
	cmp	r8, 0x7fffffff
	ja	.label_220
	fstp	st(0)
	fstp	st(0)
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_284
	xor	eax, eax
	mov	r9d, r12d
	call	__sprintf_chk
	jmp	.label_252
.label_275:
	fstp	st(0)
	fstp	st(0)
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_300
	xor	eax, eax
	mov	r8d, r12d
	call	__sprintf_chk
.label_252:
	fldz	
	fld	xword ptr [rsp + 0x20]
.label_220:
	fld	xword ptr [rsp + 0x14]
	fld	xword ptr [rsp + 0x58]
	fxch	st(1)
	fucomi	st(1)
	seta	al
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	cl
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	ja	.label_303
	mov	eax, ecx
.label_303:
	test	al, al
	jne	.label_216
	fld	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fldz	
	js	.label_224
	fstp	st(0)
	fld	xword ptr [rsp + 0x20]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_228
	fld1	
	xor	r13d, r13d
	fld	xword ptr [rsp + 0x58]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	nop	dword ptr [rax + rax]
.label_301:
	test	r13b, r13b
	jne	.label_234
	fld	xword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x30]
	fmulp	st(1)
	fld	xword ptr [rsp + 0x58]
	faddp	st(1)
	fld	xword ptr [rsp + 0x14]
	fld	st(1)
	fstp	xword ptr [rsp + 0x48]
	fucomip	st(1)
	fstp	st(0)
	seta	r13b
	jbe	.label_235
	fstp	xword ptr [rsp + 0x68]
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_244
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_248
	call	setlocale
.label_244:
	fld	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x40]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_258
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_240
	call	setlocale
.label_258:
	test	ebp, ebp
	js	.label_259
	movsxd	rax, ebp
	sub	rax, r15
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x40]
	add	rdi, r14
	xor	r12d, r12d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0x80]
	call	xstrtold
	fld	xword ptr [rsp + 0x80]
	test	al, al
	je	.label_271
	fld	xword ptr [rsp + 0x14]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_227
	jp	.label_227
	mov	qword ptr [rsp + 0x78], 0
	fld	xword ptr [rsp + 0x68]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x78]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_217
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r12b
	mov	rdi, rbp
	call	free
	jmp	.label_227
.label_271:
	fstp	st(0)
.label_227:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	test	r12b, r12b
	fldz	
	je	.label_234
.label_235:
	fstp	st(0)
	mov	rdi, qword ptr [rip + separator]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_283
	fld1	
	fld	xword ptr [rsp + 0x30]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x48]
	jns	.label_301
	jmp	.label_224
.label_228:
	fld1	
	xor	r13d, r13d
	fld	xword ptr [rsp + 0x58]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_288:
	test	r13b, r13b
	jne	.label_234
	fld	xword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x30]
	fmulp	st(1)
	fld	xword ptr [rsp + 0x58]
	faddp	st(1)
	fld	xword ptr [rsp + 0x14]
	fld	st(1)
	fstp	xword ptr [rsp + 0x48]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	r13b
	jbe	.label_305
	fstp	xword ptr [rsp + 0x68]
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_225
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_248
	call	setlocale
.label_225:
	fld	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x40]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_236
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_240
	call	setlocale
.label_236:
	test	ebp, ebp
	js	.label_259
	movsxd	rax, ebp
	sub	rax, r15
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x40]
	add	rdi, r14
	xor	r12d, r12d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0x80]
	call	xstrtold
	fld	xword ptr [rsp + 0x80]
	test	al, al
	je	.label_307
	fld	xword ptr [rsp + 0x14]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_257
	jp	.label_257
	mov	qword ptr [rsp + 0x78], 0
	fld	xword ptr [rsp + 0x68]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x78]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_217
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r12b
	mov	rdi, rbp
	call	free
	jmp	.label_257
.label_307:
	fstp	st(0)
.label_257:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	test	r12b, r12b
	fldz	
	je	.label_234
.label_305:
	fstp	st(0)
	mov	rdi, qword ptr [rip + separator]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_283
	fld1	
	fld	xword ptr [rsp + 0x30]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x48]
	jns	.label_288
.label_224:
	fstp	st(0)
	call	io_error
.label_234:
	fstp	st(0)
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_250
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_283
.label_216:
	xor	eax, eax
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_238:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
.label_277:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_283:
	call	io_error
.label_259:
	call	xalloc_die
.label_217:
	call	xalloc_die
.label_281:
	cmp	eax, 0xffffff7d
	je	.label_304
	cmp	eax, 0xffffff7e
	jne	.label_270
	xor	edi, edi
	call	usage
.label_296:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	jmp	.label_309
.label_286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 0x18]
	jmp	.label_222
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	jmp	.label_277
.label_226:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	movsx	r8d, byte ptr [rbx + rbp]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_304:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_199
	mov	edx, OFFSET FLAT:label_21
	mov	r8d, OFFSET FLAT:label_242
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_270:
	mov	edi, 1
	call	usage
.label_256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
.label_309:
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
.label_274:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r12 + rax*8 - 8]
.label_222:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x404116
	.globl sub_404116
	.type sub_404116, @function
sub_404116:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404120

	.globl seq_fast
	.type seq_fast, @function
seq_fast:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbp, rdi
	movzx	eax, byte ptr [r12]
	mov	ebx, 0x69
	sub	ebx, eax
	jne	.label_325
	movzx	ecx, byte ptr [r12 + 1]
	mov	ebx, 0x6e
	sub	ebx, ecx
	jne	.label_325
	movzx	ecx, byte ptr [r12 + 2]
	mov	ebx, 0x66
	sub	ebx, ecx
	jne	.label_325
	movzx	ebx, byte ptr [r12 + 3]
	neg	ebx
.label_325:
	xor	ecx, ecx
	jmp	.label_336
	.section	.text
	.align	32
	#Procedure 0x40416c
	.globl sub_40416c
	.type sub_40416c, @function
sub_40416c:

	nop	dword ptr [rax]
.label_323:
	inc	rcx
.label_336:
	movzx	edx, byte ptr [rbp + rcx]
	cmp	dl, 0x30
	je	.label_323
	test	dl, dl
	jne	.label_338
	lea	rdx, [rbp + rcx]
	test	rcx, rcx
	lea	rbp, [rbp + rcx - 1]
	cmove	rbp, rdx
	jmp	.label_311
.label_338:
	add	rbp, rcx
.label_311:
	xor	ecx, ecx
	jmp	.label_314
	.section	.text
	.align	32
	#Procedure 0x40419b
	.globl sub_40419b
	.type sub_40419b, @function
sub_40419b:

	nop	dword ptr [rax + rax]
.label_319:
	mov	al, byte ptr [r12 + rcx + 1]
	inc	rcx
.label_314:
	cmp	al, 0x30
	je	.label_319
	test	al, al
	jne	.label_320
	lea	rax, [r12 + rcx]
	test	rcx, rcx
	lea	r12, [r12 + rcx - 1]
	cmove	r12, rax
	jmp	.label_322
.label_320:
	add	r12, rcx
.label_322:
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
	xor	eax, eax
	mov	dword ptr [rsp + 8], ebx
	test	ebx, ebx
	je	.label_328
	mov	rdi, r12
	call	strlen
.label_328:
	lea	rcx, [r15 + 1]
	mov	qword ptr [rsp], rcx
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x30], rax
	cmova	rax, rcx
	cmp	rax, 0x1f
	mov	r14d, 0x1f
	cmova	r14, rax
	lea	r13, [r14 + 1]
	mov	rdi, r13
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	lea	rbx, [rax + r14]
	sub	rbx, r15
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp]
	call	memcpy
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	dword ptr [rsp + 8], 0
	mov	ebp, 0
	je	.label_316
	mov	qword ptr [rsp], r13
	mov	rdi, r13
	call	xmalloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	add	rdi, r14
	mov	rbp, qword ptr [rsp + 0x30]
	sub	rdi, rbp
	lea	rdx, [rbp + 1]
	mov	rax, rdi
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, r12
	call	memcpy
	mov	rax, rbp
	cmp	r15, rax
	jae	.label_339
	mov	r13, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x10]
.label_316:
	mov	qword ptr [rsp + 0x10], rbp
	add	r13, r13
	cmp	r13, 0x2000
	mov	edi, 0x2000
	cmovae	rdi, r13
	mov	r13, rdi
	call	xmalloc
	mov	r12, rax
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r15
	call	__mempcpy_chk
	mov	rbp, rax
	cmp	dword ptr [rsp + 8], 0
	mov	qword ptr [rsp], r13
	lea	r13, [r12 + r13]
	je	.label_318
	nop	word ptr cs:[rax + rax]
.label_327:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	r15, rax
	jb	.label_331
	cmp	rax, r15
	jb	.label_310
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x20]
	call	strcmp
	test	eax, eax
	jns	.label_310
.label_331:
	mov	rax, qword ptr [rip + separator]
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp], al
	inc	rbp
	lea	rax, [rbx + r15 - 1]
	nop	dword ptr [rax]
.label_321:
	movzx	ecx, byte ptr [rax]
	mov	edx, ecx
	inc	dl
	mov	byte ptr [rax], dl
	cmp	cl, 0x39
	jl	.label_333
	mov	byte ptr [rax], 0x30
	dec	rax
	cmp	rax, rbx
	jae	.label_321
	mov	byte ptr [rbx - 1], 0x31
	dec	rbx
	inc	r15
.label_333:
	cmp	r15, r14
	jne	.label_326
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x28], r13
	lea	rsi, [r14 + r14 + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	call	xrealloc
	lea	rbx, [rax + r14]
	lea	rdx, [r14 + 1]
	lea	r14, [r14 + r14]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, rax
	call	memmove
	mov	r15, r14
	lea	r13, [r14 + r14 + 2]
	cmp	qword ptr [rsp], r13
	jae	.label_332
	sub	rbp, r12
	mov	rdi, r12
	mov	rsi, r13
	call	xrealloc
	mov	r12, rax
	add	rbp, r12
	lea	rax, [r12 + r13]
	mov	qword ptr [rsp], r13
	mov	r13, rax
	jmp	.label_315
	.section	.text
	.align	32
	#Procedure 0x4043ac
	.globl sub_4043ac
	.type sub_4043ac, @function
sub_4043ac:

	nop	dword ptr [rax]
.label_332:
	mov	r13, qword ptr [rsp + 0x28]
.label_315:
	mov	r14, r15
	mov	r15, qword ptr [rsp + 8]
.label_326:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	__mempcpy_chk
	mov	rbp, rax
	mov	rax, r15
	not	rax
	add	rax, r13
	cmp	rax, rbp
	jae	.label_327
	sub	rbp, r12
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbp
	call	fwrite_unlocked
	cmp	rax, 1
	mov	rbp, r12
	je	.label_327
	jmp	.label_313
	.section	.text
	.align	32
	#Procedure 0x404413
	.globl sub_404413
	.type sub_404413, @function
sub_404413:

	nop	word ptr cs:[rax + rax]
.label_318:
	mov	rax, qword ptr [rip + separator]
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp], al
	inc	rbp
	lea	rax, [rbx + r15 - 1]
	nop	word ptr cs:[rax + rax]
.label_329:
	movzx	ecx, byte ptr [rax]
	mov	edx, ecx
	inc	dl
	mov	byte ptr [rax], dl
	cmp	cl, 0x39
	jl	.label_324
	mov	byte ptr [rax], 0x30
	dec	rax
	cmp	rax, rbx
	jae	.label_329
	mov	byte ptr [rbx - 1], 0x31
	dec	rbx
	inc	r15
.label_324:
	cmp	r15, r14
	jne	.label_334
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x28], r13
	lea	rsi, [r14 + r14 + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	call	xrealloc
	lea	rbx, [rax + r14]
	lea	rdx, [r14 + 1]
	lea	r14, [r14 + r14]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, rax
	call	memmove
	mov	r15, r14
	lea	r13, [r14 + r14 + 2]
	cmp	qword ptr [rsp], r13
	jae	.label_317
	sub	rbp, r12
	mov	rdi, r12
	mov	rsi, r13
	call	xrealloc
	mov	r12, rax
	add	rbp, r12
	lea	rax, [r12 + r13]
	mov	qword ptr [rsp], r13
	mov	r13, rax
	jmp	.label_330
	.section	.text
	.align	32
	#Procedure 0x4044cc
	.globl sub_4044cc
	.type sub_4044cc, @function
sub_4044cc:

	nop	dword ptr [rax]
.label_317:
	mov	r13, qword ptr [rsp + 0x28]
.label_330:
	mov	r14, r15
	mov	r15, qword ptr [rsp + 8]
.label_334:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	__mempcpy_chk
	mov	rbp, rax
	mov	rax, r15
	not	rax
	add	rax, r13
	cmp	rax, rbp
	jae	.label_318
	sub	rbp, r12
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbp
	call	fwrite_unlocked
	cmp	rax, 1
	mov	rbp, r12
	je	.label_318
.label_313:
	call	io_error
.label_310:
	mov	byte ptr [rbp], 0xa
	inc	rbp
	sub	rbp, r12
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbp
	call	fwrite_unlocked
	mov	bl, 1
	cmp	rax, 1
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_337
	call	io_error
.label_339:
	cmp	rax, r15
	jae	.label_335
	xor	ebx, ebx
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_337
.label_335:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x20]
	call	strcmp
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x10]
	jle	.label_312
	xor	ebx, ebx
.label_337:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rdi, rbp
	call	free
	mov	eax, ebx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_312:
	mov	r13, qword ptr [rsp]
	jmp	.label_316
	.section	.text
	.align	32
	#Procedure 0x4045b8
	.globl sub_4045b8
	.type sub_4045b8, @function
sub_4045b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045c0
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
	#Procedure 0x4045d8
	.globl sub_4045d8
	.type sub_4045d8, @function
sub_4045d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0
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
	#Procedure 0x4045ef
	.globl sub_4045ef
	.type sub_4045ef, @function
sub_4045ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4045f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_340
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_340:
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
	#Procedure 0x404673
	.globl sub_404673
	.type sub_404673, @function
sub_404673:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404680

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_185
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4046b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4046ba
	.globl sub_4046ba
	.type sub_4046ba, @function
sub_4046ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0

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
	je	.label_342
	cmp	r15, -2
	jb	.label_342
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_342
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_342:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404716
	.globl sub_404716
	.type sub_404716, @function
sub_404716:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404720

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_240
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_343
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404745
	.globl sub_404745
	.type sub_404745, @function
sub_404745:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404750
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_206]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_207]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_208]
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
	#Procedure 0x4047be
	.globl sub_4047be
	.type sub_4047be, @function
sub_4047be:

	nop	
.label_344:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4047c5
	.globl sub_4047c5
	.type sub_4047c5, @function
sub_4047c5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047c9
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
	je	.label_344
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
	.section	.text
	.align	32
	#Procedure 0x404830
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_206]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_207]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_208]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_345
	test	rsi, rsi
	je	.label_345
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
.label_345:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40489c
	.globl sub_40489c
	.type sub_40489c, @function
sub_40489c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_206]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_207]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_208]
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
	#Procedure 0x4048f5
	.globl sub_4048f5
	.type sub_4048f5, @function
sub_4048f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404900
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
	#Procedure 0x404918
	.globl sub_404918
	.type sub_404918, @function
sub_404918:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404920

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
	#Procedure 0x404937
	.globl sub_404937
	.type sub_404937, @function
sub_404937:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404940

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_346
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_348
.label_346:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_348:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_358
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_347
.label_358:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_347:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_356
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_357
.label_356:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_357:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_354
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_355
.label_354:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_355:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_352
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_353
.label_352:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_353:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_350
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_351
.label_350:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_351:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_349
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_349
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_349
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_349
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_349:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b22
	.globl sub_404b22
	.type sub_404b22, @function
sub_404b22:

	nop	word ptr cs:[rax + rax]
.label_359:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404b35
	.globl sub_404b35
	.type sub_404b35, @function
sub_404b35:

	nop	dword ptr [rax + rax]
.label_361:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_360
	test	rax, rax
	je	.label_359
.label_360:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b51
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_359
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_361
	test	rbx, rbx
	jne	.label_361
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_362:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404b85
	.globl sub_404b85
	.type sub_404b85, @function
sub_404b85:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b8d
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
	je	.label_362
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
.label_364:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x404bfc
	.globl sub_404bfc
	.type sub_404bfc, @function
sub_404bfc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c08

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_364
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_363
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_364
.label_363:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_364
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_365
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_365:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c70
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_206]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_207]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_208]
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
	#Procedure 0x404cdf
	.globl sub_404cdf
	.type sub_404cdf, @function
sub_404cdf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404ce0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_366
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_367
	test	rax, rax
	je	.label_366
.label_367:
	pop	rbx
	ret	
.label_366:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404d15
	.globl sub_404d15
	.type sub_404d15, @function
sub_404d15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_368
	test	rax, rax
	je	.label_369
.label_368:
	pop	rbx
	ret	
.label_369:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404d3a
	.globl sub_404d3a
	.type sub_404d3a, @function
sub_404d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40

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
	#Procedure 0x404d59
	.globl sub_404d59
	.type sub_404d59, @function
sub_404d59:

	nop	dword ptr [rax]
.label_373:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_370
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404d80
	.globl sub_404d80
	.type sub_404d80, @function
sub_404d80:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d8f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_373
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_372
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_372
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_371
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_371:
	mov	rbx, r14
.label_372:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_379:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_381
	test	rax, rax
	je	.label_376
.label_381:
	pop	rbx
	ret	
.label_376:
	call	xalloc_die
.label_382:
	test	rcx, rcx
	jne	.label_378
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_378:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_377
.label_380:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_379
	test	rbx, rbx
	jne	.label_379
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e75
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_382
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_376
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_380
.label_377:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404ea7
	.globl sub_404ea7
	.type sub_404ea7, @function
sub_404ea7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdx, [rsp + 0x10]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rdi, rbx
	call	xstrtold
	test	al, al
	je	.label_399
	fld	xword ptr [rsp + 0x10]
	fld	st(0)
	fstp	xword ptr [rsp]
	fucomip	st(0)
	jp	.label_395
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbx
	nop	dword ptr [rax]
.label_383:
	movzx	edx, byte ptr [rbx + 1]
	inc	rbx
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	rdx, 0x2b
	je	.label_383
	test	cx, cx
	jne	.label_383
	mov	qword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x28], 0x7fffffff
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_393
	mov	esi, 0x70
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	jne	.label_393
	mov	dword ptr [rsp + 0x28], 0
.label_393:
	mov	rax, rbx
	nop	
.label_403:
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	je	.label_400
	inc	rax
	or	ecx, 0x20
	cmp	ecx, 0x78
	jne	.label_403
	jmp	.label_385
.label_400:
	fldz	
	fld	xword ptr [rsp]
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_385
	jp	.label_385
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x20], rax
	xor	ebp, ebp
	test	r15, r15
	je	.label_387
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_394:
	mov	rbp, rcx
	movsx	edx, byte ptr [r15 + rbp + 1]
	test	edx, edx
	je	.label_391
	lea	rcx, [rbp + 1]
	or	edx, 0x20
	cmp	edx, 0x65
	jne	.label_394
.label_391:
	cmp	rbp, 0x7fffffff
	ja	.label_397
	mov	dword ptr [rsp + 0x28], ebp
	mov	rcx, -1
	test	rbp, rbp
	je	.label_398
.label_397:
	mov	cl, 1
	cmp	r15, rbx
	je	.label_402
	movsx	ecx, byte ptr [r15 - 1]
	add	ecx, -0x30
	cmp	ecx, 9
	seta	cl
.label_402:
	movzx	ecx, cl
.label_398:
	add	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
.label_387:
	mov	esi, 0x65
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	jne	.label_386
	mov	esi, 0x45
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	je	.label_385
.label_386:
	mov	qword ptr [rsp], r14
	lea	rdi, [r13 + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	mov	r12, rax
	test	r12, r12
	movsxd	r14, dword ptr [rsp + 0x28]
	js	.label_396
	cmp	r14, r12
	mov	rax, r12
	cmovle	rax, r14
.label_396:
	sub	r14d, eax
	mov	dword ptr [rsp + 0x28], r14d
	mov	rdi, rbx
	call	strlen
	mov	rcx, r13
	sub	rcx, rbx
	sub	rcx, rax
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x20], rcx
	test	r12, r12
	js	.label_405
	test	r15, r15
	je	.label_384
	test	rbp, rbp
	je	.label_384
	test	r14d, r14d
	jne	.label_384
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_384:
	mov	r14, qword ptr [rsp]
	cmp	rbp, r12
	cmovae	rbp, r12
	sub	r12, rbp
	jmp	.label_388
.label_399:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_405:
	test	r15, r15
	mov	r14, qword ptr [rsp]
	je	.label_401
	inc	r15
	cmp	r13, r15
	jne	.label_404
.label_401:
	inc	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_404:
	neg	r12
.label_388:
	add	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
.label_385:
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movaps	xmm1, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
	call	quote_n
	mov	r15, rax
	mov	edi, 1
	mov	rsi, rbx
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x405178
	.globl sub_405178
	.type sub_405178, @function
sub_405178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405180
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405188
	.globl sub_405188
	.type sub_405188, @function
sub_405188:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405190

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
	jne	.label_410
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_414
	cmp	ecx, 0x55
	jne	.label_406
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_406
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_406
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_406
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_406
	cmp	byte ptr [rax + 5], 0
	jne	.label_406
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_412
	mov	eax, OFFSET FLAT:label_413
	jmp	.label_409
.label_414:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_406
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_406
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_406
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_406
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_406
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_406
	cmp	byte ptr [rax + 7], 0
	je	.label_411
.label_406:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_79
	mov	eax, OFFSET FLAT:label_105
.label_409:
	cmove	rax, rcx
.label_410:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_411:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_407
	mov	eax, OFFSET FLAT:label_408
	jmp	.label_409
	.section	.text
	.align	32
	#Procedure 0x405255
	.globl sub_405255
	.type sub_405255, @function
sub_405255:

	nop	word ptr cs:[rax + rax]
.label_415:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405265
	.globl sub_405265
	.type sub_405265, @function
sub_405265:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270
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
	je	.label_415
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
	.align	32
	#Procedure 0x405300
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_416
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_418:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_418
.label_416:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_420
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_419], OFFSET FLAT:slot0
.label_420:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_417
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_417:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405391
	.globl sub_405391
	.type sub_405391, @function
sub_405391:

	nop	word ptr cs:[rax + rax]
.label_424:
	mov	al, 1
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_421
	jnp	.label_423
.label_421:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_423
	.section	.text
	.align	32
	#Procedure 0x4053b8

	.globl xstrtold
	.type xstrtold, @function
xstrtold:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_425
	test	r15, r15
	jne	.label_424
	cmp	byte ptr [rcx], 0
	je	.label_424
	xor	eax, eax
	jmp	.label_422
.label_425:
	xor	eax, eax
.label_423:
	test	r15, r15
	je	.label_422
	mov	qword ptr [r15], rcx
.label_422:
	fstp	xword ptr [r14]
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40541f
	.globl sub_40541f
	.type sub_40541f, @function
sub_40541f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405420
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
	#Procedure 0x405453
	.globl sub_405453
	.type sub_405453, @function
sub_405453:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405460

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	strtold
	mov	r12, qword ptr [rsp]
	cmp	byte ptr [r12], 0
	je	.label_427
	fstp	xword ptr [rsp + 0x14]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	r12, rax
	jae	.label_426
	mov	qword ptr [rsp], rax
	mov	r12, rax
	jmp	.label_427
.label_426:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x14]
.label_427:
	test	r14, r14
	je	.label_428
	mov	qword ptr [r14], r12
.label_428:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054d3
	.globl sub_4054d3
	.type sub_4054d3, @function
sub_4054d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_206]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_207]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_208]
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
	#Procedure 0x405534
	.globl sub_405534
	.type sub_405534, @function
sub_405534:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540

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
	jne	.label_430
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_429
	test	cl, cl
	jne	.label_429
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_429
.label_430:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_429
	call	__errno_location
	mov	dword ptr [rax], 0
.label_429:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055a0
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
	je	.label_432
	test	r14, r14
	je	.label_431
.label_432:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_431:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4055d6
	.globl sub_4055d6
	.type sub_4055d6, @function
sub_4055d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055e8
	.globl sub_4055e8
	.type sub_4055e8, @function
sub_4055e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055f0
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
	#Procedure 0x405665
	.globl sub_405665
	.type sub_405665, @function
sub_405665:

	nop	word ptr cs:[rax + rax]
.label_433:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405675
	.globl sub_405675
	.type sub_405675, @function
sub_405675:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405679

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
	je	.label_434
	test	r15, r15
	je	.label_433
.label_434:
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
	.align	32
	#Procedure 0x4056b0

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_437
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_248
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_437:
	mov	rdi, qword ptr [rip + c_locale_cache]
	test	rdi, rdi
	je	.label_435
	call	uselocale
	mov	rbx, rax
	test	rbx, rbx
	je	.label_435
	mov	rdi, r14
	mov	rsi, r15
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	uselocale
	test	rax, rax
	je	.label_438
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_436
.label_435:
	fldz	
	test	r15, r15
	je	.label_436
	mov	qword ptr [r15], r14
.label_436:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_438:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405745
	.globl sub_405745
	.type sub_405745, @function
sub_405745:

	nop	word ptr cs:[rax + rax]
.label_439:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405755
	.globl sub_405755
	.type sub_405755, @function
sub_405755:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405763

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
	je	.label_440
	test	r15, r15
	je	.label_439
.label_440:
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
	.align	32
	#Procedure 0x4057a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_442
	cmp	byte ptr [rax], 0x43
	jne	.label_444
	cmp	byte ptr [rax + 1], 0
	je	.label_441
.label_444:
	mov	esi, OFFSET FLAT:label_443
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_442
.label_441:
	xor	ebx, ebx
.label_442:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057d1
	.globl sub_4057d1
	.type sub_4057d1, @function
sub_4057d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_206]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_207]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_208]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_445
	test	rdx, rdx
	je	.label_445
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_445:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40584e
	.globl sub_40584e
	.type sub_40584e, @function
sub_40584e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405850
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_206]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_207]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_208]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_446
	test	rdx, rdx
	je	.label_446
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_446:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4058ba
	.globl sub_4058ba
	.type sub_4058ba, @function
sub_4058ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c0

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
	jne	.label_447
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_447
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_448
.label_447:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_448:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_449
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_449:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40592e
	.globl sub_40592e
	.type sub_40592e, @function
sub_40592e:

	nop
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059a2
	.globl sub_4059a2
	.type sub_4059a2, @function
sub_4059a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059c6
	.globl sub_4059c6
	.type sub_4059c6, @function
sub_4059c6:

	nop	word ptr cs:[rax + rax]
