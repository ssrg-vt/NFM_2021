	.section	.text
	.align	16
	#Procedure 0x401499
	.globl sub_401499
	.type sub_401499, @function
sub_401499:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40149a
	.globl sub_40149a
	.type sub_40149a, @function
sub_40149a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014d2
	.globl sub_4014d2
	.type sub_4014d2, @function
sub_4014d2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40151a
	.globl sub_40151a
	.type sub_40151a, @function
sub_40151a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40153c
	.globl sub_40153c
	.type sub_40153c, @function
sub_40153c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40154d
	.globl sub_40154d
	.type sub_40154d, @function
sub_40154d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401566
	.globl sub_401566
	.type sub_401566, @function
sub_401566:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401570
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
	#Procedure 0x40157f
	.globl sub_40157f
	.type sub_40157f, @function
sub_40157f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401580
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
	#Procedure 0x401598
	.globl sub_401598
	.type sub_401598, @function
sub_401598:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015a0

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x4015b5
	.globl sub_4015b5
	.type sub_4015b5, @function
sub_4015b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015c8
	.globl sub_4015c8
	.type sub_4015c8, @function
sub_4015c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015d0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015d5
	.globl sub_4015d5
	.type sub_4015d5, @function
sub_4015d5:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4015e5
	.globl sub_4015e5
	.type sub_4015e5, @function
sub_4015e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015f4
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
	je	.label_9
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
	.section	.text
	.align	16
	#Procedure 0x401650
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401661
	.globl sub_401661
	.type sub_401661, @function
sub_401661:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401670
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40167a
	.globl sub_40167a
	.type sub_40167a, @function
sub_40167a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401680

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4016b0

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
	jne	.label_12
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_12
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_13
.label_12:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_13:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_14
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_14:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40171e
	.globl sub_40171e
	.type sub_40171e, @function
sub_40171e:

	nop	
.label_15:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401725
	.globl sub_401725
	.type sub_401725, @function
sub_401725:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40172b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_15
	test	rdx, rdx
	je	.label_15
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
	#Procedure 0x401790
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
	#Procedure 0x401805
	.globl sub_401805
	.type sub_401805, @function
sub_401805:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401810
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
	jae	.label_30
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_20
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_38
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_39
	mov	r14, qword ptr [r13]
.label_38:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_42
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_28
.label_39:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_20
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_34:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_31
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_33
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_34
	jmp	.label_20
.label_42:
	mov	qword ptr [r13], 0
	jmp	.label_28
.label_31:
	mov	rcx, rax
	jmp	.label_41
.label_33:
	mov	r14, qword ptr [rcx]
.label_41:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_28:
	xor	r12d, r12d
	test	r14, r14
	je	.label_20
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_23
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_36
	cvtsi2ss	xmm1, rax
	jmp	.label_35
.label_36:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_35:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_37
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_40
.label_37:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_40:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_23
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_21
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_24]
	jbe	.label_25
	movss	xmm4, dword ptr [rip + label_29]
	ucomiss	xmm4, xmm3
	jbe	.label_25
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_25
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_32]
	jbe	.label_25
	movss	xmm4, dword ptr [rip + label_24]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_25
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_44]
	ucomiss	xmm5, xmm3
	jb	.label_25
	ucomiss	xmm3, xmm4
	ja	.label_26
.label_25:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_26
.label_21:
	mov	eax, OFFSET FLAT:default_tuning
.label_26:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_23
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_22
	mulss	xmm0, dword ptr [rax + 8]
.label_22:
	movss	xmm1, dword ptr [rip + label_27]
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
	jne	.label_23
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_19
	nop	word ptr cs:[rax + rax]
.label_43:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_43
.label_19:
	mov	qword ptr [r15 + 0x48], 0
.label_23:
	mov	r12, r14
.label_20:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_30:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401aa3
	.globl sub_401aa3
	.type sub_401aa3, @function
sub_401aa3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_45
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_46
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ad5
	.globl sub_401ad5
	.type sub_401ad5, @function
sub_401ad5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_47
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_50:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_50
.label_47:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_51
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_48], OFFSET FLAT:slot0
.label_51:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_49
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_49:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b71
	.globl sub_401b71
	.type sub_401b71, @function
sub_401b71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b80
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_52]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b94
	.globl sub_401b94
	.type sub_401b94, @function
sub_401b94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ba0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_53
	call	rpl_calloc
	test	rax, rax
	je	.label_53
	pop	rcx
	ret	
.label_53:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401bc6
	.globl sub_401bc6
	.type sub_401bc6, @function
sub_401bc6:

	nop	word ptr cs:[rax + rax]
.label_55:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bd4
	.globl sub_401bd4
	.type sub_401bd4, @function
sub_401bd4:

	nop	dword ptr [rax]
.label_54:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_58:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_54
	test	dl, dl
	je	.label_55
	mov	ecx, esi
	and	cl, 1
	je	.label_56
	xor	esi, esi
.label_56:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_54
	.section	.text
	.align	16
	#Procedure 0x401c00

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_57:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_57
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_58
	.section	.text
	.align	16
	#Procedure 0x401c23
	.globl sub_401c23
	.type sub_401c23, @function
sub_401c23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c35
	.globl sub_401c35
	.type sub_401c35, @function
sub_401c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40
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
	#Procedure 0x401c53
	.globl sub_401c53
	.type sub_401c53, @function
sub_401c53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c60
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
	#Procedure 0x401c93
	.globl sub_401c93
	.type sub_401c93, @function
sub_401c93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ca0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401cae
	.globl sub_401cae
	.type sub_401cae, @function
sub_401cae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401cb0

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
	js	.label_62
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_65
	cmp	r12d, 0x7fffffff
	je	.label_60
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
	jne	.label_63
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_63:
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
.label_65:
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
	jbe	.label_61
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_64
.label_61:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_59
	mov	rdi, r14
	call	free
.label_59:
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
.label_64:
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
.label_62:
	call	abort
.label_60:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e6d
	.globl sub_401e6d
	.type sub_401e6d, @function
sub_401e6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e70

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_66
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_69
.label_66:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_68
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_67
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_67:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_68:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f06
	.globl sub_401f06
	.type sub_401f06, @function
sub_401f06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f10
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_70
	test	rsi, rsi
	je	.label_70
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
.label_70:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401f7c
	.globl sub_401f7c
	.type sub_401f7c, @function
sub_401f7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f80

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
.label_84:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_82
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_86]
.label_704:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_92
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_98
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_705:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_112
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_112
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_128:
	cmp	r14, r11
	jae	.label_107
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_107:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_128
.label_112:
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
	jmp	.label_141
.label_697:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_141
.label_700:
	mov	al, 1
.label_698:
	mov	r12b, 1
.label_701:
	test	r12b, 1
	mov	cl, 1
	je	.label_147
	mov	ecx, eax
