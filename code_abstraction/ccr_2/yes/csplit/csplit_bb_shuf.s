	.section	.text
	.align	16
	#Procedure 0x401c79
	.globl sub_401c79
	.type sub_401c79, @function
sub_401c79:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401c7a
	.globl sub_401c7a
	.type sub_401c7a, @function
sub_401c7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cb2
	.globl sub_401cb2
	.type sub_401cb2, @function
sub_401cb2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cfa
	.globl sub_401cfa
	.type sub_401cfa, @function
sub_401cfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d1c
	.globl sub_401d1c
	.type sub_401d1c, @function
sub_401d1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d2d
	.globl sub_401d2d
	.type sub_401d2d, @function
sub_401d2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d46
	.globl sub_401d46
	.type sub_401d46, @function
sub_401d46:

	nop	word ptr cs:[rax + rax]
.label_12:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d55
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
	je	.label_12
	test	rsi, rsi
	je	.label_12
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dc0

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
	.align	16
	#Procedure 0x401e15
	.globl sub_401e15
	.type sub_401e15, @function
sub_401e15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e20

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r14
	push	rbx
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebp, dword ptr [rsi + 8]
	xor	eax, eax
	mov	r14d, ebp
	mov	ebx, ebp
	dec	bl
	movzx	ebp, bl
	cmp	bpl, 6
	ja	.label_17
	jmp	qword ptr [(rbp * 8) + label_18]
.label_2450:
	cmp	byte ptr [rsi], cl
	je	.label_13
	xor	eax, eax
	jmp	.label_17
.label_2451:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_13
	xor	eax, eax
	jmp	.label_17
.label_2453:
	test	cl, cl
	js	.label_20
.label_2452:
	test	cl, cl
	je	.label_16
	cmp	cl, 0xa
	jne	.label_13
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_13
	xor	eax, eax
	jmp	.label_17
.label_16:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_21
.label_13:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_17
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_15
	test	ecx, ecx
	jne	.label_15
	xor	eax, eax
	jmp	.label_17
.label_15:
	mov	edx, r14d
	test	dh, 8
	je	.label_14
	test	ecx, ecx
	je	.label_14
.label_20:
	xor	eax, eax
	jmp	.label_17
.label_14:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_19
	mov	ecx, eax
	and	ecx, 2
	jne	.label_19
.label_21:
	xor	eax, eax
	jmp	.label_17
.label_19:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_17:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f0e
	.globl sub_401f0e
	.type sub_401f0e, @function
sub_401f0e:

	nop	
.label_23:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401f15
	.globl sub_401f15
	.type sub_401f15, @function
sub_401f15:

	nop	word ptr [rax + rax]
.label_25:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_22
	.section	.text
	.align	16
	#Procedure 0x401f29
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_23
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_24
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_25
.label_22:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_24:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f90
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_29
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_31
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_29
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_28
	xor	r12d, r12d
	test	r14, r14
	jle	.label_26
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_29
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_28
.label_27:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_28
.label_31:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_27
.label_29:
	mov	rax, -2
	jmp	.label_30
.label_26:
	mov	r13, r15
.label_28:
	mov	r8, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	0
	push	qword ptr [rsp + 0x60]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_30:
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
	#Procedure 0x402095
	.globl sub_402095
	.type sub_402095, @function
sub_402095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020a0

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	byte ptr [rip + remove_files],  0
	je	.label_32
	cmp	dword ptr [rip + files_created],  0
	je	.label_33
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_34:
	mov	edi, ebp
	call	make_filename
	mov	rdi, rax
	call	unlink
	inc	ebp
	cmp	ebp, dword ptr [rip + files_created]
	jb	.label_34
.label_33:
	mov	dword ptr [rip + files_created],  0
.label_32:
	xor	esi, esi
	mov	edi, ebx
	call	signal
	mov	edi, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	raise
	.section	.text
	.align	16
	#Procedure 0x4020f9
	.globl sub_4020f9
	.type sub_4020f9, @function
sub_4020f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402100

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_35
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_35
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_41
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_37
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_41:
	test	rcx, rcx
	je	.label_42
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_44
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_36
.label_40:
	dec	rax
.label_47:
	dec	rcx
	jmp	.label_39
	.section	.text
	.align	16
	#Procedure 0x402197
	.globl sub_402197
	.type sub_402197, @function
sub_402197:

	nop	word ptr [rax + rax]
.label_36:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_40
	jge	.label_47
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_39:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_36
.label_44:
	test	rax, rax
	js	.label_48
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_48:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_35
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_38:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_43:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_46
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_43
	jmp	.label_35
	.section	.text
	.align	16
	#Procedure 0x402245
	.globl sub_402245
	.type sub_402245, @function
sub_402245:

	nop	word ptr cs:[rax + rax]
.label_46:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_38
	lea	rsi, [rdi + r12*8]
.label_45:
	call	memcpy
.label_35:
	xor	eax, eax
.label_37:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_42:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_45
	.section	.text
	.align	16
	#Procedure 0x40228f
	.globl sub_40228f
	.type sub_40228f, @function
sub_40228f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402290

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x218
	mov	r14, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x250]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x118], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_96
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_96:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r9 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r9
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_82
	mov	rax, qword ptr [r11 + 0x48]
	test	rax, rax
	je	.label_82
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_82
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_82
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_82
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x58], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_101
	mov	rax, r8
	mov	r14, rsi
	jmp	.label_55
.label_101:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_119
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_149
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_119
.label_149:
	xor	eax, eax
	test	rbp, rbp
	je	.label_178
	test	r8, r8
	mov	ebp, 0
	jne	.label_82
	jmp	.label_55
.label_119:
	mov	rax, r8
.label_55:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x40], r13
	mov	qword ptr [rsp + 0x1e8], r15
	mov	qword ptr [rsp + 0x1e0], r12
	sub	r9, r12
	mov	qword ptr [rsp + 0x38], r9
	mov	byte ptr [rsp + 7], 1
	jne	.label_57
	cmp	qword ptr [r11 + 0x98], 0
	setne	byte ptr [rsp + 7]
.label_57:
	mov	r15, qword ptr [r11 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x48], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x80], rdx
	mov	qword ptr [rsp + 0xd8], rbx
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0xf8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x108], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0x10b], r12b
	mov	dword ptr [rsp + 0x110], eax
	mov	cl, byte ptr [r11 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x109], dl
	mov	byte ptr [rsp + 0x10a], cl
	mov	qword ptr [rsp + 0xe8], rsi
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0xe0], rsi
	mov	qword ptr [rsp + 0x20], r11
	jl	.label_152
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_52
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_52
	mov	qword ptr [rsp + 0x90], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_152:
	test	r12b, r12b
	je	.label_143
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_52
	mov	qword ptr [rsp + 0x88], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_143:
	mov	edx, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0xc0], r15
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x100], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	ecx, eax
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x10e], cl
	xor	ecx, ecx
	test	r12b, r12b
	jne	.label_111
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0x78]
.label_111:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xb8], rcx
	mov	qword ptr [rsp + 0xe8], r14
	mov	qword ptr [rsp + 0xe0], r14
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	r14, qword ptr [r11 + 0x98]
	lea	r13, [r14 + r14]
	mov	dword ptr [rsp + 0x120], edx
	mov	qword ptr [rsp + 0x128], -1
	test	r14, r14
	jle	.label_168
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_52
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x158], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x178], rax
	test	r12, r12
	je	.label_52
	test	rax, rax
	je	.label_52
.label_168:
	mov	qword ptr [rsp + 0x150], r13
	mov	dword ptr [rsp + 0x160], 1
	mov	qword ptr [rsp + 0x170], r13
	cmp	qword ptr [rsp + 0x38], 1
	mov	rax, qword ptr [rsp + 0x20]
	ja	.label_90
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_90
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_105
.label_90:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_52
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_52
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0xb4]
.label_105:
	mov	eax, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0x28], rbp
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, rbp
	mov	r15, rbp
	cmovle	r15, rbx
	mov	r12, rbx
	cmovl	r12, rbp
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x40], 0
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_125
	cmp	edi, 1
	je	.label_141
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_93
	mov	rdx, qword ptr [rsp + 0x48]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_93
.label_141:
	mov	eax, 4
.label_93:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rbx
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_125:
	mov	qword ptr [rsp + 0x208], rdi
	xor	edx, edx
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xf]
	lea	rsi, [rsp + 0x28]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1d8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x200], rsi
	cmp	rbx, rbp
	mov	eax, 1
	mov	r13, -1
	cmovge	r13, rax
	add	ecx, -4
	mov	qword ptr [rsp + 0x210], rcx
	mov	qword ptr [rsp + 0x70], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	jmp	.label_126
.label_178:
	xor	ebp, ebp
	jmp	.label_55
.label_74:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_62
	cmp	ebx, 1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_50
	jmp	.label_52
.label_175:
	test	al, al
	js	.label_63
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r8
	mov	ecx, 1
	jne	.label_65
	mov	r14, r8
	jmp	.label_70
.label_166:
	mov	r14, r8
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_79
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_85
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_79
.label_85:
	mov	dword ptr [rsp + 0x18], 0
	mov	r8, r14
	jmp	.label_92
.label_63:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r8
	mov	r14, r8
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 7]
	je	.label_70
	or	rdx, r14
	mov	r8, r14
	jmp	.label_65
.label_79:
	movsxd	r14, eax
	jmp	.label_70
	.section	.text
	.align	16
	#Procedure 0x4028d6
	.globl sub_4028d6
	.type sub_4028d6, @function
sub_4028d6:

	nop	word ptr cs:[rax + rax]
.label_126:
	mov	rax, qword ptr [rsp + 0x210]
	cmp	eax, 4
	ja	.label_116
	jmp	qword ptr [(rax * 8) + label_121]
.label_2645:
	cmp	rbp, r15
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x58]
	jl	.label_171
	nop	dword ptr [rax + rax]
.label_154:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_133
	movzx	eax, byte ptr [rdx + rbp]
.label_133:
	test	rdi, rdi
	je	.label_137
	movzx	eax, byte ptr [rdi + rax]
.label_137:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_140
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rbp, r15
	mov	rbp, rax
	jg	.label_154
	jmp	.label_171
.label_2647:
	cmp	rbp, r12
	jge	.label_147
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	dword ptr [rax + rax]
.label_157:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_147
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_157
	jmp	.label_147
.label_2646:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	jge	.label_147
	nop	dword ptr [rax]
.label_161:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_147
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_161
	nop	word ptr [rax + rax]
.label_147:
	cmp	rbp, r12
	jne	.label_120
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_167
	movzx	eax, byte ptr [rcx + r12]
.label_167:
	mov	rcx, qword ptr [rsp + 0x58]
	test	rcx, rcx
	je	.label_174
	movzx	eax, byte ptr [rcx + rax]
.label_174:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_120
	jmp	.label_52
.label_116:
	mov	rax, qword ptr [rsp + 0xa8]
	jmp	.label_51
.label_102:
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_52
	cmp	rbp, r12
	jle	.label_51
	jmp	.label_52
.label_88:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_52
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_76
	.section	.text
	.align	16
	#Procedure 0x402a66
	.globl sub_402a66
	.type sub_402a66, @function
sub_402a66:

	nop	word ptr cs:[rax + rax]
.label_51:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0xb8]
	jae	.label_88
.label_76:
	cmp	rbp, qword ptr [rsp + 0x78]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x40]
	jge	.label_91
	mov	rdx, qword ptr [rsp + 0x88]
	movzx	edx, byte ptr [rdx + rcx]
.label_91:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_102
	jmp	.label_120
.label_140:
	mov	rax, rbp
.label_171:
	mov	ebx, 1
	cmp	rax, r15
	mov	rbp, rax
	jl	.label_52
.label_120:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_52
	mov	rax, qword ptr [rsp + 0x208]
	cmp	eax, 1
	je	.label_115
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_115
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_124
.label_115:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0xb8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x88], xmm0
	mov	rbp, qword ptr [rsp + 0x118]
	mov	r8, qword ptr [rsp + 0xc8]
	mov	dword ptr [rsp + 8], 0
	mov	rbx, qword ptr [rbp + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_128
	mov	r14b, byte ptr [rsp + 0xf]
	jmp	.label_123
	.section	.text
	.align	16
	#Procedure 0x402b4f
	.globl sub_402b4f
	.type sub_402b4f, @function
sub_402b4f:

	nop	
.label_128:
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [r8 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	test	al, 1
	mov	r14b, byte ptr [rsp + 0xf]
	jne	.label_153
	test	eax, eax
	je	.label_155
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_156
	test	sil, sil
	jne	.label_156
	mov	rbx, qword ptr [rbp + 0x60]
	jmp	.label_123
.label_153:
	mov	rbx, qword ptr [rbp + 0x50]
.label_155:
	mov	r8, qword ptr [rsp + 0x10]
.label_123:
	test	rbx, rbx
	je	.label_162
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	mov	cl, r14b
	mov	dword ptr [rsp + 0x18], ecx
	je	.label_92
	mov	qword ptr [rax + r8*8], rbx
	cmp	qword ptr [rbp + 0x98], 0
	mov	al, r14b
	mov	dword ptr [rsp + 0x18], eax
	jne	.label_166
.label_92:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	jne	.label_175
.label_65:
	mov	r14, qword ptr [rsp + 0xc8]
	mov	rax, qword ptr [rsp + 0x200]
.label_95:
	mov	r13, rax
	mov	qword ptr [rsp + 0x60], rdx
	cmp	qword ptr [rsp + 0xe8], r14
	jle	.label_53
	test	rcx, rcx
	sete	al
	or	al, byte ptr [rsp + 7]
	mov	byte ptr [rsp + 0x198], al
	mov	r12, rbx
	jmp	.label_61
.label_60:
	add	r14d, 2
	lea	rdi, [rsp + 0x80]
	mov	esi, r14d
	mov	rbx, r8
	call	extend_buffers
	mov	r8, rbx
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_75
	jmp	.label_81
.label_165:
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_84
	mov	rbp, qword ptr [rsp + 0x118]
	xor	edx, edx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x1f8], rbp
.label_122:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rbp]
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x68], rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_94
	mov	r14d, ebx
	shr	r14d, 8
	test	r14w, 0x3ff
	mov	r9, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x180], rdx
	je	.label_58
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	mov	rsi, r9
	mov	rbp, r9
	call	re_string_context_at
	mov	r9, rbp
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	ecx, eax
	and	ecx, 1
	test	r14b, 4
	je	.label_117
	test	ecx, ecx
	je	.label_94
.label_117:
	test	bh, 8
	je	.label_130
	test	ecx, ecx
	jne	.label_94
.label_130:
	test	bh, 0x20
	je	.label_132
	mov	ecx, eax
	and	ecx, 2
	je	.label_94
.label_132:
	test	r14b, r14b
	jns	.label_58
	and	eax, 8
	je	.label_94
.label_58:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	lea	rdx, [rsp + 0x80]
	mov	rcx, r9
	call	check_node_accept_bytes
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_94
	movsxd	rbx, eax
	add	rbx, qword ptr [rsp + 0xc8]
	mov	ecx, dword ptr [rsp + 0x160]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x160], ecx
	mov	r14, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	rcx, rbx
	jg	.label_151
	cmp	rcx, rax
	jl	.label_180
.label_151:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	rcx, rbx
	jg	.label_72
	cmp	rcx, rax
	jge	.label_72
.label_180:
	lea	esi, [rbx + 1]
	lea	rdi, [rsp + 0x80]
	call	extend_buffers
	test	eax, eax
	jne	.label_169
.label_72:
	mov	rdx, rbx
	sub	rdx, r14
	jle	.label_73
	mov	rax, qword ptr [rsp + 0x138]
	lea	rdi, [rax + r14*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x140], rbx
.label_73:
	mov	dword ptr [rsp + 0x34], 0
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x68], rbx
	mov	rax, qword ptr [rax + rbx*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x1f0], rax
	je	.label_181
	mov	rsi, qword ptr [rax + 0x50]
	lea	rbx, [rsp + 0x1a0]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_163
	jmp	.label_54
.label_181:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	lea	rbx, [rsp + 0x1a0]
.label_163:
	mov	r14, qword ptr [rsp + 0x68]
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rsi, rbp
	mov	rdx, rbx
	mov	ecx, eax
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x1f0], 0
	mov	rcx, qword ptr [rsp + 0x138]
	mov	qword ptr [rcx + r14*8], rax
	je	.label_106
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
.label_106:
	mov	rax, qword ptr [rsp + 0x138]
	cmp	qword ptr [rax + r14*8], 0
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x180]
	jne	.label_94
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_118
.label_94:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jl	.label_122
.label_84:
	mov	dword ptr [rsp + 8], 0
	jmp	.label_127
.label_177:
	mov	rsi, qword ptr [rsp + 0xc8]
	dec	rsi
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, rbx
	mov	rbx, qword ptr [r14 + rax*8]
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_138
.label_129:
	cmp	r12, rbx
	je	.label_142
	mov	dword ptr [rsp + 0x18], 0
.label_142:
	cmove	r8, r15
	jmp	.label_144
.label_118:
	mov	dword ptr [rsp + 8], eax
.label_59:
	xor	ebx, ebx
	jmp	.label_138
.label_169:
	mov	dword ptr [rsp + 0x34], eax
.label_54:
	mov	dword ptr [rsp + 8], eax
	xor	ebx, ebx
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x402f79
	.globl sub_402f79
	.type sub_402f79, @function
sub_402f79:

	nop	dword ptr [rax]
.label_61:
	lea	r15, [r14 + 1]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	r15, rcx
	jl	.label_158
	cmp	rcx, rax
	jl	.label_60
.label_158:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	r15, rcx
	jl	.label_81
	cmp	rcx, rax
	jl	.label_60
.label_81:
	test	byte ptr [r12 + 0x68], 0x20
	jne	.label_165
.label_127:
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ebx, byte ptr [rcx + rax]
.label_87:
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	jne	.label_176
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, qword ptr [r12 + 0x60]
	test	r14, r14
	jne	.label_177
	mov	rdi, qword ptr [rsp + 0x118]
	mov	rsi, r12
	call	build_trtable
	test	al, al
	mov	r8, qword ptr [rsp + 0x10]
	jne	.label_87
	mov	dword ptr [rsp + 8], 0xc
	jmp	.label_59
	.section	.text
	.align	16
	#Procedure 0x403027
	.globl sub_403027
	.type sub_403027, @function
sub_403027:

	nop	word ptr [rax + rax]
.label_176:
	mov	rbx, qword ptr [rax + rbx*8]
.label_138:
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_69
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	mov	rdx, rbx
	mov	rbx, r8
	call	merge_state_with_log
	mov	r8, rbx
	mov	rbx, rax
.label_69:
	test	rbx, rbx
	jne	.label_68
	cmp	dword ptr [rsp + 8], 0
	jne	.label_86
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x198]
	cmp	cl, 1
	je	.label_89
	jmp	.label_53
.label_160:
	mov	rax, qword ptr [rsp + 0x138]
	mov	r8, rbp
.label_89:
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	rcx, qword ptr [rsp + 0x140]
	nop	dword ptr [rax + rax]
.label_146:
	cmp	rdx, rcx
	jge	.label_53
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xc8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_146
	mov	rbp, r8
	xor	edx, edx
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_103
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	je	.label_160
.label_103:
	test	rbx, rbx
	mov	r8, rbp
	je	.label_53
	nop	word ptr cs:[rax + rax]
.label_68:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	jne	.label_129
.label_144:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_114
	mov	r14, qword ptr [rsp + 0xc8]
	jmp	.label_135
	.section	.text
	.align	16
	#Procedure 0x40312d
	.globl sub_40312d
	.type sub_40312d, @function
sub_40312d:

	nop	dword ptr [rax]
.label_114:
	mov	r14, qword ptr [rsp + 0xc8]
	test	al, al
	jns	.label_145
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, r8
	call	check_halt_state_context
	mov	r8, rbp
	test	rax, rax
	jne	.label_145
.label_135:
	cmp	qword ptr [rsp + 0xe8], r14
	mov	r12, rbx
	jg	.label_61
	jmp	.label_53
.label_145:
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r14
	mov	ecx, 1
	mov	eax, 0
	mov	r13, qword ptr [rsp + 0x70]
	jne	.label_95
	jmp	.label_70
	.section	.text
	.align	16
	#Procedure 0x40318c
	.globl sub_40318c
	.type sub_40318c, @function
sub_40318c:

	nop	dword ptr [rax]
.label_53:
	mov	rax, r13
	test	rax, rax
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_159
	add	qword ptr [rax], r8
.label_159:
	mov	r14, qword ptr [rsp + 0x60]
.label_70:
	cmp	r14, -1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_50
	mov	ebx, 0xc
	cmp	r14, -2
	je	.label_52
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r12, 1
	seta	al
	mov	qword ptr [rsp + 0x128], r14
	mov	rcx, qword ptr [rsp + 0x48]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r15b
	and	r15b, al
	je	.label_170
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_83
.label_170:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_62
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	test	r15b, 1
	je	.label_172
.label_83:
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_80
.label_172:
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_62
.label_80:
	movabs	rax, 0x1ffffffffffffffe
	cmp	r14, rax
	ja	.label_52
	mov	r15, qword ptr [rsp + 0x118]
	mov	r12, qword ptr [rsp + 0x130]
	lea	rbp, [r14*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13, rax
	test	rax, rax
	mov	eax, 0
	je	.label_104
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_108
	mov	qword ptr [rsp + 0x198], r15
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_113
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, rbp
	mov	rbx, rax
	call	memset
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], r12
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	r12, [rsp + 0x1a0]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_67
	lea	r13, [r14 + 1]
.label_66:
	cmp	qword ptr [r15], 0
	mov	rcx, qword ptr [rsp + 0x18]
	jne	.label_150
	cmp	qword ptr [rcx], 0
	jne	.label_150
	test	r14, r14
	jle	.label_139
	mov	rax, qword ptr [rsp + 0x138]
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_173:
	lea	r14, [r13 - 1]
	mov	rsi, qword ptr [rax + r13*8 - 8]
	test	rsi, rsi
	je	.label_100
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_164
.label_100:
	cmp	r13, 2
	mov	r13, r14
	jge	.label_173
	jmp	.label_139
.label_164:
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	rdx, r14
	mov	rbx, rcx
	call	check_halt_state_context
	mov	rbp, rax
	lea	rdx, [r13*8]
	xor	esi, esi
	mov	rdi, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0x1b0], rbp
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	je	.label_66
.label_67:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_74
.label_108:
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	ebp, 0
	jne	.label_74
	cmp	qword ptr [r15], 0
	mov	ecx, 0
	jne	.label_64
.label_139:
	mov	rdi, r15
	mov	rbx, rcx
	call	free
	mov	rdi, rbx
	call	free
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	mov	r13, qword ptr [rsp + 0x70]
.label_50:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
.label_124:
	mov	rbp, qword ptr [rsp + 0x28]
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_52
	cmp	r12, rbp
	jge	.label_126
	jmp	.label_52
.label_156:
	test	edx, edx
	jne	.label_71
	test	ecx, ecx
	je	.label_123
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbx, rax
	jmp	.label_123
.label_71:
	mov	rbx, qword ptr [rbp + 0x58]
	jmp	.label_123
.label_150:
	mov	rdi, qword ptr [rsp + 0x198]
	mov	rsi, r15
	mov	rdx, rcx
	mov	rbp, rcx
	mov	rcx, r13
	call	merge_state_array
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	ebp, 0
	mov	r12, qword ptr [rsp + 0x60]
	jne	.label_74
.label_64:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	qword ptr [rsp + 0x138], r15
	mov	qword ptr [rsp + 0x130], r12
	mov	qword ptr [rsp + 0x128], r14
	mov	r12, qword ptr [rsp + 0x38]
.label_62:
	xor	ebx, ebx
	test	r12, r12
	je	.label_52
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, 1
	je	.label_179
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdi, [rax + 0x10]
	cmp	rbx, 2
	mov	edx, 2
	cmova	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_179:
	mov	rax, qword ptr [rsp + 0x258]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rcx + 8], rax
	cmp	rbx, 2
	jb	.label_49
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_49
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_56
	xor	eax, eax
	jmp	.label_131
.label_56:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_131:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x38]
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rcx, qword ptr [rsp + 0x258]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_52
.label_49:
	mov	r9b, byte ptr [rsp + 0x10c]
	mov	r8, qword ptr [rsp + 0x98]
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdx, [rax + 8]
	xor	ecx, ecx
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x250]
	mov	r10, qword ptr [rsp + 0x1e0]
	jmp	.label_78
.label_75:
	cmp	eax, 0xc
	je	.label_86
	mov	edi, OFFSET FLAT:label_97
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_99
	call	__assert_fail
.label_162:
	cmp	dword ptr [rsp + 8], 0xc
	jne	.label_107
.label_86:
	mov	ebx, 0xc
	jmp	.label_52
.label_136:
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	lea	rsi, [rsp + 0xb8]
	mov	r11, rsi
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	mov	rbp, qword ptr [rsp + 0x258]
	lea	rbp, [rbp + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_110
	.section	.text
	.align	16
	#Procedure 0x403713
	.globl sub_403713
	.type sub_403713, @function
sub_403713:

	nop	word ptr cs:[rax + rax]
.label_78:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_109
	test	r9b, r9b
	jne	.label_136
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_110:
	mov	rsi, qword ptr [rsp + 0x28]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_109:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r10, rax
	jne	.label_78
	test	r10, r10
	mov	rbp, qword ptr [rsp + 0x38]
	jle	.label_148
	mov	rdi, rbp
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x258]
	mov	rdx, r10
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_148:
	mov	rax, qword ptr [r14 + 0xe0]
	xor	ebx, ebx
	test	rax, rax
	je	.label_52
	cmp	rbp, 2
	jb	.label_52
	mov	rcx, qword ptr [rsp + 0x1e0]
	sub	qword ptr [rsp + 0x1e8], rcx
	mov	rcx, qword ptr [rsp + 0x258]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_112
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x258]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_112:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x1e8], rdx
	jne	.label_134
.label_52:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_77
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x178]
	call	free
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
.label_77:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	cmp	byte ptr [rsp + 0x10b], 0
	je	.label_82
	mov	rdi, qword ptr [rsp + 0x88]
	call	free
.label_82:
	mov	eax, ebx
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_113:
	mov	qword ptr [rsp + 0x1d8], r13
.label_104:
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rbp, rax
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_52
.label_107:
	mov	edi, OFFSET FLAT:label_97
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_99
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4038c7
	.globl sub_4038c7
	.type sub_4038c7, @function
sub_4038c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038d0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r12, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r12
	jle	.label_228
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_241
	mov	qword ptr [rbx + 0x20], 0
.label_241:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r12
	jne	.label_186
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_186:
	test	r14, r14
	je	.label_188
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_208
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_210
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_215
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_215:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_220
.label_203:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_200:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_188
	add	qword ptr [rbx + 8], r14
.label_188:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_226
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_235
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_242
	jmp	.label_184
.label_226:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_182
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_184
.label_235:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_184:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_242:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_228:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_186
.label_208:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_202
.label_194:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_206
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_212
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_183:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_212
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_183
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_222
.label_236:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_238
	cmp	rax, -3
	ja	.label_238
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_238:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_190
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_212:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_196
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_205
.label_210:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_214:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_207
	jge	.label_225
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_207:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_214
.label_225:
	xor	ecx, ecx
	cmp	rsi, r14
	setl	cl
	lea	rbp, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	mov	r15, r8
	call	re_string_context_at
	mov	rsi, r15
	mov	dword ptr [rbx + 0x70], eax
	mov	rdi, qword ptr [rsp]
	mov	rdx, rdi
	sub	rdx, r14
	jle	.label_211
	cmp	rbp, r14
	jne	.label_211
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_211
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_200
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_232:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_232
	jmp	.label_200
.label_220:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_203
.label_211:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_243:
	mov	rax, rbp
	test	rax, rax
	jle	.label_213
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_243
.label_213:
	cmp	rax, rdi
	jge	.label_192
	mov	rcx, qword ptr [rbx + 0x10]
.label_216:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_192
	inc	rax
	cmp	rax, rdi
	jl	.label_216
.label_192:
	cmp	rax, rdi
	jne	.label_218
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_200
.label_182:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_223
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_224
	jmp	.label_231
.label_189:
	mov	r12, qword ptr [r13]
.label_224:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_234
.label_195:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_244
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_244:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_189
	jmp	.label_193
.label_234:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_195
.label_206:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_197
	mov	cl, byte ptr [rsi + rdx]
.label_197:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_204
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_204
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_204:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_200
.label_218:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_237
	jle	.label_219
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_219:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_237:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_200
.label_196:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_191
.label_223:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_184
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_239
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_185
.label_198:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_185:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_198
	mov	rax, rcx
.label_239:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_184
.label_193:
	mov	r15, r14
.label_231:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_184
.label_221:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_199
	test	rax, rax
	je	.label_199
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_199:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_230
.label_205:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rbx + 0x50]
	sub	rdx, rbp
	mov	rsi, qword ptr [rbx]
	add	rsi, rbp
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp]
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_221
	mov	edx, dword ptr [rsp + 8]
.label_230:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_205
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_191
.label_190:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_229
.label_217:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_201
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_201:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_240
.label_191:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_240:
	test	rbp, rbp
	jne	.label_187
.label_209:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_200
.label_202:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_194
.label_187:
	jle	.label_227
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_227:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_209
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_209
.label_229:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_201
	test	eax, eax
	je	.label_217
	jmp	.label_201
.label_222:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_236
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_233:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_233
	jmp	.label_236
	.section	.text
	.align	16
	#Procedure 0x404003
	.globl sub_404003
	.type sub_404003, @function
sub_404003:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010

	.globl load_buffer
	.type load_buffer, @function
load_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	al, byte ptr [rip + have_read_eof]
	test	al, al
	jne	.label_251
	mov	rbx, qword ptr [rip + hold_count]
	cmp	rbx, 0x1fff
	mov	eax, 0x1fff
	cmovbe	rbx, rax
	jmp	.label_255
	.section	.text
	.align	16
	#Procedure 0x404042
	.globl sub_404042
	.type sub_404042, @function
sub_404042:

	nop	word ptr cs:[rax + rax]
.label_254:
	add	rbx, rbx
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, r14
	call	free
.label_255:
	cmp	rbx, 0x2000
	mov	r13d, 0x1fff
	jb	.label_268
	add	rbx, -0x1800
	and	rbx, 0xfffffffffffff800
	add	rbx, 0x1fff
	mov	r13, rbx
.label_268:
	mov	edi, 0x48
	call	xmalloc
	mov	r14, rax
	lea	rdi, [r13 + 1]
	call	xmalloc
	mov	r12, rax
	mov	qword ptr [r14 + 0x28], r12
	mov	qword ptr [r14], r13
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x30], xmm0
	mov	qword ptr [r14 + 0x20], 0
	mov	qword ptr [r14 + 8], 0
	mov	rax, qword ptr [rip + last_line_number]
	inc	rax
	mov	qword ptr [r14 + 0x18], rax
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14 + 0x40], 0
	mov	rbx, qword ptr [rip + hold_count]
	test	rbx, rbx
	je	.label_270
	mov	rsi, qword ptr [rip + hold_area]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [r14 + 8], rbx
	sub	r13, rbx
	mov	qword ptr [rip + hold_count],  0
	mov	r15d, 0
	je	.label_246
	add	r12, rbx
.label_270:
	xor	edi, edi
	mov	rsi, r12
	mov	rdx, r13
	call	safe_read
	mov	r15, rax
	test	r15, r15
	je	.label_253
	cmp	r15, -1
	jne	.label_246
	jmp	.label_260
	.section	.text
	.align	16
	#Procedure 0x404142
	.globl sub_404142
	.type sub_404142, @function
sub_404142:

	nop	word ptr cs:[rax + rax]