.label_147:
	mov	al, cl
.label_699:
	test	r12b, 1
	jne	.label_149
	test	r11, r11
	je	.label_150
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_150:
	mov	r14d, 1
	jmp	.label_153
.label_149:
	xor	r14d, r14d
.label_153:
	mov	ecx, OFFSET FLAT:label_98
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_141
.label_702:
	test	r12b, 1
	jne	.label_163
	test	r11, r11
	je	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_166:
	mov	r14d, 1
	jmp	.label_170
.label_703:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_173
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_141
.label_163:
	xor	r14d, r14d
.label_170:
	mov	eax, OFFSET FLAT:label_173
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_141:
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
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x40226d
	.globl sub_40226d
	.type sub_40226d, @function
sub_40226d:

	nop	dword ptr [rax]
.label_129:
	inc	rsi
.label_188:
	cmp	rbp, -1
	je	.label_103
	cmp	rsi, rbp
	jne	.label_105
	jmp	.label_106
	.section	.text
	.align	16
	#Procedure 0x402283
	.globl sub_402283
	.type sub_402283, @function
sub_402283:

	nop	word ptr cs:[rax + rax]
.label_103:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_114
.label_105:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_119
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_91
	cmp	rbp, -1
	jne	.label_91
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
.label_91:
	cmp	rbx, rbp
	jbe	.label_136
.label_119:
	xor	r8d, r8d
.label_83:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_182
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_139]
.label_615:
	test	rsi, rsi
	jne	.label_130
	jmp	.label_144
	.section	.text
	.align	16
	#Procedure 0x402325
	.globl sub_402325
	.type sub_402325, @function
sub_402325:

	nop	word ptr cs:[rax + rax]
.label_136:
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
	jne	.label_157
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_83
	jmp	.label_169
.label_157:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_83
.label_619:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_178
	test	rsi, rsi
	jne	.label_180
	cmp	rbp, 1
	je	.label_144
	xor	r13d, r13d
	jmp	.label_81
.label_608:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_186
	cmp	byte ptr [rsp + 6], 0
	jne	.label_131
	cmp	r12d, 2
	jne	.label_190
	mov	eax, r9d
	and	al, 1
	jne	.label_190
	cmp	r14, r11
	jae	.label_191
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_191:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_72
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_72:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_115
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_115:
	add	r14, 3
	mov	r9b, 1
.label_190:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_85
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_85:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_88
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_88
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_88
	cmp	r14, r11
	jae	.label_121
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_121:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_80
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_80:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_81
.label_609:
	mov	bl, 0x62
	jmp	.label_123
.label_610:
	mov	cl, 0x74
	jmp	.label_125
.label_611:
	mov	bl, 0x76
	jmp	.label_123
.label_612:
	mov	bl, 0x66
	jmp	.label_123
.label_613:
	mov	cl, 0x72
	jmp	.label_125
.label_616:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_127
	cmp	byte ptr [rsp + 6], 0
	jne	.label_89
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
	jae	.label_133
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_133:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_142
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_142:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_148
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	add	r14, 3
	xor	r9d, r9d
.label_127:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_81
.label_617:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_155
	cmp	r12d, 2
	jne	.label_130
	cmp	byte ptr [rsp + 6], 0
	je	.label_130
	jmp	.label_89
.label_618:
	cmp	r12d, 2
	jne	.label_164
	cmp	byte ptr [rsp + 6], 0
	jne	.label_89
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_120
.label_182:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_176
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
.label_126:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_77
	test	r8b, r8b
	je	.label_77
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_81
.label_178:
	test	rsi, rsi
	jne	.label_145
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_145
.label_144:
	mov	dl, 1
.label_614:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_89
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_81:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_97
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_100
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x402674
	.globl sub_402674
	.type sub_402674, @function
sub_402674:

	nop	word ptr cs:[rax + rax]
.label_97:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_102
.label_100:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_110
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_120
	jmp	.label_124
	.section	.text
	.align	16
	#Procedure 0x4026bd
	.globl sub_4026bd
	.type sub_4026bd, @function
sub_4026bd:

	nop	dword ptr [rax]
.label_102:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_124
	jmp	.label_120
.label_110:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_124
.label_186:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_129
	xor	r15d, r15d
	jmp	.label_130
.label_164:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_125
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_120
.label_125:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_89
.label_123:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_81
	nop	word ptr cs:[rax + rax]
.label_124:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_131
	cmp	r12d, 2
	jne	.label_152
	mov	eax, r9d
	and	al, 1
	jne	.label_152
	cmp	r14, r11
	jae	.label_179
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_179:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_158
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_158:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_104
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_104:
	add	r14, 3
	mov	r9b, 1
.label_152:
	cmp	r14, r11
	jae	.label_168
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_168:
	inc	r14
	jmp	.label_174
.label_176:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_177
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_177:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_117:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_192
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_75
	cmp	rbp, -2
	je	.label_79
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_187
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_143:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_87
	bt	rsi, rdx
	jb	.label_101
.label_87:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_143
.label_187:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_165
	xor	r13d, r13d
.label_165:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_117
	jmp	.label_126
.label_88:
	xor	r13d, r13d
	jmp	.label_81
.label_145:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_81
.label_155:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_130
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_130
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_130
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_71
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_96
	cmp	byte ptr [rsp + 6], 0
	jne	.label_134
	cmp	r14, r11
	jae	.label_154
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_154:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_167
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_167:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_156
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_156:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_95
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_95:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_81
.label_130:
	xor	eax, eax
.label_180:
	xor	r13d, r13d
	jmp	.label_81
.label_77:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_175
	.section	.text
	.align	16
	#Procedure 0x4029a2
	.globl sub_4029a2
	.type sub_4029a2, @function
sub_4029a2:

	nop	word ptr cs:[rax + rax]
.label_109:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_175:
	test	r8b, r8b
	je	.label_181
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_183
	cmp	r14, r11
	jae	.label_184
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_184:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_183
	.section	.text
	.align	16
	#Procedure 0x4029ec
	.globl sub_4029ec
	.type sub_4029ec, @function
sub_4029ec:

	nop	dword ptr [rax]
.label_181:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_169
	cmp	r12d, 2
	jne	.label_73
	mov	eax, r9d
	and	al, 1
	jne	.label_73
	cmp	r14, r11
	jae	.label_74
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_74:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_113
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_113:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_137
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_137:
	add	r14, 3
	mov	r9b, 1
.label_73:
	cmp	r14, r11
	jae	.label_172
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_172:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_93
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_93:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_108
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_108:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_183:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_120
	test	r9b, 1
	je	.label_146
	mov	ebx, eax
	and	bl, 1
	jne	.label_146
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_122
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_122:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_135
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_135:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_146:
	cmp	r14, r11
	jae	.label_109
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_109
	.section	.text
	.align	16
	#Procedure 0x402af3
	.globl sub_402af3
	.type sub_402af3, @function
sub_402af3:

	nop	word ptr cs:[rax + rax]
.label_120:
	test	r9b, 1
	je	.label_138
	and	al, 1
	jne	.label_138
	cmp	r14, r11
	jae	.label_140
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_140:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_116
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_116:
	add	r14, 2
	xor	r9d, r9d
.label_138:
	mov	ebx, r15d
.label_174:
	cmp	r14, r11
	jae	.label_151
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_151:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_129
.label_75:
	xor	r13d, r13d
.label_192:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_126
.label_79:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_162
	mov	rsi, qword ptr [rsp + 0x58]
.label_171:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_160
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_171
	xor	r13d, r13d
	jmp	.label_126
.label_162:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_126
.label_160:
	xor	r13d, r13d
	jmp	.label_126
.label_71:
	xor	r13d, r13d
	jmp	.label_81
.label_96:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_81
	.section	.text
	.align	16
	#Procedure 0x402bc8
	.globl sub_402bc8
	.type sub_402bc8, @function
sub_402bc8:

	nop	dword ptr [rax + rax]
.label_106:
	mov	rcx, rsi
.label_114:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_185
	or	al, dl
	je	.label_189
.label_185:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_76
	or	al, dl
	jne	.label_76
	test	r10b, 1
	jne	.label_78
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_76
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_84
.label_76:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_90
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_94
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_94
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_111:
	cmp	r14, r11
	jae	.label_99
	mov	byte ptr [rcx + r14], al
.label_99:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_111
	jmp	.label_94
.label_131:
	mov	qword ptr [rsp + 0x20], rbp
.label_169:
	mov	rdx, rdi
	jmp	.label_118
.label_89:
	mov	qword ptr [rsp + 0x20], rbp
.label_101:
	mov	rdx, rdi
	mov	eax, 2
.label_132:
	mov	qword ptr [rsp + 0x38], rax
.label_118:
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
.label_159:
	mov	r14, rax
.label_161:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_189:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_118
.label_78:
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
	jmp	.label_159
.label_90:
	mov	rcx, qword ptr [rsp + 8]
.label_94:
	cmp	r14, r11
	jae	.label_161
	mov	byte ptr [rcx + r14], 0
	jmp	.label_161
.label_134:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_132
.label_82:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d87
	.globl sub_402d87
	.type sub_402d87, @function
sub_402d87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d90
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
	je	.label_193
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
.label_193:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402df8
	.globl sub_402df8
	.type sub_402df8, @function
sub_402df8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e00

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
	je	.label_194
	mov	edx, OFFSET FLAT:label_204
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_210
.label_194:
	mov	edx, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_210:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
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
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_199
	jmp	qword ptr [(r12 * 8) + label_200]
.label_673:
	add	rsp, 8
	jmp	.label_198
.label_199:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
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
	jmp	.label_198
.label_674:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
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
.label_675:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
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
.label_676:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
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
.label_677:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
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
	jmp	.label_198
.label_678:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
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
	jmp	.label_198
.label_679:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
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
	jmp	.label_198
.label_680:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
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
	jmp	.label_198
.label_682:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
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
	jmp	.label_198
.label_681:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
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
.label_198:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403158
	.globl sub_403158
	.type sub_403158, @function
sub_403158:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160

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
	#Procedure 0x403177
	.globl sub_403177
	.type sub_403177, @function
sub_403177:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180

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
	je	.label_213
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_213:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031ac
	.globl sub_4031ac
	.type sub_4031ac, @function
sub_4031ac:

	nop	dword ptr [rax]
.label_214:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4031b5
	.globl sub_4031b5
	.type sub_4031b5, @function
sub_4031b5:

	nop	word ptr cs:[rax + rax]
.label_215:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031cb

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_215
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_214
	cmp	rax, rbx
	je	.label_215
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_216:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403235
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_216
	test	rsi, rsi
	je	.label_216
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
	#Procedure 0x4032a0
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
	#Procedure 0x403361
	.globl sub_403361
	.type sub_403361, @function
sub_403361:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403370

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403396
	.globl sub_403396
	.type sub_403396, @function
sub_403396:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_217
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_218
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_218:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033c8
	.globl sub_4033c8
	.type sub_4033c8, @function
sub_4033c8:

	nop	dword ptr [rax + rax]
.label_217:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_222
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_223
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_221
	call	free
	xor	eax, eax
	jmp	.label_219
.label_220:
	call	xalloc_die
.label_222:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_220
	mov	qword ptr [rsi], rbx
.label_221:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_219
	test	rax, rax
	je	.label_220
.label_219:
	pop	rbx
	ret	
.label_223:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403434
	.globl sub_403434
	.type sub_403434, @function
sub_403434:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440
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
	je	.label_224
	mov	qword ptr [rax], rbx
.label_224:
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
	#Procedure 0x40352c
	.globl sub_40352c
	.type sub_40352c, @function
sub_40352c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403530

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
	je	.label_225
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_233
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_24]
	jbe	.label_226
	movss	xmm1, dword ptr [rip + label_29]
	ucomiss	xmm1, xmm0
	jbe	.label_226
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_32]
	jbe	.label_226
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_226
	addss	xmm1, dword ptr [rip + label_24]
	ucomiss	xmm0, xmm1
	jbe	.label_226
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_44]
	ucomiss	xmm2, xmm0
	jb	.label_226
	ucomiss	xmm0, xmm1
	jbe	.label_226
.label_233:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_234
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_227
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_229
.label_227:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_229:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_27]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_232]
	jae	.label_226
.label_234:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x40367e
	.globl sub_40367e
	.type sub_40367e, @function
sub_40367e:

	nop	
.label_230:
	add	rbx, 2
.label_231:
	cmp	rbx, -1
	je	.label_226
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_228
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_235:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_228
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_235
.label_228:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_230
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_226
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_226
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_226
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
	jmp	.label_225
.label_226:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_225:
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
	#Procedure 0x403748
	.globl sub_403748
	.type sub_403748, @function
sub_403748:

	nop	dword ptr [rax + rax]
.label_238:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_236
	test	rax, rax
	je	.label_237
.label_236:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403764
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_237
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_238
	test	rbx, rbx
	jne	.label_238
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_237:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403798
	.globl sub_403798
	.type sub_403798, @function
sub_403798:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0

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
	jae	.label_243
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_240
	add	rbx, rax
	je	.label_240
	cmp	rsi, r12
	je	.label_242
	xor	r15d, r15d
	nop	
.label_241:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_239
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_240
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_241
.label_242:
	mov	r15, r12
	jmp	.label_240
.label_243:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403806
	.globl sub_403806
	.type sub_403806, @function
sub_403806:

	nop	dword ptr [rax + rax]