.label_253:
	mov	byte ptr [rip + have_read_eof],  1
	xor	r15d, r15d
.label_246:
	lea	rax, [r14 + 0x30]
	mov	qword ptr [rsp], rax
	add	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], r15
	je	.label_265
	mov	rbx, qword ptr [r14 + 0x28]
	mov	esi, 0xa
	mov	rdi, rbx
	mov	rdx, r15
	call	memchr
	mov	r13, rax
	xor	ebp, ebp
	test	r13, r13
	je	.label_245
	nop	word ptr cs:[rax + rax]
.label_267:
	mov	r12, r13
	sub	r12, rbx
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_261
	mov	rax, qword ptr [r14 + 0x38]
	jmp	.label_258
	.section	.text
	.align	16
	#Procedure 0x4041b6
	.globl sub_4041b6
	.type sub_4041b6, @function
sub_4041b6:

	nop	word ptr cs:[rax + rax]
.label_261:
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	qword ptr [r14 + 0x38], rax
	mov	qword ptr [r14 + 0x30], rax
.label_258:
	inc	r12
	cmp	qword ptr [rax], 0x50
	jne	.label_269
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [r14 + 0x38]
	mov	qword ptr [rcx + 0x518], rax
	mov	qword ptr [r14 + 0x38], rax
.label_269:
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 0x20], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	movdqu	xmm0, xmmword ptr [rax]
	paddq	xmm0, xmmword ptr [rip + label_256]
	movdqu	xmmword ptr [rax], xmm0
	sub	r15, r12
	mov	rbx, r13
	inc	rbx
	inc	rbp
	mov	esi, 0xa
	mov	rdi, rbx
	mov	rdx, r15
	call	memchr
	mov	r13, rax
	test	r13, r13
	jne	.label_267
	test	r15, r15
	je	.label_259
.label_245:
	cmp	byte ptr [rip + have_read_eof],  1
	jne	.label_274
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_247
	mov	r12, r14
	add	r12, 0x38
	mov	rax, qword ptr [r14 + 0x38]
	jmp	.label_272
	.section	.text
	.align	16
	#Procedure 0x40429d
	.globl sub_40429d
	.type sub_40429d, @function
sub_40429d:

	nop	dword ptr [rax]
.label_274:
	mov	rdi, rbx
	mov	rsi, r15
	call	xmemdup
	mov	rbx, rax
	mov	rdi, qword ptr [rip + hold_area]
	call	free
	mov	qword ptr [rip + hold_area],  rbx
	mov	qword ptr [rip + hold_count],  r15
	jmp	.label_259
.label_247:
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r12, r14
	add	r12, 0x38
	mov	qword ptr [r14 + 0x38], rax
	mov	qword ptr [r14 + 0x30], rax
.label_272:
	cmp	qword ptr [rax], 0x50
	jne	.label_248
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [r12]
	mov	qword ptr [rcx + 0x518], rax
	mov	qword ptr [r12], rax
.label_248:
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 0x20], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	movdqu	xmm0, xmmword ptr [rax]
	paddq	xmm0, xmmword ptr [rip + label_256]
	movdqu	xmmword ptr [rax], xmm0
	inc	rbp
.label_259:
	mov	qword ptr [r14 + 0x20], rbp
	mov	rax, qword ptr [rip + last_line_number]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14 + 0x18], rcx
	add	rax, rbp
	mov	qword ptr [rip + last_line_number],  rax
	test	rbp, rbp
	jne	.label_266
.label_265:
	mov	al, byte ptr [rip + have_read_eof]
	test	al, al
	jne	.label_250
	mov	rbx, qword ptr [r14]
	mov	rax, rbx
	shr	rax, 0x3e
	jne	.label_252
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax]
	test	rdi, rdi
	je	.label_254
	nop	word ptr cs:[rax + rax]
.label_262:
	mov	rbp, qword ptr [rdi + 0x518]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_262
	jmp	.label_254
.label_250:
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax]
	test	rdi, rdi
	je	.label_264
	nop	word ptr cs:[rax + rax]
.label_273:
	mov	rbx, qword ptr [rdi + 0x518]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_273
.label_264:
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, r14
	call	free
.label_251:
	xor	eax, eax
.label_263:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_266:
	mov	qword ptr [r14 + 0x40], 0
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	je	.label_257
	nop	word ptr [rax + rax]
.label_249:
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 0x40]
	test	rax, rax
	jne	.label_249
	mov	qword ptr [rcx + 0x40], r14
	mov	al, 1
	jmp	.label_263
.label_257:
	mov	qword ptr [rip + head],  r14
	mov	al, 1
	jmp	.label_263
.label_252:
	call	xalloc_die
.label_260:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x4044a2
	.globl sub_4044a2
	.type sub_4044a2, @function
sub_4044a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdx
	mov	r14, rdi
	mov	r11, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_277
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_277
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_292:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_283
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_292
.label_283:
	cmp	edi, 2
	jl	.label_277
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_281
.label_277:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_287
	jmp	qword ptr [(rax * 8) + label_278]
.label_2642:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_275
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_990
	nop	word ptr cs:[rax + rax]
.label_284:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_990:
	cmp	dil, 0x1e
	jne	.label_293
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_295
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_280
	nop	dword ptr [rax]
.label_293:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_286:
	mov	bl, byte ptr [rbx + rdx]
.label_280:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_275
	cmp	bl, r11b
	jne	.label_294
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_276
.label_294:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_284
	jmp	.label_275
.label_295:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_285
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_289
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_279
.label_289:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_279
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_282
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_282
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_291:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_282
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_291
.label_282:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_280
.label_285:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_286
.label_279:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_280
.label_276:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_288
	cmp	cl, 0x1c
	je	.label_290
	cmp	cl, 0x1a
	jne	.label_275
	mov	dword ptr [r14], 3
	jmp	.label_275
.label_288:
	mov	dword ptr [r14], 4
	jmp	.label_275
.label_290:
	mov	dword ptr [r14], 2
	jmp	.label_275
.label_2641:
	test	r9b, r9b
	jne	.label_287
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_275
.label_287:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_281:
	xor	eax, eax
.label_275:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40470a
	.globl sub_40470a
	.type sub_40470a, @function
sub_40470a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404710

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rdx
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	cmp	dword ptr [rcx + 0xb4], 1
	jne	.label_556
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_564
.label_556:
	xor	r14d, r14d
.label_564:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_443
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rcx
	nop	dword ptr [rax + rax]
.label_440:
	mov	rax, qword ptr [rsi + 0x18]
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [rcx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_320
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_574]
.label_2532:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_575
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_518
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_518:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_575:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_320
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_320
	mov	qword ptr [rsp + 0x18], r13
	mov	rdx, qword ptr [rsp]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_301
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
.label_305:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_301
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_305
.label_301:
	mov	qword ptr [rsp + 8], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x14]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 8]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_312
	mov	edi, dword ptr [rsp + 0x14]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_312
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_312:
	mov	r13, qword ptr [rsp + 0x18]
	jmp	.label_320
	.section	.text
	.align	16
	#Procedure 0x404899
	.globl sub_404899
	.type sub_404899, @function
sub_404899:

	nop	dword ptr [rax]
.label_2534:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_341:
	bt	rbp, rbx
	jae	.label_330
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_330
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_333
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_337
.label_333:
	mov	eax, ebx
.label_337:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_330:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_341
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_569:
	bt	rbp, rbx
	jae	.label_348
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_348
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_353
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_559
.label_353:
	lea	rax, [rbx + 0x40]
.label_559:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_348:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_569
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_378:
	bt	rbp, rbx
	jae	.label_363
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_363
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_365
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_368
.label_365:
	mov	rax, rbx
	sub	rax, -0x80
.label_368:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_363:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_378
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_392:
	bt	rbp, rbx
	jae	.label_379
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_379
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_382
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_386
.label_382:
	lea	rax, [rbx + 0xc0]
.label_386:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_379:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_392
	jmp	.label_320
	.section	.text
	.align	16
	#Procedure 0x404a0e
	.globl sub_404a0e
	.type sub_404a0e, @function
sub_404a0e:

	nop	
.label_2535:
	mov	r12, qword ptr [rsi]
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_396
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_399
	test	byte ptr [r12 + 0x20], 1
	jne	.label_399
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_396
.label_399:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 8]
	nop	word ptr [rax + rax]
.label_411:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 8]
	cmp	rax, -2
	jne	.label_409
	mov	byte ptr [r15 + rcx], 1
.label_409:
	inc	cl
	mov	byte ptr [rsp + 8], cl
	jne	.label_411
	jmp	.label_320
.label_396:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_320
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_438:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_417
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_417
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_424
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_424:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_417:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_428
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_428
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_428
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_428:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_438
	nop	
.label_320:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rsp]
	jl	.label_440
	jmp	.label_443
.label_2533:
	movaps	xmm0, xmmword ptr [rip + label_444]
	movups	xmmword ptr [r15 + 0xf0], xmm0
	movups	xmmword ptr [r15 + 0xe0], xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	cmp	eax, 2
	jne	.label_443
	or	byte ptr [r13 + 0x38], 1
.label_443:
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bf7
	.globl sub_404bf7
	.type sub_404bf7, @function
sub_404bf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c00
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
	je	.label_591
	test	r15, r15
	je	.label_590
.label_591:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_590:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404c42
	.globl sub_404c42
	.type sub_404c42, @function
sub_404c42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_598
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_598
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_609
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_598
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_608
.label_609:
	lea	r8, [r12 + 0x10]
.label_608:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_605:
	dec	rcx
	mov	rdi, r11
.label_606:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_595:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_592
	jl	.label_594
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_595
	jmp	.label_599
	.section	.text
	.align	16
	#Procedure 0x404d13
	.globl sub_404d13
	.type sub_404d13, @function
sub_404d13:

	nop	word ptr cs:[rax + rax]
.label_594:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_606
	jmp	.label_599
	.section	.text
	.align	16
	#Procedure 0x404d2b
	.globl sub_404d2b
	.type sub_404d2b, @function
sub_404d2b:

	nop	dword ptr [rax + rax]
.label_592:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_601
	nop	dword ptr [rax + rax]
.label_602:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_593
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_602
	jmp	.label_601
.label_593:
	je	.label_603
	nop	word ptr cs:[rax + rax]
.label_601:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_603:
	test	rcx, rcx
	jle	.label_599
	cmp	rdi, 2
	jge	.label_605
.label_599:
	mov	rdx, qword ptr [r12 + 8]
	lea	rcx, [rdx - 1]
	mov	r9, qword ptr [r15 + 8]
	add	r9, rcx
	add	r9, qword ptr [r14 + 8]
	mov	rax, r9
	sub	rax, r10
	lea	r8, [rax + 1]
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [r12 + 8], rsi
	mov	rdi, qword ptr [r12 + 0x10]
	test	rdx, rdx
	jle	.label_596
	test	rax, rax
	js	.label_596
	xor	edx, edx
.label_607:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_597:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_600
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_597
	jmp	.label_596
	.section	.text
	.align	16
	#Procedure 0x404ddf
	.globl sub_404ddf
	.type sub_404ddf, @function
sub_404ddf:

	nop	
.label_600:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_607
	jmp	.label_604
.label_596:
	mov	rdx, r8
.label_604:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_598:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e09
	.globl sub_404e09
	.type sub_404e09, @function
sub_404e09:

	nop	dword ptr [rax]
.label_611:
	mov	r8d, dword ptr [rip + digits]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_610
	xor	eax, eax
	mov	r9d, r14d
	call	__sprintf_chk
.label_612:
	mov	rax, qword ptr [rip + filename_space]
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e3e
	.globl sub_404e3e
	.type sub_404e3e, @function
sub_404e3e:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e41

	.globl make_filename
	.type make_filename, @function
make_filename:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	mov	rdi, qword ptr [rip + filename_space]
	mov	rsi, qword ptr [rip + prefix]
	call	strcpy
	mov	rbx, qword ptr [rip + suffix]
	mov	rbp, qword ptr [rip + filename_space]
	mov	rdi, qword ptr [rip + prefix]
	call	strlen
	mov	rdi, rax
	add	rdi, rbp
	cmp	rbx, 0
	je	.label_611
	mov	rcx, qword ptr [rip + suffix]
	mov	esi, 1
	mov	rdx, -1
	xor	eax, eax
	mov	r8d, r14d
	call	__sprintf_chk
	jmp	.label_612
	.section	.text
	.align	16
	#Procedure 0x404ea0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rsi
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_655
	lea	rax, [r14 + 0x58]
	mov	qword ptr [rbp - 0xc8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	ebx, ebx
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_657
	lea	rax, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x88], rax
	xor	r12d, r12d
	mov	qword ptr [rbp - 0x70], r15
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb0], r14
	nop	dword ptr [rax]
.label_705:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rsi]
	shl	rax, 4
	lea	rdi, [rcx + rax]
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	ecx, al
	mov	dword ptr [rbp - 0xa0], ecx
	cmp	ecx, 1
	jne	.label_670
	mov	cl, byte ptr [rdi]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
.label_630:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_679
	test	cl, 0x20
	je	.label_686
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_628
	mov	qword ptr [rbp - 0x50], 0x400
.label_686:
	test	cl, cl
	js	.label_694
	test	cl, 4
	je	.label_697
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_694
	mov	r9, rbx
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_703
	mov	rdx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r10, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r10
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	jmp	.label_708
	.section	.text
	.align	16
	#Procedure 0x405034
	.globl sub_405034
	.type sub_405034, @function
sub_405034:

	nop	word ptr cs:[rax + rax]
.label_670:
	cmp	al, 7
	je	.label_625
	cmp	al, 5
	je	.label_627
	cmp	al, 3
	jne	.label_628
	mov	rcx, qword ptr [rdi]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_630
.label_625:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, qword ptr [rsi + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_719
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_719:
	test	cl, cl
	jns	.label_630
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_630
.label_627:
	cmp	dword ptr [rsi + 0xb4], 2
	jl	.label_650
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_651
.label_650:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, -1
.label_651:
	mov	rdx, qword ptr [rsi + 0xd8]
	test	dl, 0x40
	jne	.label_663
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_663:
	test	dl, dl
	jns	.label_630
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_630
.label_703:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm0
	or	rbx, rdx
	or	rbx, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
.label_708:
	movq	rdx, xmm0
	or	rdx, rbx
	test	rdx, rdx
	mov	rbx, r9
	je	.label_628
.label_697:
	test	cl, 8
	je	.label_679
	cmp	dword ptr [rbp - 0xa0], 1
	setne	cl
	test	eax, 0x400000
	je	.label_689
	test	cl, cl
	jne	.label_689
	nop	word ptr cs:[rax + rax]
.label_694:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_628
.label_689:
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_701
	mov	rax, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rcx, xmm1
	or	rcx, r8
	or	rcx, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rcx
	jmp	.label_704
.label_701:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_704:
	test	rax, rax
	je	.label_628
	nop	word ptr cs:[rax + rax]
.label_679:
	mov	qword ptr [rbp - 0xa8], rbx
	test	r12, r12
	jle	.label_695
	mov	qword ptr [rbp - 0x78], r15
	mov	r14, qword ptr [rbp - 0x88]
	xor	r13d, r13d
	mov	qword ptr [rbp - 0x80], rdi
	jmp	.label_644
.label_695:
	xor	r13d, r13d
	jmp	.label_646
.label_631:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x90]
	movdqu	xmmword ptr [rax], xmm0
	mov	ebx, 0x1a
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15, qword ptr [rbp - 0x70]
	jmp	.label_649
	.section	.text
	.align	16
	#Procedure 0x4052d5
	.globl sub_4052d5
	.type sub_4052d5, @function
sub_4052d5:

	nop	word ptr cs:[rax + rax]
.label_644:
	cmp	dword ptr [rbp - 0xa0], 1
	jne	.label_661
	movzx	eax, byte ptr [rdi]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	ebx, 0x13
	bt	rcx, rax
	jae	.label_649
.label_661:
	mov	qword ptr [rbp - 0x58], r13
	mov	qword ptr [rbp - 0x60], r12
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [r14]
	mov	r13, qword ptr [r14 + 8]
	mov	rdx, r9
	and	rdx, rax
	mov	rsi, r13
	and	rsi, rcx
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x98], rdx
	or	rdi, rdx
	mov	r11, qword ptr [rbp - 0x40]
	mov	r12, qword ptr [r14 + 0x10]
	mov	r8, r12
	and	r8, r11
	or	rdi, r8
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r14 + 0x18]
	mov	r10, rsi
	and	r10, rdx
	mov	ebx, 0x13
	or	rdi, r10
	je	.label_654
	mov	rbx, rax
	not	rbx
	and	rbx, r9
	not	r9
	and	r9, rax
	mov	qword ptr [rbp - 0xc0], r9
	mov	qword ptr [rbp - 0x50], r9
	mov	r15, rcx
	not	r15
	and	r15, r13
	mov	rax, r15
	or	rax, rbx
	not	r13
	and	r13, rcx
	mov	qword ptr [rbp - 0x48], r13
	mov	rcx, r11
	not	rcx
	and	rcx, r12
	or	rax, rcx
	not	r12
	and	r12, r11
	mov	qword ptr [rbp - 0x40], r12
	mov	rdi, rdx
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	qword ptr [rbp - 0xb8], rsi
	je	.label_684
	mov	r11, qword ptr [rbp - 0x60]
	mov	rax, r11
	shl	rax, 5
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rdx + rax], rbx
	mov	qword ptr [rdx + rax + 8], r15
	mov	qword ptr [rdx + rax + 0x10], rcx
	mov	qword ptr [rdx + rax + 0x18], rdi
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], r8
	mov	qword ptr [r14 + 0x18], r10
	lea	rbx, [r11 + r11*2]
	mov	r15, qword ptr [rbp - 0x70]
	lea	rcx, [r15 + rbx*8]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r15 + rbx*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_714
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_631
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x98]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_638
.label_684:
	mov	r15, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0xa8]
	jmp	.label_640
.label_714:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_638:
	inc	qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0x70]
.label_640:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x78]
	call	re_node_set_insert
	mov	ebx, 0x1a
	test	al, al
	je	.label_654
	or	r13, qword ptr [rbp - 0xc0]
	or	r12, qword ptr [rbp - 0xb8]
	or	r12, r13
	mov	ebx, 0
	mov	eax, 0x11
	cmove	ebx, eax
.label_654:
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
.label_649:
	mov	eax, ebx
	and	al, 0x1f
	and	ebx, 0x1f
	cmp	al, 0x1a
	ja	.label_666
	jmp	qword ptr [(rbx * 8) + label_668]
.label_2522:
	inc	r13
	add	r14, 0x20
	add	qword ptr [rbp - 0x78], 0x18
	cmp	r13, r12
	jl	.label_644
.label_646:
	cmp	r13, r12
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	jne	.label_628
	mov	rax, r13
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x88]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	rcx, rbx
	lea	rbx, [r13 + r13*2]
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rcx*8]
	movdqa	xmm0, xmmword ptr [rip + label_256]
	movdqu	xmmword ptr [r15 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_691
	mov	qword ptr [rax], r14
	inc	r13
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r12, r13
	mov	rsi, qword ptr [rbp - 0x30]
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	nop	dword ptr [rax]
.label_628:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jl	.label_705
	test	r12, r12
	jle	.label_709
.label_666:
	lea	rax, [r12 + 1]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_721
	xor	ecx, ecx
.label_721:
	mov	dword ptr [rbp - 0x64], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_613
	test	rax, rax
	je	.label_613
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_617
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa8], 0
	jmp	.label_624
.label_617:
	call	malloc
	test	rax, rax
	je	.label_613
	mov	cl, 1
	mov	dword ptr [rbp - 0xa8], ecx
.label_624:
	mov	qword ptr [rbp - 0x58], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xb8], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	lea	r13, [rbp - 0x50]
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x78], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x80], rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], r12
	nop	word ptr cs:[rax + rax]
.label_616:
	mov	qword ptr [rbp - 0x48], 0
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	test	rax, rax
	jle	.label_656
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r14, qword ptr [rdx + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_678:
	mov	rcx, qword ptr [r14 + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_653
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x64], eax
	test	eax, eax
	jne	.label_614
	mov	rax, qword ptr [rbx]
	mov	rsi, qword ptr [rbp - 0x30]
.label_653:
	inc	r12
	cmp	r12, rax
	jl	.label_678
.label_656:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_677
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_614
.label_677:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_683
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_685
	.section	.text
	.align	16
	#Procedure 0x40578f
	.globl sub_40578f
	.type sub_40578f, @function
sub_40578f:

	nop	
.label_683:
	mov	ecx, 1
	lea	rdi, [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_698
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_614
.label_698:
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_641
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	dword ptr [rsi + 0xb4], 1
	mov	al, 1
	jg	.label_707
	mov	rax, qword ptr [rbp - 0x80]
.label_707:
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_716
.label_641:
	mov	rsi, qword ptr [rbp - 0x30]
.label_716:
	mov	ecx, 2
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_685
	mov	eax, dword ptr [rbp - 0x64]
	test	eax, eax
	jne	.label_614
	nop	word ptr cs:[rax + rax]
.label_685:
	mov	rax, r15
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 8]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x98], rdx
	mov	rdx, qword ptr [rbp - 0xa0]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0xa0], rdx
	inc	r15
	mov	r12, qword ptr [rbp - 0x60]
	cmp	r15, r12
	mov	rsi, qword ptr [rbp - 0x30]
	jl	.label_616
	mov	rax, qword ptr [rbp - 0x80]
	and	al, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	edi, 8
	jne	.label_643
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_614
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r13, qword ptr [rbp - 0x90]
	je	.label_652
	lea	r8, [rdi - 8]
	mov	edx, 1
	xor	esi, esi
	mov	rbx, qword ptr [rbp - 0x78]
	jmp	.label_659
.label_645:
	mov	rcx, r10
	mov	r9, r8
.label_662:
	add	r9, 8
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_662
	mov	rcx, qword ptr [rbp - 0x30]
	test	qword ptr [rcx + 0xb8], rdx
	je	.label_722
	mov	rcx, qword ptr [r9 + r15*8]
	jmp	.label_626
.label_722:
	mov	rcx, qword ptr [r9]
.label_626:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_669
	.section	.text
	.align	16
	#Procedure 0x40591a
	.globl sub_40591a
	.type sub_40591a, @function
sub_40591a:

	nop	word ptr [rax + rax]
.label_659:
	test	bl, 1
	jne	.label_645
.label_669:
	add	rdx, rdx
	shr	rbx, 1
	inc	rsi
	test	rbx, rbx
	jne	.label_659
.label_652:
	test	r13, r13
	mov	r11, qword ptr [rbp - 0xa0]
	mov	r12, qword ptr [rbp - 0x98]
	je	.label_675
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_676
.label_681:
	mov	rdx, r9
	mov	rcx, r8
.label_682:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_682
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_647
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_688
.label_647:
	mov	rcx, qword ptr [rcx]
.label_688:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_642
	.section	.text
	.align	16
	#Procedure 0x40598c
	.globl sub_40598c
	.type sub_40598c, @function
sub_40598c:

	nop	dword ptr [rax]
.label_676:
	test	r13b, 1
	jne	.label_681
.label_642:
	add	rsi, rsi
	shr	r13, 1
	inc	rbx
	test	r13, r13
	jne	.label_676
.label_675:
	test	r12, r12
	je	.label_715
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_700
.label_664:
	mov	rdx, r9
	mov	rcx, r8
.label_706:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_706
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_711
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_717
.label_711:
	mov	rcx, qword ptr [rcx]
.label_717:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_720
	.section	.text
	.align	16
	#Procedure 0x4059ef
	.globl sub_4059ef
	.type sub_4059ef, @function
sub_4059ef:

	nop	
.label_700:
	test	r12b, 1
	jne	.label_664
.label_720:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_700
.label_715:
	test	r11, r11
	je	.label_615
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_623
.label_718:
	mov	rdx, r9
	mov	rcx, r8
.label_619:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_619
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_622
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_690
.label_622:
	mov	rcx, qword ptr [rcx]
.label_690:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_629
	.section	.text
	.align	16
	#Procedure 0x405a4f
	.globl sub_405a4f
	.type sub_405a4f, @function
sub_405a4f:

	nop	
.label_623:
	test	r11b, 1
	jne	.label_718
.label_629:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_623
.label_615:
	mov	rcx, qword ptr [rbp - 0x78]
	test	ch, 4
	je	.label_634
	xor	ecx, ecx
	nop	
.label_637:
	test	byte ptr [r10 + 1], 4
	jne	.label_636
	inc	rcx
	add	r10, 0x20
	cmp	rcx, r15
	jl	.label_637
	jmp	.label_634
.label_636:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x80]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_634
	mov	qword ptr [rax + 0x850], rcx
.label_634:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_648
	call	free
.label_648:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_658:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_658
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_620
.label_613:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	jmp	.label_665
.label_691:
	lea	rax, [r15 + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r12, r13
.label_2523:
	mov	rbx, -1
	test	r12, r12
	jle	.label_657
	mov	rbx, r15
	add	rbx, 0x10
.label_672:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_672
	mov	rbx, -1
.label_657:
	mov	r12, rbx
.label_709:
	mov	rdi, r15
	call	free
	test	r12, r12
	jne	.label_655
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_620
.label_643:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_614
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	je	.label_692
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	jmp	.label_633
.label_614:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_702
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_702:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r12, qword ptr [rbp - 0x60]
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x70]
	jle	.label_713
.label_665:
	mov	rbx, r15
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_710:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_710
.label_713:
	mov	rdi, r15
	call	free
.label_655:
	xor	eax, eax
.label_620:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_632:
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rcx, r8
.label_618:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_618
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	jmp	.label_621
.label_633:
	test	dl, 1
	jne	.label_632
.label_621:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_633
.label_692:
	test	rcx, rcx
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	je	.label_635
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_639
.label_660:
	mov	r10, rcx
	mov	rdx, r9
	mov	rcx, r8
.label_693:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_693
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, r10
	jmp	.label_673
.label_639:
	test	cl, 1
	jne	.label_660
.label_673:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_639
.label_635:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	je	.label_699
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_667
.label_680:
	mov	r11, rdx
	mov	rdx, r9
	mov	rcx, r8
.label_671:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_671
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, r11
	jmp	.label_674
.label_667:
	test	dl, 1
	jne	.label_680
.label_674:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_667
.label_699:
	test	r12, r12
	je	.label_615
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_687
.label_712:
	mov	r11, r12
	mov	rdx, r9
	mov	rcx, r8
.label_696:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_696
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, r11
	jmp	.label_723
.label_687:
	test	r12b, 1
	jne	.label_712
.label_723:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_687
	jmp	.label_615
	.section	.text
	.align	16
	#Procedure 0x405ded
	.globl sub_405ded
	.type sub_405ded, @function
sub_405ded:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405df0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_724
	mov	eax, r9d
.label_724:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e1b
	.globl sub_405e1b
	.type sub_405e1b, @function
sub_405e1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e20

	.globl find_line
	.type find_line, @function
find_line:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15, qword ptr [rip + head]
	test	r15, r15
	jne	.label_725
	xor	r14d, r14d
	call	load_buffer
	test	al, al
	je	.label_729
	mov	r15, qword ptr [rip + head]
.label_725:
	mov	rax, qword ptr [r15 + 0x10]
	xor	r14d, r14d
	cmp	rax, rbx
	ja	.label_729
	test	r15, r15
	je	.label_726
	mov	rcx, qword ptr [r15 + 0x20]
	add	rcx, rax
	cmp	rcx, rbx
	jbe	.label_735
	mov	rcx, r15
	jmp	.label_728
.label_735:
	xor	r14d, r14d
.label_727:
	mov	rcx, qword ptr [r15 + 0x40]
	test	rcx, rcx
	jne	.label_730
	call	load_buffer
	test	al, al
	je	.label_729
	mov	rcx, qword ptr [r15 + 0x40]
	test	rcx, rcx
	je	.label_726
.label_730:
	mov	rax, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rcx + 0x20]
	add	rdx, rax
	cmp	rdx, rbx
	mov	r15, rcx
	jbe	.label_727
.label_728:
	sub	rbx, rax
	mov	rax, qword ptr [rcx + 0x30]
	cmp	rbx, 0x50
	jb	.label_736
	nop	dword ptr [rax + rax]
.label_734:
	add	rbx, -0x50
	mov	rax, qword ptr [rax + 0x518]
	cmp	rbx, 0x4f
	ja	.label_734
.label_736:
	shl	rbx, 4
	lea	r14, [rax + rbx + 0x18]
.label_729:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_726:
	mov	edi, OFFSET FLAT:label_731
	mov	esi, OFFSET FLAT:label_732
	mov	edx, 0x26a
	mov	ecx, OFFSET FLAT:label_733
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405eec
	.globl sub_405eec
	.type sub_405eec, @function
sub_405eec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0
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
	#Procedure 0x405f23
	.globl sub_405f23
	.type sub_405f23, @function
sub_405f23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f30

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r15, r15
	jle	.label_738
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_739:
	mov	rsi, qword ptr [rbx + rbp*8]
	mov	rdx, qword ptr [r14 + rbp*8]
	test	rsi, rsi
	je	.label_737
	test	rdx, rdx
	je	.label_740
	add	rsi, 8
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_738
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_740
	jmp	.label_738
	.section	.text
	.align	16
	#Procedure 0x405fb2
	.globl sub_405fb2
	.type sub_405fb2, @function
sub_405fb2:

	nop	word ptr cs:[rax + rax]
.label_737:
	mov	qword ptr [rbx + rbp*8], rdx
.label_740:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r15
	jl	.label_739
.label_738:
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
	#Procedure 0x405fdd
	.globl sub_405fdd
	.type sub_405fdd, @function
sub_405fdd:

	nop	dword ptr [rax]
.label_745:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_741
	mov	eax, OFFSET FLAT:label_742
	jmp	.label_743
	.section	.text
	.align	16
	#Procedure 0x405fef
	.globl sub_405fef
	.type sub_405fef, @function
sub_405fef:

	nop	word ptr cs:[rax + rax]
.label_750:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_744
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_744
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_744
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_744
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_744
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_744
	cmp	byte ptr [rax + 7], 0
	je	.label_745
.label_744:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_746
	mov	eax, OFFSET FLAT:label_747
.label_743:
	cmove	rax, rcx
.label_751:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406042

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
	jne	.label_751
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_750
	cmp	ecx, 0x55
	jne	.label_744
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_744
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_744
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_744
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_744
	cmp	byte ptr [rax + 5], 0
	jne	.label_744
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_748
	mov	eax, OFFSET FLAT:label_749
	jmp	.label_743
	.section	.text
	.align	16
	#Procedure 0x4060b0
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
	je	.label_752
	test	rsi, rsi
	je	.label_752
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
.label_752:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40611c
	.globl sub_40611c
	.type sub_40611c, @function
sub_40611c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406120

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_757
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_760
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_758
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_760:
	test	r15, r15
	jle	.label_761
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_755
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_755
.label_761:
	mov	rax, qword ptr [r13 + 0xd8]
.label_755:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_756
	mov	dword ptr [r13 + 0xe0], edi
.label_756:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_759
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_753
.label_759:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_754
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_754
.label_753:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_757
.label_754:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_757
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_757:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_758:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_757
	.section	.text
	.align	16
	#Procedure 0x4062f8
	.globl sub_4062f8
	.type sub_4062f8, @function
sub_4062f8:

	nop	dword ptr [rax + rax]
.label_762:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406305
	.globl sub_406305
	.type sub_406305, @function
sub_406305:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40630d

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
	je	.label_762
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
	#Procedure 0x406370

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r9
	mov	r15, r8
	mov	r13, rdx
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_775
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_775
	jmp	.label_776
	.section	.text
	.align	16
	#Procedure 0x4063bd
	.globl sub_4063bd
	.type sub_4063bd, @function
sub_4063bd:

	nop	dword ptr [rax]
.label_773:
	test	rbx, rbx
	cmove	rbx, r12
.label_775:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_779
	test	r15, r15
	je	.label_784
	cmp	eax, 9
	je	.label_779
.label_784:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, r15
	mov	r14, rbp
	mov	r9, r14
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_767
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_770
.label_767:
	test	rbx, rbx
	je	.label_773
	test	r12, r12
	je	.label_773
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rax + 0x80]
	cmp	ecx, 0xf
	je	.label_788
	mov	rsi, rax
	mov	rax, qword ptr [rsi + 0x70]
.label_774:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbx, rdx
	jmp	.label_775
.label_788:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_772
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbp, r14
	jmp	.label_774
.label_779:
	mov	r12, rbx
.label_776:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_770:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_776
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_780:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_780
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_780
.label_783:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_765
	cmp	eax, 6
	jne	.label_786
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_787
.label_765:
	mov	rdi, qword ptr [rbp + 0x28]
.label_787:
	call	free
.label_786:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_776
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_783
	test	rbx, rbx
	mov	rbp, rax
	je	.label_783
	jmp	.label_780
.label_772:
	mov	ebp, 0x400ff
	mov	rcx, r14
.label_763:
	mov	r13, r12
	mov	r12, qword ptr [r13 + 8]
	test	r12, r12
	jne	.label_763
	mov	r12, qword ptr [r13 + 0x10]
	test	r12, r12
	jne	.label_763
.label_785:
	mov	eax, dword ptr [r13 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_768
	cmp	eax, 6
	jne	.label_789
	mov	r15, qword ptr [r13 + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_766
.label_768:
	mov	rdi, qword ptr [r13 + 0x28]
.label_766:
	call	free
	mov	rcx, r14
.label_789:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_781
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, r13
	mov	r13, rax
	je	.label_785
	test	r12, r12
	mov	r13, rax
	je	.label_785
	jmp	.label_763
.label_781:
	mov	ebp, 0x400ff
.label_764:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_764
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_764
.label_771:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_769
	cmp	eax, 6
	jne	.label_777
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_778
.label_769:
	mov	rdi, qword ptr [r15 + 0x28]
.label_778:
	call	free
	mov	rcx, r14
.label_777:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_782
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_771
	test	rbx, rbx
	mov	r15, rax
	je	.label_771
	jmp	.label_764
.label_782:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_776
	.section	.text
	.align	16
	#Procedure 0x40667f
	.globl sub_40667f
	.type sub_40667f, @function
sub_40667f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406680

	.globl delete_all_files
	.type delete_all_files, @function
delete_all_files:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edi
	cmp	byte ptr [rip + remove_files],  0
	je	.label_790
	cmp	dword ptr [rip + files_created],  0
	je	.label_794
	xor	ebp, ebp
	nop	
.label_791:
	mov	edi, ebp
	call	make_filename
	mov	rbx, rax
	mov	rdi, rbx
	call	unlink
	test	eax, eax
	je	.label_793
	test	r14b, r14b
	jne	.label_793
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_792
	xor	eax, eax
	mov	esi, r15d
	call	error
.label_793:
	inc	ebp
	cmp	ebp, dword ptr [rip + files_created]
	jb	.label_791
.label_794:
	mov	dword ptr [rip + files_created],  0
.label_790:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406705
	.globl sub_406705
	.type sub_406705, @function
sub_406705:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406710

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_796
	cmp	byte ptr [rax], 0x43
	jne	.label_798
	cmp	byte ptr [rax + 1], 0
	je	.label_795
.label_798:
	mov	esi, OFFSET FLAT:label_797
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_796
.label_795:
	xor	ebx, ebx
.label_796:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406741
	.globl sub_406741
	.type sub_406741, @function
sub_406741:

	nop	word ptr cs:[rax + rax]
.label_799:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406755
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_804
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_799
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_805
.label_802:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_803
	test	rax, rax
	je	.label_799
.label_803:
	pop	rbx
	ret	
.label_800:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40679b
	.globl sub_40679b
	.type sub_40679b, @function
sub_40679b:

	nop	word ptr [rax + rax]
.label_804:
	test	rcx, rcx
	jne	.label_801
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_801:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_800
.label_805:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_802
	test	rbx, rbx
	jne	.label_802
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067f0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_809
	test	r12, r12
	jle	.label_814
	xor	r12d, r12d
	jmp	.label_807
	.section	.text
	.align	16
	#Procedure 0x40684c
	.globl sub_40684c
	.type sub_40684c, @function
sub_40684c:

	nop	dword ptr [rax]
.label_807:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_806
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_813:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_808
	cmp	qword ptr [rbx + rcx], r13
	je	.label_812
.label_808:
	inc	rax
	cmp	rax, r10
	jl	.label_813
.label_806:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_811:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_810
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_807
.label_814:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_809:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_810:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_809
	.section	.text
	.align	16
	#Procedure 0x4068fa
	.globl sub_4068fa
	.type sub_4068fa, @function
sub_4068fa:

	nop	word ptr [rax + rax]
.label_812:
	cmp	rbp, -1
	je	.label_806
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_811
	.section	.text
	.align	16
	#Procedure 0x40691d
	.globl sub_40691d
	.type sub_40691d, @function
sub_40691d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406920
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40692a
	.globl sub_40692a
	.type sub_40692a, @function
sub_40692a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406930

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r10, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [r10 + 0x30]
	lea	rcx, [r15 + r15*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_825
	lea	r11, [rax + rcx*8 + 8]
	mov	esi, 1
	mov	ecx, edx
	shl	rsi, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, eax
	shl	ecx, 0x1f
	sar	ecx, 0x1f
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x50], rsi
	xor	rsi, 0xffff
	mov	qword ptr [rsp + 0x28], rsi
	mov	ecx, eax
	and	ecx, 2
	mov	dword ptr [rsp + 0x10], ecx
	shr	ecx, 1
	cmp	rdx, 0x3f
	setg	bl
	mov	dword ptr [rsp + 0x14], ecx
	or	bl, cl
	mov	byte ptr [rsp + 0xb], bl
	and	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], rdx
	nop	word ptr cs:[rax + rax]
.label_824:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_821
	cmp	al, 8
	je	.label_826
	cmp	al, 4
	jne	.label_815
	cmp	r8, -1
	je	.label_815
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_820:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_817
	cmp	rdx, 0x3f
	jg	.label_830
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_817
.label_830:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_823
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_819
	.section	.text
	.align	16
	#Procedure 0x406a78
	.globl sub_406a78
	.type sub_406a78, @function
sub_406a78:

	nop	dword ptr [rax + rax]
.label_823:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbx, r8
	mov	r14, r11
	call	check_dst_limits_calc_pos_1
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_819
	test	eax, eax
	jne	.label_828
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_829
	jmp	.label_819
.label_828:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_817
.label_829:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_817:
	mov	ecx, r12d
.label_819:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_816
	test	al, al
	jne	.label_818
.label_816:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_820
	jmp	.label_815
	.section	.text
	.align	16
	#Procedure 0x406b23
	.globl sub_406b23
	.type sub_406b23, @function
sub_406b23:

	nop	word ptr cs:[rax + rax]
.label_821:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_815
	xor	eax, eax
	jmp	.label_827
	.section	.text
	.align	16
	#Procedure 0x406b3b
	.globl sub_406b3b
	.type sub_406b3b, @function
sub_406b3b:

	nop	dword ptr [rax + rax]
.label_826:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_815
	mov	eax, 0xffffffff
.label_827:
	cmp	qword ptr [rdi], rdx
	jne	.label_815
	jmp	.label_822
.label_818:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_822
	nop	dword ptr [rax]
.label_815:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_824
.label_825:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_822:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b84
	.globl sub_406b84
	.type sub_406b84, @function
sub_406b84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b90

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bb3
	.globl sub_406bb3
	.type sub_406bb3, @function
sub_406bb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bc0

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
	je	.label_831
	cmp	r15, -2
	jb	.label_831
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_831
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_831:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c16
	.globl sub_406c16
	.type sub_406c16, @function
sub_406c16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c28
	.globl sub_406c28
	.type sub_406c28, @function
sub_406c28:

	nop	dword ptr [rax + rax]
.label_832:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406c35
	.globl sub_406c35
	.type sub_406c35, @function
sub_406c35:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406c39
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
	je	.label_832
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
	.align	16
	#Procedure 0x406ca0
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
	je	.label_833
	mov	qword ptr [rax], rbx
.label_833:
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
	#Procedure 0x406d8c
	.globl sub_406d8c
	.type sub_406d8c, @function
sub_406d8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406d90
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
	.align	16
	#Procedure 0x406dff
	.globl sub_406dff
	.type sub_406dff, @function
sub_406dff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406e00

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12d, ecx
	mov	r13, rsi
	mov	r15, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_834
	mov	r14d, r12d
	add	r14, r8
	test	r8, r8
	jle	.label_840
	mov	rcx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_841
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_845
	movq	xmm0, r14
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_849
	pxor	xmm1, xmm1
	jmp	.label_856
.label_834:
	mov	dword ptr [r15], 0
.label_869:
	xor	ebp, ebp
	jmp	.label_865
.label_845:
	xor	r9d, r9d
	jmp	.label_841
.label_849:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_863:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_863
.label_856:
	test	rsi, rsi
	je	.label_874
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_838:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_838
.label_874:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r14, xmm1
	cmp	r8, r9
	je	.label_840
.label_841:
	mov	rsi, r8
	sub	rsi, r9
	lea	rcx, [rcx + r9*8]
	nop	dword ptr [rax + rax]
.label_851:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_851
.label_840:
	mov	rax, qword ptr [r13 + 0x40]
	mov	rcx, qword ptr [r13 + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_852
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	esi, esi
	nop	
.label_873:
	mov	rbp, qword ptr [r9 + rsi*8]
	cmp	qword ptr [rbp], r14
	jne	.label_859
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r12d
	jne	.label_859
	test	rdx, rdx
	je	.label_859
	mov	rdi, qword ptr [rbp + 0x50]
	test	rdi, rdi
	je	.label_859
	cmp	qword ptr [rdi + 8], r8
	jne	.label_859
	mov	rax, r8
	nop	dword ptr [rax]
.label_867:
	test	rax, rax
	jle	.label_865
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbx, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_867
	nop	word ptr cs:[rax + rax]
.label_859:
	inc	rsi
	cmp	rsi, r10
	jl	.label_873
.label_852:
	mov	qword ptr [rsp + 8], rdx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r9, rax
	test	r9, r9
	je	.label_871
	mov	qword ptr [rsp + 0x20], r13
	mov	rax, r9
	add	rax, 8
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r9 + 0x10], rdi
	mov	rbp, qword ptr [rsi + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x18], r15
	jle	.label_836
	mov	r13, rax
	mov	qword ptr [r9 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rdi + 0x18], rax
	test	rax, rax
	je	.label_846
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, r13
	jmp	.label_857
.label_836:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, rax
.label_857:
	mov	al, byte ptr [r9 + 0x68]
	mov	edx, r12d
	mov	ecx, r12d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r9 + 0x68], al
	mov	qword ptr [r9 + 0x50], r15
	cmp	qword ptr [rsi + 8], 0
	jle	.label_862
	mov	ebp, edx
	and	ebp, 1
	mov	eax, edx
	and	eax, 2
	mov	dword ptr [rsp + 0x2c], eax
	and	edx, 4
	mov	dword ptr [rsp + 0x28], edx
	xor	r12d, r12d
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x30], r15
	nop	dword ptr [rax]
.label_860:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r13d, edx
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_870
	test	ecx, ecx
	je	.label_839
.label_870:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r9 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r9 + 0x68], bl
	cmp	dl, 4
	je	.label_855
	cmp	dl, 2
	jne	.label_843
	or	bl, 0x10
	jmp	.label_844
.label_855:
	or	bl, 0x40
.label_844:
	mov	byte ptr [r9 + 0x68], bl
.label_843:
	test	ecx, ecx
	je	.label_848
	cmp	qword ptr [r9 + 0x50], r15
	jne	.label_850
	mov	edi, 0x18
	call	malloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbx, rax
	mov	qword ptr [r9 + 0x50], rbx
	test	rbx, rbx
	je	.label_853
	mov	rax, qword ptr [rsp + 8]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_858
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_861
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_866
.label_848:
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_839
.label_858:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_866:
	mov	r15, qword ptr [rsp + 0x30]
	or	byte ptr [r9 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
.label_850:
	test	ebp, ebp
	mov	rsi, qword ptr [rsp + 8]
	jne	.label_872
	mov	eax, r13d
	and	eax, 1
	jne	.label_837
.label_872:
	test	ebp, ebp
	je	.label_875
	mov	eax, r13d
	and	eax, 2
	jne	.label_837
.label_875:
	cmp	dword ptr [rsp + 0x2c], 0
	jne	.label_835
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_837
.label_835:
	cmp	dword ptr [rsp + 0x28], 0
	jne	.label_839
	and	r13d, 0x40
	je	.label_839
	nop	word ptr cs:[rax + rax]
.label_837:
	mov	rax, r12
	sub	rax, r8
	js	.label_842
	mov	rcx, qword ptr [r9 + 0x10]
	cmp	rcx, rax
	jle	.label_842
	dec	rcx
	mov	qword ptr [r9 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_842
	lea	rax, [r12*8]
	add	rax, qword ptr [r9 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_854:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r9 + 0x10]
	jl	.label_854
	nop	word ptr [rax + rax]
.label_842:
	inc	r8
.label_839:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_860
.label_862:
	mov	rsi, r9
	mov	rdx, r14
	call	register_state
	mov	rbp, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_864
.label_865:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_853:
	mov	rdi, r9
	jmp	.label_847
.label_861:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_868
.label_864:
	mov	rdi, rbp
.label_847:
	call	free_state
.label_868:
	mov	r15, qword ptr [rsp + 0x18]
.label_871:
	mov	dword ptr [r15], 0xc
	jmp	.label_869
.label_846:
	call	free
	jmp	.label_871
	.section	.text
	.align	16
	#Procedure 0x4072e5
	.globl sub_4072e5
	.type sub_4072e5, @function
sub_4072e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072f0
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	push	rax
	mov	rax, r8
	mov	r8d, 0
	mov	r9, rdx
	push	1
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40730b
	.globl sub_40730b
	.type sub_40730b, @function
sub_40730b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407310

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_880
	.section	.text
	.align	16
	#Procedure 0x407329
	.globl sub_407329
	.type sub_407329, @function
sub_407329:

	nop	dword ptr [rax]
.label_881:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_880:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_884
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_876
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_882:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_882
.label_876:
	cmp	rdx, -1
	je	.label_884
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_877
.label_884:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_879
	cmp	qword ptr [rax + rcx], r14
	je	.label_878
.label_879:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_883
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_885
	test	rcx, rcx
	jne	.label_881
	jmp	.label_877
	.section	.text
	.align	16
	#Procedure 0x4073dd
	.globl sub_4073dd
	.type sub_4073dd, @function
sub_4073dd:

	nop	dword ptr [rax]
.label_878:
	cmp	r15d, 9
	jne	.label_877
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_883
.label_877:
	xor	eax, eax
.label_883:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407407
	.globl sub_407407
	.type sub_407407, @function
sub_407407:

	nop	
.label_885:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_883
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_881
	.section	.text
	.align	16
	#Procedure 0x407430
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
	je	.label_886
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
.label_886:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407491
	.globl sub_407491
	.type sub_407491, @function
sub_407491:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074a0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_887
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_888
.label_889:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_887
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_891
	.section	.text
	.align	16
	#Procedure 0x407507
	.globl sub_407507
	.type sub_407507, @function
sub_407507:

	nop	word ptr [rax + rax]
.label_888:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_890
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_890
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_890
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_889
.label_891:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_887
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_890:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_888
.label_887:
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
	#Procedure 0x4075cd
	.globl sub_4075cd
	.type sub_4075cd, @function
sub_4075cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4075d0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x11
	je	.label_892
	cmp	al, 4
	jne	.label_894
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_894
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_892:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_894
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_894
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_893
	mov	qword ptr [rdx], rsi
.label_893:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_894
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_894:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407656
	.globl sub_407656
	.type sub_407656, @function
sub_407656:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407660

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
	#Procedure 0x407677
	.globl sub_407677
	.type sub_407677, @function
sub_407677:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407680

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	qword ptr [rsp], rcx
	mov	ebp, edx
	mov	rbx, rdi
	cmp	ebp, 0x25
	jae	.label_927
	test	rsi, rsi
	lea	r12, [rsp + 0x10]
	cmovne	r12, rsi
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r12
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r12
	mov	r12, qword ptr [r12]
	cmp	r12, rbx
	je	.label_939
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_912
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_897
	mov	r13d, 1
.label_912:
	test	r14, r14
	je	.label_946
	mov	r15d, r13d
	jmp	.label_896
.label_939:
	mov	r13d, 4
	test	r14, r14
	je	.label_897
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_897
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_897
.label_896:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_909
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_915
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_919
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_919
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_919
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_933
	cmp	eax, 0x44
	je	.label_933
	cmp	eax, 0x69
	jne	.label_919
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_919
.label_946:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_897
.label_933:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_919:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_915
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_947]
.label_2506:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_901
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_901:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_914
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_914:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_923
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_923:
	or	ecx, r14d
	jmp	.label_900
.label_915:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_934
.label_2507:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_900
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_900
.label_2508:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_945
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_945:
	cmp	rsi, rdi
	jl	.label_907
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_907:
	or	ecx, r11d
	jmp	.label_900
.label_2510:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_916
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_916:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_930
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_930:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_937
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_937:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_943
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_943:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_900
.label_2504:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_904
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_905
.label_2505:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_911
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_911:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_903
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_903:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_921
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_921:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_940
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_940:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_948
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_948:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_906
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_906:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_900
.label_2509:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_918
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_918:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_932
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_932:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_938
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_938:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_944
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_944:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_902
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_902:
	or	ecx, r14d
	jmp	.label_900
.label_2511:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_913
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_913:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_929
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_929:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_936
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_936:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_941
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_941:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_895
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_895:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_908
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_908:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_917
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_917:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_922
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_928
.label_2512:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_935
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_935:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_942
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_942:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_899
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_899:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_910
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_910:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_920
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_920:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_931
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_931:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_922
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_928:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_922:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_900
.label_2513:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_904
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_905
.label_2514:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_898
.label_904:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_900
.label_898:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_905:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_900:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_909:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_934:
	mov	r13d, r15d
.label_897:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_927:
	mov	edi, OFFSET FLAT:label_924
	mov	esi, OFFSET FLAT:label_925
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_926
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x407f98
	.globl sub_407f98
	.type sub_407f98, @function
sub_407f98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fa0
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_949
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_951
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_952
.label_950:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_949
	.section	.text
	.align	16
	#Procedure 0x408019
	.globl sub_408019
	.type sub_408019, @function
sub_408019:

	nop	word ptr [rax + rax]
.label_951:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_952:
	mov	byte ptr [r15 + 0x38], al
	add	bpl, bpl
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_950
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_949:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_955:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408095

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_954
	test	rbx, rbx
	jne	.label_954
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_954:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_953
	test	rax, rax
	je	.label_955
.label_953:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080c0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_956
.label_957:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_961
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_959
.label_961:
	cmp	eax, 6
	sete	cl
.label_959:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_958:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_956:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_958
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_958
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_960
	test	rax, rax
	je	.label_960
	test	r13, r13
	je	.label_960
	test	rbp, rbp
	je	.label_960
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_957
.label_960:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_958
	.section	.text
	.align	16
	#Procedure 0x40828b
	.globl sub_40828b
	.type sub_40828b, @function
sub_40828b:

	nop	dword ptr [rax + rax]
.label_963:
	mov	ecx, 1
.label_962:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4082a0
	.globl sub_4082a0
	.type sub_4082a0, @function
sub_4082a0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082a5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_963
	test	rsi, rsi
	mov	ecx, 1
	je	.label_962
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_962
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082e0
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
	#Procedure 0x408355
	.globl sub_408355
	.type sub_408355, @function
sub_408355:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408360
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40836e
	.globl sub_40836e
	.type sub_40836e, @function
sub_40836e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408370

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
	js	.label_967
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_970
	cmp	r12d, 0x7fffffff
	je	.label_965
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
	jne	.label_968
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_968:
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
.label_970:
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
	jbe	.label_966
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_969
.label_966:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_964
	mov	rdi, r14
	call	free
.label_964:
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
.label_969:
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
.label_967:
	call	abort
.label_965:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40852d
	.globl sub_40852d
	.type sub_40852d, @function
sub_40852d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408530

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_985
	mov	r12, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	ebx, byte ptr [rcx + rax]
	mov	byte ptr [r15], bl
	mov	r14d, dword ptr [r15 + 8]
	mov	eax, r14d
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_988
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_988
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_971
.label_988:
	cmp	bl, 0x5c
	jne	.label_973
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_976
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_983
.label_982:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_979:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_986
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	movzx	ebp, bl
	jmp	.label_996
.label_985:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_297
.label_973:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_978
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	r14d, dword ptr [rax + rcx*4]
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_989
.label_976:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_984
.label_978:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_989:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_297
	jmp	qword ptr [(rcx * 8) + label_995]
.label_2653:
	mov	rcx, r12
	test	ch, 8
	je	.label_297
	jmp	.label_317
.label_986:
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_996:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_297
	jmp	qword ptr [(rcx * 8) + label_972]
.label_2564:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_297
.label_971:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_984:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_297:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2654:
	mov	rdx, r12
	test	dl, 8
	jne	.label_568
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_568
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_297
	mov	eax, dword ptr [r15 + 8]
.label_568:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_297
.label_2655:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_297
	jmp	.label_578
.label_2656:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_297
	jmp	.label_581
.label_2657:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2658:
	test	r12w, 0x402
	jne	.label_297
	jmp	.label_584
.label_2659:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2660:
	test	r12w, 0x402
	jne	.label_297
	jmp	.label_589
.label_2661:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2662:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_302
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_302
	test	dh, 8
	je	.label_297
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_297
.label_302:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_297
.label_2663:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_297
	jmp	.label_315
.label_2664:
	mov	rcx, r12
	test	ch, 4
	jne	.label_297
	test	cx, cx
	js	.label_317
	jmp	.label_297
.label_2665:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_297
	jmp	.label_325
.label_2560:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_297
.label_2561:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_297
.label_578:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2562:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_297
.label_581:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2563:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_297
.label_584:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2565:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_297
.label_2566:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_297
.label_2567:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_297
.label_589:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2568:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_297
.label_2569:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2570:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2571:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_297
.label_2572:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_297
.label_2573:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2574:
	test	r12d, 0x80000
	jne	.label_297
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2575:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_297
.label_315:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2576:
	mov	rcx, r12
	test	ch, 4
	jne	.label_297
	test	cx, cx
	js	.label_297
.label_317:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_2577:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_297
.label_325:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_297
.label_983:
	cmp	edx, 2
	jl	.label_993
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_982
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_993
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_982
.label_993:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_994
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_994:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_979
	test	bl, bl
	js	.label_982
	jmp	.label_979
	.section	.text
	.align	16
	#Procedure 0x408b48
	.globl sub_408b48
	.type sub_408b48, @function
sub_408b48:

	nop	dword ptr [rax + rax]
.label_998:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x408b5c
	.globl sub_408b5c
	.type sub_408b5c, @function
sub_408b5c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b68

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_998
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_997
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_998
.label_997:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_998
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_999
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_999:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408bd0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1005
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1007
.label_1005:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1007:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1002
	cmp	r10d, 0x29
	jae	.label_1004
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1006
.label_1004:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1006:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1002
	cmp	r10d, 0x29
	jae	.label_1001
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1003
.label_1001:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1003:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1002
	cmp	r10d, 0x29
	jae	.label_1012
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1000
.label_1012:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1000:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1002
	cmp	r10d, 0x29
	jae	.label_1010
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1011
.label_1010:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1011:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1002
	cmp	r10d, 0x29
	jae	.label_1008
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1009
.label_1008:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1009:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1002
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1002
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1002
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1002
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1002:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x408db2
	.globl sub_408db2
	.type sub_408db2, @function
sub_408db2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408dc0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1013
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1019
.label_1013:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1014
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1016
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1018
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1020
.label_1014:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1019
.label_1016:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1020:
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	jne	.label_1019
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1019:
	test	rbx, rbx
	je	.label_1017
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1017
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1015
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1015
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1015
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1015
.label_1017:
	mov	rax, rbx
.label_1015:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1018:
	xor	eax, eax
	jmp	.label_1015
	.section	.text
	.align	16
	#Procedure 0x408f09
	.globl sub_408f09
	.type sub_408f09, @function
sub_408f09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f10

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	r12, rdi
.label_1025:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_1023:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1031
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r14, [rbp + rbp*2]
	mov	qword ptr [rdx + r14*8 + 8], 0
	mov	rbx, r13
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rdi, rbp
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1021
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rdi*8], rcx
	mov	rax, qword ptr [r12 + 0x28]
	lea	rdi, [rax + r14*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x1c]
	jne	.label_1023
	jmp	.label_1021
	.section	.text
	.align	16
	#Procedure 0x40902b
	.globl sub_40902b
	.type sub_40902b, @function
sub_40902b:

	nop	dword ptr [rax + rax]
.label_1031:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1026
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1028
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1022
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1022
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1030:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1034
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1027
.label_1034:
	dec	rsi
	test	rsi, rsi
	jle	.label_1022
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1030
	jmp	.label_1022
.label_1027:
	cmp	rsi, -1
	je	.label_1022
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1029
	jmp	.label_1021
	.section	.text
	.align	16
	#Procedure 0x40910c
	.globl sub_40910c
	.type sub_40910c, @function
sub_40910c:

	nop	dword ptr [rax]
.label_1022:
	mov	r15, rcx
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1021
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	je	.label_1021
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1021
.label_1029:
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rcx + r15*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1021
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r15
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	jne	.label_1023
	jmp	.label_1021
	.section	.text
	.align	16
	#Procedure 0x40926e
	.globl sub_40926e
	.type sub_40926e, @function
sub_40926e:

	nop	
.label_1028:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1024
	cmp	rbp, r15
	jne	.label_1033
.label_1024:
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	r15, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	r15, -1
	je	.label_1021
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rax + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rax + rcx + 8], esi
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + r15*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rbp, r15
	jne	.label_1025
	jmp	.label_1021
.label_1026:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1032:
	mov	dword ptr [rsp + 8], 0
.label_1021:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1033:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1032
	jmp	.label_1021
	.section	.text
	.align	16
	#Procedure 0x40937a
	.globl sub_40937a
	.type sub_40937a, @function
sub_40937a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409380

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r10, rcx
	mov	rcx, rdx
	mov	r12, rsi
	mov	r11, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r15, qword ptr [rax + rcx*8]
	lea	rax, [r15 + 8]
	test	r15, r15
	cmove	rax, r15
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r10 + 8], 0
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x38], r12
	je	.label_1065
	test	r15, r15
	je	.label_1082
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x20], r11
	mov	rsi, r11
	mov	qword ptr [rsp + 0x28], r10
	mov	rdx, r10
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_1039
	mov	r13, r14
	add	r13, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x28]
	jne	.label_1045
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1053
	xor	ecx, ecx
.label_1053:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_1039
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1045
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1075:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	mov	rbp, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_1039
	inc	rbx
	cmp	rbx, qword ptr [rbp + 8]
	mov	rdx, rbp
	jl	.label_1075
.label_1045:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r13
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 0x10]
	jne	.label_1050
	mov	r12, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [r12 + 0x28]
	test	rax, rax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x20]
	je	.label_1082
	mov	qword ptr [rsp + 0x48], r15
	jle	.label_1088
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x30], rax
	xor	r13d, r13d
	nop	
.label_1070:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_1035
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_1035
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rbp, qword ptr [r11]
	shl	rcx, 4
	mov	r14, qword ptr [rbp + rcx]
	cmp	qword ptr [rdx + rax*8 + 0x18], r9
	mov	rax, qword ptr [r10 + 8]
	jne	.label_1054
	test	rax, rax
	jle	.label_1035
	mov	rdx, qword ptr [r10 + 0x10]
	mov	r15, -1
	mov	rsi, -1
	nop	dword ptr [rax]
.label_1079:
	mov	rbx, qword ptr [rdx]
	mov	rdi, rbx
	shl	rdi, 4
	movzx	ecx, byte ptr [rbp + rdi + 8]
	cmp	cl, 9
	je	.label_1058
	cmp	cl, 8
	jne	.label_1074
	cmp	r14, qword ptr [rbp + rdi]
	cmove	rsi, rbx
	jmp	.label_1074
	.section	.text
	.align	16
	#Procedure 0x4095b4
	.globl sub_4095b4
	.type sub_4095b4, @function
sub_4095b4:

	nop	word ptr cs:[rax + rax]
.label_1058:
	cmp	r14, qword ptr [rbp + rdi]
	cmove	r15, rbx
.label_1074:
	add	rdx, 8
	dec	rax
	jne	.label_1079
	test	rsi, rsi
	js	.label_1080
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1039
.label_1080:
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x38]
	js	.label_1035
	mov	r8, qword ptr [r10 + 8]
	test	r8, r8
	jle	.label_1035
	xor	r14d, r14d
.label_1087:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rdi, qword ptr [r11 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_1061
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebx, 0
	je	.label_1052
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1055:
	lea	rbp, [rbx + rdx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], r15
	lea	rax, [rbp + 1]
	cmovl	rbx, rax
	cmovge	rdx, rbp
	cmp	rbx, rdx
	jb	.label_1055
.label_1052:
	cmp	rbx, -1
	je	.label_1061
	cmp	qword ptr [rdi + rbx*8], r15
	je	.label_1062
.label_1061:
	mov	rdi, qword ptr [r11 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_1063
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_1067
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_1072:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r15
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_1072
.label_1067:
	cmp	rdi, -1
	je	.label_1063
	cmp	qword ptr [rcx + rdi*8], r15
	je	.label_1062
.label_1063:
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1039
	dec	r14
	mov	r8, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_1062:
	inc	r14
	cmp	r14, r8
	jl	.label_1087
	jmp	.label_1035
.label_1054:
	test	rax, rax
	jle	.label_1035
	xor	ebx, ebx
	jmp	.label_1042
	.section	.text
	.align	16
	#Procedure 0x409719
	.globl sub_409719
	.type sub_409719, @function
sub_409719:

	nop	dword ptr [rax]
.label_1077:
	mov	rbp, qword ptr [r11]
.label_1042:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	ecx, dword ptr [rbp + rdx + 8]
	mov	edi, 0xfe
	and	ecx, edi
	or	ecx, 1
	cmp	ecx, 9
	jne	.label_1047
	cmp	r14, qword ptr [rbp + rdx]
	jne	.label_1047
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1039
	mov	rax, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_1047:
	inc	rbx
	cmp	rbx, rax
	jl	.label_1077
	nop	dword ptr [rax + rax]
.label_1035:
	inc	r13
	cmp	r13, qword ptr [r12 + 0x28]
	jl	.label_1070
.label_1088:
	mov	dword ptr [rsp + 0xc], 0
	mov	r15, qword ptr [rsp + 0x48]
.label_1082:
	lea	rdi, [rsp + 0xc]
	mov	rsi, r11
	mov	rdx, r10
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [r12]
	mov	qword ptr [rdx + rcx*8], rax
	mov	r12d, dword ptr [rsp + 0xc]
	test	r12d, r12d
	je	.label_1076
	jmp	.label_1050
.label_1065:
	mov	rax, qword ptr [r12]
	mov	qword ptr [rax + rcx*8], 0
.label_1076:
	test	r15, r15
	je	.label_1049
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rax + rcx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1049
	mov	rax, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xc8]
	xor	r15d, r15d
	test	rax, rax
	jle	.label_1037
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rdx + 0xd8]
	xor	r15d, r15d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1066:
	lea	rsi, [rdx + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rdx
	jl	.label_1066
.label_1037:
	cmp	r15, rax
	mov	rdx, qword ptr [rsp + 0x38]
	jge	.label_1057
	cmp	r15, -1
	je	.label_1057
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [r15 + r15*4]
	mov	qword ptr [rsp + 0x48], rsi
	cmp	qword ptr [rax + rsi*8 + 8], rcx
	jne	.label_1057
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + 8], 0
	jle	.label_1057
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	shl	qword ptr [rsp + 0x48], 3
	mov	qword ptr [rsp + 0x30], r10
	nop	word ptr cs:[rax + rax]