.label_239:
	mov	r15, qword ptr [rbx]
.label_240:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403820

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_246
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_250:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_252
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_244
.label_252:
	cmp	r13, r12
	jb	.label_248
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_249
	add	r12, r12
	jmp	.label_251
	.section	.text
	.align	16
	#Procedure 0x4038b3
	.globl sub_4038b3
	.type sub_4038b3, @function
sub_4038b3:

	nop	word ptr cs:[rax + rax]
.label_247:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_245
.label_249:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_247
.label_251:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_250
	jmp	.label_246
.label_248:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_246
.label_244:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_245:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_246:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x403921
	.globl sub_403921
	.type sub_403921, @function
sub_403921:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403930

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_258
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_258
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_256
	.section	.text
	.align	16
	#Procedure 0x40394f
	.globl sub_40394f
	.type sub_40394f, @function
sub_40394f:

	nop	
.label_253:
	add	r15, 0x10
.label_256:
	cmp	r15, rax
	jae	.label_258
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_253
	test	r15, r15
	je	.label_253
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_262
.label_260:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_262:
	test	rbx, rbx
	jne	.label_260
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_253
.label_258:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_261
	.section	.text
	.align	16
	#Procedure 0x40398f
	.globl sub_40398f
	.type sub_40398f, @function
sub_40398f:

	nop	
.label_254:
	add	r15, 0x10
.label_261:
	cmp	r15, rax
	jae	.label_263
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_254
	nop	word ptr cs:[rax + rax]
.label_259:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_259
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_254
.label_263:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_257
.label_255:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_255
.label_257:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
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
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_264:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_264
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403a21
	.globl sub_403a21
	.type sub_403a21, @function
sub_403a21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a30

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
	je	.label_265
	test	r15, r15
	je	.label_266
.label_265:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_266:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a6c
	.globl sub_403a6c
	.type sub_403a6c, @function
sub_403a6c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a70
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_270
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_268
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_272:
	cmp	qword ptr [rcx], 0
	je	.label_273
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_267:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_267
	cmp	rdi, rax
	cmova	rax, rdi
.label_273:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_271
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_269:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_269
	cmp	rdi, rax
	cmova	rax, rdi
.label_271:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_272
.label_268:
	test	r8, r8
	je	.label_270
	cmp	qword ptr [rcx], 0
	je	.label_270
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_274:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_274
	cmp	rdx, rax
	cmova	rax, rdx
.label_270:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b24
	.globl sub_403b24
	.type sub_403b24, @function
sub_403b24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b30
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
	jae	.label_278
	xor	ebx, ebx
.label_277:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_279
	test	r13, r13
	je	.label_279
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_278
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_276:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_275
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_276
	jmp	.label_278
	.section	.text
	.align	16
	#Procedure 0x403b9c
	.globl sub_403b9c
	.type sub_403b9c, @function
sub_403b9c:

	nop	dword ptr [rax]
.label_275:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_279:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_277
.label_278:
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
	#Procedure 0x403bc3
	.globl sub_403bc3
	.type sub_403bc3, @function
sub_403bc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bd0

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
	je	.label_280
	cmp	r15, -2
	jb	.label_280
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_280
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_280:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c26
	.globl sub_403c26
	.type sub_403c26, @function
sub_403c26:

	nop	word ptr cs:[rax + rax]
.label_281:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403c36
	.globl sub_403c36
	.type sub_403c36, @function
sub_403c36:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c3b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_281
	test	rdx, rdx
	je	.label_281
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c60
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c65
	.globl sub_403c65
	.type sub_403c65, @function
sub_403c65:

	nop	word ptr cs:[rax + rax]
.label_288:
	test	rcx, rcx
	jne	.label_286
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_286:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_285
.label_287:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_282
	test	rbx, rbx
	jne	.label_282
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cbc
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_288
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_284
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_287
.label_284:
	call	xalloc_die
.label_285:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403cf3
	.globl sub_403cf3
	.type sub_403cf3, @function
sub_403cf3:

	nop	word ptr [rax + rax]
.label_282:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_283
	test	rax, rax
	je	.label_284
.label_283:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d10

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_289:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_290
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_289
.label_290:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d36
	.globl sub_403d36
	.type sub_403d36, @function
sub_403d36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_291
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_291:
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
	#Procedure 0x403dc3
	.globl sub_403dc3
	.type sub_403dc3, @function
sub_403dc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dd0
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
	#Procedure 0x403de8
	.globl sub_403de8
	.type sub_403de8, @function
sub_403de8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403df0

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	.section	.text
	.align	16
	#Procedure 0x403e08
	.globl sub_403e08
	.type sub_403e08, @function
sub_403e08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_294
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_297
.label_294:
	xor	ebp, ebp
.label_295:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_297:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rcx, [rsp + 0xa8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 8]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_298
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_298:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rcx, [rsp + 0x18]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_293
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_293:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_296
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_292
.label_296:
	xor	ebp, ebp
.label_292:
	mov	rdi, rbx
	call	free
	jmp	.label_295
	.section	.text
	.align	16
	#Procedure 0x403f58
	.globl sub_403f58
	.type sub_403f58, @function
sub_403f58:

	nop	dword ptr [rax + rax]
.label_300:
	mov	ecx, 1
.label_299:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403f70
	.globl sub_403f70
	.type sub_403f70, @function
sub_403f70:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f75

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_300
	test	rsi, rsi
	mov	ecx, 1
	je	.label_299
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_299
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fb0
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
	#Procedure 0x403fe6
	.globl sub_403fe6
	.type sub_403fe6, @function
sub_403fe6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_302
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_301
.label_302:
	mov	rax, rbx
	pop	rbx
	ret	
.label_301:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404016
	.globl sub_404016
	.type sub_404016, @function
sub_404016:

	nop	word ptr cs:[rax + rax]
.label_303:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404025
	.globl sub_404025
	.type sub_404025, @function
sub_404025:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40402b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_304
	test	rax, rax
	je	.label_303
.label_304:
	pop	rbx
	ret	
.label_305:
	xor	eax, eax
	ret	
.label_306:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404046

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_306
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_305
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404070

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
	jne	.label_315
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_308
	cvtsi2ss	xmm0, rsi
	jmp	.label_313
.label_308:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_313:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_27]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_232]
	jae	.label_307
.label_315:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_317
	.section	.text
	.align	16
	#Procedure 0x4040fb
	.globl sub_4040fb
	.type sub_4040fb, @function
sub_4040fb:

	nop	dword ptr [rax + rax]
.label_311:
	add	rbx, 2
.label_317:
	cmp	rbx, -1
	je	.label_307
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_310
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_325:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_310
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_325
.label_310:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_311
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_307
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_318
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_307
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
	je	.label_323
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_318
.label_323:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_309
	.section	.text
	.align	16
	#Procedure 0x40421e
	.globl sub_40421e
	.type sub_40421e, @function
sub_40421e:

	nop	
.label_319:
	add	r12, 0x10
.label_309:
	cmp	r12, r15
	jae	.label_316
	cmp	qword ptr [r12], 0
	je	.label_319
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_322
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_320:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_314
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_321
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_324
	.section	.text
	.align	16
	#Procedure 0x40428a
	.globl sub_40428a
	.type sub_40428a, @function
sub_40428a:

	nop	word ptr [rax + rax]
.label_321:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_324:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_320
.label_322:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_319
.label_316:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_312
	mov	rdi, qword ptr [rsp]
	call	free
.label_307:
	xor	ebp, ebp
.label_318:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_314:
	call	abort
.label_312:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4042fa
	.globl sub_4042fa
	.type sub_4042fa, @function
sub_4042fa:

	nop	word ptr [rax + rax]
.label_326:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404305
	.globl sub_404305
	.type sub_404305, @function
sub_404305:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40430f
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
	je	.label_327
	test	r14, r14
	je	.label_326
.label_327:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_328:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404345
	.globl sub_404345
	.type sub_404345, @function
sub_404345:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404353

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_328
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404360

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_45
	call	setlocale
	mov	edi, OFFSET FLAT:label_333
	mov	esi, OFFSET FLAT:label_334
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_333
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebx, 0xffffffff
	xor	ecx, ecx
.label_650:
	mov	r12d, ecx
	mov	ebp, ebx
	jmp	.label_336
.label_646:
	mov	ebp, 2
	nop	
.label_336:
	mov	ebx, ebp
	jmp	.label_335
	.section	.text
	.align	16
	#Procedure 0x4043c4
	.globl sub_4043c4
	.type sub_4043c4, @function
sub_4043c4:

	nop	word ptr cs:[rax + rax]
.label_648:
	mov	byte ptr [rip + verbose],  0
.label_335:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_350
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_338
	add	eax, -0x65
	cmp	eax, 0x15
	ja	.label_341
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_331]
.label_647:
	mov	byte ptr [rip + no_newline],  1
	jmp	.label_335
.label_649:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_335
.label_645:
	mov	ebp, 1
	jmp	.label_336
.label_338:
	cmp	eax, -1
	jne	.label_337
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r13d
	jge	.label_340
	mov	ecx, r13d
	sub	ecx, eax
	cmp	ecx, 2
	jl	.label_343
	cmp	byte ptr [rip + no_newline],  1
	jne	.label_347
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + optind]
.label_347:
	mov	byte ptr [rip + no_newline],  0
.label_343:
	xor	r15d, r15d
	cmp	eax, r13d
	jge	.label_354
	xor	r15d, r15d
	test	r12b, r12b
	mov	ecx, 0xa
	cmovne	ecx, r15d
	mov	dword ptr [rsp + 4], ecx
	mov	dword ptr [rsp], 0
	jne	.label_329
	mov	cl, 0xa
	mov	dword ptr [rsp], ecx
	jmp	.label_329
.label_352:
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_332
	.section	.text
	.align	16
	#Procedure 0x4044b8
	.globl sub_4044b8
	.type sub_4044b8, @function
sub_4044b8:

	nop	dword ptr [rax + rax]
.label_329:
	cmp	ebx, -1
	cdqe	
	mov	r12, qword ptr [r14 + rax*8]
	je	.label_330
	mov	rdi, r12
	mov	esi, ebx
	call	canonicalize_filename_mode
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x4044d7
	.globl sub_4044d7
	.type sub_4044d7, @function
sub_4044d7:

	nop	word ptr [rax + rax]
.label_330:
	mov	esi, 0x3f
	mov	rdi, r12
	call	areadlink_with_size
.label_349:
	mov	rbp, rax
	test	rbp, rbp
	je	.label_351
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
	movzx	eax, byte ptr [rip + no_newline]
	test	al, al
	jne	.label_332
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_352
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp]
	mov	byte ptr [rax], cl
.label_332:
	mov	rdi, rbp
	call	free
	jmp	.label_342
	.section	.text
	.align	16
	#Procedure 0x404537
	.globl sub_404537
	.type sub_404537, @function
sub_404537:

	nop	word ptr [rax + rax]
.label_351:
	mov	r15d, 1
	cmp	byte ptr [rip + verbose],  1
	jne	.label_342
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
.label_342:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r13d
	jl	.label_329
.label_354:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_337:
	cmp	eax, 0xffffff7d
	je	.label_339
	cmp	eax, 0xffffff7e
	jne	.label_341
	xor	edi, edi
	call	usage
.label_339:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_344
	mov	edx, OFFSET FLAT:label_345
	mov	r8d, OFFSET FLAT:label_346
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_341:
	mov	edi, 1
	call	usage
.label_340:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
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
	#Procedure 0x404623
	.globl sub_404623
	.type sub_404623, @function
sub_404623:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404630

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14d, esi
	mov	r13, rdi
	mov	ebx, r14d
	and	ebx, 3
	lea	eax, [r14 + 3]
	test	eax, ebx
	jne	.label_371
	test	r13, r13
	je	.label_371
	mov	al, byte ptr [r13]
	cmp	al, 0x2f
	je	.label_378
	test	al, al
	jne	.label_381
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_384
.label_371:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_384:
	xor	ebp, ebp
.label_358:
	mov	rax, rbp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_378:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	r8, [rdi + 0x1000]
	lea	rbp, [rdi + 1]
	jmp	.label_392
.label_381:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_358
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, r8
	sub	rbp, rdi
	cmp	rbp, 0xfff
	jg	.label_404
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	rbp, rdi
	mov	r8, rdi
	add	r8, 0x1000
	jmp	.label_392
.label_404:
	mov	rbp, r8
.label_392:
	mov	al, byte ptr [r13]
	xor	r15d, r15d
	test	al, al
	je	.label_415
	mov	ecx, r14d
	and	ecx, 4
	mov	dword ptr [rsp + 0x58], ecx
	mov	ecx, r14d
	and	ecx, 7
	mov	dword ptr [rsp + 0x5c], ecx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x34], ebx
	cmp	ebx, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x54], ecx
	xor	r15d, r15d
	and	r14b, 3
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x38], r13
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	mov	dword ptr [rsp + 0xc], ecx
	xor	ebx, ebx
.label_399:
	mov	qword ptr [rsp + 0x10], r15
.label_385:
	lea	rcx, [rdi + 1]
	mov	r12, rbp
.label_365:
	mov	edx, eax
	nop	word ptr cs:[rax + rax]
.label_411:
	cmp	dl, 0x2f
	mov	r14, r13
	lea	rsi, [r13 + 1]
	jne	.label_386
	nop	dword ptr [rax]