.label_1086:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10]
	mov	rdx, r14
	shl	rdx, 4
	movzx	eax, byte ptr [rax + rdx + 8]
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r14, qword ptr [r12 + 0x10]
	jne	.label_1085
	cmp	eax, 4
	jne	.label_1046
	cmp	qword ptr [r12 + 0x18], rcx
	jne	.label_1048
	jmp	.label_1046
	.section	.text
	.align	16
	#Procedure 0x409932
	.globl sub_409932
	.type sub_409932, @function
sub_409932:

	nop	word ptr cs:[rax + rax]
.label_1085:
	cmp	eax, 4
	jne	.label_1046
.label_1048:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rax + 0xd8]
	add	rbx, qword ptr [rsp + 0x48]
	mov	r13, r15
	nop	dword ptr [rax]
.label_1083:
	cmp	qword ptr [rbx], r14
	jne	.label_1038
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	r9, rax
	sub	r9, rdx
	add	r9, rcx
	cmp	rax, rdx
	je	.label_1060
	lea	rsi, [r14*8]
	add	rsi, qword ptr [r10 + 0x18]
	jmp	.label_1064
.label_1060:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rdx, [r14 + r14*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
.label_1064:
	cmp	r9, qword ptr [r12 + 0x18]
	jg	.label_1038
	mov	rax, qword ptr [r12]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_1038
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_1038
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	rbp, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_1078
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1056:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rbp + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1056
.label_1078:
	cmp	rdx, -1
	je	.label_1038
	cmp	qword ptr [rbp + rdx*8], r8
	jne	.label_1038
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r14
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	test	al, al
	jne	.label_1038
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_1051
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbx, qword ptr [r12 + 0x28]
	mov	qword ptr [rsp + 0x78], rbx
	test	rbx, rbx
	jle	.label_1071
	mov	qword ptr [rsp + 0x70], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1069
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_1051
.label_1071:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_1051:
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x68], rcx
	lea	rdi, [rsp + 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, 0xc
	test	al, al
	je	.label_1041
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rbp + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1041
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_1081
	mov	rdi, r10
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	call	merge_state_array
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1041
.label_1081:
	mov	qword ptr [rbp + rcx*8], rbx
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	jle	.label_1036
	mov	rbp, rsi
	dec	rbp
	mov	r8, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_1073
	mov	rdi, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1044:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [r8 + rbx*8], r13
	lea	rax, [rbx + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_1044
.label_1073:
	cmp	qword ptr [r8 + rdx*8], r13
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_1036
	cmp	rsi, rdi
	jle	.label_1036
	mov	qword ptr [rsp + 0x78], rbp
	cmp	rbp, rdi
	jle	.label_1036
	lea	r12, [rdx + 1]
	cmp	rbp, r12
	mov	r11, r12
	cmovge	r11, rbp
	sub	r11, rdx
	cmp	r11, 4
	jb	.label_1068
	mov	rax, r11
	and	rax, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_1068
	cmp	rbp, r12
	cmovge	r12, rbp
	sub	r12, rdx
	add	r12, -4
	shr	r12, 2
	lea	r10d, [r12 + 1]
	and	r10d, 1
	test	r12, r12
	mov	edi, 0
	je	.label_1040
	lea	rbx, [r8 + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r12
	xor	edi, edi
	nop	dword ptr [rax]
.label_1059:
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbx + rdi*8 - 0x20]
	movups	xmmword ptr [rbx + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbx + rdi*8]
	movups	xmmword ptr [rbx + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_1059
.label_1040:
	test	r10, r10
	je	.label_1084
	add	rdi, rdx
	movups	xmm0, xmmword ptr [r8 + rdi*8 + 8]
	movups	xmm1, xmmword ptr [r8 + rdi*8 + 0x18]
	movups	xmmword ptr [r8 + rdi*8], xmm0
	movups	xmmword ptr [r8 + rdi*8 + 0x10], xmm1
.label_1084:
	cmp	r11, r9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x30]
	je	.label_1036
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1068:
	mov	rax, qword ptr [r8 + rdx*8 + 8]
	mov	qword ptr [r8 + rdx*8], rax
	inc	rdx
	cmp	rdx, rbp
	jl	.label_1068
.label_1036:
	lea	rbx, [r13 + r13*4]
	shl	rbx, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbx, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_1038:
	inc	r13
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_1083
.label_1046:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, rax
	inc	rsi
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x20], rdx
	cmp	rsi, qword ptr [rax + 8]
	jl	.label_1086
.label_1041:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_1043
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_1043:
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	je	.label_1049
	jmp	.label_1050
.label_1057:
	mov	dword ptr [rsp + 0xc], 0
.label_1049:
	xor	r12d, r12d
.label_1050:
	mov	eax, r12d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1039:
	mov	dword ptr [rsp + 0xc], r12d
	jmp	.label_1050
.label_1069:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_1041
	.section	.text
	.align	16
	#Procedure 0x409d71
	.globl sub_409d71
	.type sub_409d71, @function
sub_409d71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1089
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1090
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1092
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1093
	mov	ecx, OFFSET FLAT:label_1094
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1091
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x409df4
	.globl sub_409df4
	.type sub_409df4, @function
sub_409df4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e00

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1095
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1096
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1096
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1095
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1096
	mov	qword ptr [rbx + 0x18], rax
.label_1095:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1097
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1096
	mov	qword ptr [rbx + 8], rax
.label_1097:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1096:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e8a
	.globl sub_409e8a
	.type sub_409e8a, @function
sub_409e8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e90

	.globl handle_line_error
	.type handle_line_error, @function
handle_line_error:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1098
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	__fprintf_chk
	test	r14, r14
	mov	rbx, qword ptr [rip + stderr]
	jne	.label_1100
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1099
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	call	cleanup_fatal
.label_1100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1101
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	lea	rsi, [rsp]
	mov	rdi, r14
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, r15
	call	__fprintf_chk
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x409f54
	.globl sub_409f54
	.type sub_409f54, @function
sub_409f54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f60
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
	.align	16
	#Procedure 0x409fce
	.globl sub_409fce
	.type sub_409fce, @function
sub_409fce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409fd0
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
	je	.label_1103
	test	r14, r14
	je	.label_1102
.label_1103:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1102:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a006
	.globl sub_40a006
	.type sub_40a006, @function
sub_40a006:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a010

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_1109
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1109
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1111
	.section	.text
	.align	16
	#Procedure 0x40a03c
	.globl sub_40a03c
	.type sub_40a03c, @function
sub_40a03c:

	nop	dword ptr [rax]
.label_1107:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1111:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1113
	cmp	ecx, 6
	jne	.label_1116
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1121
	.section	.text
	.align	16
	#Procedure 0x40a084
	.globl sub_40a084
	.type sub_40a084, @function
sub_40a084:

	nop	word ptr cs:[rax + rax]
.label_1113:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1121:
	call	free
.label_1116:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1107
.label_1109:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1110
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1104:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1115
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1115:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1118
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1118:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1119
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1119:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1104
	jmp	.label_1106
.label_1110:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1106:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_1112
	xor	r15d, r15d
	jmp	.label_1114
.label_1105:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1114:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1117
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1120:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1120
.label_1117:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1105
	mov	rdi, qword ptr [r14 + 0x40]
.label_1112:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1108
	call	free
.label_1108:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x40a1d8
	.globl sub_40a1d8
	.type sub_40a1d8, @function
sub_40a1d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1e0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_1122
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1122:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x40a239
	.globl sub_40a239
	.type sub_40a239, @function
sub_40a239:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a240

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1123
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1123:
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
	#Procedure 0x40a2c3
	.globl sub_40a2c3
	.type sub_40a2c3, @function
sub_40a2c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d0
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
	#Procedure 0x40a2e8
	.globl sub_40a2e8
	.type sub_40a2e8, @function
sub_40a2e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2f0

	.globl save_line_to_file
	.type save_line_to_file, @function
save_line_to_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rip + output_stream]
	mov	esi, 1
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbx]
	jne	.label_1125
	add	qword ptr [rip + bytes_written],  rax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1125:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1124
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + output_filename]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	qword ptr [rip + output_stream],  0
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x40a36e
	.globl sub_40a36e
	.type sub_40a36e, @function
sub_40a36e:

	nop	
.label_1127:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_1128
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_1129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1126
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_1127
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_792
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40a3e2

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_1130
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_1129
	cmp	dword ptr [rbp], 0x20
	jne	.label_1129
.label_1130:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_1131
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1131:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40a430

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	r13, r8
	mov	rbx, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	r8, rdi
	mov	eax, dword ptr [r10 + 8]
	xor	r15d, r15d
	mov	ecx, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0x23
	ja	.label_314
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1132]
.label_2587:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_434
	mov	ecx, OFFSET FLAT:label_435
	jmp	.label_436
.label_2588:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_474
	mov	ecx, OFFSET FLAT:label_475
.label_436:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_479
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_445:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_299
	jmp	.label_314
.label_479:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_299
.label_2578:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_488
	mov	rax, qword ptr [rdi + 0x70]
.label_519:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 2
	jl	.label_490
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_502
	mov	rbp, r14
	jmp	.label_299
.label_552:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_504
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_509
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_540:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	r10, qword ptr [rsp + 8]
	movdqu	xmm0, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_534:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_522
	mov	rax, qword ptr [rsi + 0x70]
.label_550:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbp
	test	rbx, rbx
	je	.label_324
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_502
	jmp	.label_299
.label_509:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_534
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_540
.label_522:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_324
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_550
.label_502:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_552
	mov	rbp, r14
	jmp	.label_299
.label_2579:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_557
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_562
	mov	rax, qword ptr [rdi + 0x70]
.label_537:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [rdi + 0x98]
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_299
.label_2580:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_577
	mov	rax, qword ptr [rdi + 0x70]
.label_526:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_299
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_299
.label_2581:
	mov	r15, qword ptr [r14 + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbx
	or	rdx, 0x800000
	mov	rdi, r10
	mov	rsi, r8
	call	peek_token
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	xor	edi, edi
	cmp	byte ptr [r10 + 8], 9
	je	.label_307
	mov	rbp, r15
	inc	r13
	mov	rdi, r8
	mov	rsi, r14
	mov	rdx, r10
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_314
	cmp	byte ptr [r10 + 8], 9
	jne	.label_318
	mov	r15, rbp
.label_307:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_322
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_322:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_461
	mov	rax, qword ptr [rsi + 0x70]
.label_576:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_473
	mov	qword ptr [rdi], rbp
.label_473:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_299
.label_2584:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_355
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_335
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_358
	movdqa	xmm0, xmmword ptr [rip + label_361]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_358
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_335:
	mov	eax, dword ptr [r10]
.label_355:
	cmp	eax, 0x200
	je	.label_345
	cmp	eax, 0x100
	jne	.label_370
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_372
	mov	rax, qword ptr [rdi + 0x70]
.label_344:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_375
.label_2586:
	test	ebx, 0x1000000
	jne	.label_394
.label_2583:
	test	bl, 0x20
	jne	.label_394
	test	bl, 0x10
	jne	.label_398
.label_2582:
	test	ebx, 0x20000
	jne	.label_402
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_402
	mov	dword ptr [r12], 0x10
	jmp	.label_373
.label_402:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_346
	mov	rax, qword ptr [rdi + 0x70]
.label_510:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_391:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_299
.label_2585:
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r14, r14
	je	.label_362
	test	r15, r15
	je	.label_362
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_430
	cmp	cl, 2
	je	.label_401
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_431
.label_2589:
	mov	dword ptr [r12], 5
	jmp	.label_373
.label_398:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbp, r8
	mov	r15, r10
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_490:
	mov	rbp, r14
	jmp	.label_299
.label_430:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_446
	or	byte ptr [r14 + 1], 4
.label_446:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_401
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_431:
	cmp	cl, 0x15
	jne	.label_449
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_449:
	lea	rcx, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rcx
	mov	dword ptr [rsp + 0x50], 3
	lea	rdi, [rsp + 0x50]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_466
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_456
.label_349:
	cmp	al, 2
	je	.label_459
	lea	rax, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x50], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r10
	mov	ecx, r13d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_456
	jmp	.label_466
.label_2455:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_467
	mov	rax, qword ptr [r15]
.label_524:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_469
.label_2456:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_476
	jmp	.label_478
.label_313:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_425
.label_414:
	xor	eax, eax
.label_425:
	cmp	r15d, 3
	je	.label_470
	test	r15d, r15d
	jne	.label_480
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_481
.label_470:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_481
.label_480:
	xor	ebx, ebx
.label_481:
	cmp	ebp, 3
	je	.label_483
	test	ebp, ebp
	jne	.label_514
.label_483:
	test	r12, r12
	movzx	edx, al
	je	.label_485
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_485
.label_514:
	mov	edx, dword ptr [rsp + 0x58]
.label_485:
	cmp	r15d, 3
	je	.label_491
	test	r15d, r15d
	jne	.label_494
.label_491:
	test	r12, r12
	movzx	eax, bl
	je	.label_496
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_496
.label_494:
	mov	eax, dword ptr [rsp + 0xa0]
.label_496:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_298
	cmp	eax, -1
	je	.label_298
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_501
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_298
.label_501:
	test	r12, r12
	je	.label_503
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_505
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_535:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_503:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_515:
	cmp	rdx, rcx
	ja	.label_400
	cmp	rcx, rax
	ja	.label_400
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_400:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_515
	mov	dword ptr [r12], 0
	jmp	.label_469
.label_467:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_412
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_524
.label_505:
	mov	dword ptr [rsp + 0x40], eax
	mov	r15d, edx
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbp, [rax*4 + 4]
	mov	rsi, rbp
	call	realloc
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rdi, rbx
	test	rbx, rbx
	je	.label_532
	test	rbp, rbp
	je	.label_532
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], rbp
	mov	rsi, qword ptr [r12 + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, r15d
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_535
.label_456:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_545
	cmp	ebp, 4
	jne	.label_547
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_469
	jmp	.label_310
.label_547:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_561
	cmp	al, 2
	jne	.label_565
	jmp	.label_566
.label_561:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_406
	cmp	cl, 2
	je	.label_571
	mov	qword ptr [rsp + 0x48], r12
	lea	rcx, [rsp + 0x70]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x98], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_580
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	r9, qword ptr [rsp + 0x18]
	cmp	dword ptr [r9 + 0xb4], 1
	mov	r12d, 0
	cmovg	r12, qword ptr [rsp + 0x30]
	mov	ecx, 0xb
	mov	r15d, dword ptr [rsp + 0x98]
	cmp	r15d, 2
	je	.label_298
	cmp	r15d, 4
	je	.label_298
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_300
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_298
.label_300:
	cmp	r15d, 3
	jne	.label_309
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_298
.label_309:
	cmp	ebp, 3
	je	.label_313
	test	ebp, ebp
	jne	.label_414
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_425
.label_406:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_565:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_323
	jmp	qword ptr [(rax * 8) + label_326]
.label_2454:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_328
.label_545:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_338
.label_476:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_328:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_469:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_349
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_352
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_352:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_360
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_360:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_359
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_359
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_359
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_359
	cmp	eax, 2
	jl	.label_527
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_359
	test	byte ptr [r15 + 0x20], 1
	jne	.label_359
.label_527:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_385
	mov	rax, qword ptr [rsi + 0x70]
.label_413:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r14
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_391
.label_359:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_405
	mov	rax, qword ptr [r9 + 0x70]
.label_543:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + rcx + 0x30], rdx
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r14], 0
	jne	.label_308
	cmp	qword ptr [r14 + 8], 0
	jne	.label_308
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_308
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_416
.label_308:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_420
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_554:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r14
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_426
	mov	rax, qword ptr [r9 + 0x70]
.label_567:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [r15], rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_299:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	r15, rbp
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	eax, ebx
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, ebx
	and	eax, 0x200000
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x48], r12
	nop	word ptr cs:[rax + rax]
.label_397:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_314
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_314
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_454
	mov	rsi, -1
	jmp	.label_450
	nop	word ptr cs:[rax + rax]
.label_454:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_447:
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	test	r9, r9
	mov	ecx, 0
	je	.label_457
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_468
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_471
.label_350:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_472
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_458:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_458
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_458
	nop	word ptr cs:[rax + rax]
.label_486:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_427
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_427
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_427:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_472
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_486
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_486
	jmp	.label_458
	nop	word ptr cs:[rax + rax]
.label_472:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_492
	mov	rax, qword ptr [rbp + 0x70]
.label_477:
	mov	bl, r14b
	or	ebx, 0xa
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], ebx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_497
	mov	qword ptr [r12], r14
.label_497:
	add	r11, 2
	cmp	r11, r15
	jg	.label_507
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_508
.label_525:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_450:
	mov	r13, rsi
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	edx, byte ptr [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rdi + 8]
	mov	bl, 0x18
	cmp	al, 0x18
	je	.label_512
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_517
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_520
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_450
	cmp	eax, 1
	jne	.label_450
	cmp	r13, -2
	je	.label_450
	cmp	dl, 0x39
	ja	.label_450
	cmp	r13, -1
	jne	.label_525
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_450
	nop	dword ptr [rax]
.label_512:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_520:
	cmp	r13, -1
	jne	.label_528
	cmp	sil, 0x2c
	jne	.label_529
	cmp	eax, 1
	mov	r13d, 0
	je	.label_530
	jmp	.label_529
	nop	word ptr [rax + rax]
.label_528:
	cmp	r13, -2
	je	.label_517
.label_530:
	cmp	bl, 0x18
	je	.label_531
	cmp	bl, 1
	jne	.label_517
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_517
	mov	rdx, -1
	jmp	.label_536
.label_531:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_538
.label_558:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_536:
	mov	r15, rdx
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	ecx, byte ptr [rdi]
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x18
	je	.label_544
	cmp	al, 2
	je	.label_517
	cmp	cl, 0x2c
	je	.label_544
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_536
	cmp	eax, 1
	jne	.label_536
	cmp	r15, -2
	je	.label_536
	cmp	cl, 0x39
	ja	.label_536
	cmp	r15, -1
	jne	.label_558
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_536
.label_544:
	cmp	r15, -2
	je	.label_517
.label_538:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_529
	cmp	eax, 0x18
	jne	.label_529
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_447
	mov	dword ptr [r12], 0xf
	jmp	.label_493
	nop	dword ptr [rax]
.label_529:
	mov	dword ptr [r12], 0xa
	jmp	.label_493
.label_517:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_572
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_457
.label_336:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_579
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_582
.label_437:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_588
.label_415:
	mov	edi, 0x3c8
	mov	rbp, r11
	call	malloc
	mov	r11, rbp
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_303
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_369
.label_579:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_311
.label_463:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_311:
	xor	r12d, r12d
.label_588:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	je	.label_303
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_327
	nop	dword ptr [rax + rax]
.label_508:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_336
	mov	rax, qword ptr [rbp + 0x70]
.label_582:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r15, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r15
	mov	rcx, r15
	mov	rbx, r10
	jmp	.label_343
	nop	dword ptr [rax + rax]
.label_390:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbx], rcx
.label_343:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_371
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_383
	nop	dword ptr [rax]
.label_371:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_573:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_377
	test	r12, r12
	jne	.label_380
.label_377:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_573
	jmp	.label_384
.label_380:
	lea	rbx, [r13 + 0x10]
.label_383:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_441
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_390
.label_441:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_463
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_390
.label_384:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_437
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_327:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbx
	test	r12, r12
	je	.label_303
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_415
	mov	rax, qword ptr [rbp + 0x70]
.label_369:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r14
	cmp	r11, r15
	lea	r11, [r11 + 1]
	jl	.label_508
.label_507:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_432
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_433
	mov	rax, qword ptr [rbp + 0x70]
.label_511:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	r14, rdx
	jmp	.label_439
.label_432:
	mov	r12, qword ptr [rsp + 0x48]
.label_439:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_389
.label_468:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_448:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_448
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_448
.label_460:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_451
	cmp	eax, 6
	jne	.label_453
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_523
.label_451:
	mov	rdi, qword ptr [rbx + 0x28]
.label_523:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_453:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_457
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_460
	test	rax, rax
	mov	rbx, rdx
	je	.label_460
	jmp	.label_448
.label_471:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_464
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_465
.label_492:
	mov	edi, 0x3c8
	call	malloc
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_303
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_477
.label_433:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_457
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_511
.label_572:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_493
.label_516:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_498
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_499
.label_570:
	mov	r12, rbx
	jmp	.label_357
.label_498:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_506
.label_560:
	mov	qword ptr [r15], 0
.label_506:
	xor	r12d, r12d
.label_357:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_303
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_513
.label_465:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_516
	mov	rax, qword ptr [rbp + 0x70]
.label_499:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, rbx
	mov	r15, r10
	jmp	.label_521
.label_555:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_521:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_539
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_542
.label_539:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_549:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_340
	test	r12, r12
	jne	.label_546
.label_340:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_549
	jmp	.label_551
.label_546:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_542:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_553
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_555
.label_553:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_560
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_555
.label_551:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_570
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_513:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_541
	mov	qword ptr [rbx], rdx
.label_541:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_303
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_465
.label_464:
	cmp	r11, r15
	jne	.label_586
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_457
.label_586:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_296
	mov	rax, qword ptr [rbp + 0x70]
.label_367:
	lea	rdx, [r12 + 0x28]
	mov	rbx, r12
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, r12
	mov	r15, r10
	jmp	.label_304
.label_354:
	lea	rdx, [rbx + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_304:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_331
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_489
.label_331:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_347:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_342
	test	rbx, rbx
	jne	.label_419
.label_342:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_347
	jmp	.label_350
.label_419:
	lea	r15, [r14 + 0x10]
.label_489:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_351
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_354
.label_351:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_356
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_354
.label_296:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_366
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_367
.label_366:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_376
.label_356:
	mov	qword ptr [r15], 0
.label_376:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_303:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_493:
	xor	ecx, ecx
.label_457:
	test	rcx, rcx
	sete	al
	jne	.label_387
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_389
	jmp	.label_393
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_389:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_397
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_403
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_397
.label_403:
	test	al, al
	jne	.label_394
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_408:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_408
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_408
	nop	word ptr cs:[rax + rax]
.label_418:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_410
	cmp	eax, 6
	jne	.label_548
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_585
	nop	dword ptr [rax]
.label_410:
	mov	rdi, qword ptr [rbp + 0x28]
.label_585:
	call	free
.label_548:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_394
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_418
	test	rcx, rcx
	mov	rbp, rax
	je	.label_418
	jmp	.label_408
.label_394:
	mov	dword ptr [r12], 0xd
.label_373:
	xor	r15d, r15d
.label_314:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_345:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_429
	mov	rax, qword ptr [rdi + 0x70]
.label_563:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_375:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_442
	mov	rax, qword ptr [rdi + 0x70]
.label_587:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_583:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_533
	mov	rax, qword ptr [rdi + 0x70]
.label_306:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r14, r14
	je	.label_452
	mov	qword ptr [r14], r15
.label_452:
	test	rbp, rbp
	je	.label_324
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_334
	jmp	.label_324
.label_370:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_462
	mov	rax, qword ptr [rdi + 0x70]
.label_364:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_334:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_314
.label_504:
	mov	rbp, r14
	jmp	.label_299
.label_393:
	xor	r15d, r15d
	test	r9, r9
	je	.label_314
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_482:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_482
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_482
.label_500:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_484
	cmp	eax, 6
	jne	.label_487
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_495
.label_484:
	mov	rdi, qword ptr [rbx + 0x28]
.label_495:
	call	free
.label_487:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_314
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_500
	test	r9, r9
	mov	rbx, rax
	je	.label_500
	jmp	.label_482
.label_416:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_299
.label_466:
	mov	dword ptr [r12], eax
	jmp	.label_310
.label_459:
	mov	dword ptr [r12], 7
	jmp	.label_310
.label_346:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_324
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_510
.label_401:
	mov	dword ptr [r12], 2
	jmp	.label_310
.label_488:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_324
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_519
.label_557:
	mov	dword ptr [r12], 6
	jmp	.label_373
.label_577:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_324
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_526
.label_362:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_324
.label_562:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_324
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_537
.label_405:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_543
.label_420:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_412
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_554
.label_426:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_412
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_567
.label_338:
	mov	dword ptr [r12], 3
	jmp	.label_310
.label_461:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_324
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, rbp
	jmp	.label_576
.label_442:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_583
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_587
.label_533:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_324
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_306
.label_566:
	mov	dword ptr [r12], 7
	jmp	.label_310
.label_358:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_332:
	mov	rsi, r14
	xor	eax, eax
.label_329:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_316
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_316:
	cmp	esi, 0x5f
	je	.label_319
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_321
.label_319:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_321:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_329
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_332
	jmp	.label_335
.label_372:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_339
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_344
.label_429:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_339
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_563
.label_462:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_324
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_364
.label_324:
	mov	dword ptr [r12], 0xc
	jmp	.label_373
.label_571:
	mov	dword ptr [r12], 7
	jmp	.label_374
.label_339:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_375
.label_318:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_381
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_388:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_388
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_388
.label_407:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_455
	cmp	eax, 6
	jne	.label_395
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_404
.label_455:
	mov	rdi, qword ptr [rbp + 0x28]
.label_404:
	call	free
.label_395:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_381
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_407
	test	rcx, rcx
	mov	rbp, rax
	je	.label_407
	jmp	.label_388
.label_381:
	mov	dword ptr [r12], 8
	jmp	.label_373
.label_580:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_374
.label_478:
	mov	dword ptr [r12], 3
	jmp	.label_310
.label_385:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_412
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_413
.label_412:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_374
.label_323:
	mov	edi, OFFSET FLAT:label_421
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_423
	call	__assert_fail
.label_532:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_298:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_374:
	mov	r15, qword ptr [rsp + 0x30]
.label_310:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	xor	ebp, ebp
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	jmp	.label_445
	.section	.text
	.align	16
	#Procedure 0x40cb50

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x30]
	mov	rdx, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	byte ptr [r13 + 0x8a], 0
	jne	.label_1168
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1168
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_1183
.label_1168:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_1176
.label_1183:
	cmp	rdx, r15
	jle	.label_1189
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1154
.label_1188:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1194
	cmp	rbp, -2
	jne	.label_1196
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1196
.label_1194:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	jne	.label_1163
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1163
	.section	.text
	.align	16
	#Procedure 0x40cc0e
	.globl sub_40cc0e
	.type sub_40cc0e, @function
sub_40cc0e:

	nop	
.label_1154:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_1139
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_1139
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r12*4]
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r13 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_1163:
	mov	rax, r15
	jmp	.label_1135
	.section	.text
	.align	16
	#Procedure 0x40cc69
	.globl sub_40cc69
	.type sub_40cc69, @function
sub_40cc69:

	nop	dword ptr [rax]
.label_1139:
	mov	rdx, r14
	sub	rdx, r15
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_1188
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_1193
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_1182
	.section	.text
	.align	16
	#Procedure 0x40ccd3
	.globl sub_40ccd3
	.type sub_40ccd3, @function
sub_40ccd3:

	nop	word ptr cs:[rax + rax]
.label_1193:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_1200
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_1182:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1135
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1135:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_1154
	jmp	.label_1190
.label_1200:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_1164
.label_1196:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_1189:
	mov	rax, r15
.label_1190:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_1177
.label_1176:
	cmp	r15, rdx
	jge	.label_1181
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_1164:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_1184
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_1141:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_1197
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_1140
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_1151
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1134
.label_1184:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_1141
	xor	esi, esi
.label_1201:
	cmp	rsi, rdx
	jge	.label_1141
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_1201
	jmp	.label_1141
.label_1197:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1167
	cmp	r14, -2
	jne	.label_1166
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1166
.label_1167:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1178
.label_1172:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1170
.label_1195:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_1153
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1153
.label_1151:
	cmp	rcx, -1
	je	.label_1140
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1198
.label_1166:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_1181:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_1177:
	xor	eax, eax
.label_1152:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1140:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1134:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_1147
.label_1133:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1153
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_1173
.label_1153:
	mov	rbp, r15
.label_1173:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_1176
.label_1147:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1142
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1142
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_1186
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_1146]
	movdqa	xmm3, xmmword ptr [rip + label_1145]
	movdqa	xmm4, xmmword ptr [rip + label_1156]
	movdqa	xmm5, xmmword ptr [rip + label_1155]
.label_1179:
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm1
	paddq	xmm7, xmm0
	movdqa	xmm2, xmm7
	paddq	xmm2, xmm3
	movq	rdi, xmm1
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm7
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	paddq	xmm1, xmm4
	paddq	xmm7, xmm5
	movq	rdi, xmm6
	paddq	xmm6, xmm0
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm6
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm7
	add	rsi, 2
	jne	.label_1179
	jmp	.label_1161
.label_1198:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_1162
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1136
.label_1162:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_1180
	test	r15, r15
	je	.label_1171
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1169
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_1169
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1191
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1175
.label_1186:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_1161:
	test	rdx, rdx
	je	.label_1199
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_1145]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_1199:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1133
.label_1142:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_1192:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1192
	jmp	.label_1133
.label_1136:
	mov	eax, 0xc
	jmp	.label_1152
.label_1191:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1145]
	movdqa	xmm9, xmmword ptr [rip + label_1146]
	movdqa	xmm10, xmmword ptr [rip + label_1155]
	movdqa	xmm11, xmmword ptr [rip + label_1156]
	movdqa	xmm5, xmmword ptr [rip + label_1157]
	movdqa	xmm6, xmmword ptr [rip + label_1158]
	movdqa	xmm7, xmmword ptr [rip + label_1159]
	movdqa	xmm1, xmmword ptr [rip + label_1160]
.label_1187:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1187
.label_1175:
	test	rdx, rdx
	je	.label_1143
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1145]
	movdqa	xmm2, xmmword ptr [rip + label_1146]
.label_1165:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1165
.label_1143:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_1171
.label_1169:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1169
.label_1171:
	mov	byte ptr [r13 + 0x8c], 1
.label_1180:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], ebx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx + r15*8], rbx
	cmp	rdi, 2
	jb	.label_1185
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1144
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1144
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_1148]
	movdqa	xmm8, xmmword ptr [rip + label_1145]
	movdqa	xmm9, xmmword ptr [rip + label_1146]
	movdqa	xmm10, xmmword ptr [rip + label_1149]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_1150],  0xe8
	mov	rdi, r8