.label_355:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x2f
	je	.label_355
	lea	r14, [rsi - 1]
.label_386:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_391
	.section	.text
	.align	16
	#Procedure 0x404796
	.globl sub_404796
	.type sub_404796, @function
sub_404796:

	nop	word ptr cs:[rax + rax]
.label_398:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_391:
	test	al, al
	je	.label_397
	cmp	al, 0x2f
	jne	.label_398
.label_397:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	je	.label_400
	cmp	r15, 2
	jne	.label_401
	cmp	dl, 0x2e
	mov	r15d, 2
	jne	.label_402
	cmp	byte ptr [rsi], 0x2e
	mov	r15d, 2
	jne	.label_402
	cmp	r12, rcx
	jbe	.label_407
	jmp	.label_409
	.section	.text
	.align	16
	#Procedure 0x4047df
	.globl sub_4047df
	.type sub_4047df, @function
sub_4047df:

	nop	
.label_400:
	cmp	byte ptr [r14], 0x2e
	mov	r15d, 1
	jne	.label_402
.label_407:
	mov	dl, byte ptr [r13]
	test	dl, dl
	jne	.label_411
	jmp	.label_370
.label_409:
	dec	r12
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	r12, rdx
	cmp	r12, rdi
	jbe	.label_359
	lea	rdx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_360
.label_359:
	test	al, al
	jne	.label_365
	jmp	.label_370
.label_401:
	test	r15, r15
	je	.label_370
.label_402:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_382
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_382:
	lea	rax, [r12 + r15]
	cmp	rax, r8
	jae	.label_374
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdi
	jmp	.label_414
.label_374:
	sub	r12, rdi
	sub	r8, rdi
	lea	rbp, [r15 + 1]
	cmp	r15, 0xfff
	mov	eax, 0x1000
	cmovle	rbp, rax
	add	rbp, r8
	mov	rsi, rbp
	call	xrealloc
	add	rbp, rax
	mov	qword ptr [rsp + 0x18], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x28], rbp
.label_414:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	lea	rbp, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	cmp	dword ptr [rsp + 0x5c], 6
	jne	.label_395
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	lea	r14, [rsp + 0x68]
	jmp	.label_369
.label_395:
	cmp	dword ptr [rsp + 0x58], 0
	lea	r14, [rsp + 0x68]
	mov	edi, 1
	jne	.label_406
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r14
	call	__lxstat
	jmp	.label_412
.label_406:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r14
	call	__xstat
.label_412:
	test	eax, eax
	je	.label_416
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, qword ptr [rsp + 0x60]
	cmp	al, 1
	je	.label_356
	test	al, al
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	je	.label_361
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_369
.label_416:
	mov	eax, dword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
.label_369:
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_375
	mov	qword ptr [rsp + 0x48], rbp
	test	rbx, rbx
	jne	.label_380
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	rbx, rax
	test	rbx, rbx
	je	.label_389
.label_380:
	mov	rdi, rbx
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	rdx, r14
	call	seen_file
	test	al, al
	je	.label_394
	cmp	dword ptr [rsp + 0x34], 2
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0xc], eax
	mov	eax, dword ptr [rsp + 0x54]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x48]
	jmp	.label_396
.label_394:
	mov	qword ptr [rsp + 0x40], rbx
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x18]
	call	areadlink_with_size
	mov	r14, rax
	test	r14, r14
	jne	.label_413
	call	__errno_location
	cmp	dword ptr [rsp + 0x34], 2
	mov	rbp, qword ptr [rsp + 0x48]
	jne	.label_357
	cmp	dword ptr [rax], 0xc
	je	.label_357
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_363
.label_356:
	mov	rax, r13
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	nop	
.label_373:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_373
	xor	eax, eax
	test	cl, cl
	setne	al
	cmp	dword ptr [rsp + 0xc], 2
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
.label_396:
	and	al, 0xf
	cmp	al, 4
	jne	.label_376
.label_363:
	mov	al, byte ptr [r13]
	test	al, al
	jne	.label_385
	jmp	.label_387
.label_375:
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_388
	cmp	dword ptr [rsp + 0x34], 2
	je	.label_388
	mov	cl, byte ptr [r13]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_379
.label_388:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_393
.label_413:
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rcx, [rbx + rdx + 1]
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x48]
	je	.label_403
	cmp	rcx, rax
	jbe	.label_408
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x10], rdx
	call	xrealloc
	jmp	.label_372
.label_403:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, rcx
	mov	qword ptr [rsp + 0x10], rdx
	call	xmalloc
.label_372:
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_362
.label_408:
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x10]
.label_362:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, rbx
	add	rdi, rax
	inc	rdx
	mov	rsi, r13
	mov	r13, rax
	call	memmove
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rax, [rcx + 1]
	cmp	byte ptr [r14], 0x2f
	jne	.label_377
	mov	byte ptr [rcx], 0x2f
	mov	rbp, rax
	jmp	.label_366
.label_377:
	cmp	rbp, rax
	jbe	.label_366
	lea	rax, [r12 + r15 - 1]
.label_390:
	mov	rbp, rax
	cmp	rbp, rcx
	jbe	.label_366
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	jne	.label_390
.label_366:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r15, r13
	mov	qword ptr [rsp + 0x38], r13
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x20]
.label_393:
	mov	al, byte ptr [r13]
	test	al, al
	mov	qword ptr [rsp + 0x20], rcx
	jne	.label_399
	jmp	.label_364
.label_370:
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_364
.label_415:
	xor	ebx, ebx
.label_364:
	lea	rax, [rdi + 1]
	cmp	rbp, rax
	jbe	.label_405
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	cmove	rbp, rax
.label_405:
	mov	byte ptr [rbp], 0
	lea	rax, [rbp + 1]
	cmp	r8, rax
	je	.label_410
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, rbp
	call	xrealloc
	mov	rbp, rax
	jmp	.label_367
.label_410:
	mov	rbp, rdi
.label_367:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	je	.label_358
	mov	rdi, rbx
	call	hash_free
	jmp	.label_358
.label_387:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_364
.label_357:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_368
.label_376:
	cmp	al, 0xd
	jne	.label_358
	jmp	.label_368
.label_361:
	mov	eax, dword ptr [rsp + 0xc]
.label_379:
	mov	dword ptr [rsp + 0xc], eax
.label_368:
	mov	rbp, rdi
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	je	.label_383
	mov	rdi, rbx
	call	hash_free
.label_383:
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
	jmp	.label_384
.label_389:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404c86
	.globl sub_404c86
	.type sub_404c86, @function
sub_404c86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90

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
	jae	.label_418
	nop	word ptr cs:[rax + rax]
.label_420:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_417
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_421
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_429:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_425
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_427
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_428
	.section	.text
	.align	16
	#Procedure 0x404d19
	.globl sub_404d19
	.type sub_404d19, @function
sub_404d19:

	nop	dword ptr [rax]
.label_427:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_428:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_429
	mov	r13, qword ptr [r14]
.label_421:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_417
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_423
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_426
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_430
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_419
.label_426:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_422
.label_430:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_424
.label_419:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_422:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_417:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_420
	mov	al, 1
.label_418:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_424:
	xor	eax, eax
	jmp	.label_418
.label_425:
	call	abort
.label_423:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404df7
	.globl sub_404df7
	.type sub_404df7, @function
sub_404df7:

	nop	word ptr [rax + rax]
.label_432:
	add	rcx, 0x10
.label_434:
	cmp	rcx, rdx
	jae	.label_431
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_432
.label_433:
	ret	
.label_431:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e18
	.globl sub_404e18
	.type sub_404e18, @function
sub_404e18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e20
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_433
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_434
	.section	.text
	.align	16
	#Procedure 0x404e32
	.globl sub_404e32
	.type sub_404e32, @function
sub_404e32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_436:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_435
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_436
.label_435:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e7b
	.globl sub_404e7b
	.type sub_404e7b, @function
sub_404e7b:

	nop	dword ptr [rax + rax]
.label_438:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_437
	call	__errno_location
	mov	dword ptr [rax], 0
.label_437:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e9b

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
	jne	.label_438
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_437
	test	cl, cl
	jne	.label_437
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_437
	.section	.text
	.align	16
	#Procedure 0x404ee0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_442
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_440
	cmp	dword ptr [rbp], 0x20
	jne	.label_440
.label_442:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_444
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_444:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_445
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_445:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_443
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_451:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
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
	#Procedure 0x404fd8
	.globl sub_404fd8
	.type sub_404fd8, @function
sub_404fd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fdd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_451
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_453
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_345
	mov	ecx, OFFSET FLAT:label_454
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_446
	mov	esi, OFFSET FLAT:label_458
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_446
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_455
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_454
	mov	ecx, OFFSET FLAT:label_344
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_344
	mov	ecx, OFFSET FLAT:label_449
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x405180

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_461
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_463
.label_461:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_463:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_473
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_462
.label_473:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_462:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_471
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_472
.label_471:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_472:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_469
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_470
.label_469:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_470:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_467
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_468
.label_467:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_468:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_464
	cmp	r10d, 0x29
	jae	.label_465
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_466
.label_465:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_466:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_464
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_464
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_464
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_464
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_464:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x405362
	.globl sub_405362
	.type sub_405362, @function
sub_405362:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405370
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40537d
	.globl sub_40537d
	.type sub_40537d, @function
sub_40537d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405380

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
	#Procedure 0x405390

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_474
	test	rbx, rbx
	jne	.label_474
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_476:
	call	xalloc_die
.label_474:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_475
	test	rax, rax
	je	.label_476
.label_475:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053c0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_477
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_478:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_478
.label_477:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053ee
	.globl sub_4053ee
	.type sub_4053ee, @function
sub_4053ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4053f0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_479
	xor	eax, eax
.label_481:
	cmp	qword ptr [r9], 0
	je	.label_480
	test	r9, r9
	je	.label_480
	mov	r8, r9
	nop	
.label_482:
	cmp	rax, rdx
	jae	.label_479
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_482
	mov	r8, qword ptr [rdi + 8]
.label_480:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_481
.label_479:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405436
	.globl sub_405436
	.type sub_405436, @function
sub_405436:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405440
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
	#Procedure 0x405459
	.globl sub_405459
	.type sub_405459, @function
sub_405459:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405460
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_488
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_491
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_492:
	cmp	qword ptr [rax], 0
	je	.label_484
	mov	rdx, rax
	nop	dword ptr [rax]
.label_490:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_490
	inc	r10
.label_484:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_493
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_486:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_486
	inc	r10
.label_493:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_492
	jmp	.label_489
.label_491:
	xor	r10d, r10d
.label_489:
	test	r8, r8
	je	.label_488
	cmp	qword ptr [rax], 0
	je	.label_488
	nop	dword ptr [rax]
.label_483:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_483
	inc	r10
.label_488:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_485
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_487
.label_485:
	xor	eax, eax
.label_487:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405520
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
	je	.label_494
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
.label_494:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40558c
	.globl sub_40558c
	.type sub_40558c, @function
sub_40558c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405590
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_495
	test	rdx, rdx
	je	.label_495
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_495:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4055fe
	.globl sub_4055fe
	.type sub_4055fe, @function
sub_4055fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405600
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
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
	#Procedure 0x40566f
	.globl sub_40566f
	.type sub_40566f, @function
sub_40566f:

	nop	
.label_496:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405675
	.globl sub_405675
	.type sub_405675, @function
sub_405675:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405680
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_496
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_497
	test	rax, rax
	je	.label_496
.label_497:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
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
	#Procedure 0x40571e
	.globl sub_40571e
	.type sub_40571e, @function
sub_40571e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405720
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
	#Procedure 0x405739
	.globl sub_405739
	.type sub_405739, @function
sub_405739:

	nop	dword ptr [rax]
.label_498:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405745
	.globl sub_405745
	.type sub_405745, @function
sub_405745:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40574b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_499
	test	rax, rax
	je	.label_498
.label_499:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405760
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
	#Procedure 0x40576f
	.globl sub_40576f
	.type sub_40576f, @function
sub_40576f:

	nop	
.label_500:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40577e
	.globl sub_40577e
	.type sub_40577e, @function
sub_40577e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405787
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_502
	.section	.text
	.align	16
	#Procedure 0x405798
	.globl sub_405798
	.type sub_405798, @function
sub_405798:

	nop	word ptr cs:[rax + rax]
.label_504:
	add	r14, 0x10
.label_502:
	cmp	r14, rax
	jae	.label_500
	cmp	qword ptr [r14], 0
	je	.label_504
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_505
	nop	word ptr cs:[rax + rax]
.label_501:
	test	cl, 1
	je	.label_506
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_506:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_501
.label_505:
	test	cl, cl
	je	.label_503
	mov	rdi, qword ptr [r14]
	call	rax
.label_503:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_504
	.section	.text
	.align	16
	#Procedure 0x405820

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
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
	#Procedure 0x405875
	.globl sub_405875
	.type sub_405875, @function
sub_405875:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405880
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
	jae	.label_507
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_510
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_521:
	cmp	qword ptr [rax], 0
	je	.label_516
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_520:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_520
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_516:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_518
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_517:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_517
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_518:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_521
.label_510:
	test	r8, r8
	je	.label_507
	cmp	qword ptr [rax], 0
	je	.label_507
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_508:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_508
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_507:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_509
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_519
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_512]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_513]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_514]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_515
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_511
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
	#Procedure 0x4059ef
	.globl sub_4059ef
	.type sub_4059ef, @function