.label_1174:
	movdqa	xmm4, xmm7
	paddq	xmm4, xmm8
	movdqa	xmm3, xmm7
	paddq	xmm3, xmm9
	movdqa	xmm5, xmm7
	pxor	xmm5, xmm10
	movdqa	xmm0, xmm6
	pcmpgtd	xmm0, xmm5
	pshufd	xmm2, xmm0, 0xa0
	pcmpeqd	xmm5, xmm6
	pshufd	xmm1, xmm5, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm5, xmm0, 0xf5
	por	xmm5, xmm1
	movdqa	xmm0, xmm4
	pxor	xmm0, xmm10
	movdqa	xmm1, xmm6
	pcmpgtd	xmm1, xmm0
	pshufd	xmm2, xmm1, 0xa0
	pcmpeqd	xmm0, xmm6
	pshufd	xmm0, xmm0, 0xf5
	pand	xmm0, xmm2
	pshufd	xmm1, xmm1, 0xf5
	por	xmm1, xmm0
	movq	rbx, xmm7
	pand	xmm7, xmm5
	pandn	xmm5, xmm11
	por	xmm5, xmm7
	pand	xmm4, xmm1
	pandn	xmm1, xmm11
	por	xmm1, xmm4
	paddq	xmm5, xmm12
	paddq	xmm1, xmm12
	add	rbx, r15
	movdqu	xmmword ptr [rdx + rbx*8], xmm5
	movdqu	xmmword ptr [rdx + rbx*8 + 0x10], xmm1
	movq	qword ptr [rcx + rbx*4], xmm13
	movq	qword ptr [rcx + rbx*4 + 8], xmm13
	add	rdi, -4
	movdqa	xmm7, xmm3
	jne	.label_1174
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_1185
.label_1144:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_1138:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1138
.label_1185:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_1137
	add	qword ptr [r13 + 0x68], rcx
.label_1137:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_1176
.label_1178:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1172
.label_1170:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_1195
	.section	.text
	.align	16
	#Procedure 0x40d474
	.globl sub_40d474
	.type sub_40d474, @function
sub_40d474:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d480
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
	#Procedure 0x40d541
	.globl sub_40d541
	.type sub_40d541, @function
sub_40d541:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d550

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1202
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_792
	xor	eax, eax
	call	error
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x40d57a
	.globl sub_40d57a
	.type sub_40d57a, @function
sub_40d57a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d580

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rax
	mov	rax, r9
	mov	r9, rdx
	push	0
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d595
	.globl sub_40d595
	.type sub_40d595, @function
sub_40d595:

	nop	word ptr cs:[rax + rax]
.label_1204:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1203
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1203:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5d4
	.globl sub_40d5d4
	.type sub_40d5d4, @function
sub_40d5d4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40d5d6

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
	jne	.label_1205
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1205
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1204
.label_1205:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x40d610

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
	je	.label_1216
	mov	edx, OFFSET FLAT:label_1221
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1208
.label_1216:
	mov	edx, OFFSET FLAT:label_1210
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1208:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1215
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
	mov	esi, OFFSET FLAT:label_1211
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1217
	jmp	qword ptr [(r12 * 8) + label_1218]
.label_2542:
	add	rsp, 8
	jmp	.label_1209
.label_1217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1224
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
	jmp	.label_1209
.label_2543:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1212
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
.label_2544:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1206
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
.label_2545:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1222
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
.label_2546:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1219
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
	jmp	.label_1209
.label_2547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1214
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
	jmp	.label_1209
.label_2548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1220
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
	jmp	.label_1209
.label_2549:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1223
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
	jmp	.label_1209
.label_2551:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1207
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
	jmp	.label_1209
.label_2550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1213
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
.label_1209:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d968
	.globl sub_40d968
	.type sub_40d968, @function
sub_40d968:

	nop	dword ptr [rax + rax]
.label_1225:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40d975
	.globl sub_40d975
	.type sub_40d975, @function
sub_40d975:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40d977
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
	je	.label_1225
	test	rdx, rdx
	je	.label_1225
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9e0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	test	rcx, rcx
	mov	rbp, -1
	js	.label_1226
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x10], r9
	cmp	rcx, rbx
	jg	.label_1226
	xor	r12d, r12d
	add	r8, rcx
	js	.label_1234
	mov	r12, r8
.label_1234:
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	r12, rbx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rcx
	mov	eax, r13d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 8], rdi
	jle	.label_1238
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1238
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	mov	eax, r13d
	je	.label_1238
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp + 8]
	mov	al, byte ptr [rdi + 0x38]
.label_1238:
	xor	r14d, r14d
	test	rbp, rbp
	mov	r15d, 1
	je	.label_1235
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1235
	and	al, 6
	cmp	al, 4
	jne	.label_1228
	mov	rax, qword ptr [rbp]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1259
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1231
	mov	r14, rbp
.label_1231:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1235
	mov	r15, rax
	jmp	.label_1235
.label_1228:
	mov	r15, qword ptr [rdi + 0x30]
.label_1259:
	inc	r15
	mov	r14, rbp
.label_1235:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_1226
	mov	edx, r13d
	shr	dl, 5
	and	dl, 1
	and	r13d, 0x40
	movzx	edx, dl
	shr	r13d, 5
	or	r13d, edx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x18]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1230
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1227:
	call	free
.label_1226:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1230:
	test	r14, r14
	mov	rdi, r12
	je	.label_1244
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1247
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1252
	test	al, al
	jne	.label_1254
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_1232
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1251
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1241:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1242
.label_1247:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1242
	mov	edi, OFFSET FLAT:label_1246
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1237
	call	__assert_fail
.label_1252:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1253
	mov	rbx, rax
.label_1242:
	test	r15, r15
	jle	.label_1255
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1258
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1239:
	mov	rbx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + rdx*8 + 8], rbx
	mov	rbx, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8 + 8], rbx
	add	rdx, 2
	add	rbp, 0x20
	cmp	rsi, rdx
	jne	.label_1239
.label_1258:
	test	r9, r9
	je	.label_1250
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1250:
	mov	rbx, qword ptr [r14]
	jmp	.label_1229
.label_1255:
	xor	r15d, r15d
.label_1229:
	cmp	r15, rbx
	jae	.label_1243
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1233:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1233
.label_1243:
	mov	ebp, r13d
.label_1249:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1227
.label_1244:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1227
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rbp, rax
	jne	.label_1245
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rax
	jmp	.label_1227
.label_1253:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1232
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1240
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1241
.label_1251:
	mov	rdi, qword ptr [rsp + 0x10]
.label_1248:
	call	free
.label_1232:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1249
.label_1254:
	mov	edi, OFFSET FLAT:label_1236
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1237
	call	__assert_fail
.label_1245:
	mov	edi, OFFSET FLAT:label_1256
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1257
	call	__assert_fail
.label_1240:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_1248
	.section	.text
	.align	16
	#Procedure 0x40dd93
	.globl sub_40dd93
	.type sub_40dd93, @function
sub_40dd93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dda0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_1271
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_1272
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_1272
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_1278:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_1272
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_1278
.label_1272:
	cmp	r10d, 5
	jne	.label_1262
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_1265
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_1267
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_1265
.label_1267:
	test	al, al
	jns	.label_1274
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_1265
.label_1274:
	mov	r14d, ebx
	jmp	.label_1265
.label_1262:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_1265
	test	al, al
	je	.label_1265
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_1281
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1281
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_1273
.label_1281:
	cmp	r8d, 1
	jne	.label_1264
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_1273
.label_1264:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_1273:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_1269
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1277:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_1276
	inc	rdx
	cmp	rdx, rax
	jl	.label_1277
.label_1269:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_1284
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1282:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_1276
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_1282
	mov	rsi, qword ptr [r15 + 0x40]
.label_1284:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_1283
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_1279:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_1260
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_1276
.label_1260:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_1279
	jmp	.label_1283
.label_1276:
	mov	ecx, ebx
.label_1283:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1270
	mov	r14d, ecx
	jmp	.label_1265
.label_1270:
	test	ecx, ecx
	jg	.label_1265
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_1265:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1271:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_1265
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_1265
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_1280
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_1265
.label_1280:
	cmp	bl, 0xef
	ja	.label_1261
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_1263
	cmp	dil, 0xa0
	jb	.label_1265
	jmp	.label_1263
.label_1261:
	cmp	bl, 0xf7
	ja	.label_1268
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_1263
	cmp	dil, 0x90
	jb	.label_1265
	jmp	.label_1263
.label_1268:
	cmp	bl, 0xfb
	ja	.label_1275
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_1263
	cmp	dil, 0x88
	jb	.label_1265
	jmp	.label_1263
.label_1275:
	cmp	bl, 0xfd
	ja	.label_1265
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_1263
	cmp	dil, 0x84
	jb	.label_1265
.label_1263:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_1265
	add	rax, rcx
	mov	ecx, 1
.label_1266:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_1265
	cmp	dl, 0xbf
	ja	.label_1265
	inc	rcx
	cmp	rcx, rdi
	jl	.label_1266
	mov	r14d, esi
	jmp	.label_1265
	.section	.text
	.align	16
	#Procedure 0x40e023
	.globl sub_40e023
	.type sub_40e023, @function
sub_40e023:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e030
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
	#Procedure 0x40e03f
	.globl sub_40e03f
	.type sub_40e03f, @function
sub_40e03f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40e040

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
	jne	.label_1286
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1285
	test	cl, cl
	jne	.label_1285
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1285
.label_1286:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1285
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1285:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1287
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1289:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1289
.label_1287:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1290
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1291], OFFSET FLAT:slot0
.label_1290:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1288
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1288:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e131
	.globl sub_40e131
	.type sub_40e131, @function
sub_40e131:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e140

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp], r9
	mov	qword ptr [rsp + 0x30], r8
	mov	qword ptr [rsp + 0x28], rdx
	mov	r9, rsi
	mov	r10, qword ptr [rdi + 0x98]
	mov	r8, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	r8, r8
	jle	.label_1292
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_1295:
	lea	rsi, [rdx + r14]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_1295
.label_1292:
	cmp	r14, r8
	jge	.label_1300
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_1293
.label_1300:
	mov	r14, -1
.label_1293:
	xor	r12d, r12d
	test	r8, r8
	jle	.label_1296
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, r8
	nop	
.label_1304:
	lea	rsi, [rdx + r12]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	mov	rbx, qword ptr [rsp]
	cmp	qword ptr [rbp + rsi*8 + 8], rbx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_1304
.label_1296:
	cmp	r12, r8
	jge	.label_1298
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	mov	rsi, qword ptr [rsp]
	cmp	qword ptr [rax + rdx*8 + 8], rsi
	je	.label_1301
.label_1298:
	mov	r12, -1
.label_1301:
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1302
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], r10
	nop	word ptr cs:[rax + rax]
.label_1303:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rdx + r15*8]
	lea	rsi, [r11 + r11*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [r10]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	rbp, rcx
	jle	.label_1305
	mov	ebx, 0xffffffff
	jmp	.label_1297
	.section	.text
	.align	16
	#Procedure 0x40e2ac
	.globl sub_40e2ac
	.type sub_40e2ac, @function
sub_40e2ac:

	nop	dword ptr [rax]
.label_1305:
	mov	rbx, qword ptr [rax + rsi*8 + 0x18]
	cmp	rbx, rcx
	jge	.label_1306
	mov	ebx, 1
	jmp	.label_1297
	.section	.text
	.align	16
	#Procedure 0x40e2c1
	.globl sub_40e2c1
	.type sub_40e2c1, @function
sub_40e2c1:

	nop	word ptr cs:[rax + rax]
.label_1306:
	xor	r8d, r8d
	cmp	rbp, rcx
	sete	r8b
	xor	esi, esi
	cmp	rbx, rcx
	sete	sil
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_1297
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, r14
	mov	rbx, rdx
	call	check_dst_limits_calc_pos_1
	mov	rdx, rbx
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	ebx, eax
	mov	rax, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [r11 + r11*4]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	nop	dword ptr [rax]
.label_1297:
	cmp	rbp, qword ptr [rsp]
	jg	.label_1294
	lea	rsi, [r11 + r11*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, qword ptr [rsp]
	jl	.label_1294
	mov	r11d, ebx
	xor	ebx, ebx
	mov	r8, qword ptr [rsp]
	cmp	rbp, r8
	sete	bl
	xor	esi, esi
	cmp	rax, r8
	sete	sil
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebx
	mov	ebx, r11d
	je	.label_1294
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, r12
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r13d, eax
	nop	word ptr cs:[rax + rax]
.label_1294:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_1299
	inc	r15
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_1303
.label_1302:
	xor	eax, eax
.label_1299:
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
	#Procedure 0x40e3c5
	.globl sub_40e3c5
	.type sub_40e3c5, @function
sub_40e3c5:

	nop	word ptr cs:[rax + rax]
.label_1311:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1307
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40e3f0
	.globl sub_40e3f0
	.type sub_40e3f0, @function
sub_40e3f0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3ff

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1311
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1309
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1312
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1309
	mov	esi, OFFSET FLAT:label_1310
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1308
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1308:
	mov	rbx, r14
.label_1309:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e480
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1313
	test	rdx, rdx
	je	.label_1313
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_1313:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40e4ab
	.globl sub_40e4ab
	.type sub_40e4ab, @function
sub_40e4ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e4b0

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	lea	rcx, [r15 + r15*2]
	mov	r9, qword ptr [rax + rcx*8 + 8]
	test	r9, r9
	jle	.label_1325
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1327:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_1316
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_1316
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_1326
	mov	r10, qword ptr [rax + 8]
.label_1326:
	test	r9, r9
	jle	.label_1319
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_1333
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1338:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_1338
.label_1333:
	cmp	rbp, -1
	je	.label_1319
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_1321
.label_1319:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_1321
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_1323
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1315:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_1315
.label_1323:
	cmp	rax, -1
	je	.label_1321
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_1336
.label_1321:
	test	r10, r10
	jle	.label_1316
	test	r9, r9
	jle	.label_1324
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_1340
	xor	esi, esi
	nop	dword ptr [rax]
.label_1320:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_1320
.label_1340:
	cmp	rsi, -1
	je	.label_1324
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_1316
.label_1324:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_1316
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_1328
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_1334:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_1334
.label_1328:
	cmp	rax, -1
	je	.label_1316
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_1316
.label_1336:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1330
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_1316:
	inc	r14
	cmp	r14, r9
	jl	.label_1327
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_1325
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	r10, [r9 - 1]
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1329:
	test	r9, r9
	mov	rbp, qword ptr [r8 + r15*8]
	jle	.label_1314
	test	r10, r10
	mov	eax, 0
	je	.label_1317
	mov	rcx, r10
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1322:
	lea	rdx, [rax + rcx]
	shr	rdx, 1
	cmp	qword ptr [rdi + rdx*8], rbp
	lea	rbx, [rdx + 1]
	cmovl	rax, rbx
	cmovge	rcx, rdx
	cmp	rax, rcx
	jb	.label_1322
.label_1317:
	cmp	rax, -1
	je	.label_1314
	cmp	qword ptr [rdi + rax*8], rbp
	je	.label_1318
.label_1314:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_1318
	mov	r11, r14
	dec	r11
	mov	rdx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_1331
	mov	rbx, r11
	xor	eax, eax
	nop	dword ptr [rax]
.label_1335:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rdx + rcx*8], rbp
	lea	rsi, [rcx + 1]
	cmovl	rax, rsi
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_1335
.label_1331:
	cmp	qword ptr [rdx + rax*8], rbp
	mov	rbx, -1
	cmove	rbx, rax
	test	rbx, rbx
	js	.label_1318
	cmp	r14, rbx
	jle	.label_1318
	mov	qword ptr [r12 + 8], r11
	cmp	r11, rbx
	jle	.label_1318
	nop	
.label_1337:
	mov	rcx, qword ptr [rdx + rax*8 + 8]
	mov	qword ptr [rdx + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1337
	nop	word ptr cs:[rax + rax]
.label_1318:
	inc	r15
	cmp	r15, qword ptr [r13]
	jl	.label_1329
	jmp	.label_1332
.label_1330:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_1339
	.section	.text
	.align	16
	#Procedure 0x40e7eb
	.globl sub_40e7eb
	.type sub_40e7eb, @function
sub_40e7eb:

	nop	dword ptr [rax + rax]
.label_1325:
	mov	rdi, qword ptr [rsp + 0x10]
.label_1332:
	call	free
	xor	ebp, ebp
.label_1339:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1341:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40e815
	.globl sub_40e815
	.type sub_40e815, @function
sub_40e815:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e820
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1341
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1342
	test	rax, rax
	je	.label_1341
.label_1342:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e850
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40e85a
	.globl sub_40e85a
	.type sub_40e85a, @function
sub_40e85a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e860

	.globl sub_40e860
	.type sub_40e860, @function
sub_40e860:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_1343
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1345
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_974
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1346
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_975
.label_977:
	lea	rax, [r14 + r15*8]
	jmp	.label_987
.label_2649:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_975
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_256]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_977
	mov	qword ptr [rax], rbx
	jmp	.label_975
	.section	.text
	.align	16
	#Procedure 0x40e93f

	.globl sub_40e93f
	.type sub_40e93f, @function
sub_40e93f:
	lea	rax, [r14 + rbx*8]
.label_987:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_974
.label_1350:
	test	dl, 8
	jne	.label_991
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_975
.label_1343:
	mov	edi, OFFSET FLAT:label_1347
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_981
	call	__assert_fail
.label_1348:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_975:
	xor	eax, eax
.label_974:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2648:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_974
	mov	edi, OFFSET FLAT:label_980
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_981
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40e9c2

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	edx, dword ptr [rsi + 0x30]
	mov	eax, edx
	add	al, 0xfe
	movzx	ebx, al
	cmp	bl, 0xe
	ja	.label_1350
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_1349]
.label_1346:
	mov	qword ptr [rax], 2
	jge	.label_1348
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_975
.label_2650:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_256]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	sub_40e93f
	mov	qword ptr [rax], r15
	jmp	.label_975
.label_1345:
	mov	edi, OFFSET FLAT:label_1344
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_981
	call	__assert_fail
.label_991:
	mov	edi, OFFSET FLAT:label_992
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_981
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40ea6a
	.globl sub_40ea6a
	.type sub_40ea6a, @function
sub_40ea6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea70

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_475
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1351
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea95
	.globl sub_40ea95
	.type sub_40ea95, @function
sub_40ea95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eaa0
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1352
	call	free_dfa_content
.label_1352:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eadb
	.globl sub_40eadb
	.type sub_40eadb, @function
sub_40eadb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eae0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40eaee
	.globl sub_40eaee
	.type sub_40eaee, @function
sub_40eaee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40eaf0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1354
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1358
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1354
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1356
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1353
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1354
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1356
.label_1358:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1357
.label_1354:
	mov	rax, -2
	jmp	.label_1355
.label_1357:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1356
.label_1353:
	mov	r13, r15
.label_1356:
	mov	r8d, 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	1
	push	qword ptr [rsp + 0x58]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1355:
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
	#Procedure 0x40ebf6
	.globl sub_40ebf6
	.type sub_40ebf6, @function
sub_40ebf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ec00

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
	#Procedure 0x40ec19
	.globl sub_40ec19
	.type sub_40ec19, @function
sub_40ec19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ec20
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
	je	.label_1359
	test	rdx, rdx
	je	.label_1359
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1359:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40ec8a
	.globl sub_40ec8a
	.type sub_40ec8a, @function
sub_40ec8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ec90

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rax]
	shl	rdx, 4
	mov	rax, qword ptr [rax + rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rdi, [rax + r9]
	cmp	r12, rdi
	mov	qword ptr [rsp + 0x50], r9
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x48], rbx
	jle	.label_1383
	mov	r14, qword ptr [rbp + 0x10]
.label_1379:
	mov	r13, qword ptr [rbp]
	test	r13, r13
	cmove	r13, rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rdi + 0x48]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rdi + 0xb8], r14
	mov	qword ptr [rdi + 0x48], r13
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rcx
	call	re_string_context_at
	cmp	r13, rbx
	mov	r12, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x88], rbp
	mov	qword ptr [rsp + 0x80], r15
	mov	qword ptr [rsp + 8], r13
	jne	.label_1372
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_256]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1367
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 4], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdx, r13
	mov	ebx, dword ptr [rsp + 0xd0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1387
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1389
.label_1372:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_1381
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_1392
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_1394
.label_1381:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_1361
.label_1392:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_1369
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_1367
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_1382
.label_1369:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_1394:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1382:
	test	al, 0x40
	je	.label_1361
.label_1389:
	test	rbp, rbp
	je	.label_1390
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1387
.label_1390:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1371
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1365
.label_1371:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_1361:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_1370
	xor	esi, esi
	nop	
.label_1393:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_1373
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1376
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1365
.label_1376:
	test	rdx, rdx
	je	.label_1384
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_1395
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_1377:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1374
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1366
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rcx + r15*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, r12
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x68], 0
	test	rsi, rsi
	lea	rax, [rsp + 0x60]
	mov	rcx, rax
	je	.label_1386
	add	rsi, 8
	mov	r12, rcx
	mov	rdi, r12
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	rcx, r12
	mov	r12d, eax
	mov	dword ptr [rsp + 0x34], r12d
	test	r12d, r12d
	jne	.label_1378
.label_1386:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_1362
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_1385
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_1385
	jmp	.label_1378
	.section	.text
	.align	16
	#Procedure 0x40f0ce
	.globl sub_40f0ce
	.type sub_40f0ce, @function
sub_40f0ce:

	nop	
.label_1366:
	test	eax, eax
	jne	.label_1385
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_1374:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_1396
.label_1385:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_1362
.label_1396:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_1377
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_1395:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1384:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_1375
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1365
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1365
.label_1375:
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1388
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1365
.label_1388:
	mov	rsi, qword ptr [rsp + 0x38]
	inc	rsi
	test	rdx, rdx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8 + 8], rdx
	mov	eax, 0
	cmovne	rsi, rax
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	jl	.label_1393
	jmp	.label_1363
.label_1370:
	mov	rbp, rax
	jmp	.label_1363
.label_1373:
	mov	rbp, qword ptr [rsp + 8]
.label_1363:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rcx, [rax + 8]
	test	rax, rax
	cmove	rcx, rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r14 + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x48], rax
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_1368
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_1368
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_1380
	xor	edx, edx
.label_1360:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1360
.label_1380:
	cmp	rdx, -1
	je	.label_1368
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_1364
.label_1368:
	mov	ebp, 1
.label_1364:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1362:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_1391
.label_1378:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_1391:
	mov	dword ptr [rsp + 4], r12d
.label_1365:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_1364
.label_1383:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_1364
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_1364
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_1364
	mov	qword ptr [r13 + 0x10], r14
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r13 + 8], rax
	lea	rdi, [r14 + r12*8]
	shl	r15, 3
	xor	esi, esi
	mov	rdx, r15
	call	memset
	mov	rbp, r13
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1379
.label_1387:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1364
.label_1367:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_1364
	.section	.text
	.align	16
	#Procedure 0x40f39f
	.globl sub_40f39f
	.type sub_40f39f, @function
sub_40f39f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40f3a0

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_1404
	mov	rbx, r8
	jle	.label_1411
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	cmp	r8, 4
	mov	rbx, r8
	jb	.label_1412
	xor	esi, esi
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	rbx, r8
	je	.label_1412
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	esi, [rbx + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1423
	pxor	xmm1, xmm1
	jmp	.label_1401
.label_1423:
	lea	rbp, [rsi - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1405:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_1405
.label_1401:
	test	rsi, rsi
	je	.label_1398
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_1420:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_1420
.label_1398:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbx, xmm1
	cmp	r8, rdx
	mov	rsi, rdx
	je	.label_1411
.label_1412:
	mov	rdx, r8
	sub	rdx, rsi
	lea	rcx, [rcx + rsi*8]
	nop	
.label_1417:
	add	rbx, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_1417
.label_1411:
	mov	rdx, qword ptr [r15 + 0x40]
	mov	rcx, qword ptr [r15 + 0x88]
	and	rcx, rbx
	lea	rsi, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rsi*8]
	test	rcx, rcx
	jle	.label_1421
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	xor	esi, esi
	nop	
.label_1422:
	test	r12, r12
	je	.label_1400
	mov	r13, qword ptr [rdx + rsi*8]
	cmp	rbx, qword ptr [r13]
	jne	.label_1400
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1400
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_1409:
	test	rdi, rdi
	jle	.label_1406
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_1409
	nop	word ptr cs:[rax + rax]
.label_1400:
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1422
.label_1421:
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1410
	mov	rax, r13
	add	rax, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	jle	.label_1397
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1408
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r13 + 0x50], rax
	jmp	.label_1415
.label_1397:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rax
	jle	.label_1419
	lea	r14, [r12 + 0x10]
.label_1415:
	xor	eax, eax
	nop	dword ptr [rax]
.label_1402:
	mov	r8, qword ptr [r15]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ebp, dword ptr [r8 + rsi + 8]
	mov	edx, ebp
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_1418
	mov	edi, ebp
	shr	edi, 0x14
	movzx	ecx, byte ptr [r13 + 0x68]
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	or	edx, edi
	shl	dl, 5
	and	dl, 0x20
	and	cl, 0xdf
	or	cl, dl
	mov	byte ptr [r13 + 0x68], cl
	cmp	bpl, 0xc
	je	.label_1413
	cmp	bpl, 4
	je	.label_1414
	cmp	bpl, 2
	jne	.label_1416
	or	cl, 0x10
	jmp	.label_1399
.label_1414:
	or	cl, 0x40
	jmp	.label_1399
.label_1416:
	lea	rdx, [r8 + rsi + 8]
	test	dword ptr [rdx], 0x3ff00
	je	.label_1418
.label_1413:
	or	cl, 0x80
.label_1399:
	mov	byte ptr [r13 + 0x68], cl
.label_1418:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1402
.label_1419:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	register_state
	test	eax, eax
	jne	.label_1403
.label_1406:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1404:
	mov	dword ptr [r14], 0
	jmp	.label_1407
.label_1403:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_1410
.label_1408:
	mov	rdi, r13
	call	free
.label_1410:
	mov	dword ptr [r14], 0xc
.label_1407:
	xor	r13d, r13d
	jmp	.label_1406
	.section	.text
	.align	16
	#Procedure 0x40f6dd
	.globl sub_40f6dd
	.type sub_40f6dd, @function
sub_40f6dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f6e0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, r9
	mov	r13, rdx
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x10], r8
	call	parse_branch
	mov	r8, rbx
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_1433
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_1428
.label_1433:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_1439
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1431
.label_1439:
	mov	rbp, rbx
	jmp	.label_1428
.label_1438:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1434
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	r8, rbp
	jmp	.label_1436
	.section	.text
	.align	16
	#Procedure 0x40f786
	.globl sub_40f786
	.type sub_40f786, @function
sub_40f786:

	nop	word ptr cs:[rax + rax]
.label_1431:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, r8
	call	peek_token
	mov	r8, rbp
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r15d, 0
	je	.label_1427
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1424
	cmp	eax, 9
	mov	r15d, 0
	je	.label_1427
.label_1424:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_branch
	mov	r8, rbp
	mov	r15, rax
	test	r15, r15
	jne	.label_1440
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_1441
.label_1440:
	mov	rax, qword ptr [rsp + 0x28]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_1427:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1438
	mov	rax, qword ptr [r14 + 0x70]
.label_1436:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1425
	mov	qword ptr [rbx], rbp
.label_1425:
	test	r15, r15
	je	.label_1429
	mov	qword ptr [r15], rbp
.label_1429:
	cmp	byte ptr [r13 + 8], 0xa
	mov	rbx, rbp
	je	.label_1431
.label_1428:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1441:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1428
	mov	r14d, 0x400ff
	xor	ebp, ebp
.label_1426:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1426
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1426
.label_1437:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1432
	cmp	eax, 6
	jne	.label_1435
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1430
.label_1432:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1430:
	call	free
.label_1435:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1428
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1437
	test	rbx, rbx
	mov	r15, rax
	je	.label_1437
	jmp	.label_1426
.label_1434:
	mov	dword ptr [rbp], 0xc
	xor	ebp, ebp
	jmp	.label_1428
	.section	.text
	.align	16
	#Procedure 0x40f950

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1447
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1447
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_1452
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1447
	mov	qword ptr [r14 + 0xb8], rcx
.label_1452:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1449
	cmp	eax, 2
	jl	.label_1454
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1446
	jmp	.label_1447
.label_1449:
	cmp	eax, 2
	jl	.label_1443
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_1446
.label_1454:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_1448
	jmp	.label_1455
.label_1443:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_1446
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1444
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1453
	.section	.text
	.align	16
	#Procedure 0x40fa73
	.globl sub_40fa73
	.type sub_40fa73, @function
sub_40fa73:

	nop	word ptr cs:[rax + rax]
.label_1450:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1453:
	inc	rax
	cmp	rax, rcx
	jl	.label_1450
	mov	rax, rcx
.label_1444:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_1446
.label_1442:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_1451
	.section	.text
	.align	16
	#Procedure 0x40fab5
	.globl sub_40fab5
	.type sub_40fab5, @function
sub_40fab5:

	nop	word ptr cs:[rax + rax]
.label_1448:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1442
.label_1451:
	movzx	r12d, cl
	mov	eax, r12d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1445
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_1445:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_1448
	mov	rbx, r15
.label_1455:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
.label_1446:
	xor	eax, eax
.label_1447:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb1d
	.globl sub_40fb1d
	.type sub_40fb1d, @function
sub_40fb1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40fb20

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_1465
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_1459
	test	r13, r13
	jle	.label_1459
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1459
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1461
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_1460:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_1467:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_1456
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_1466
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1467
	jmp	.label_1456
.label_1466:
	mov	rdi, rbx
	sete	bl
	movzx	esi, bl
	mov	rbx, rdi
	add	rsi, r14
	inc	rbp
	lea	rdi, [r15 + 1]
	mov	qword ptr [rax + r15*8], rdx
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1460
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_1456:
	sub	r13, rbp
	jle	.label_1458
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_1464
.label_1459:
	test	r13, r13
	jle	.label_1465
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1457
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1463
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1462
.label_1465:
	test	rbx, rbx
	je	.label_1457
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1457
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_1457
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1463
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1462
.label_1457:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1462
.label_1458:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_1464
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_1464:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_1462:
	xor	ecx, ecx
.label_1461:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1463:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1461
	.section	.text
	.align	16
	#Procedure 0x40fd25
	.globl sub_40fd25
	.type sub_40fd25, @function
sub_40fd25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fd30

	.globl close_output_file
	.type close_output_file, @function
close_output_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	rdi, qword ptr [rip + output_stream]
	test	rdi, rdi
	je	.label_1474
	test	byte ptr [rdi], 0x20
	jne	.label_1469
	call	rpl_fclose
	test	eax, eax
	jne	.label_1471
	mov	rdi, qword ptr [rip + bytes_written]
	test	rdi, rdi
	jne	.label_1472
	cmp	byte ptr [rip + elide_empty_files],  1
	jne	.label_1472
	lea	r15, [rsp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	sigprocmask
	mov	rdi, qword ptr [rip + output_filename]
	call	unlink
	mov	ebp, eax
	xor	ebx, ebx
	test	ebp, ebp
	sete	bl
	call	__errno_location
	mov	r14d, dword ptr [rax]
	sub	dword ptr [rip + files_created],  ebx
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	sigprocmask
	test	ebp, ebp
	je	.label_1473
	mov	rdx, qword ptr [rip + output_filename]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_792
	xor	eax, eax
	mov	esi, r14d
	call	error
	jmp	.label_1473
.label_1472:
	mov	al, byte ptr [rip + suppress_count]
	test	al, al
	jne	.label_1473
	mov	rbx, qword ptr [rip + stdout]
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1468
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_1473:
	mov	qword ptr [rip + output_stream],  0
.label_1474:
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1124
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + output_filename]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_1470
.label_1471:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + output_filename]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_792
	xor	eax, eax
	mov	esi, ebx
.label_1470:
	call	error
	mov	qword ptr [rip + output_stream],  0
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x40fea4
	.globl sub_40fea4
	.type sub_40fea4, @function
sub_40fea4:

	nop	word ptr cs:[rax + rax]
.label_1475:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40feb5
	.globl sub_40feb5
	.type sub_40feb5, @function
sub_40feb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40febf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1475
	call	rpl_calloc
	test	rax, rax
	je	.label_1475
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fee0

	.globl create_output_file
	.type create_output_file, @function
create_output_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	edi, dword ptr [rip + files_created]
	call	make_filename
	mov	qword ptr [rip + output_filename],  rax
	mov	ecx, dword ptr [rip + files_created]
	cmp	ecx, -1
	je	.label_1477
	lea	r15, [rsp + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	sigprocmask
	mov	rdi, qword ptr [rip + output_filename]
	mov	esi, OFFSET FLAT:label_1476
	call	fopen_safer
	mov	rbp, rax
	mov	qword ptr [rip + output_stream],  rbp
	xor	ebx, ebx
	test	rbp, rbp
	setne	bl
	call	__errno_location
	mov	r14d, dword ptr [rax]
	add	dword ptr [rip + files_created],  ebx
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	sigprocmask
	test	rbp, rbp
	je	.label_1479
	mov	qword ptr [rip + bytes_written],  0
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1477:
	mov	r14d, 0x4b
	jmp	.label_1478
.label_1479:
	mov	rax, qword ptr [rip + output_filename]
.label_1478:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_792
	xor	eax, eax
	mov	esi, r14d
	call	error
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x40ffb3
	.globl sub_40ffb3
	.type sub_40ffb3, @function
sub_40ffb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ffc0

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r12, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r15, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	test	eax, eax
	je	.label_1481
	cmp	eax, 1
	je	.label_1483
	cmp	eax, 3
	jne	.label_1482
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1484
.label_1481:
.label_2503:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_1480
	cmp	rbx, r12
	jle	.label_1486
.label_1480:
	cmp	rbx, 0x40000000
	jl	.label_1485
.label_1483:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1484
.label_1485:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_1487
	mov	dword ptr [rax], 0x4b
	jmp	.label_1484
.label_1482:
	call	__errno_location
.label_1484:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r15
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_1128
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_1486:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1487:
	mov	dword ptr [rax], 0x22
	jmp	.label_1484
	.section	.text
	.align	16
	#Procedure 0x410094
	.globl sub_410094
	.type sub_410094, @function
sub_410094:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4100a0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, qword ptr [rdi]
	mov	rax, qword ptr [rip + label_1518]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_1519]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_1520
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1507
	lea	rax, [rbp - 0xb0]
.label_1520:
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x90], r13
	mov	r13, qword ptr [r13 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_1525
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_1529
.label_1525:
	mov	r14, rdx
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1535
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdx, r14
.label_1529:
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsi, r15
	mov	qword ptr [rbp - 0x58], rdx
	call	memcpy
	mov	r14, qword ptr [r15]
	xor	edi, edi
	cmp	r14, qword ptr [r15 + 8]
	jg	.label_1541
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rbx
	mov	qword ptr [rbp - 0x48], r12
	mov	qword ptr [rbp - 0x78], r15
	jmp	.label_1497
.label_1551:
	test	r13, r13
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_1509
.label_1496:
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_1550
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_1493
	mov	rax, qword ptr [rbp - 0x38]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r13
	jmp	.label_1553
.label_1550:
	mov	r13, qword ptr [r13 + 0x10]
.label_1553:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [r13 + r14], rax
	mov	qword ptr [r13 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x58]
	call	malloc
	mov	qword ptr [r13 + r14 + 0x10], rax
	test	rax, rax
	je	.label_1493
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	lea	rbx, [r13 + r14 + 0x18]
	mov	qword ptr [r13 + r14 + 0x20], r15
	test	r15, r15
	jle	.label_1500
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r13 + r14 + 0x28], rax
	test	rax, rax
	je	.label_1506
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_1509
.label_1500:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_1509
.label_1489:
	mov	r12, rax
	jmp	.label_1509
	.section	.text
	.align	16
	#Procedure 0x41029d
	.globl sub_41029d
	.type sub_41029d, @function
sub_41029d:

	nop	dword ptr [rax]
.label_1497:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax]
	mov	rdx, r13
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_1514
	cmp	cl, 8
	jne	.label_1512
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1512
	shl	rax, 4
	mov	qword ptr [r15 + rax], r14
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_1512
	.section	.text
	.align	16
	#Procedure 0x4102e1
	.globl sub_4102e1
	.type sub_4102e1, @function
sub_4102e1:

	nop	word ptr cs:[rax + rax]
.label_1514:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1512
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r14
	jge	.label_1524
	mov	qword ptr [r15 + rax + 8], r14
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r15
	jmp	.label_1494
.label_1524:
	test	ecx, 0x80000
	je	.label_1526
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1526
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x40]
.label_1494:
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	jmp	.label_1512
.label_1526:
	mov	qword ptr [r15 + rax + 8], r14
	nop	dword ptr [rax]
.label_1512:
	cmp	r14, qword ptr [r15 + 8]
	jne	.label_1521
	cmp	r13, qword ptr [r12 + 0xb0]
	jne	.label_1521
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	je	.label_1533
	test	rbx, rbx
	mov	eax, 0
	je	.label_1537
	mov	rcx, qword ptr [rbp - 0x80]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1543:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1539
	cmp	qword ptr [rcx], -1
	je	.label_1537
.label_1539:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1543
.label_1537:
	cmp	rax, rbx
	je	.label_1545
	mov	rcx, qword ptr [r15]
	lea	rax, [rcx - 1]
	mov	qword ptr [r15], rax
	test	rcx, rcx
	jle	.label_1546
	mov	rcx, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r13, qword ptr [rax + rbx + 8]
.label_1521:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r13
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	jne	.label_1488
	test	ecx, 0x100000
	jne	.label_1495
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_1498
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1502
	cmp	rax, -1
	mov	r12, r14
	je	.label_1508
	cmp	rdi, -1
	je	.label_1508
	test	rdx, rdx
	je	.label_1501
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, r12
	cmp	rax, rdx
	jl	.label_1508
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, r12
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	test	eax, eax
	jne	.label_1508
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_1516
	.section	.text
	.align	16
	#Procedure 0x4104cf
	.globl sub_4104cf
	.type sub_4104cf, @function
sub_4104cf:

	nop	
.label_1488:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	qword ptr [rbp - 0x50], r14
	mov	r14, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_1493
	lea	rax, [r13 + r13*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_1523
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r11, qword ptr [r14 + 0x10]
	lea	r10, [r11 - 1]
	mov	r12, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x38]
	nop	word ptr cs:[rax + rax]
.label_1540:
	test	r11, r11
	jle	.label_1511
	mov	rbx, qword ptr [r8 + r15*8]
	test	r10, r10
	mov	rcx, qword ptr [r14 + 0x18]
	mov	eax, 0
	je	.label_1528
	mov	rsi, r10
	xor	eax, eax
	nop	dword ptr [rax]
.label_1532:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_1532
.label_1528:
	cmp	rax, -1
	je	.label_1511
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_1511
	cmp	r12, -1
	jne	.label_1538
	mov	r12, rbx
.label_1511:
	inc	r15
	cmp	r15, r9
	jl	.label_1540
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_1509
	.section	.text
	.align	16
	#Procedure 0x410592
	.globl sub_410592
	.type sub_410592, @function
sub_410592:

	nop	word ptr cs:[rax + rax]
.label_1495:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r14
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1517:
	test	rdx, rdx
	jne	.label_1548
	jmp	.label_1498
.label_1538:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_1551
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_1552
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1554:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1554
.label_1552:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1489
	test	r13, r13
	jne	.label_1496
	mov	r12, rax
	jmp	.label_1509
.label_1502:
	test	rdx, rdx
	mov	rcx, r14
	je	.label_1501
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_1504
.label_1501:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_1493
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1498
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r13 + r13*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1510
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1515:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1515
.label_1510:
	cmp	rcx, -1
	je	.label_1517
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_1509
	jmp	.label_1517
	.section	.text
	.align	16
	#Procedure 0x4106e5
	.globl sub_4106e5
	.type sub_4106e5, @function
sub_4106e5:

	nop	word ptr cs:[rax + rax]
.label_1498:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1523
.label_1548:
	add	rdx, r14
	cmp	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	je	.label_1504
.label_1516:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1508
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1508
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1508
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1531
	xor	ebx, ebx
	nop	
.label_1503:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_1503
.label_1531:
	cmp	rbx, -1
	je	.label_1523
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_1523
.label_1504:
	mov	qword ptr [rbp - 0x68], 0
	mov	r14, rdx
.label_1509:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x78]
	jns	.label_1544
	cmp	r12, -2
	je	.label_1493
	nop	word ptr [rax + rax]
.label_1523:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1547
.label_1508:
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	mov	qword ptr [rbx], rax
	test	rcx, rcx
	jle	.label_1546
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r13, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x78]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + r14 + 8]
	mov	r14, r13
.label_1544:
	cmp	r14, qword ptr [r15 + 8]
	mov	r13, r12
	mov	rbx, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x48]
	jle	.label_1497
	mov	rdi, qword ptr [rbp - 0x60]
.label_1541:
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1505
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1505:
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_1507
	cmp	qword ptr [r12], 0
	jle	.label_1490
	xor	ebx, ebx
	xor	r15d, r15d
	nop	
.label_1513:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1513
	jmp	.label_1490
.label_1535:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_1507
	cmp	qword ptr [r12], 0
	jle	.label_1490
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1522:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1522
.label_1490:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1536:
	call	free
.label_1507:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1547:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	jmp	.label_1527
.label_1533:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	r14d, r14d
.label_1527:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1507
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_1536
.label_1545:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1530
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1530:
	cmp	qword ptr [r15], 0
	jle	.label_1534
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1542:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r15]
	jl	.label_1542
.label_1534:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	xor	r14d, r14d
	jmp	.label_1507
.label_1506:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1493:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1549
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1549:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_1507
	cmp	qword ptr [r12], 0
	jle	.label_1490
	xor	ebx, ebx
	xor	r15d, r15d
.label_1499:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1499
	jmp	.label_1490
.label_1546:
	mov	edi, OFFSET FLAT:label_1491
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1492
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x410a34
	.globl sub_410a34
	.type sub_410a34, @function
sub_410a34:

	nop	word ptr cs:[rax + rax]
.label_1555:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x410a45
	.globl sub_410a45
	.type sub_410a45, @function
sub_410a45:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410a49

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
	je	.label_1556
	test	r15, r15
	je	.label_1555
.label_1556:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1557:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410a85
	.globl sub_410a85
	.type sub_410a85, @function
sub_410a85:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410a8d
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
	je	.label_1557
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
	.section	.text
	.align	16
	#Procedure 0x410af0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1558:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1558
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x410b11
	.globl sub_410b11
	.type sub_410b11, @function
sub_410b11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410b20

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rdx
	mov	r14, qword ptr [rdi + 0x98]
	mov	r9, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	r11d, 0
	jle	.label_1566
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_1583:
	lea	rbp, [rdx + r11]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [r10 + rbp*8 + 8], r15
	cmovge	rdx, rbx
	lea	rbp, [rbx + 1]
	cmovl	r11, rbp
	cmp	r11, rdx
	jl	.label_1583
.label_1566:
	cmp	r11, r9
	jge	.label_1561
	cmp	r11, -1
	je	.label_1561
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_1561
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_1576
.label_1590:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_1576:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1575:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_1571
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_1589
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1570:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_1570
.label_1589:
	cmp	rax, -1
	je	.label_1571
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_1571
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_1579
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_1584
	xor	edx, edx
.label_1559:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_1559
.label_1584:
	cmp	rdx, -1
	je	.label_1565
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_1567
.label_1565:
	movaps	xmm0, xmmword ptr [rip + label_256]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1578
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_1577:
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, r14
	lea	rbx, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	mov	ecx, dword ptr [rsp + 0x44]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rsi, rbx
	call	re_node_set_merge
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rsi, rbp
	mov	eax, r14d
	or	eax, r12d
	mov	ecx, 2
	or	eax, ebx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_1567
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_1567
.label_1579:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_1581
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_1587
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_1585
	xor	edx, edx
	nop	
.label_1562:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_1562
.label_1585:
	cmp	rdx, -1
	je	.label_1574
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_1567
.label_1574:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_1560
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1588
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1582
.label_1581:
	movaps	xmm0, xmmword ptr [rip + label_256]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1564
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_1569
.label_1587:
	mov	qword ptr [rsp + 0x18], r8
.label_1560:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_1582:
	xor	ebx, ebx
.label_1563:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_1568
	xor	al, 1
	jne	.label_1568
.label_1569:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	rdx, [rsp + 0x10]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbx
	mov	rax, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_1580
	mov	eax, dword ptr [rsp + 0xc]
.label_1580:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_1586
.label_1578:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_1577
.label_1568:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_1572
.label_1564:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_1572:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_1567:
	mov	r14, qword ptr [rsp + 0x28]
.label_1586:
	test	ecx, ecx
	je	.label_1571
	cmp	ecx, 4
	jne	.label_1573
.label_1571:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_1575
	jmp	.label_1561
.label_1588:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_1563
.label_1573:
	cmp	ecx, 2
	je	.label_1590
	mov	eax, dword ptr [rsp + 0xc]
.label_1561:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f71
	.globl sub_410f71
	.type sub_410f71, @function
sub_410f71:

	nop	word ptr cs:[rax + rax]
.label_1595:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_1591
	xor	edx, edx
	cmp	al, 0xa
	je	.label_1592
	jmp	.label_1591
.label_1594:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1598
.label_1597:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1591
.label_1592:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_1591:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410fd5

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1599
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1593
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1595
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1596:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1594
	dec	rsi
	test	rsi, rsi
	jg	.label_1596
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1591
.label_1598:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1591
	test	eax, eax
	je	.label_1597
	jmp	.label_1591
	.section	.text
	.align	16
	#Procedure 0x411032
	.globl sub_411032
	.type sub_411032, @function
sub_411032:

	nop	
.label_1593:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_1591
.label_1599:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1591
	.section	.text
	.align	16
	#Procedure 0x411040

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_1600
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1603:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_1601
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1604:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1604
.label_1601:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1602
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1602:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1603
.label_1600:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110fa
	.globl sub_4110fa
	.type sub_4110fa, @function
sub_4110fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411100

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_1605:
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
	ja	.label_1605
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x41114b
	.globl sub_41114b
	.type sub_41114b, @function
sub_41114b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411150
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
	#Procedure 0x411163
	.globl sub_411163
	.type sub_411163, @function
sub_411163:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411170

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_1607
	test	ebx, ebx
	js	.label_1607
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_1606
.label_1607:
	mov	eax, ebx
.label_1606:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4111c6
	.globl sub_4111c6
	.type sub_4111c6, @function
sub_4111c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4111d0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4111e1
	.globl sub_4111e1
	.type sub_4111e1, @function
sub_4111e1:

	nop	word ptr cs:[rax + rax]
.label_1623:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1620
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1610
	.section	.text
	.align	16
	#Procedure 0x411220

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbp, rdi
	mov	rbx, qword ptr [rsi]
	mov	r13, qword ptr [r14 + 8]
	test	r13, r13
	je	.label_1622
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1622
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1617
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1617
.label_1622:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1623
	mov	rax, qword ptr [rbx + 0x70]
.label_1610:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1620:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1609
	mov	rax, qword ptr [rbx + 0x70]
.label_1612:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1608:
	test	r13, r13
	mov	rbp, r15
	je	.label_1611
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1615
	mov	rax, qword ptr [rbx + 0x70]
.label_1621:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbp
	test	r15, r15
	je	.label_1611
	mov	qword ptr [r15], rbp
.label_1611:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1618
	mov	rax, qword ptr [rbx + 0x70]
.label_1616:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1619
	mov	qword ptr [r12], r13
.label_1619:
	test	rbp, rbp
	je	.label_1613
	mov	qword ptr [rbp], r13
.label_1613:
	test	r15, r15
	je	.label_1614
	test	r12, r12
	je	.label_1614
	test	rbp, rbp
	je	.label_1614
	test	r13, r13
	je	.label_1614
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r12 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	dword ptr [r12 + 0x30], ecx
.label_1617:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1618:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1613
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1616
.label_1609:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1608
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1612
.label_1615:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1611
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1621
	.section	.text
	.align	16
	#Procedure 0x4114d5
	.globl sub_4114d5
	.type sub_4114d5, @function
sub_4114d5:

	nop	word ptr [rax + rax]
.label_1614:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1617
	.section	.text
	.align	16
	#Procedure 0x4114f0
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
	#Procedure 0x411508
	.globl sub_411508
	.type sub_411508, @function
sub_411508:

	nop	dword ptr [rax + rax]
.label_1625:
	call	xalloc_die
.label_1627:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x41151a
	.globl sub_41151a
	.type sub_41151a, @function
sub_41151a:

	nop	word ptr cs:[rax + rax]
.label_1628:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1625
	mov	qword ptr [rsi], rbx
.label_1626:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1624
	test	rax, rax
	je	.label_1625
.label_1624:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x41154e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1628
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1627
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1626
	call	free
	xor	eax, eax
	jmp	.label_1624
	.section	.text
	.align	16
	#Procedure 0x411580

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1632
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1634
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1634
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1634
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1632
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1634:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_1633
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1633
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1630:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1629
	test	rcx, rcx
	jne	.label_1636
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1638
	jmp	.label_1632
	.section	.text
	.align	16
	#Procedure 0x4116b7
	.globl sub_4116b7
	.type sub_4116b7, @function
sub_4116b7:

	nop	word ptr [rax + rax]
.label_1636:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1638:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1632
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1637
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1629:
	mov	r15b, 1
.label_1637:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1630
	jmp	.label_1635
.label_1633:
	xor	r15d, r15d
.label_1635:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1632
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1639
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1639
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1631
.label_1639:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1631:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1632:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411789
	.globl sub_411789
	.type sub_411789, @function
sub_411789:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411790
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
	#Procedure 0x4117a9
	.globl sub_4117a9
	.type sub_4117a9, @function
sub_4117a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4117b0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_1715
	mov	esi, OFFSET FLAT:label_1671
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1698
	mov	esi, OFFSET FLAT:label_1652
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1715
.label_1698:
	mov	r12d, OFFSET FLAT:label_1641
.label_1715:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1723
.label_1689:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_434
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1667
	mov	esi, OFFSET FLAT:label_1649
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1650
	mov	esi, OFFSET FLAT:label_1652
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1655
	mov	esi, OFFSET FLAT:label_474
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1657
	mov	esi, OFFSET FLAT:label_1641
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1661
	mov	esi, OFFSET FLAT:label_1662
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1665
	mov	esi, OFFSET FLAT:label_1719
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1670
	mov	esi, OFFSET FLAT:label_1671
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1674
	mov	esi, OFFSET FLAT:label_1677
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1679
	mov	esi, OFFSET FLAT:label_1682
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1683
	mov	esi, OFFSET FLAT:label_1686
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1688
	mov	esi, OFFSET FLAT:label_1690
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1642
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1694
	xor	ecx, ecx
.label_1702:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_1697
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1697:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1702
	jmp	.label_1642
.label_1667:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1706
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1716:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_1708
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1708:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1716
	jmp	.label_1642
.label_1650:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1718
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1640:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_1720
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1720:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1640
	jmp	.label_1642
.label_1655:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1645
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1653:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_1646
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1646:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1653
	jmp	.label_1642
.label_1657:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1711
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1668:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_1660
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1660:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1668
	jmp	.label_1642
.label_1661:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1672
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1684:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_1678
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1678:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1684
	jmp	.label_1642
.label_1665:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1691
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1685:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_1673
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1673:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1685
	jmp	.label_1642
.label_1670:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1701
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1709:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_1705
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1705:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1709
	jmp	.label_1642
.label_1674:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1713
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1722:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_1717
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1717:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1722
	jmp	.label_1642
.label_1679:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1724
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1648:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_1643
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1643:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1648
	jmp	.label_1642
.label_1683:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1651
	xor	ecx, ecx
.label_1659:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_1654
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1654:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1659
	jmp	.label_1642
.label_1688:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_1663
	xor	ecx, ecx
.label_1675:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_1666
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_1666:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_1675
.label_1642:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1723:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1642
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1689
.label_1706:
	xor	esi, esi
.label_1696:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_1693
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1693:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1696
	jmp	.label_1642
.label_1718:
	xor	esi, esi
.label_1704:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_1700
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1700:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1704
	jmp	.label_1642
.label_1645:
	xor	esi, esi
.label_1710:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_1707
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1707:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1710
	jmp	.label_1642
.label_1711:
	xor	esi, esi
.label_1680:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_1714
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1714:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1680
	jmp	.label_1642
.label_1672:
	xor	esi, esi
.label_1725:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_1721
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1721:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1725
	jmp	.label_1642
.label_1691:
	xor	esi, esi
.label_1647:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_1644
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1644:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1647
	jmp	.label_1642
.label_1701:
	xor	esi, esi
.label_1656:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_1712
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1712:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1656
	jmp	.label_1642
.label_1713:
	xor	esi, esi
.label_1664:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_1658
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1658:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1664
	jmp	.label_1642
.label_1724:
	xor	esi, esi
.label_1676:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_1669
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1669:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1676
	jmp	.label_1642
.label_1651:
	xor	esi, esi
.label_1687:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_1681
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1681:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1687
	jmp	.label_1642
.label_1663:
	xor	esi, esi
.label_1695:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_1692
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1692:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1695
	jmp	.label_1642
.label_1694:
	xor	esi, esi
.label_1703:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_1699
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1699:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_1703
	jmp	.label_1642
	.section	.text
	.align	16
	#Procedure 0x411f75
	.globl sub_411f75
	.type sub_411f75, @function
sub_411f75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f80

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1747
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_1735:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_1739
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1753
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1729
	test	ecx, ecx
	je	.label_1739
.label_1729:
	test	bh, 8
	je	.label_1743
	test	ecx, ecx
	jne	.label_1739
.label_1743:
	test	bh, 0x20
	je	.label_1745
	mov	ecx, eax
	and	ecx, 2
	je	.label_1739
.label_1745:
	test	bpl, bpl
	jns	.label_1753
	and	eax, 8
	je	.label_1739
	nop	word ptr [rax + rax]
.label_1753:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_1758
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_1777:
	lea	rsi, [rdx + rax]
	mov	rbp, rsi
	shr	rbp, 0x3f
	add	rbp, rsi
	sar	rbp, 1
	lea	rsi, [rbp + rbp*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r15
	cmovge	rdx, rbp
	lea	rsi, [rbp + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_1777
.label_1758:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_1783
	cmp	rax, -1
	je	.label_1783
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_1783
	lea	rax, [rcx + rax*8]
	nop	
.label_1790:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_1787
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1790
.label_1783:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_1787
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_1728
	.section	.text
	.align	16
	#Procedure 0x412122
	.globl sub_412122
	.type sub_412122, @function
sub_412122:

	nop	word ptr cs:[rax + rax]
.label_1786:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_1728:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_1752
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_1761
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_1744
.label_1761:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1727
.label_1773:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_1776
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_1781
	and	r9b, sil
	je	.label_1784
.label_1781:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_1784
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1776
.label_1795:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1796
.label_1784:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_1738
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_1738:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_1756
	.section	.text
	.align	16
	#Procedure 0x412254
	.globl sub_412254
	.type sub_412254, @function
sub_412254:

	nop	word ptr cs:[rax + rax]
.label_1744:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_1760
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_1773
	mov	r12, rbp
.label_1756:
	lea	rdi, [r8 + rcx]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [r8 + rax]
	mov	rdx, r15
	mov	rbx, r8
	mov	r15, rcx
	call	memcmp
	mov	rcx, r15
	mov	r8, rbx
	mov	r10d, 7
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	rbx, qword ptr [rsp + 0x68]
	jne	.label_1776
.label_1760:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_1788
	test	eax, eax
	jne	.label_1795
	xor	r10d, r10d
.label_1788:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_1796:
	mov	r9, qword ptr [rsp + 0x10]
.label_1776:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1737
	cmp	al, 9
	jne	.label_1742
.label_1737:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_1744
	jmp	.label_1727
.label_1742:
	cmp	al, 7
	jne	.label_1746
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_1727:
	cmp	r14, rax
	jge	.label_1755
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1752
	.section	.text
	.align	16
	#Procedure 0x412354
	.globl sub_412354
	.type sub_412354, @function
sub_412354:

	nop	word ptr cs:[rax + rax]
.label_1755:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_1762
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1752
.label_1762:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1772
.label_1767:
	cmp	r13, -1
	je	.label_1749
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_1771
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_1797
.label_1771:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_1794
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_1766
.label_1794:
	test	eax, eax
	mov	r8, rbp
	jne	.label_1730
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_1759
.label_1740:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_1751
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], rbx
	inc	rcx
	mov	qword ptr [rsi + 0x20], rcx
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, rbp
	mov	r8, qword ptr [rdi + 8]
	cmp	eax, 1
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_1731
	mov	r10d, 0xc
	jmp	.label_1791
.label_1731:
	test	eax, eax
	jne	.label_1779
	xor	r10d, r10d
.label_1791:
	mov	rcx, r15
.label_1741:
	mov	r15, qword ptr [rsp + 8]
.label_1763:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1766
.label_1797:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_1766
.label_1785:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_1766
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_1793
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1733
.label_1730:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1741
.label_1759:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_1765
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1740
.label_1751:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1763
.label_1779:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_1766
.label_1793:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1766
.label_1765:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_1766
	.section	.text
	.align	16
	#Procedure 0x4125fa
	.globl sub_4125fa
	.type sub_4125fa, @function
sub_4125fa:

	nop	word ptr [rax + rax]
.label_1772:
	cmp	rbx, qword ptr [r9]
	jle	.label_1726
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1785
	lea	r15, [rcx + 1]
.label_1733:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_1736
	jmp	.label_1749
	.section	.text
	.align	16
	#Procedure 0x412626
	.globl sub_412626
	.type sub_412626, @function
sub_412626:

	nop	word ptr cs:[rax + rax]
.label_1726:
	mov	r15, rcx
.label_1736:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_1749
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1749
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_1770:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_1769
	cmp	qword ptr [rdx + rbp], r14
	je	.label_1767
.label_1769:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1770
.label_1749:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_1766:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1775
	cmp	al, 0xc
	jne	.label_1768
.label_1775:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_1772
	jmp	.label_1752
.label_1746:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1782
.label_1768:
	cmp	al, 0xa
	je	.label_1752
.label_1782:
	cmp	r10d, 6
	je	.label_1752
	test	r10d, r10d
	jne	.label_1764
	nop	word ptr cs:[rax + rax]
.label_1752:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_1786
.label_1787:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_1754:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_1739
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_1792:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1734
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_1734
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_1748
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1757
.label_1748:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_1757:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	mov	r12, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rsi
	lea	r13, [rsi + r12]
	mov	qword ptr [rsp + 0x28], rdx
	sub	r13, rdx
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebx, eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r12*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1780
	mov	rdx, qword ptr [rcx + 0x10]
.label_1780:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_1778
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1789
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r14
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	rdi, rbx
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	jne	.label_1732
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_1732
	jmp	.label_1750
.label_1778:
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1732
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1774
	jmp	.label_1750
.label_1732:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1774:
	cmp	rsi, rdx
	jne	.label_1734
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1734
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1750
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1750
	nop	
.label_1734:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_1792
	nop	word ptr cs:[rax + rax]
.label_1739:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_1735
	jmp	.label_1747
.label_1764:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1754
	jmp	.label_1750
.label_1747:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_1750:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1789:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_1750
	.section	.text
	.align	16
	#Procedure 0x41297a
	.globl sub_41297a
	.type sub_41297a, @function
sub_41297a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412980

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1798
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1807
	cmp	rsi, rcx
	jne	.label_1803
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1808
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1811
.label_1803:
	mov	rax, qword ptr [r14 + 0x10]
.label_1811:
	cmp	qword ptr [rax], rbx
	jle	.label_1801
	test	rcx, rcx
	jle	.label_1802
	nop	word ptr cs:[rax + rax]
.label_1805:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1805
	jmp	.label_1802
.label_1807:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1810
.label_1801:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1799
	.section	.text
	.align	16
	#Procedure 0x412a09
	.globl sub_412a09
	.type sub_412a09, @function
sub_412a09:

	nop	dword ptr [rax]
.label_1798:
	movaps	xmm0, xmmword ptr [rip + label_256]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1804
	mov	qword ptr [rax], rbx
	jmp	.label_1806
.label_1804:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_1808:
	xor	eax, eax
	jmp	.label_1809
	.section	.text
	.align	16
	#Procedure 0x412a3b
	.globl sub_412a3b
	.type sub_412a3b, @function
sub_412a3b:

	nop	
.label_1800:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1799:
	cmp	rdx, rbx
	jg	.label_1800
.label_1802:
	mov	qword ptr [rax + rcx*8], rbx
.label_1810:
	inc	qword ptr [r14 + 8]
.label_1806:
	mov	al, 1
.label_1809:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x412a60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x412a68
	.globl sub_412a68
	.type sub_412a68, @function
sub_412a68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412a70
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
	#Procedure 0x412aa6
	.globl sub_412aa6
	.type sub_412aa6, @function
sub_412aa6:

	nop	word ptr cs:[rax + rax]
.label_1812:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x412ab5
	.globl sub_412ab5
	.type sub_412ab5, @function
sub_412ab5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412abb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1813
	test	rax, rax
	je	.label_1812
.label_1813:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ad0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1830
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1830:
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
	ja	.label_1818
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1831
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1819
	test	esi, esi
	jne	.label_1818
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1833
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1834
.label_1818:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1814
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1819
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1821
.label_1831:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1825
.label_1819:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1826
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1828
.label_1826:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1828:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1829:
	call	fcntl
.label_1825:
	mov	ebp, eax
.label_1815:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1821:
	cmp	eax, 6
	jne	.label_1814
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1817
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1827
.label_1814:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1820
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1823
.label_1833:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1834:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1829
.label_1817:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1827:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1832
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1816
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1816
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1815
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1822
.label_1816:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1815
.label_1820:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1823:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1825
.label_1832:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1822:
	test	al, al
	je	.label_1815
	test	ebp, ebp
	js	.label_1815
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1824
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1815
.label_1824:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1815
	.section	.text
	.align	16
	#Procedure 0x412d61
	.globl sub_412d61
	.type sub_412d61, @function
sub_412d61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412d70
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
	.align	16
	#Procedure 0x412dc4
	.globl sub_412dc4
	.type sub_412dc4, @function
sub_412dc4:

	nop	word ptr cs:[rax + rax]
.label_1835:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x412dd4
	.globl sub_412dd4
	.type sub_412dd4, @function
sub_412dd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412ddf

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	mov	rdi, rcx
	shr	rdi, 0x15
	and	dil, 0x10
	and	al, 0x6f
	or	al, dil
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_1835
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
	.section	.text
	.align	16
	#Procedure 0x412e30

	.globl remove_line
	.type remove_line, @function
remove_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rip + remove_line.prev_buf]
	test	r14, r14
	je	.label_1839
	mov	rdi, qword ptr [r14 + 0x30]
	test	rdi, rdi
	je	.label_1836
	nop	dword ptr [rax]
.label_1842:
	mov	rbx, qword ptr [rdi + 0x518]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1842
.label_1836:
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	qword ptr [r14 + 0x28], 0
	mov	rdi, qword ptr [rip + remove_line.prev_buf]
	call	free
	mov	qword ptr [rip + remove_line.prev_buf],  0
.label_1839:
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	jne	.label_1841
	xor	ebx, ebx
	call	load_buffer
	test	al, al
	je	.label_1837
	mov	rax, qword ptr [rip + head]
.label_1841:
	mov	rcx, qword ptr [rax + 0x18]
	cmp	qword ptr [rip + current_line],  rcx
	jae	.label_1840
	mov	qword ptr [rip + current_line],  rcx
.label_1840:
	inc	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, rdx
	shl	rsi, 4
	lea	rbx, [rcx + rsi + 0x18]
	inc	rdx
	mov	qword ptr [rcx + 0x10], rdx
	cmp	rdx, qword ptr [rcx]
	jne	.label_1837
	mov	rcx, qword ptr [rcx + 0x518]
	mov	qword ptr [rax + 0x38], rcx
	test	rcx, rcx
	je	.label_1838
	cmp	qword ptr [rcx], 0
	jne	.label_1837