sub_4059ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4059f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059f8
	.globl sub_4059f8
	.type sub_4059f8, @function
sub_4059f8:

	nop	dword ptr [rax + rax]
.label_522:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a05
	.globl sub_405a05
	.type sub_405a05, @function
sub_405a05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a10

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
	je	.label_522
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
	#Procedure 0x405aa0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_523
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_523
	test	byte ptr [rbx + 1], 1
	je	.label_523
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_523:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x405ad3
	.globl sub_405ad3
	.type sub_405ad3, @function
sub_405ad3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ae0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_525
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_527
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_345
	mov	ecx, OFFSET FLAT:label_454
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_526
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405b54
	.globl sub_405b54
	.type sub_405b54, @function
sub_405b54:

	nop	word ptr cs:[rax + rax]
.label_532:
	test	rdx, rdx
	je	.label_528
	mov	rax, qword ptr [rdx]
	jmp	.label_529
	.section	.text
	.align	16
	#Procedure 0x405b6a
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
	jae	.label_533
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_531:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_532
	test	rdx, rdx
	jne	.label_531
	jmp	.label_528
.label_533:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405baf
	.globl sub_405baf
	.type sub_405baf, @function
sub_405baf:

	nop	word ptr cs:[rax + rax]
.label_528:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_530:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_529
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_530
.label_529:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
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
	#Procedure 0x405c44
	.globl sub_405c44
	.type sub_405c44, @function
sub_405c44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c50

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
	jne	.label_538
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_542
	cmp	ecx, 0x55
	jne	.label_534
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_534
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_534
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_534
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_534
	cmp	byte ptr [rax + 5], 0
	jne	.label_534
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_540
	mov	eax, OFFSET FLAT:label_541
	jmp	.label_537
.label_542:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_534
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_534
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_534
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_534
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_534
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_534
	cmp	byte ptr [rax + 7], 0
	je	.label_539
.label_534:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_173
	mov	eax, OFFSET FLAT:label_98
.label_537:
	cmove	rax, rcx
.label_538:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_539:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_535
	mov	eax, OFFSET FLAT:label_536
	jmp	.label_537
	.section	.text
	.align	16
	#Procedure 0x405d15
	.globl sub_405d15
	.type sub_405d15, @function
sub_405d15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d20
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
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

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d37
	.globl sub_405d37
	.type sub_405d37, @function
sub_405d37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_543
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_543:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d75
	.globl sub_405d75
	.type sub_405d75, @function
sub_405d75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d80
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_544
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_545:
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
	jne	.label_545
.label_544:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405db3
	.globl sub_405db3
	.type sub_405db3, @function
sub_405db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_546
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_548
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_550
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_548
	mov	esi, OFFSET FLAT:label_549
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_551
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_551:
	mov	rbx, r14
.label_548:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_546:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_547
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405e61
	.globl sub_405e61
	.type sub_405e61, @function
sub_405e61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_553
	cmp	byte ptr [rax], 0x43
	jne	.label_555
	cmp	byte ptr [rax + 1], 0
	je	.label_552
.label_555:
	mov	esi, OFFSET FLAT:label_554
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_553
.label_552:
	xor	ebx, ebx
.label_553:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ea1
	.globl sub_405ea1
	.type sub_405ea1, @function
sub_405ea1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405eb0

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
	je	.label_561
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_561
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_557
	cmp	rsi, r14
	je	.label_584
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_571
	mov	rax, qword ptr [r12]
.label_556:
	test	rax, rax
	jne	.label_563
	jmp	.label_557
.label_584:
	mov	rax, r14
.label_563:
	xor	ebp, ebp
	test	r15, r15
	je	.label_567
	mov	qword ptr [r15], rax
	jmp	.label_567
.label_571:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_557
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_581:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_578
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_580
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_581
.label_557:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_582
	cvtsi2ss	xmm1, rax
	jmp	.label_586
.label_582:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_586:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_565
	cvtsi2ss	xmm0, rcx
	jmp	.label_573
.label_565:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_573:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_564
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_579
	ucomiss	xmm2, dword ptr [rip + label_24]
	jbe	.label_559
	movss	xmm3, dword ptr [rip + label_29]
	ucomiss	xmm3, xmm2
	jbe	.label_559
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_32]
	jbe	.label_559
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_559
	addss	xmm3, dword ptr [rip + label_24]
	ucomiss	xmm2, xmm3
	jbe	.label_559
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_44]
	ucomiss	xmm5, xmm4
	jb	.label_559
	ucomiss	xmm4, xmm3
	ja	.label_572
.label_559:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_574]
	jmp	.label_572
.label_579:
	mov	eax, OFFSET FLAT:default_tuning
.label_572:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_564
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_577
	mulss	xmm0, xmm2
.label_577:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_232]
	jae	.label_567
	movss	xmm1, dword ptr [rip + label_27]
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
	je	.label_567
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_561
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_564
	cmp	rsi, r14
	mov	rax, r14
	je	.label_560
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_583
	mov	rax, qword ptr [r12]
.label_560:
	test	rax, rax
	jne	.label_585
.label_564:
	cmp	qword ptr [r12], 0
	je	.label_558
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_562
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_566
.label_558:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_569]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_570
.label_562:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_567
.label_566:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_570:
	mov	ebp, 1
.label_567:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_578:
	mov	rax, r14
	jmp	.label_556
.label_580:
	mov	rax, qword ptr [rbp]
	jmp	.label_556
.label_583:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_564
	lea	rbp, [rbx + rbp + 8]
.label_576:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_568
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_575
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_576
	jmp	.label_564
.label_568:
	mov	rax, r14
	jmp	.label_560
.label_575:
	mov	rax, qword ptr [rbp]
	jmp	.label_560
.label_561:
	call	abort
.label_585:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4061e1
	.globl sub_4061e1
	.type sub_4061e1, @function
sub_4061e1:

	nop	word ptr cs:[rax + rax]
.label_588:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4061fc
	.globl sub_4061fc
	.type sub_4061fc, @function
sub_4061fc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406208

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_588
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_587
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_588
.label_587:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_588
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_589
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_589:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406270

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
	#Procedure 0x4062b2
	.globl sub_4062b2
	.type sub_4062b2, @function
sub_4062b2:

	nop	word ptr cs:[rax + rax]
.label_592:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4062c5
	.globl sub_4062c5
	.type sub_4062c5, @function
sub_4062c5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062cd
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
	je	.label_592
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
	#Procedure 0x406395
	.globl sub_406395
	.type sub_406395, @function
sub_406395:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a2
	.globl sub_4063a2
	.type sub_4063a2, @function
sub_4063a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063c6
	.globl sub_4063c6
	.type sub_4063c6, @function
sub_4063c6:

	nop	word ptr cs:[rax + rax]