.label_1838:
	mov	qword ptr [rip + remove_line.prev_buf],  rax
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rip + head],  rax
.label_1837:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x412f20

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	r10, r10
	jle	.label_1845
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r11, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	mov	r8d, eax
	and	r8d, 2
	and	eax, 8
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1843:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	esi, dword ptr [rdi + rdx + 8]
	cmp	sil, 2
	jne	.label_1844
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1845
	test	r9d, r9d
	jne	.label_1847
	mov	edx, esi
	and	edx, 4
	jne	.label_1844
.label_1847:
	test	r9d, r9d
	je	.label_1848
	mov	edx, esi
	and	edx, 8
	jne	.label_1844
.label_1848:
	test	r8d, r8d
	jne	.label_1846
	mov	edx, esi
	and	edx, 0x20
	jne	.label_1844
.label_1846:
	test	eax, eax
	jne	.label_1845
	test	sil, sil
	jns	.label_1845
	nop	dword ptr [rax]
.label_1844:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_1843
.label_1845:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x412fd8
	.globl sub_412fd8
	.type sub_412fd8, @function
sub_412fd8:

	nop	dword ptr [rax + rax]
.label_1851:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x412fe5
	.globl sub_412fe5
	.type sub_412fe5, @function
sub_412fe5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412fed
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1851
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1850
	test	rbx, rbx
	jne	.label_1850
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1850:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1849
	test	rax, rax
	je	.label_1851
.label_1849:
	pop	rbx
	ret	
.label_1852:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1855:
	xor	eax, eax
.label_1853:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41304f
	.globl sub_41304f
	.type sub_41304f, @function
sub_41304f:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413059

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1853
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1856
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1852
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1854
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1853
.label_1854:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1855
.label_1856:
	mov	rax, rbx
	jmp	.label_1853
.label_1857:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4130c5
	.globl sub_4130c5
	.type sub_4130c5, @function
sub_4130c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4130d0

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
	je	.label_1857
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
	#Procedure 0x413160

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_1859
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1859:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_1858
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1858:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_1860
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1860:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x41322a
	.globl sub_41322a
	.type sub_41322a, @function
sub_41322a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413230

	.globl regexp_error
	.type regexp_error, @function
regexp_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbp, rdi
	mov	r12, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1862
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rbx, qword ptr [rip + program_name]
	movsxd	rax, dword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rip + global_argv]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r12
	mov	rdx, r13
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	test	r15, r15
	je	.label_1863
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1101
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rbp
	call	__fprintf_chk
	jmp	.label_1866
.label_1861:
	mov	rdi, rax
	call	save_line_to_file
.label_1864:
	call	remove_line
	test	rax, rax
	jne	.label_1861
	call	close_output_file
.label_1865:
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x4132f7
	.globl sub_4132f7
	.type sub_4132f7, @function
sub_4132f7:

	nop	dword ptr [rax]
.label_1863:
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1099
	xor	eax, eax
	call	__fprintf_chk
.label_1866:
	test	r14b, r14b
	je	.label_1864
	jmp	.label_1865
	.section	.text
	.align	16
	#Procedure 0x41331a
	.globl sub_41331a
	.type sub_41331a, @function
sub_41331a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413320
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x41332f
	.globl sub_41332f
	.type sub_41332f, @function
sub_41332f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x413330

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1875
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1867:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1867
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_1869
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_1877
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1883
	cmp	eax, 0x22
	jne	.label_1869
	mov	ebp, 1
.label_1883:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_1886
	jmp	.label_1871
.label_1877:
	test	r14, r14
	je	.label_1869
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1869
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_1869
.label_1886:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1871
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1878
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1873
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1873
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1873
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1868
	cmp	eax, 0x44
	je	.label_1868
	cmp	eax, 0x69
	jne	.label_1873
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_1873
.label_1868:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1873:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1878
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_1885]
.label_2434:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1879
.label_1878:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_1876
.label_2435:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_1880
.label_2436:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1872
.label_2438:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_1874
.label_2432:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_1884
.label_2433:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_1872
.label_2437:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_1874:
	or	dl, r10b
.label_1879:
	or	dl, bl
.label_1872:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_1870
.label_2439:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_1881
.label_2440:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_1881:
	movzx	eax, dl
.label_1880:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_1870
.label_2441:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_1884:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_1870
.label_2442:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_1870:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_1871:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_1876:
	mov	r13d, r15d
.label_1869:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1875:
	mov	edi, OFFSET FLAT:label_924
	mov	esi, OFFSET FLAT:label_925
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1882
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x413961
	.globl sub_413961
	.type sub_413961, @function
sub_413961:

	nop	word ptr cs:[rax + rax]
.label_1889:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1891:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_1887
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	r15
	push	r14
	call	re_search_internal
	add	rsp, 0x20
	jmp	.label_1888
	.section	.text
	.align	16
	#Procedure 0x41399e
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	ebx, r8d
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, 2
	cmp	ebx, 7
	ja	.label_1890
	test	bl, 4
	jne	.label_1889
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1891
.label_1887:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	0
	push	0
	call	re_search_internal
	add	rsp, 0x20
.label_1888:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_1890:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x413a05
	.globl sub_413a05
	.type sub_413a05, @function
sub_413a05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413a10

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_1897
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1900
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1893
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1902
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1903
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1904
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1911
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1905
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1906
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1907
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1908
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1896
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1093
	mov	ecx, OFFSET FLAT:label_1094
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_1894
	mov	esi, OFFSET FLAT:label_1901
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_1894
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1895
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_1894:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1910
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1094
	mov	ecx, OFFSET FLAT:label_1898
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1892
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1898
	mov	ecx, OFFSET FLAT:label_1899
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_1897:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1909
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
	#Procedure 0x413c6b
	.globl sub_413c6b
	.type sub_413c6b, @function
sub_413c6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413c70

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1914
	test	r13, r13
	jle	.label_1916
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1913:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1912
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1918
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1917
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1918:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1912:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1913
.label_1916:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1915
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1919:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_1914:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1917:
	mov	ecx, 0xc
	jmp	.label_1914
.label_1915:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1914
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1919
	.section	.text
	.align	16
	#Procedure 0x413dab
	.globl sub_413dab
	.type sub_413dab, @function
sub_413dab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413db0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r13, rdi
	mov	r15, qword ptr [r14 + 0x18]
	mov	rbx, qword ptr [r14 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_256]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_1935
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1921
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_1931:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_1928
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_1929
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_1923
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_1923
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_1926:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_1924
	mov	rax, r14
	mov	r14, r15
	mov	r15, rax
	mov	rdx, r13
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, r14
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_1920
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_1922
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_1925
.label_1920:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_1925
	jmp	.label_1924
.label_1922:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_1924
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_1924
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_1932
	xor	edi, edi
	nop	dword ptr [rax]
.label_1937:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_1937
.label_1932:
	test	eax, eax
	je	.label_1924
	cmp	rdi, -1
	je	.label_1924
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_1925
.label_1924:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_1927
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_1927
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_1927
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_1933
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1934:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_1934
.label_1933:
	cmp	rsi, -1
	je	.label_1927
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_1927
	nop	dword ptr [rax]
.label_1925:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_1930
	movsxd	rcx, eax
	add	rcx, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r15
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_1936
.label_1930:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_1936:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_1921
.label_1927:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_1926
.label_1923:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_1931
	jmp	.label_1921
.label_1928:
	xor	ebp, ebp
	jmp	.label_1921
.label_1929:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_1921:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_1938:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1935:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_1938
	.section	.text
	.align	16
	#Procedure 0x414109
	.globl sub_414109
	.type sub_414109, @function
sub_414109:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414110
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
	#Procedure 0x41411f
	.globl sub_41411f
	.type sub_41411f, @function
sub_41411f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x414120

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1944
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1946
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1946
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_1941
.label_1946:
	test	dl, 1
	je	.label_1940
	cmp	al, 0x5c
	jne	.label_1940
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_1940
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_1941
.label_1944:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1940:
	cmp	al, 0x5c
	jg	.label_1948
	cmp	al, 0x2d
	je	.label_1939
	cmp	al, 0x5b
	jne	.label_1941
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1942
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_1943
	cmp	al, 0x3a
	je	.label_1945
	cmp	al, 0x2e
	jne	.label_1947
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1948:
	cmp	al, 0x5d
	je	.label_1949
	cmp	al, 0x5e
	jne	.label_1941
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1941:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1939:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1949:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1942:
	mov	byte ptr [rdi], 0
.label_1947:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1943:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1945:
	test	dl, 4
	je	.label_1947
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	.section	.text
	.align	16
	#Procedure 0x41420e
	.globl sub_41420e
	.type sub_41420e, @function
sub_41420e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x414210

	.globl cleanup_fatal
	.type cleanup_fatal, @function
cleanup_fatal:
	push	rbx
	sub	rsp, 0x80
	call	close_output_file
	lea	rbx, [rsp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, rbx
	call	sigprocmask
	xor	edi, edi
	call	delete_all_files
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	mov	edi, 1
	call	exit
.label_1958:
	mov	dword ptr [r15], 0xc
	jmp	.label_1955
.label_1967:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	jmp	.label_1955
.label_1959:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1951
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1961
	.section	.text
	.align	16
	#Procedure 0x4142d2
	.globl sub_4142d2
	.type sub_4142d2, @function
sub_4142d2:

	nop	word ptr cs:[rax + rax]
.label_1962:
	mov	rdi, rbx
	jmp	.label_1950
	.section	.text
	.align	16
	#Procedure 0x4142e8

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1958
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1962
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 4]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1967
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1952
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1957:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1957
.label_1952:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1963
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1963:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1966
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1966:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1956
	mov	rax, qword ptr [r12 + 0x70]
.label_1965:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1960
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1953
	mov	rbp, qword ptr [r12 + 0x70]
.label_1964:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1959
	mov	rcx, qword ptr [r12 + 0x70]
.label_1961:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1951
.label_1953:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1954
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1964
.label_1960:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
.label_1951:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1954:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_1950:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1955:
	xor	eax, eax
	jmp	.label_1951
.label_1956:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1954
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1965
	.section	.text
	.align	16
	#Procedure 0x414630

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1968
	test	rax, rax
	je	.label_1969
.label_1968:
	pop	rbx
	ret	
.label_1969:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x41464a
	.globl sub_41464a
	.type sub_41464a, @function
sub_41464a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414650

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1970
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1970
	test	byte ptr [rbx + 1], 1
	je	.label_1970
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1970:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x414683
	.globl sub_414683
	.type sub_414683, @function
sub_414683:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414690

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, rbx
	jle	.label_1975
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1979
	.section	.text
	.align	16
	#Procedure 0x4146cb
	.globl sub_4146cb
	.type sub_4146cb, @function
sub_4146cb:

	nop	dword ptr [rax + rax]
.label_1972:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_1977
.label_1983:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1981:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1982
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1982:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1979
	jmp	.label_1980
.label_1976:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_1981
.label_1978:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1971
	xor	eax, eax
.label_1974:
	cmp	rax, rdx
	jge	.label_1973
	mov	rcx, qword ptr [r13]
	mov	rsi, qword ptr [r13 + 0x78]
	add	rcx, qword ptr [r13 + 0x28]
	add	rcx, rbx
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [r13 + 8]
	add	rsi, rbx
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [r13 + 0x90]
	cmp	rax, rcx
	jl	.label_1974
	lea	rsi, [rsp + 0x10]
	jmp	.label_1971
.label_1977:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1983
.label_1973:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1971
	.section	.text
	.align	16
	#Procedure 0x41479e
	.globl sub_41479e
	.type sub_41479e, @function
sub_41479e:

	nop	
.label_1979:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1978
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1971:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1972
	cmp	rax, -2
	jne	.label_1976
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1972
	mov	qword ptr [r14], rbp
.label_1975:
	mov	rcx, rbx
.label_1980:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41480a
	.globl sub_41480a
	.type sub_41480a, @function
sub_41480a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414810

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_1990
.label_1985:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_2005
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_2123:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_2123
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_2045
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_2045
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_2045
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_2045
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_2045
	or	byte ptr [r12 + 0xb0], 4
.label_2045:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_2052
	test	al, 4
	jne	.label_2060
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_2005
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2075:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_2067
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_2067:
	cmp	ebp, 0x7f
	ja	.label_2070
	cmp	ebp, eax
	je	.label_2070
	or	byte ptr [r12 + 0xb0], 8
.label_2070:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2075
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_2088:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_2081
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_2081:
	cmp	ebx, eax
	je	.label_2084
	or	byte ptr [r12 + 0xb0], 8
.label_2084:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2088
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_2094:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_2090
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_2090:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2094
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2102:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_2100
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_2100:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2102
	jmp	.label_2052
.label_2060:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_2052:
	cmp	qword ptr [r12], 0
	je	.label_2005
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_2005
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	and	ecx, 0x400000
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0xd0], xmm0
	movdqu	xmmword ptr [rsp + 0xc0], xmm0
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	movdqu	xmmword ptr [rsp + 0xa0], xmm0
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	movdqu	xmmword ptr [rsp + 0x80], xmm0
	movdqu	xmmword ptr [rsp + 0x70], xmm0
	movdqu	xmmword ptr [rsp + 0x60], xmm0
	movdqu	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x48], r14
	mov	qword ptr [rsp + 0xa0], r13
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xd0], al
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xd3]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xd8], edx
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	eax, ecx
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xd1], al
	mov	eax, ecx
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xd2], al
	mov	qword ptr [rsp + 0xb0], r13
	mov	qword ptr [rsp + 0xa8], r13
	xor	eax, eax
	test	r13, r13
	mov	qword ptr [rsp + 0x18], r12
	jle	.label_2080
	cmp	edx, 2
	jl	.label_1988
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_1986
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_1986
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_1988:
	xor	eax, eax
	test	bpl, bpl
	je	.label_2000
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_1986
	mov	qword ptr [rsp + 0x50], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_2000:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_2007
.label_2005:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_2004
.label_2080:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_2007:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_2016
	cmp	ecx, 2
	jl	.label_2134
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1986
	lea	rbx, [rsp + 0x48]
	nop	
.label_2053:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_2029
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_2029
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_2036
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_1986
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_1986
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_2036
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_1986
	mov	qword ptr [rsp + 0x60], rax
.label_2036:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_2043
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_1986
	mov	qword ptr [rsp + 0x50], rax
.label_2043:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_2053
.label_1986:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_2057
.label_2016:
	cmp	ecx, 2
	jl	.label_2058
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_2029
.label_2134:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_2063
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_2003
	.section	.text
	.align	16
	#Procedure 0x414e19
	.globl sub_414e19
	.type sub_414e19, @function
sub_414e19:

	nop	dword ptr [rax]
.label_2076:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_2003:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_2071
.label_2083:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2077
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2077:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_2076
	jmp	.label_2082
.label_2071:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_2083
.label_2058:
	test	rbx, rbx
	je	.label_2085
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_2087
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_2087
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_1994:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_1994
	mov	rcx, rdi
.label_2087:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_2029
.label_2082:
	mov	rax, r13
	jmp	.label_2063
.label_2085:
	mov	rax, qword ptr [rsp + 8]
.label_2063:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_2029:
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0x20]
	lea	r13, [rsp + 0x48]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x90], rax
	lea	r9, [rsp + 4]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_2118
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2010
.label_2118:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_2121
	mov	rax, qword ptr [rbx + 0x70]
.label_2020:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2017:
	test	r14, r14
	mov	rcx, rbp
	je	.label_2096
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_2128
	mov	rax, qword ptr [rbx + 0x70]
.label_2028:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_1996
	mov	qword ptr [rbp], rcx
.label_2096:
	test	rbp, rbp
	je	.label_1996
	test	rcx, rcx
	je	.label_1996
	mov	qword ptr [r12 + 0x68], rcx
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_1997
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_1997
	test	rax, rax
	je	.label_1997
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_1997
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	je	.label_2022
	test	rbp, rbp
	je	.label_2026
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_2027
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_2027
	lea	rsi, [rcx - 4]
	mov	rbx, rsi
	shr	rbx, 2
	lea	edx, [rbx + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_2099
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_2035
.label_2022:
	lea	r12, [rdi + 0x68]
	jmp	.label_2111
.label_2099:
	lea	rsi, [rdx - 1]
	sub	rsi, rbx
	mov	ebx, 1
	movq	xmm0, rbx
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1145]
	movdqa	xmm9, xmmword ptr [rip + label_1146]
	movdqa	xmm10, xmmword ptr [rip + label_1155]
	movdqa	xmm11, xmmword ptr [rip + label_1156]
	movdqa	xmm5, xmmword ptr [rip + label_1157]
	movdqa	xmm6, xmmword ptr [rip + label_1158]
	movdqa	xmm7, xmmword ptr [rip + label_1159]
	movdqa	xmm1, xmmword ptr [rip + label_1160]
	nop	word ptr cs:[rax + rax]
.label_2050:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rbx, xmm0
	movdqu	xmmword ptr [rax + rbx*8], xmm0
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rbx, xmm4
	movdqu	xmmword ptr [rax + rbx*8], xmm4
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_2050
.label_2035:
	test	rdx, rdx
	je	.label_2073
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1145]
	movdqa	xmm2, xmmword ptr [rip + label_1146]
	nop	word ptr cs:[rax + rax]
.label_2049:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_2049
.label_2073:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_2026
	nop	dword ptr [rax]
.label_2027:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_2027
.label_2026:
	mov	rbp, qword ptr [rdi + 0x68]
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	jne	.label_2092
	nop	dword ptr [rax]
.label_2103:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_2093
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2101:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_2097
	test	rbx, rbx
	jne	.label_2093
.label_2097:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_2101
	jmp	.label_2092
	.section	.text
	.align	16
	#Procedure 0x4152de
	.globl sub_4152de
	.type sub_4152de, @function
sub_4152de:

	nop	
.label_2093:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	mov	rbp, rbx
	je	.label_2103
.label_2092:
	mov	rax, qword ptr [r15 + 0x30]
	xor	ecx, ecx
	test	rax, rax
	mov	rdi, qword ptr [rsp + 8]
	je	.label_2104
	mov	rdx, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_2110:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_2104
	inc	rcx
	cmp	rcx, rax
	jb	.label_2110
.label_2104:
	lea	r12, [rdi + 0x68]
	cmp	rcx, rax
	jne	.label_2111
	mov	rdi, qword ptr [rdi + 0xe0]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + 0xe0], 0
.label_2111:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	dword ptr [rax]
.label_1989:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1989
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1989
	xor	edx, edx
	jmp	.label_2119
	.section	.text
	.align	16
	#Procedure 0x415369
	.globl sub_415369
	.type sub_415369, @function
sub_415369:

	nop	dword ptr [rax]
.label_1984:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbx, rcx
.label_2119:
	mov	dword ptr [rsp + 0x20], 0
	test	rdx, rdx
	je	.label_2120
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_2120
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_2120
	mov	qword ptr [rax], rbx
	nop	word ptr cs:[rax + rax]
.label_2120:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_2125
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_2125
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_2125
	mov	qword ptr [rax], rbx
	nop	dword ptr [rax + rax]
.label_2125:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_2008
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_2130
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	je	.label_1984
	test	rax, rax
	je	.label_1984
	jmp	.label_1989
.label_2130:
	mov	rax, qword ptr [r12]
	mov	ebp, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_1993:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1993
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1993
	nop	word ptr cs:[rax + rax]
.label_2015:
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_1998
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1999
	.section	.text
	.align	16
	#Procedure 0x41545c
	.globl sub_41545c
	.type sub_41545c, @function
sub_41545c:

	nop	dword ptr [rax]
.label_1998:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	call	re_dfa_add_node
	mov	qword ptr [rbx + 0x38], rax
	cmp	rax, -1
	je	.label_1997
	cmp	byte ptr [rbx + 0x30], 0xc
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_1999
	mov	ecx, dword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rdi]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebp
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_1999:
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_2133
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	mov	rbx, rcx
	je	.label_2015
	test	rax, rax
	mov	rbx, rcx
	je	.label_2015
	jmp	.label_1993
.label_2133:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_2019
	cmp	al, 0xb
	jne	.label_2021
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_2023
.label_2019:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_2025
.label_2021:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_2129
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_2129:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_2023
.label_2025:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_2023:
	mov	rdx, rbp
	jmp	.label_2031
.label_2056:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_2031:
	test	rax, rax
	mov	rcx, rax
	jne	.label_2037
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2041:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_2040
	test	rcx, rcx
	jne	.label_2037
.label_2040:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_2041
	jmp	.label_2109
	.section	.text
	.align	16
	#Procedure 0x41556e
	.globl sub_41556e
	.type sub_41556e, @function
sub_41556e:

	nop	
.label_2037:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_2056
	cmp	al, 0xb
	jne	.label_2044
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_2031
.label_2044:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_2046
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_2046:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_2031
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_2031
.label_2109:
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_2008
	nop	word ptr [rax + rax]
.label_2066:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_2055
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2062:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_2059
	test	rbx, rbx
	jne	.label_2055
.label_2059:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_2062
	jmp	.label_2064
	.section	.text
	.align	16
	#Procedure 0x4155fe
	.globl sub_4155fe
	.type sub_4155fe, @function
sub_4155fe:

	nop	
.label_2055:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_2066
	jmp	.label_2008
.label_2064:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_2065
	.section	.text
	.align	16
	#Procedure 0x415628
	.globl sub_415628
	.type sub_415628, @function
sub_415628:

	nop	dword ptr [rax + rax]
.label_2079:
	inc	rbp
	mov	rax, rbp
.label_2065:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_2072
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_2074
	jmp	.label_2078
	.section	.text
	.align	16
	#Procedure 0x41564c
	.globl sub_41564c
	.type sub_41564c, @function
sub_41564c:

	nop	dword ptr [rax]
.label_2072:
	mov	rbp, rax
.label_2074:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_2079
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_2008
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_2079
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_2079
.label_2078:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_2091
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_2091
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_2095
.label_2091:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_2098
.label_2095:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_1997
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_2098
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_2105
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_2112:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_2112
.label_2105:
	test	rax, rax
	je	.label_2098
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1992:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_2116
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_2132:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_2122
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_2126
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_2127
	.section	.text
	.align	16
	#Procedure 0x4157e6
	.globl sub_4157e6
	.type sub_4157e6, @function
sub_4157e6:

	nop	word ptr cs:[rax + rax]
.label_2122:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_2127:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_2132
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_2116:
	inc	rbp
	cmp	rbp, rax
	jb	.label_1992
.label_2098:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_1995
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_1995
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1995
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_2002
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_2024:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_2107
	jmp	qword ptr [(rsi * 8) + label_2012]
.label_2633:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_2013
	mov	esi, r10d
.label_2013:
	mov	r10b, sil
	jmp	.label_2014
.label_2634:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_1995
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_2014
	jmp	.label_1995
.label_2635:
	mov	r9b, 1
	jmp	.label_2014
.label_2636:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_2018
	bt	r8, rbx
	jb	.label_2014
.label_2018:
	cmp	esi, 0x80
	jne	.label_1995
.label_2014:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_2024
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_1991
	xor	eax, eax
	mov	edx, 8
	jmp	.label_2030
.label_1997:
	mov	eax, 0xc
.label_2008:
	mov	dword ptr [rsp + 4], eax
.label_2057:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_2108
.label_2009:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_2030:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_2032
	cmp	sil, 1
	jne	.label_2034
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_2034
	and	esi, 0xffdfffff
	jmp	.label_2117
.label_2032:
	and	esi, 0xffffff00
	or	esi, 7
.label_2117:
	mov	dword ptr [rbp + rdx], esi
.label_2034:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_2009
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_1991
.label_2002:
	xor	ecx, ecx
.label_1991:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_1995:
	mov	rax, qword ptr [r14 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r14 + 0x90], rax
	mov	r15, qword ptr [r14 + 0x30]
	lea	r12, [rax + rax*2]
	mov	r13, qword ptr [r15 + r12*8 + 8]
	mov	qword ptr [rsp + 0x28], r13
	mov	r14, qword ptr [r15 + r12*8 + 8]
	test	r14, r14
	jle	.label_2047
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_2054
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_2061
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_2061
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_2069
	.section	.text
	.align	16
	#Procedure 0x415a28
	.globl sub_415a28
	.type sub_415a28, @function
sub_415a28:

	nop	dword ptr [rax + rax]
.label_2106:
	mov	rbp, qword ptr [rsp + 0x30]
.label_2069:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_2038
	test	r13, r13
	mov	edi, 0
	jle	.label_2042
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_2086:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_2068
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_2042
.label_2068:
	inc	rdi
	cmp	rdi, r13
	jl	.label_2086
.label_2042:
	cmp	rdi, r13
	je	.label_2038
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_2089
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_2124
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_2051:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_2051
.label_2124:
	cmp	rsi, -1
	je	.label_2089
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_2038
.label_2089:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2006
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_2038:
	inc	rax
	cmp	rax, r13
	jl	.label_2106
	jmp	.label_2061
.label_2047:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_2061:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_2113
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2114
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_2115
.label_2114:
	lea	rbx, [rsp + 0x14]
	lea	rbp, [rsp + 0x20]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_2011
	test	rax, rax
	je	.label_2011
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_2011
.label_2115:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_2006:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_2131
	nop	dword ptr [rax]
.label_1987:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1987
.label_2131:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_2001
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2001:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_2004
	jmp	.label_2048
.label_2011:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_2006
.label_2126:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_2008
.label_1990:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_2004
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_1985
.label_2121:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_2017
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2020
.label_2128:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1996
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2028
.label_1996:
	mov	dword ptr [rsp + 4], 0xc
.label_2010:
	mov	qword ptr [r12 + 0x68], 0
.label_2108:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_2033
	nop	word ptr cs:[rax + rax]
.label_2039:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_2039
.label_2033:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_2048
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2048:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_2004:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2113:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_2006
.label_2054:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_2006
.label_2107:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x415dfe
	.globl sub_415dfe
	.type sub_415dfe, @function
sub_415dfe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x415e00

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
	mov	r15d, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_475
	call	setlocale
	mov	edi, OFFSET FLAT:label_2221
	mov	esi, OFFSET FLAT:label_2222
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_2221
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rip + global_argv],  rbx
	mov	qword ptr [rip + controls],  0
	mov	qword ptr [rip + control_used],  0
	mov	byte ptr [rip + suppress_count],  0
	mov	byte ptr [rip + remove_files],  1
	mov	byte ptr [rip + suppress_matched],  0
	mov	qword ptr [rip + prefix], OFFSET FLAT:label_2227
	jmp	.label_2228
	.section	.text
	.align	16
	#Procedure 0x415e95
	.globl sub_415e95
	.type sub_415e95, @function
sub_415e95:

	nop	word ptr cs:[rax + rax]
.label_2447:
	mov	byte ptr [rip + suppress_count],  1
.label_2228:
	mov	edx, OFFSET FLAT:label_2241
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 8]
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_2243
	add	eax, -0x62
	cmp	eax, 0x1e
	ja	.label_2216
	jmp	qword ptr [(rax * 8) + label_2246]
.label_2443:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + suffix],  rax
	jmp	.label_2228
.label_2444:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + prefix],  rax
	jmp	.label_2228
.label_2445:
	mov	byte ptr [rip + remove_files],  0
	jmp	.label_2228
.label_2446:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2256
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_475
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + digits],  eax
	jmp	.label_2228
.label_2448:
	mov	byte ptr [rip + elide_empty_files],  1
	jmp	.label_2228
.label_2449:
	mov	byte ptr [rip + suppress_matched],  1
	jmp	.label_2228
.label_2243:
	cmp	eax, -1
	jne	.label_2274
	mov	eax, dword ptr [rip + optind]
	mov	ecx, r15d
	sub	ecx, eax
	cmp	ecx, 1
	mov	dword ptr [rsp + 0x10], r15d
	jle	.label_2275
	mov	rdi, qword ptr [rip + prefix]
	call	strlen
	mov	r14, rax
	cmp	qword ptr [rip + suffix],  0
	je	.label_2279
	mov	r8, qword ptr [rip + suffix]
	xor	edi, edi
	movabs	rax, 0x100800001
	mov	r9d, 0x21000
	mov	rdx, r8
	jmp	.label_2284
	.section	.text
	.align	16
	#Procedure 0x415fb8
	.globl sub_415fb8
	.type sub_415fb8, @function
sub_415fb8:

	nop	dword ptr [rax + rax]
.label_2169:
	inc	rdx
.label_2284:
	mov	bl, byte ptr [rdx]
	cmp	bl, 0x25
	je	.label_2294
	test	bl, bl
	jne	.label_2169
	jmp	.label_2296
	.section	.text
	.align	16
	#Procedure 0x415fd3
	.globl sub_415fd3
	.type sub_415fd3, @function
sub_415fd3:

	nop	word ptr cs:[rax + rax]
.label_2294:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
	cmp	cl, 0x25
	je	.label_2169
	test	dil, 1
	jne	.label_2301
	xor	edi, edi
	jmp	.label_2293
	.section	.text
	.align	16
	#Procedure 0x415ff9
	.globl sub_415ff9
	.type sub_415ff9, @function
sub_415ff9:

	nop	dword ptr [rax]
.label_2140:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
.label_2293:
	movsx	ebp, cl
	lea	ebx, [rbp - 0x23]
	cmp	ebx, 0xd
	ja	.label_2136
	jmp	qword ptr [(rbx * 8) + label_2138]
.label_2482:
	or	edi, 2
	jmp	.label_2140
	.section	.text
	.align	16
	#Procedure 0x41601d
	.globl sub_41601d
	.type sub_41601d, @function
sub_41601d:

	nop	dword ptr [rax]
.label_2483:
	or	edi, 1
	jmp	.label_2140
	.section	.text
	.align	16
	#Procedure 0x416025
	.globl sub_416025
	.type sub_416025, @function
sub_416025:

	nop	word ptr cs:[rax + rax]
.label_2136:
	add	ebp, -0x30
	cmp	ebp, 9
	ja	.label_2143
	nop	dword ptr [rax + rax]
.label_2146:
	movsx	ecx, byte ptr [rdx + 1]
	inc	rdx
	mov	esi, ecx
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_2146
.label_2143:
	cmp	cl, 0x2e
	jne	.label_2149
	nop	word ptr cs:[rax + rax]
.label_2153:
	movsx	ecx, byte ptr [rdx + 1]
	inc	rdx
	mov	esi, ecx
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_2153
.label_2149:
	mov	ebx, ecx
	add	bl, 0xa8
	movzx	ebp, bl
	cmp	bpl, 0x20
	ja	.label_2156
	bt	rax, rbp
	jb	.label_2160
	mov	ebx, 0xfffffffe
	bt	r9, rbp
	jae	.label_2163
	mov	byte ptr [rdx], 0x75
	jmp	.label_2164
.label_2160:
	mov	ebx, 0xfffffffd
	jmp	.label_2164
.label_2163:
	cmp	rbp, 0x1d
	jne	.label_2156
	nop	word ptr [rax + rax]
.label_2164:
	and	ebx, edi
	mov	dil, 1
	je	.label_2169
	movzx	ebp, cl
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2170
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	add	ebx, ebx
	and	ebx, 4
	xor	ebx, 0x27
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	mov	r8d, ebp
	call	error
.label_2296:
	test	dil, 1
	je	.label_2181
	mov	edi, 0
	mov	esi, 0
	mov	edx, 1
	xor	ecx, ecx
	mov	r9d, 0xffffffff
	xor	eax, eax
	call	__snprintf_chk
	test	eax, eax
	js	.label_2188
	cdqe	
	jmp	.label_2190
.label_2279:
	mov	ecx, dword ptr [rip + digits]
	mov	eax, 0xa
	cmp	ecx, 0xa
	jb	.label_2190
	movsxd	rax, dword ptr [rip + digits]
.label_2190:
	mov	rcx, -2
	sub	rcx, r14
	cmp	rcx, rax
	jb	.label_2188
	lea	rdi, [r14 + rax + 1]
	call	xmalloc
	mov	qword ptr [rip + filename_space],  rax
	movsxd	rax, dword ptr [rip + optind]
	lea	r13d, [rax + 1]
	mov	dword ptr [rip + optind],  r13d
	mov	rcx, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rcx + rax*8]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_2196
	cmp	byte ptr [rbx + 1], 0
	je	.label_2183
.label_2196:
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	call	fd_reopen
	test	eax, eax
	js	.label_2203
	mov	r13d, dword ptr [rip + optind]
.label_2183:
	cmp	r13d, r15d
	jge	.label_2206
	nop	dword ptr [rax + rax]
.label_2193:
	movsxd	r12, r13d
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax + r12*8]
	movsx	r15d, byte ptr [rbx]
	cmp	r15d, 0x2f
	je	.label_2208
	cmp	r15b, 0x25
	jne	.label_2211
.label_2208:
	lea	rbp, [rbx + 1]
	mov	rdi, rbp
	mov	esi, r15d
	call	strrchr
	mov	r14, rax
	test	r14, r14
	je	.label_2213
	mov	rax, qword ptr [rip + control_used]
	cmp	rax, qword ptr [rip + new_control_record.control_allocated]
	mov	qword ptr [rsp + 0x18], rbp
	jne	.label_2276
	mov	rdi, qword ptr [rip + controls]
	test	rdi, rdi
	je	.label_2295
	movabs	rcx, 0xe38e38e38e38e3
	cmp	rax, rcx
	jae	.label_2217
	mov	rcx, rax
	shr	rcx, 1
	lea	rax, [rax + rcx + 1]
	jmp	.label_2219
	.section	.text
	.align	16
	#Procedure 0x416233
	.globl sub_416233
	.type sub_416233, @function
sub_416233:

	nop	word ptr cs:[rax + rax]
.label_2211:
	mov	rax, qword ptr [rip + control_used]
	cmp	rax, qword ptr [rip + new_control_record.control_allocated]
	jne	.label_2225
	mov	rdi, qword ptr [rip + controls]
	test	rdi, rdi
	je	.label_2226
	movabs	rcx, 0xe38e38e38e38e3
	cmp	rax, rcx
	jae	.label_2233
	mov	rcx, rax
	shr	rcx, 1
	lea	rcx, [rax + rcx + 1]
	jmp	.label_2234
	.section	.text
	.align	16
	#Procedure 0x416283
	.globl sub_416283
	.type sub_416283, @function
sub_416283:

	nop	word ptr cs:[rax + rax]
.label_2276:
	mov	rbp, qword ptr [rip + controls]
	jmp	.label_2238
.label_2225:
	mov	r15, qword ptr [rip + controls]
	jmp	.label_2282
.label_2295:
	test	rax, rax
	mov	ecx, 1
	cmove	rax, rcx
	movabs	rcx, 0x155555555555555
	cmp	rax, rcx
	ja	.label_2240
.label_2219:
	mov	qword ptr [rip + new_control_record.control_allocated],  rax
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	rbp, rax
	mov	qword ptr [rip + controls],  rbp
	mov	rax, qword ptr [rip + control_used]
.label_2238:
	mov	qword ptr [rsp + 0x20], rbx
	not	rbx
	add	rbx, r14
	lea	r12, [rax + rax*2]
	inc	rax
	shl	r12, 5
	cmp	r15b, 0x25
	mov	qword ptr [rip + control_used],  rax
	mov	byte ptr [rbp + r12 + 0x1c], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + r12], xmm0
	mov	qword ptr [rbp + r12 + 0x10], 0
	mov	dword ptr [rbp + r12 + 0x18], r13d
	sete	byte ptr [rbp + r12 + 0x1d]
	mov	byte ptr [rbp + r12 + 0x1e], 1
	lea	r15, [rbp + r12 + 0x20]
	movups	xmmword ptr [rbp + r12 + 0x20], xmm0
	mov	edi, 0x100
	call	xmalloc
	mov	qword ptr [rbp + r12 + 0x40], rax
	mov	qword ptr [rbp + r12 + 0x48], 0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, r15
	call	rpl_re_compile_pattern
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_2277
	add	rbp, r12
	cmp	byte ptr [r14 + 1], 0
	je	.label_2180
	inc	r14
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_475
	mov	rdi, r14
	mov	rcx, rbp
	call	xstrtoimax
	test	eax, eax
	mov	ecx, dword ptr [rsp + 0x10]
	je	.label_2288
	jmp	.label_2289
.label_2226:
	test	rax, rax
	mov	ecx, 1
	cmovne	rcx, rax
	movabs	rax, 0x155555555555555
	cmp	rcx, rax
	ja	.label_2290
.label_2234:
	mov	qword ptr [rip + new_control_record.control_allocated],  rcx
	shl	rcx, 5
	lea	rsi, [rcx + rcx*2]
	call	xrealloc
	mov	r15, rax
	mov	qword ptr [rip + controls],  r15
	mov	rax, qword ptr [rip + control_used]
.label_2282:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + control_used],  rcx
	lea	rbx, [rax + rax*2]
	shl	rbx, 5
	mov	byte ptr [r15 + rbx + 0x1e], 0
	mov	byte ptr [r15 + rbx + 0x1c], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + rbx], xmm0
	mov	qword ptr [r15 + rbx + 0x10], 0
	mov	dword ptr [r15 + rbx + 0x18], r13d
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_475
	lea	rcx, [rsp + 0x28]
	call	xstrtoumax
	test	eax, eax
	jne	.label_2162
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_2150
	lea	rbp, [r15 + rbx]
	cmp	rax, qword ptr [rip + parse_patterns.last_val]
	jb	.label_2154
	jne	.label_2159
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2247
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rax, qword ptr [rsp + 0x28]
.label_2159:
	mov	qword ptr [rip + parse_patterns.last_val],  rax
	mov	qword ptr [r15 + rbx + 8], rax
.label_2180:
	mov	ecx, dword ptr [rsp + 0x10]
.label_2288:
	lea	ebx, [r13 + 1]
	cmp	ebx, ecx
	jge	.label_2173
	movsxd	r15, ebx
	mov	rax, qword ptr [rsp + 8]
	mov	r14, qword ptr [rax + r15*8]
	cmp	byte ptr [r14], 0x7b
	jne	.label_2173
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	cmp	byte ptr [r14 + r12 - 1], 0x7d
	jne	.label_2177
	mov	byte ptr [r14 + r12 - 1], 0
	lea	rdi, [r14 + 1]
	cmp	r12, 3
	jne	.label_2182
	cmp	byte ptr [rdi], 0x2a
	jne	.label_2182
	mov	byte ptr [rbp + 0x1c], 1
	jmp	.label_2185
.label_2182:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_475
	lea	rcx, [rsp + 0x30]
	call	xstrtoumax
	test	eax, eax
	jne	.label_2191
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rbp + 0x10], rax
.label_2185:
	mov	byte ptr [r14 + r12 - 1], 0x7d
	mov	r13d, ebx
	mov	ecx, dword ptr [rsp + 0x10]
.label_2173:
	inc	r13d
	cmp	r13d, ecx
	jl	.label_2193
.label_2206:
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	lea	rdx, [rsp + 0x30]
	mov	edi, 0xe
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2198
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigaddset
.label_2198:
	lea	rdx, [rsp + 0x30]
	mov	edi, 1
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2202
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigaddset
.label_2202:
	lea	rdx, [rsp + 0x30]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2209
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_2209:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2270
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigaddset
.label_2270:
	lea	rdx, [rsp + 0x30]
	mov	edi, 3
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2215
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigaddset
.label_2215:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0xf
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2223
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigaddset
.label_2223:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x1d
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2230
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigaddset
.label_2230:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x1b
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2235
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigaddset
.label_2235:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x1a
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2242
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigaddset
.label_2242:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x18
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2245
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigaddset
.label_2245:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x19
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_2254
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigaddset
.label_2254:
	mov	qword ptr [rsp + 48], OFFSET FLAT:interrupt_handler
	movups	xmm0, xmmword ptr [rip + label_2258]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	movups	xmm0, xmmword ptr [rip + label_2259]
	movups	xmmword ptr [rsp + 0x98], xmm0
	movups	xmm0, xmmword ptr [rip + label_2260]
	movups	xmmword ptr [rsp + 0x88], xmm0
	movups	xmm0, xmmword ptr [rip + label_2261]
	movups	xmmword ptr [rsp + 0x78], xmm0
	movups	xmm0, xmmword ptr [rip + label_2262]
	movups	xmmword ptr [rsp + 0x68], xmm0
	movups	xmm0, xmmword ptr [rip + label_2263]
	movups	xmmword ptr [rsp + 0x58], xmm0
	movups	xmm0, xmmword ptr [rip + label_2264]
	movups	xmmword ptr [rsp + 0x48], xmm0
	movups	xmm0, xmmword ptr [rip + caught_signals]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	dword ptr [rsp + 0xb8], 0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigismember
	test	eax, eax
	je	.label_2285
	lea	rsi, [rsp + 0x30]
	mov	edi, 0xe
	xor	edx, edx
	call	sigaction
.label_2285:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigismember
	test	eax, eax
	je	.label_2267
	lea	rsi, [rsp + 0x30]
	mov	edi, 1
	xor	edx, edx
	call	sigaction
.label_2267:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_2299
	lea	rsi, [rsp + 0x30]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_2299:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigismember
	test	eax, eax
	je	.label_2137
	lea	rsi, [rsp + 0x30]
	mov	edi, 0xd
	xor	edx, edx
	call	sigaction
.label_2137:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigismember
	test	eax, eax
	je	.label_2142
	lea	rsi, [rsp + 0x30]
	mov	edi, 3
	xor	edx, edx
	call	sigaction
.label_2142:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigismember
	test	eax, eax
	je	.label_2148
	lea	rsi, [rsp + 0x30]
	mov	edi, 0xf
	xor	edx, edx
	call	sigaction
.label_2148:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigismember
	test	eax, eax
	je	.label_2158
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x1d
	xor	edx, edx
	call	sigaction
.label_2158:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigismember
	test	eax, eax
	je	.label_2281
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x1b
	xor	edx, edx
	call	sigaction
.label_2281:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigismember
	test	eax, eax
	je	.label_2171
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x1a
	xor	edx, edx
	call	sigaction
.label_2171:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigismember
	test	eax, eax
	je	.label_2176
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x18
	xor	edx, edx
	call	sigaction
.label_2176:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigismember
	test	eax, eax
	je	.label_2184
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x19
	xor	edx, edx
	call	sigaction
.label_2184:
	cmp	qword ptr [rip + control_used],  0
	je	.label_2189
	mov	r15, qword ptr [rip + controls]
	xor	eax, eax
.label_2207:
	mov	qword ptr [rsp + 0x10], rax
	lea	r13, [rax + rax*2]
	shl	r13, 5
	cmp	byte ptr [r15 + r13 + 0x1e], 0
	je	.label_2192
	xor	r14d, r14d
	jmp	.label_2194
	.section	.text
	.align	16
	#Procedure 0x41694e
	.globl sub_41694e
	.type sub_41694e, @function
sub_41694e:

	nop	
.label_2266:
	mov	r14, rbx
	inc	r14
	mov	r15, qword ptr [rip + controls]
.label_2194:
	cmp	byte ptr [r15 + r13 + 0x1c], 0
	jne	.label_2197
	cmp	r14, qword ptr [r15 + r13 + 0x10]
	ja	.label_2152
.label_2197:
	mov	r12b, byte ptr [r15 + r13 + 0x1d]
	test	r12b, r12b
	jne	.label_2199
	call	create_output_file
.label_2199:
	lea	rbp, [r15 + r13]
	cmp	byte ptr [rip + suppress_matched],  1
	jne	.label_2201
	mov	rax, qword ptr [rip + current_line]
	test	rax, rax
	je	.label_2201
	call	remove_line
.label_2201:
	lea	rax, [r15 + r13 + 0x1c]
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbp], 0
	js	.label_2204
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	mov	qword ptr [rip + current_line],  rdi
	call	find_line
	test	rax, rax
	je	.label_2210
	lea	rbx, [r15 + r13 + 0x20]
.label_2220:
	mov	rcx, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rsi + rcx - 1], 0xa
	cmovne	rdx, rcx
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	jne	.label_2214
	call	remove_line
	test	r12b, r12b
	jne	.label_2144
	mov	rdi, rax
	call	save_line_to_file
.label_2144:
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	mov	qword ptr [rip + current_line],  rdi
	call	find_line
	test	rax, rax
	jne	.label_2220
	jmp	.label_2210
	.section	.text
	.align	16
	#Procedure 0x416a36
	.globl sub_416a36
	.type sub_416a36, @function
sub_416a36:

	nop	word ptr cs:[rax + rax]
.label_2204:
	lea	rbx, [r15 + r13 + 0x20]
.label_2268:
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	mov	qword ptr [rip + current_line],  rdi
	call	find_line
	test	rax, rax
	je	.label_2231
	mov	rcx, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rsi + rcx - 1], 0xa
	cmovne	rdx, rcx
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_2268
.label_2214:
	mov	rbx, r14
	cmp	rax, -2
	je	.label_2237
	mov	qword ptr [rsp + 8], rbp
	mov	r14, qword ptr [rbp]
	add	r14, qword ptr [rip + current_line]
	movsxd	rbp, dword ptr [r15 + r13 + 0x18]
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	jne	.label_2239
	call	load_buffer
	test	al, al
	je	.label_2161
	mov	rax, qword ptr [rip + head]
.label_2239:
	mov	qword ptr [rsp + 0x18], rbp
	mov	rbp, r14
	sub	rbp, qword ptr [rax + 0x18]
	jb	.label_2244
	je	.label_2250
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2257:
	call	remove_line
	test	rax, rax
	je	.label_2244
	test	r12b, r12b
	jne	.label_2255
	mov	rdi, rax
	call	save_line_to_file
.label_2255:
	inc	r15
	cmp	r15, rbp
	jb	.label_2257
.label_2250:
	test	r12b, r12b
	jne	.label_2229
	call	close_output_file
.label_2229:
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jle	.label_2266
	mov	qword ptr [rip + current_line],  r14
	jmp	.label_2266
	.section	.text
	.align	16
	#Procedure 0x416b38
	.globl sub_416b38
	.type sub_416b38, @function
sub_416b38:

	nop	dword ptr [rax + rax]
.label_2192:
	xor	r14d, r14d
	jmp	.label_2269
	.section	.text
	.align	16
	#Procedure 0x416b45
	.globl sub_416b45
	.type sub_416b45, @function
sub_416b45:

	nop	word ptr cs:[rax + rax]
.label_2139:
	mov	r15, qword ptr [rip + controls]
	mov	r14, r12
.label_2269:
	cmp	byte ptr [r15 + r13 + 0x1c], 0
	jne	.label_2273
	cmp	r14, qword ptr [r15 + r13 + 0x10]
	ja	.label_2152
.label_2273:
	mov	rbx, qword ptr [r15 + r13 + 8]
	call	create_output_file
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	call	find_line
	test	rax, rax
	jne	.label_2278
	cmp	byte ptr [rip + suppress_matched],  1
	je	.label_2141
.label_2278:
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	jne	.label_2283
	call	load_buffer
	test	al, al
	je	.label_2161
	mov	rax, qword ptr [rip + head]
.label_2283:
	lea	r12, [r14 + 1]
	imul	rbx, r12
	mov	rbp, qword ptr [rax + 0x18]
	jmp	.label_2291
	.section	.text
	.align	16
	#Procedure 0x416bc6
	.globl sub_416bc6
	.type sub_416bc6, @function
sub_416bc6:

	nop	word ptr cs:[rax + rax]
.label_2300:
	inc	rbp
	mov	rdi, rax
	call	save_line_to_file
.label_2291:
	cmp	rbp, rbx
	jae	.label_2297
	call	remove_line
	test	rax, rax
	jne	.label_2300
	jmp	.label_2141
	.section	.text
	.align	16
	#Procedure 0x416bef
	.globl sub_416bef
	.type sub_416bef, @function
sub_416bef:

	nop	
.label_2297:
	call	close_output_file
	cmp	byte ptr [rip + suppress_matched],  1
	jne	.label_2303
	call	remove_line
.label_2303:
	mov	rdi, qword ptr [rip + current_line]
	inc	rdi
	call	find_line
	test	rax, rax
	jne	.label_2139
	mov	al, byte ptr [rip + suppress_matched]
	test	al, al
	jne	.label_2139
	jmp	.label_2141
	.section	.text
	.align	16
	#Procedure 0x416c2e
	.globl sub_416c2e
	.type sub_416c2e, @function
sub_416c2e:

	nop	
.label_2152:
	mov	rax, qword ptr [rsp + 0x10]
	inc	rax
	cmp	rax, qword ptr [rip + control_used]
	jb	.label_2207
.label_2189:
	call	create_output_file
	jmp	.label_2147
	.section	.text
	.align	16
	#Procedure 0x416c4c
	.globl sub_416c4c
	.type sub_416c4c, @function
sub_416c4c:

	nop	dword ptr [rax]
.label_2151:
	mov	rdi, rax
	call	save_line_to_file
.label_2147:
	call	remove_line
	test	rax, rax
	jne	.label_2151
	call	close_output_file
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_2155
	xor	eax, eax
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2210:
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_2172
	test	r12b, r12b
	je	.label_2165
	jmp	.label_2166
	.section	.text
	.align	16
	#Procedure 0x416c9f
	.globl sub_416c9f
	.type sub_416c9f, @function
sub_416c9f:

	nop	
.label_2168:
	mov	rdi, rax
	call	save_line_to_file
.label_2165:
	call	remove_line
	test	rax, rax
	jne	.label_2168
	call	close_output_file
.label_2166:
	xor	edi, edi
	call	exit
.label_2231:
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_2172
	test	r12b, r12b
	je	.label_2174
	jmp	.label_2175
	.section	.text
	.align	16
	#Procedure 0x416cd3
	.globl sub_416cd3
	.type sub_416cd3, @function
sub_416cd3:

	nop	word ptr cs:[rax + rax]
.label_2179:
	mov	rdi, rax
	call	save_line_to_file
.label_2174:
	call	remove_line
	test	rax, rax
	jne	.label_2179
	call	close_output_file
.label_2175:
	xor	edi, edi
	call	exit
.label_2141:
	add	r15, r13
	mov	rdi, r15
	mov	rsi, r14
	call	handle_line_error
.label_2244:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2186
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + global_argv]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rax + rcx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	call	cleanup_fatal
.label_2237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2195
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_2178:
	mov	rdx, rcx
	call	error
	call	cleanup_fatal
.label_2161:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2200
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_2213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2205
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8d, r15d
	call	error
.label_2277:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2212
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, rbx
	call	error
	call	cleanup_fatal
.label_2274:
	cmp	eax, 0xffffff7d
	je	.label_2135
	cmp	eax, 0xffffff7e
	jne	.label_2216
	xor	edi, edi
	call	usage
.label_2289:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2218
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_2187
.label_2162:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2224
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	jmp	.label_2187
.label_2150:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2232
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rax + r12*8]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
.label_2154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2236
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rbp, rax
	mov	rdi, qword ptr [rip + parse_patterns.last_val]
	lea	rsi, [rsp + 0x30]
	call	umaxtostr
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_2301:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2248
	jmp	.label_2249
.label_2156:
	test	cl, cl
	jne	.label_2251
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2252
	jmp	.label_2249
.label_2177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2253
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	jmp	.label_2187
.label_2217:
	call	xalloc_die
.label_2191:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2265
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + global_argv]
	mov	rdi, qword ptr [rax + r15*8]
.label_2187:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_2135:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_1898
	mov	edx, OFFSET FLAT:label_1093
	mov	r8d, OFFSET FLAT:label_2271
	mov	r9d, OFFSET FLAT:label_2272
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_2216:
	mov	edi, 1
	call	usage
.label_2251:
	movzx	ebx, cl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	jne	.label_2280
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2286
	jmp	.label_2287
.label_2240:
	call	xalloc_die
.label_2188:
	call	xalloc_die
.label_2233:
	call	xalloc_die
.label_2280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2292
.label_2287:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_2275:
	xor	edi, edi
	cmp	eax, r15d
	jge	.label_2298
	mov	esi, OFFSET FLAT:label_2302
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_2290:
	call	xalloc_die
.label_2203:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2145
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_2181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2157
.label_2249:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_2172:
	movzx	edx, r12b
	mov	rdi, rbp
	mov	rsi, r14
	call	regexp_error
.label_2298:
	mov	esi, OFFSET FLAT:label_2167
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
.label_2155:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_2178
	.section	.text
	.align	16
	#Procedure 0x4170f6
	.globl sub_4170f6
	.type sub_4170f6, @function
sub_4170f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417100

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
.label_2407:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_2404
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_2332]
.label_2599:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_2413
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_747
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_2600:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_2308
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_2308
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2327:
	cmp	r14, r11
	jae	.label_2325
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_2325:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_2327
.label_2308:
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
	jmp	.label_2334
.label_2592:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_2334
.label_2595:
	mov	al, 1
.label_2593:
	mov	r12b, 1
.label_2596:
	test	r12b, 1
	mov	cl, 1
	je	.label_2345
	mov	ecx, eax
.label_2345:
	mov	al, cl
.label_2594:
	test	r12b, 1
	jne	.label_2348
	test	r11, r11
	je	.label_2394
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_2394:
	mov	r14d, 1
	jmp	.label_2351
.label_2348:
	xor	r14d, r14d
.label_2351:
	mov	ecx, OFFSET FLAT:label_747
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_2334
.label_2597:
	test	r12b, 1
	jne	.label_2360
	test	r11, r11
	je	.label_2362
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_2362:
	mov	r14d, 1
	jmp	.label_2365
.label_2598:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_746
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_2334
.label_2360:
	xor	r14d, r14d
.label_2365:
	mov	eax, OFFSET FLAT:label_746
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_2334:
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
	jmp	.label_2385
	.section	.text
	.align	16
	#Procedure 0x4173ed
	.globl sub_4173ed
	.type sub_4173ed, @function
sub_4173ed:

	nop	dword ptr [rax]
.label_2328:
	inc	rsi
.label_2385:
	cmp	rbp, -1
	je	.label_2421
	cmp	rsi, rbp
	jne	.label_2422
	jmp	.label_2423
	.section	.text
	.align	16
	#Procedure 0x417403
	.globl sub_417403
	.type sub_417403, @function
sub_417403:

	nop	word ptr cs:[rax + rax]
.label_2421:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_2311
.label_2422:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_2316
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_2319
	cmp	rbp, -1
	jne	.label_2319
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
.label_2319:
	cmp	rbx, rbp
	jbe	.label_2335
.label_2316:
	xor	r8d, r8d
.label_2357:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_2336
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_2340]
.label_2613:
	test	rsi, rsi
	jne	.label_2330
	jmp	.label_2344
	.section	.text
	.align	16
	#Procedure 0x4174a5
	.globl sub_4174a5
	.type sub_4174a5, @function
sub_4174a5:

	nop	word ptr cs:[rax + rax]
.label_2335:
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
	jne	.label_2354
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_2357
	jmp	.label_2364
.label_2354:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_2357
.label_2617:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_2372
	test	rsi, rsi
	jne	.label_2373
	cmp	rbp, 1
	je	.label_2344
	xor	r13d, r13d
	jmp	.label_2312
.label_2606:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_2381
	cmp	byte ptr [rsp + 6], 0
	jne	.label_2347
	cmp	r12d, 2
	jne	.label_2389
	mov	eax, r9d
	and	al, 1
	jne	.label_2389
	cmp	r14, r11
	jae	.label_2391
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_2391:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_2395
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_2395:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_2399
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_2399:
	add	r14, 3
	mov	r9b, 1
.label_2389:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_2318
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_2318:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_2411
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_2411
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_2411
	cmp	r14, r11
	jae	.label_2314
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_2314:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_2409
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_2409:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_2312
.label_2607:
	mov	bl, 0x62
	jmp	.label_2321
.label_2608:
	mov	cl, 0x74
	jmp	.label_2339
.label_2609:
	mov	bl, 0x76
	jmp	.label_2321
.label_2610:
	mov	bl, 0x66
	jmp	.label_2321
.label_2611:
	mov	cl, 0x72
	jmp	.label_2339
.label_2614:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_2326
	cmp	byte ptr [rsp + 6], 0
	jne	.label_2329
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
	jae	.label_2333
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_2333:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_2343
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_2343:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_2346
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_2346:
	add	r14, 3
	xor	r9d, r9d
.label_2326:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_2312
.label_2615:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_2352
	cmp	r12d, 2
	jne	.label_2330
	cmp	byte ptr [rsp + 6], 0
	je	.label_2330
	jmp	.label_2329
.label_2616:
	cmp	r12d, 2
	jne	.label_2361
	cmp	byte ptr [rsp + 6], 0
	jne	.label_2329
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_2317
.label_2336:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_2369
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
.label_2323:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_2387
	test	r8b, r8b
	je	.label_2387
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_2312
.label_2372:
	test	rsi, rsi
	jne	.label_2408
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_2408
.label_2344:
	mov	dl, 1
.label_2612:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_2329
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_2312:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_2415
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_2418
	jmp	.label_2304
	.section	.text
	.align	16
	#Procedure 0x4177f4
	.globl sub_4177f4
	.type sub_4177f4, @function
sub_4177f4:

	nop	word ptr cs:[rax + rax]
.label_2415:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_2304
.label_2418:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_2306
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_2317
	jmp	.label_2322
	.section	.text
	.align	16
	#Procedure 0x41783d
	.globl sub_41783d
	.type sub_41783d, @function
sub_41783d:

	nop	dword ptr [rax]
.label_2304:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_2322
	jmp	.label_2317
.label_2306:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_2322
.label_2381:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_2328
	xor	r15d, r15d
	jmp	.label_2330
.label_2361:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_2339
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_2317
.label_2339:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_2329
.label_2321:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_2312
	nop	word ptr cs:[rax + rax]
.label_2322:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_2347
	cmp	r12d, 2
	jne	.label_2350
	mov	eax, r9d
	and	al, 1
	jne	.label_2350
	cmp	r14, r11
	jae	.label_2375
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_2375:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_2355
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_2355:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_2371
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_2371:
	add	r14, 3
	mov	r9b, 1
.label_2350:
	cmp	r14, r11
	jae	.label_2309
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_2309:
	inc	r14
	jmp	.label_2367
.label_2369:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_2370
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_2370:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_2310:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2392
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_2397
	cmp	rbp, -2
	je	.label_2402
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_2419
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_2406:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_2377
	bt	rsi, rdx
	jb	.label_2420
.label_2377:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_2406
.label_2419:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_2388
	xor	r13d, r13d
.label_2388:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_2310
	jmp	.label_2323
.label_2411:
	xor	r13d, r13d
	jmp	.label_2312
.label_2408:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_2312
.label_2352:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_2330
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_2330
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_2330
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_2363
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_2383
	cmp	byte ptr [rsp + 6], 0
	jne	.label_2417
	cmp	r14, r11
	jae	.label_2379
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_2379:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_2416
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_2416:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_2353
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_2353:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_2382
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_2382:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_2312
.label_2330:
	xor	eax, eax
.label_2373:
	xor	r13d, r13d
	jmp	.label_2312
.label_2387:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_2368
	.section	.text
	.align	16
	#Procedure 0x417b22
	.globl sub_417b22
	.type sub_417b22, @function
sub_417b22:

	nop	word ptr cs:[rax + rax]
.label_2331:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_2368:
	test	r8b, r8b
	je	.label_2374
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_2376
	cmp	r14, r11
	jae	.label_2378
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_2378:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_2376
	.section	.text
	.align	16
	#Procedure 0x417b6c
	.globl sub_417b6c
	.type sub_417b6c, @function
sub_417b6c:

	nop	dword ptr [rax]
.label_2374:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_2364
	cmp	r12d, 2
	jne	.label_2384
	mov	eax, r9d
	and	al, 1
	jne	.label_2384
	cmp	r14, r11
	jae	.label_2396
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_2396:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_2398
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_2398:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_2405
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_2405:
	add	r14, 3
	mov	r9b, 1
.label_2384:
	cmp	r14, r11
	jae	.label_2342
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_2342:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_2414
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_2414:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_2393
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_2393:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_2376:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_2317
	test	r9b, 1
	je	.label_2337
	mov	ebx, eax
	and	bl, 1
	jne	.label_2337
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_2320
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_2320:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_2410
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_2410:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_2337:
	cmp	r14, r11
	jae	.label_2331
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_2331
	.section	.text
	.align	16
	#Procedure 0x417c73
	.globl sub_417c73
	.type sub_417c73, @function
sub_417c73:

	nop	word ptr cs:[rax + rax]
.label_2317:
	test	r9b, 1
	je	.label_2338
	and	al, 1
	jne	.label_2338
	cmp	r14, r11
	jae	.label_2341
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_2341:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_2400
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_2400:
	add	r14, 2
	xor	r9d, r9d
.label_2338:
	mov	ebx, r15d
.label_2367:
	cmp	r14, r11
	jae	.label_2324
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_2324:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_2328
.label_2397:
	xor	r13d, r13d
.label_2392:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_2323
.label_2402:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_2359
	mov	rsi, qword ptr [rsp + 0x58]
.label_2366:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_2412
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_2366
	xor	r13d, r13d
	jmp	.label_2323
.label_2359:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_2323
.label_2412:
	xor	r13d, r13d
	jmp	.label_2323
.label_2363:
	xor	r13d, r13d
	jmp	.label_2312
.label_2383:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_2312
	.section	.text
	.align	16
	#Procedure 0x417d48
	.globl sub_417d48
	.type sub_417d48, @function
sub_417d48:

	nop	dword ptr [rax + rax]
.label_2423:
	mov	rcx, rsi
.label_2311:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_2380
	or	al, dl
	je	.label_2386
.label_2380:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_2390
	or	al, dl
	jne	.label_2390
	test	r10b, 1
	jne	.label_2401
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_2390
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_2407
.label_2390:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_2349
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_2313
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_2313
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_2307:
	cmp	r14, r11
	jae	.label_2305
	mov	byte ptr [rcx + r14], al
.label_2305:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_2307
	jmp	.label_2313
.label_2347:
	mov	qword ptr [rsp + 0x20], rbp
.label_2364:
	mov	rdx, rdi
	jmp	.label_2315
.label_2329:
	mov	qword ptr [rsp + 0x20], rbp
.label_2420:
	mov	rdx, rdi
	mov	eax, 2
.label_2403:
	mov	qword ptr [rsp + 0x38], rax
.label_2315:
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
.label_2356:
	mov	r14, rax
.label_2358:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2386:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_2315
.label_2401:
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
	jmp	.label_2356
.label_2349:
	mov	rcx, qword ptr [rsp + 8]
.label_2313:
	cmp	r14, r11
	jae	.label_2358
	mov	byte ptr [rcx + r14], 0
	jmp	.label_2358
.label_2417:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_2403
.label_2404:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x417f07
	.globl sub_417f07
	.type sub_417f07, @function
sub_417f07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417f10

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_2425:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_2424
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_2425
	cmp	rbx, 0x7ff00001
	jb	.label_2424
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_2425
.label_2424:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417f63
	.globl sub_417f63
	.type sub_417f63, @function
sub_417f63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417fd5
	.globl sub_417fd5
	.type sub_417fd5, @function
sub_417fd5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417fe2
	.globl sub_417fe2
	.type sub_417fe2, @function
sub_417fe2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418006
	.globl sub_418006
	.type sub_418006, @function
sub_418006:

	nop	word ptr cs:[rax + rax]
