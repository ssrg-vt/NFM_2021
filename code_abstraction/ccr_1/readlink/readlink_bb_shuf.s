	.section	.text
	.align	16
	#Procedure 0x401539
	.globl sub_401539
	.type sub_401539, @function
sub_401539:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40153a
	.globl sub_40153a
	.type sub_40153a, @function
sub_40153a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401572
	.globl sub_401572
	.type sub_401572, @function
sub_401572:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015ba
	.globl sub_4015ba
	.type sub_4015ba, @function
sub_4015ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015dc
	.globl sub_4015dc
	.type sub_4015dc, @function
sub_4015dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015ed
	.globl sub_4015ed
	.type sub_4015ed, @function
sub_4015ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401606
	.globl sub_401606
	.type sub_401606, @function
sub_401606:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401610

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
	#Procedure 0x401659
	.globl sub_401659
	.type sub_401659, @function
sub_401659:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401660

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401665
	.globl sub_401665
	.type sub_401665, @function
sub_401665:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401670
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
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
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_9
	mov	rcx, qword ptr [rdi]
	jmp	.label_12
	.section	.text
	.align	16
	#Procedure 0x40168e
	.globl sub_40168e
	.type sub_40168e, @function
sub_40168e:

	nop	
.label_10:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401696
	.globl sub_401696
	.type sub_401696, @function
sub_401696:

	nop	dword ptr [rax]
.label_11:
	add	rcx, 0x10
.label_12:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_10
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_11
.label_9:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016b0
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
	#Procedure 0x4016c6
	.globl sub_4016c6
	.type sub_4016c6, @function
sub_4016c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016d0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016d9
	.globl sub_4016d9
	.type sub_4016d9, @function
sub_4016d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016e0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_13
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_14:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_14
.label_13:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40170e
	.globl sub_40170e
	.type sub_40170e, @function
sub_40170e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401710
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_15
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_17:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_17
.label_15:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_19
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_18]], OFFSET FLAT:slot0
.label_19:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_16
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_16:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017a1
	.globl sub_4017a1
	.type sub_4017a1, @function
sub_4017a1:

	nop	word ptr cs:[rax + rax]
.label_24:
	mov	rcx, qword ptr [rdx]
.label_22:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017be
	.globl sub_4017be
	.type sub_4017be, @function
sub_4017be:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017c8
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
.label_23:
	cmp	qword ptr [rcx], rbx
	jne	.label_20
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_24
.label_20:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_23
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_21:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_22
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_21
	jmp	.label_22
	.section	.text
	.align	16
	#Procedure 0x401820

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401829
	.globl sub_401829
	.type sub_401829, @function
sub_401829:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401830
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
	#Procedure 0x401857
	.globl sub_401857
	.type sub_401857, @function
sub_401857:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401860

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401867
	.globl sub_401867
	.type sub_401867, @function
sub_401867:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401870

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
	#Procedure 0x4018a0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018aa
	.globl sub_4018aa
	.type sub_4018aa, @function
sub_4018aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_27
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_28]]
.label_29:
	ret	
.label_27:
	xor	eax, eax
	jmp	.label_29
	.section	.text
	.align	16
	#Procedure 0x4018c6
	.globl sub_4018c6
	.type sub_4018c6, @function
sub_4018c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

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
	je	.label_32
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_31:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_37
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_35
.label_37:
	cmp	r13, r12
	jb	.label_30
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_33
	add	r12, r12
	jmp	.label_34
	.section	.text
	.align	16
	#Procedure 0x401963
	.globl sub_401963
	.type sub_401963, @function
sub_401963:

	nop	word ptr cs:[rax + rax]
.label_33:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_38
.label_34:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_31
	jmp	.label_32
.label_30:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_32
.label_38:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_36
.label_35:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_36:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_32:
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
	#Procedure 0x4019d1
	.globl sub_4019d1
	.type sub_4019d1, @function
sub_4019d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0

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
	je	.label_39
	test	rbx, rbx
	je	.label_39
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_41:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_40
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_40
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_41
	jmp	.label_39
.label_40:
	mov	r15, qword ptr [rbx]
.label_39:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_44:
	inc	rax
	mov	sil, dl
.label_46:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_44
	test	cl, cl
	je	.label_45
	mov	edx, esi
	and	dl, 1
	je	.label_43
	xor	esi, esi
.label_43:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_44
.label_45:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a6b
	.globl sub_401a6b
	.type sub_401a6b, @function
sub_401a6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_42:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_42
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_46
	.section	.text
	.align	16
	#Procedure 0x401a91
	.globl sub_401a91
	.type sub_401a91, @function
sub_401a91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401aa0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_47
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_52:
	cmp	qword ptr [rsi], 0
	je	.label_50
	mov	rax, rsi
	nop	dword ptr [rax]
.label_48:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_48
	inc	rdx
.label_50:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_52
.label_47:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_49
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_51
.label_49:
	xor	eax, eax
.label_51:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401af9
	.globl sub_401af9
	.type sub_401af9, @function
sub_401af9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b00
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b09
	.globl sub_401b09
	.type sub_401b09, @function
sub_401b09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b10
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_53
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_53
.label_54:
	ret	
.label_53:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_54
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b36
	.globl sub_401b36
	.type sub_401b36, @function
sub_401b36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b40
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
	je	.label_62
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_57
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_60
	cvtsi2ss	xmm0, rax
	jmp	.label_65
.label_64:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_68:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_66
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_55
.label_58:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_63:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_57
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_64
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_68
.label_60:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_65:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_58
	cvtsi2ss	xmm1, rcx
	jmp	.label_63
.label_66:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_55:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_57
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_56
	mulss	xmm0, dword ptr [rcx + 8]
.label_56:
	movss	xmm1,  dword ptr [dword ptr [rip + label_61]]
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
	jne	.label_57
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_59
	nop	dword ptr [rax + rax]
.label_67:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_67
.label_59:
	mov	qword ptr [r15 + 0x48], 0
.label_57:
	mov	rax, r14
.label_62:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cc6
	.globl sub_401cc6
	.type sub_401cc6, @function
sub_401cc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cd0

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
.label_152:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_124
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_159]]
.label_645:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_163
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_106
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_646:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_177
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_177
	xor	r14d, r14d
.label_72:
	cmp	r14, r11
	jae	.label_69
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_69:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_72
.label_177:
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
	jmp	.label_78
.label_638:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_78
.label_641:
	mov	al, 1
.label_639:
	mov	r12b, 1
.label_642:
	test	r12b, 1
	mov	cl, 1
	je	.label_94
	mov	ecx, eax
.label_94:
	mov	al, cl
.label_640:
	test	r12b, 1
	jne	.label_97
	test	r11, r11
	je	.label_131
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_131:
	mov	r14d, 1
	jmp	.label_104
.label_97:
	xor	r14d, r14d
.label_104:
	mov	ecx, OFFSET FLAT:label_106
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_78
.label_643:
	test	r12b, 1
	jne	.label_116
	test	r11, r11
	je	.label_100
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_100:
	mov	r14d, 1
	jmp	.label_113
.label_644:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_78
.label_116:
	xor	r14d, r14d
.label_113:
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_78:
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
	jmp	.label_136
	.section	.text
	.align	16
	#Procedure 0x401fac
	.globl sub_401fac
	.type sub_401fac, @function
sub_401fac:

	nop	dword ptr [rax]
.label_76:
	inc	rsi
.label_136:
	cmp	rbp, -1
	je	.label_166
	cmp	rsi, rbp
	jne	.label_87
	jmp	.label_170
	.section	.text
	.align	16
	#Procedure 0x401fc3
	.globl sub_401fc3
	.type sub_401fc3, @function
sub_401fc3:

	nop	word ptr cs:[rax + rax]
.label_166:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_170
.label_87:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_178
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_164
	cmp	rbp, -1
	jne	.label_164
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
.label_164:
	cmp	rbx, rbp
	jbe	.label_77
.label_178:
	xor	r8d, r8d
.label_90:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_79
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_82]]
.label_601:
	test	rsi, rsi
	jne	.label_74
	jmp	.label_88
	.section	.text
	.align	16
	#Procedure 0x40205e
	.globl sub_40205e
	.type sub_40205e, @function
sub_40205e:

	nop	
.label_77:
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
	jne	.label_102
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_90
	jmp	.label_117
.label_102:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_90
.label_605:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_126
	test	rsi, rsi
	jne	.label_128
	cmp	rbp, 1
	je	.label_88
	xor	r13d, r13d
	jmp	.label_83
.label_594:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_135
	cmp	byte ptr [rsp + 7], 0
	jne	.label_70
	cmp	r12d, 2
	jne	.label_119
	mov	eax, r9d
	and	al, 1
	jne	.label_119
	cmp	r14, r11
	jae	.label_129
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_129:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_142
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_142:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_146
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_146:
	add	r14, 3
	mov	r9b, 1
.label_119:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_151
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_151:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_153
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_153
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_153
	cmp	r14, r11
	jae	.label_171
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_171:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_139
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_139:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_83
.label_595:
	mov	bl, 0x62
	jmp	.label_175
.label_596:
	mov	cl, 0x74
	jmp	.label_111
.label_597:
	mov	bl, 0x76
	jmp	.label_175
.label_598:
	mov	bl, 0x66
	jmp	.label_175
.label_599:
	mov	cl, 0x72
	jmp	.label_111
.label_602:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_183
	cmp	byte ptr [rsp + 7], 0
	jne	.label_70
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
	jae	.label_73
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_73:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_85
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_85:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_89
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_89:
	add	r14, 3
	xor	r9d, r9d
.label_183:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_83
.label_603:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_101
	cmp	r12d, 2
	jne	.label_74
	cmp	byte ptr [rsp + 7], 0
	je	.label_74
	jmp	.label_70
.label_604:
	cmp	r12d, 2
	jne	.label_112
	cmp	byte ptr [rsp + 7], 0
	jne	.label_70
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_75
.label_79:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_121
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
.label_122:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_105
	test	r8b, r8b
	je	.label_105
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_83
.label_126:
	test	rsi, rsi
	jne	.label_84
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_84
.label_88:
	mov	dl, 1
.label_600:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_70
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_83:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_160
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_161
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x4023a4
	.globl sub_4023a4
	.type sub_4023a4, @function
sub_4023a4:

	nop	word ptr cs:[rax + rax]
.label_160:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_165
.label_161:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_167
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_75
	jmp	.label_181
	.section	.text
	.align	16
	#Procedure 0x4023ed
	.globl sub_4023ed
	.type sub_4023ed, @function
sub_4023ed:

	nop	dword ptr [rax]
.label_165:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_181
	jmp	.label_75
.label_167:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_181
.label_135:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_76
	xor	r15d, r15d
	jmp	.label_74
.label_112:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_111
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_75
.label_111:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_70
.label_175:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_83
	nop	word ptr cs:[rax + rax]
.label_181:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_70
	cmp	r12d, 2
	jne	.label_95
	mov	eax, r9d
	and	al, 1
	jne	.label_95
	cmp	r14, r11
	jae	.label_98
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_98:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_147
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_147:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_108
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_108:
	add	r14, 3
	mov	r9b, 1
.label_95:
	cmp	r14, r11
	jae	.label_115
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_115:
	inc	r14
	jmp	.label_172
.label_121:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_123
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_123:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_132:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_141
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_144
	cmp	rbp, -2
	je	.label_174
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_149
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_180:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_86
	bt	rsi, rdx
	jb	.label_117
.label_86:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_180
.label_149:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_169
	xor	r13d, r13d
.label_169:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_132
	jmp	.label_122
.label_153:
	xor	r13d, r13d
	jmp	.label_83
.label_84:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_83
.label_101:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_74
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_74
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_74
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_137
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_155
	cmp	byte ptr [rsp + 7], 0
	jne	.label_70
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_91
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_91:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_118
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_118:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_103
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_103:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_107
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_107:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_83
.label_74:
	xor	eax, eax
.label_128:
	xor	r13d, r13d
	jmp	.label_83
.label_105:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_120
	.section	.text
	.align	16
	#Procedure 0x4026d3
	.globl sub_4026d3
	.type sub_4026d3, @function
sub_4026d3:

	nop	word ptr cs:[rax + rax]
.label_71:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_120:
	test	r8b, r8b
	je	.label_157
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_130
	cmp	r14, r11
	jae	.label_133
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_133:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_130
	.section	.text
	.align	16
	#Procedure 0x40271c
	.globl sub_40271c
	.type sub_40271c, @function
sub_40271c:

	nop	dword ptr [rax]
.label_157:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_117
	cmp	r12d, 2
	jne	.label_140
	mov	eax, r9d
	and	al, 1
	jne	.label_140
	cmp	r14, r11
	jae	.label_143
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_143:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_145
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_145:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_150
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_150:
	add	r14, 3
	mov	r9b, 1
.label_140:
	cmp	r14, r11
	jae	.label_114
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_114:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_156
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_156:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_162
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_162:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_130:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_75
	test	r9b, 1
	je	.label_127
	mov	ebx, eax
	and	bl, 1
	jne	.label_127
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_179
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_179:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_176
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_176:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_127:
	cmp	r14, r11
	jae	.label_71
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_71
	.section	.text
	.align	16
	#Procedure 0x402823
	.globl sub_402823
	.type sub_402823, @function
sub_402823:

	nop	word ptr cs:[rax + rax]
.label_75:
	test	r9b, 1
	je	.label_80
	and	al, 1
	jne	.label_80
	cmp	r14, r11
	jae	.label_81
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_81:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_110
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_110:
	add	r14, 2
	xor	r9d, r9d
.label_80:
	mov	ebx, r15d
.label_172:
	cmp	r14, r11
	jae	.label_93
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_93:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_76
.label_144:
	xor	r13d, r13d
.label_141:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_122
.label_174:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_109
	mov	rsi, qword ptr [rsp + 0x50]
.label_92:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_173
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_92
	xor	r13d, r13d
	jmp	.label_122
.label_109:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_122
.label_173:
	xor	r13d, r13d
	jmp	.label_122
.label_137:
	xor	r13d, r13d
	jmp	.label_83
.label_155:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_83
	.section	.text
	.align	16
	#Procedure 0x4028f8
	.globl sub_4028f8
	.type sub_4028f8, @function
sub_4028f8:

	nop	dword ptr [rax + rax]
.label_170:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_134
	or	dl, al
	je	.label_117
.label_134:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_138
	or	dl, al
	jne	.label_138
	test	r10b, 1
	jne	.label_148
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_138
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_152
.label_138:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_154
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_158
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_158
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_168:
	cmp	r14, r11
	jae	.label_182
	mov	byte ptr [rcx + r14], al
.label_182:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_168
	jmp	.label_158
.label_70:
	mov	qword ptr [rsp + 0x20], rbp
.label_117:
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
.label_96:
	mov	r14, rax
.label_99:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_148:
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
	jmp	.label_96
.label_154:
	mov	rcx, qword ptr [rsp + 8]
.label_158:
	cmp	r14, r11
	jae	.label_99
	mov	byte ptr [rcx + r14], 0
	jmp	.label_99
.label_124:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402a8c
	.globl sub_402a8c
	.type sub_402a8c, @function
sub_402a8c:

	nop	dword ptr [rax]
.label_189:
	add	r14, 0x10
.label_190:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_187
	cmp	qword ptr [r14], 0
	je	.label_189
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_184
	nop	word ptr cs:[rax + rax]
.label_186:
	test	cl, 1
	je	.label_185
	mov	rdi, qword ptr [rbx]
	call	rax
.label_185:
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
	jne	.label_186
.label_184:
	test	cl, cl
	je	.label_188
	mov	rdi, qword ptr [r14]
	call	rax
.label_188:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_189
	.section	.text
	.align	16
	#Procedure 0x402b05
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x402b12
	.globl sub_402b12
	.type sub_402b12, @function
sub_402b12:

	nop	dword ptr [rax]
.label_187:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b23
	.globl sub_402b23
	.type sub_402b23, @function
sub_402b23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b30
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b37
	.globl sub_402b37
	.type sub_402b37, @function
sub_402b37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b40
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
	#Procedure 0x402b54
	.globl sub_402b54
	.type sub_402b54, @function
sub_402b54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_191
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_192
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b85
	.globl sub_402b85
	.type sub_402b85, @function
sub_402b85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90

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
	#Procedure 0x402bbd
	.globl sub_402bbd
	.type sub_402bbd, @function
sub_402bbd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402bc0

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
	#Procedure 0x402bd3
	.globl sub_402bd3
	.type sub_402bd3, @function
sub_402bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402be0

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
	mov	rcx,  qword ptr [word ptr [rip + label_193]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_194]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_195]]
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
	#Procedure 0x402c4d
	.globl sub_402c4d
	.type sub_402c4d, @function
sub_402c4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x402c5d
	.globl sub_402c5d
	.type sub_402c5d, @function
sub_402c5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x402c67
	.globl sub_402c67
	.type sub_402c67, @function
sub_402c67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c70
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x402c7a
	.globl sub_402c7a
	.type sub_402c7a, @function
sub_402c7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80

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
	je	.label_196
	mov	qword ptr [rax], rbx
.label_196:
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
	#Procedure 0x402d6c
	.globl sub_402d6c
	.type sub_402d6c, @function
sub_402d6c:

	nop	dword ptr [rax]
.label_198:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_197
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_197:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402da4
	.globl sub_402da4
	.type sub_402da4, @function
sub_402da4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402da6

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
	jne	.label_199
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_199
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_198
.label_199:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x402de0
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
	#Procedure 0x402def
	.globl sub_402def
	.type sub_402def, @function
sub_402def:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402df0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_200
	test	rsi, rsi
	mov	ecx, 1
	je	.label_201
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_201
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_200:
	mov	ecx, 1
.label_201:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402e3b
	.globl sub_402e3b
	.type sub_402e3b, @function
sub_402e3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e40
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
	#Procedure 0x402e54
	.globl sub_402e54
	.type sub_402e54, @function
sub_402e54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e60

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402e6e
	.globl sub_402e6e
	.type sub_402e6e, @function
sub_402e6e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402e70

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
	js	.label_205
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_208
	cmp	r12d, 0x7fffffff
	je	.label_203
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
	jne	.label_206
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_206:
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
.label_208:
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
	jbe	.label_204
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_207
.label_204:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_202
	mov	rdi, r14
	call	free
.label_202:
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
.label_207:
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
.label_205:
	call	abort
.label_203:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40302d
	.globl sub_40302d
	.type sub_40302d, @function
sub_40302d:

	nop	dword ptr [rax]
.label_211:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_209
.label_210:
	mov	eax, 1
	test	bpl, bpl
	je	.label_209
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
.label_209:
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
	#Procedure 0x403078
	.globl sub_403078
	.type sub_403078, @function
sub_403078:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40307b

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
	je	.label_211
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_210
	jmp	.label_209
	.section	.text
	.align	16
	#Procedure 0x4030b0

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
	#Procedure 0x4030c7
	.globl sub_4030c7
	.type sub_4030c7, @function
sub_4030c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030d0
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
	#Procedure 0x4030e4
	.globl sub_4030e4
	.type sub_4030e4, @function
sub_4030e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030f0

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
	je	.label_212
	cmp	r15, -2
	jb	.label_212
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_212
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_212:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403146
	.globl sub_403146
	.type sub_403146, @function
sub_403146:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_213
	ret	
.label_213:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x403163
	.globl sub_403163
	.type sub_403163, @function
sub_403163:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170

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
	#Procedure 0x403185
	.globl sub_403185
	.type sub_403185, @function
sub_403185:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403190
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
	#Procedure 0x403202
	.globl sub_403202
	.type sub_403202, @function
sub_403202:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403210
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403218
	.globl sub_403218
	.type sub_403218, @function
sub_403218:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403220

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_214
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_216:
	cmp	qword ptr [rcx], 0
	je	.label_215
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_217:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_217
	cmp	rsi, rax
	cmova	rax, rsi
.label_215:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_216
.label_214:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40326d
	.globl sub_40326d
	.type sub_40326d, @function
sub_40326d:

	nop	dword ptr [rax]
.label_222:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_218
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403290
	.globl sub_403290
	.type sub_403290, @function
sub_403290:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40329f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_222
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_220
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_220
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_219
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_219:
	mov	rbx, r14
.label_220:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403320

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_224
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
.label_224:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403355
	.globl sub_403355
	.type sub_403355, @function
sub_403355:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403360

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_225
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_226:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_225
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_226
.label_225:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033ac
	.globl sub_4033ac
	.type sub_4033ac, @function
sub_4033ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0
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
	jae	.label_227
	xor	ebx, ebx
.label_229:
	cmp	qword ptr [r13], 0
	je	.label_228
	test	r13, r13
	je	.label_228
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_230:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_227
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_230
.label_228:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_229
.label_227:
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
	#Procedure 0x403427
	.globl sub_403427
	.type sub_403427, @function
sub_403427:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403430

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_231
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_232]]
	jbe	.label_233
	movss	xmm1,  dword ptr [dword ptr [rip + label_236]]
	ucomiss	xmm1, xmm0
	jbe	.label_233
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_235]]
	jbe	.label_233
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_233
	addss	xmm1,  dword ptr [dword ptr [rip + label_232]]
	ucomiss	xmm0, xmm1
	jbe	.label_233
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_234]]
	ucomiss	xmm2, xmm0
	jb	.label_233
	ucomiss	xmm0, xmm1
	ja	.label_231
.label_233:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_231:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034a4
	.globl sub_4034a4
	.type sub_4034a4, @function
sub_4034a4:

	nop	word ptr cs:[rax + rax]
.label_238:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4034b5
	.globl sub_4034b5
	.type sub_4034b5, @function
sub_4034b5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034bc

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	jne	.label_239
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_238
.label_239:
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	seen_file
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.label_237
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	record_file
	xor	eax, eax
.label_237:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403520
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40352a
	.globl sub_40352a
	.type sub_40352a, @function
sub_40352a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403530
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_240
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_240:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403548
	.globl sub_403548
	.type sub_403548, @function
sub_403548:

	nop	dword ptr [rax + rax]
.label_245:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_244:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_61]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_241]]
	jae	.label_242
.label_243:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_242:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035b7
	.globl sub_4035b7
	.type sub_4035b7, @function
sub_4035b7:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4035b9

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_243
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_245
	cvtsi2ss	xmm0, rdi
	jmp	.label_244
	.section	.text
	.align	16
	#Procedure 0x4035d0

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
	#Procedure 0x403606
	.globl sub_403606
	.type sub_403606, @function
sub_403606:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403610

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
	je	.label_255
	mov	edx, OFFSET FLAT:label_261
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_248
.label_255:
	mov	edx, OFFSET FLAT:label_250
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_248:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
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
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_256
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_257]]
.label_549:
	add	rsp, 8
	jmp	.label_249
.label_256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
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
	jmp	.label_249
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
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
.label_551:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
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
.label_552:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
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
.label_553:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
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
	jmp	.label_249
.label_554:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
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
	jmp	.label_249
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
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
	jmp	.label_249
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
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
	jmp	.label_249
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
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
	jmp	.label_249
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
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
.label_249:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403968
	.globl sub_403968
	.type sub_403968, @function
sub_403968:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_265
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_265:
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
	#Procedure 0x4039f3
	.globl sub_4039f3
	.type sub_4039f3, @function
sub_4039f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a00

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
	je	.label_268
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_266
	jmp	.label_267
.label_268:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_267
.label_266:
	mov	eax, 1
	test	bpl, bpl
	je	.label_267
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
.label_267:
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
	#Procedure 0x403a88
	.globl sub_403a88
	.type sub_403a88, @function
sub_403a88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a90

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
	je	.label_269
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_271
	jmp	.label_270
.label_269:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_270
.label_271:
	mov	eax, 1
	test	bpl, bpl
	je	.label_270
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
.label_270:
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
	#Procedure 0x403b09
	.globl sub_403b09
	.type sub_403b09, @function
sub_403b09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b10

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
	je	.label_274
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_273
	jmp	.label_272
.label_274:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_272
.label_273:
	mov	eax, 1
	test	bpl, bpl
	je	.label_272
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
.label_272:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b73
	.globl sub_403b73
	.type sub_403b73, @function
sub_403b73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b80

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
	je	.label_277
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_275
	jmp	.label_276
.label_277:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_276
.label_275:
	mov	eax, 1
	test	bpl, bpl
	je	.label_276
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_276:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bdf
	.globl sub_403bdf
	.type sub_403bdf, @function
sub_403bdf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403be0

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
	je	.label_278
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_279
.label_278:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_279
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_279
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_279:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c29
	.globl sub_403c29
	.type sub_403c29, @function
sub_403c29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c30

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
	je	.label_283
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_282
	jmp	.label_281
.label_283:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_281
.label_282:
	mov	eax, 1
	test	bpl, bpl
	je	.label_281
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_281:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c75
	.globl sub_403c75
	.type sub_403c75, @function
sub_403c75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c80

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_286
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_285
	jmp	.label_284
.label_286:
	mov	eax, 1
	test	cl, cl
	je	.label_284
.label_285:
	xor	eax, eax
.label_284:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403caf
	.globl sub_403caf
	.type sub_403caf, @function
sub_403caf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403cb0

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
	#Procedure 0x403cc4
	.globl sub_403cc4
	.type sub_403cc4, @function
sub_403cc4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cd0
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
	#Procedure 0x403ce3
	.globl sub_403ce3
	.type sub_403ce3, @function
sub_403ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0
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
	#Procedure 0x403cfd
	.globl sub_403cfd
	.type sub_403cfd, @function
sub_403cfd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d00

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
	je	.label_287
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_298
	test	rbx, rbx
	je	.label_289
	mov	qword ptr [rbx], rax
	jmp	.label_289
.label_298:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_288
	cvtsi2ss	xmm0, rcx
	jmp	.label_293
.label_288:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_293:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_296
	cvtsi2ss	xmm1, rax
	jmp	.label_301
.label_296:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_301:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_291
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_295
	cvtsi2ss	xmm2, rcx
	jmp	.label_299
.label_295:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_299:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_290
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_294
.label_290:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_294:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_291
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_297
	mulss	xmm0, xmm1
.label_297:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_241]]
	jae	.label_289
	movss	xmm1,  dword ptr [dword ptr [rip + label_61]]
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
	je	.label_289
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_287
.label_291:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_300
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_289
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_292
.label_300:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_292:
	mov	ebp, 1
.label_289:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_287:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403ed2
	.globl sub_403ed2
	.type sub_403ed2, @function
sub_403ed2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_304
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_302
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_302
.label_304:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_306
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_306:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_302:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_305
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_305:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_307
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
	#Procedure 0x403fa0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_308
	nop	
.label_320:
	mov	edi, OFFSET FLAT:label_313
	call	strcmp
	test	eax, eax
	je	.label_318
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_320
.label_318:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_313
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_311
	mov	ecx, OFFSET FLAT:label_312
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_310
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_310
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_310:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_313
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_312
	mov	ecx, OFFSET FLAT:label_313
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_309
	mov	ecx, OFFSET FLAT:label_191
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
	#Procedure 0x4040ba
	.globl sub_4040ba
	.type sub_4040ba, @function
sub_4040ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_321
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_324
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_322
.label_321:
	test	rcx, rcx
	jne	.label_325
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_325:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_323
.label_322:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_323:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404134
	.globl sub_404134
	.type sub_404134, @function
sub_404134:

	nop	dword ptr [rax]
.label_324:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404140

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
	jmp	.label_326
	.section	.text
	.align	16
	#Procedure 0x40415e
	.globl sub_40415e
	.type sub_40415e, @function
sub_40415e:

	nop	
.label_327:
	add	rbx, 2
.label_326:
	cmp	rbx, -1
	je	.label_328
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_327
	mov	r14, rbx
.label_328:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404184
	.globl sub_404184
	.type sub_404184, @function
sub_404184:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404190

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
	jne	.label_335
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
	je	.label_329
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_333
	mov	eax, OFFSET FLAT:label_334
	jmp	.label_332
.label_336:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_125
	mov	eax, OFFSET FLAT:label_106
.label_332:
	cmove	rax, rcx
.label_335:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40420f
	.globl sub_40420f
	.type sub_40420f, @function
sub_40420f:

	nop	dword ptr [rax]
.label_329:
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
	je	.label_336
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_330
	mov	eax, OFFSET FLAT:label_331
	jmp	.label_332
	.section	.text
	.align	16
	#Procedure 0x404250
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
	#Procedure 0x40425f
	.globl sub_40425f
	.type sub_40425f, @function
sub_40425f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404260
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
	#Procedure 0x40426d
	.globl sub_40426d
	.type sub_40426d, @function
sub_40426d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404270
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
	#Procedure 0x404284
	.globl sub_404284
	.type sub_404284, @function
sub_404284:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404290

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40429a
	.globl sub_40429a
	.type sub_40429a, @function
sub_40429a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x4042ad
	.globl sub_4042ad
	.type sub_4042ad, @function
sub_4042ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0
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
	#Procedure 0x4042c0

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
	#Procedure 0x4042f9
	.globl sub_4042f9
	.type sub_4042f9, @function
sub_4042f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404300
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
	#Procedure 0x404311
	.globl sub_404311
	.type sub_404311, @function
sub_404311:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404320
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
	#Procedure 0x404334
	.globl sub_404334
	.type sub_404334, @function
sub_404334:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404340
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_337
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_337:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40435e
	.globl sub_40435e
	.type sub_40435e, @function
sub_40435e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404360

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_338
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_338
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_338:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404386
	.globl sub_404386
	.type sub_404386, @function
sub_404386:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404390

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
	mov	esi, OFFSET FLAT:label_191
	call	setlocale
	mov	edi, OFFSET FLAT:label_347
	mov	esi, OFFSET FLAT:label_348
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_347
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r12d, 0xffffffff
	xor	ecx, ecx
.label_578:
	mov	ebx, ecx
	mov	ebp, r12d
	jmp	.label_352
.label_574:
	mov	ebp, 2
	nop	
.label_352:
	mov	r12d, ebp
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x4043f5
	.globl sub_4043f5
	.type sub_4043f5, @function
sub_4043f5:

	nop	word ptr cs:[rax + rax]
.label_576:
	mov	byte ptr [byte ptr [rip + verbose]],  0
.label_349:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_339
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_344
	add	eax, -0x65
	cmp	eax, 0x15
	ja	.label_341
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_346]]
.label_575:
	mov	byte ptr [byte ptr [rip + no_newline]],  1
	jmp	.label_349
.label_577:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_349
.label_573:
	mov	ebp, 1
	jmp	.label_352
.label_344:
	cmp	eax, -1
	jne	.label_355
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r13d
	jge	.label_356
	mov	ecx, r13d
	sub	ecx, eax
	cmp	ecx, 2
	jl	.label_340
	cmp	byte ptr [byte ptr [rip + no_newline]],  1
	jne	.label_360
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_360:
	mov	byte ptr [byte ptr [rip + no_newline]],  0
.label_340:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	dword ptr [rsp], 0
	cmp	eax, r13d
	jge	.label_359
	xor	ecx, ecx
	test	bl, bl
	mov	edx, 0xa
	cmovne	edx, ecx
	mov	dword ptr [rsp + 4], edx
	mov	dword ptr [rsp], 0
	nop	word ptr cs:[rax + rax]
.label_343:
	cmp	r12d, -1
	cdqe	
	mov	rbp, qword ptr [r14 + rax*8]
	je	.label_358
	mov	rdi, rbp
	mov	esi, r12d
	call	canonicalize_filename_mode
	jmp	.label_361
	.section	.text
	.align	16
	#Procedure 0x4044f9
	.globl sub_4044f9
	.type sub_4044f9, @function
sub_4044f9:

	nop	dword ptr [rax]
.label_358:
	mov	esi, 0x3f
	mov	rdi, rbp
	call	areadlink_with_size
.label_361:
	mov	r15, rax
	test	r15, r15
	je	.label_353
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r15
	call	fputs_unlocked
	movzx	eax,  byte ptr [byte ptr [rip + no_newline]]
	test	al, al
	jne	.label_345
	mov	edi, dword ptr [rsp + 4]
	call	putchar_unlocked
.label_345:
	mov	rdi, r15
	call	free
	jmp	.label_350
	.section	.text
	.align	16
	#Procedure 0x404542
	.globl sub_404542
	.type sub_404542, @function
sub_404542:

	nop	word ptr cs:[rax + rax]
.label_353:
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_354
	mov	dword ptr [rsp], 1
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_350
.label_354:
	mov	dword ptr [rsp], 1
	nop	word ptr cs:[rax + rax]
.label_350:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r13d
	jl	.label_343
.label_359:
	mov	eax, dword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_355:
	cmp	eax, 0xffffff7d
	je	.label_351
	cmp	eax, 0xffffff7e
	jne	.label_341
	xor	edi, edi
	call	usage
.label_351:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_313
	mov	edx, OFFSET FLAT:label_311
	mov	r8d, OFFSET FLAT:label_357
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_341:
	mov	edi, 1
	call	usage
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
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
	#Procedure 0x404643
	.globl sub_404643
	.type sub_404643, @function
sub_404643:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404650
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404657
	.globl sub_404657
	.type sub_404657, @function
sub_404657:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404660

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_363
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_363:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
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
	#Procedure 0x40477b
	.globl sub_40477b
	.type sub_40477b, @function
sub_40477b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404780

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
	#Procedure 0x4047a6
	.globl sub_4047a6
	.type sub_4047a6, @function
sub_4047a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047b0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_372:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_371
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_372
.label_371:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047d6
	.globl sub_4047d6
	.type sub_4047d6, @function
sub_4047d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047e0

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
	je	.label_373
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_373:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40480c
	.globl sub_40480c
	.type sub_40480c, @function
sub_40480c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404810

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x404819
	.globl sub_404819
	.type sub_404819, @function
sub_404819:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404820

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
	mov	rax,  qword ptr [word ptr [rip + label_193]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_194]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_195]]
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
	#Procedure 0x404888
	.globl sub_404888
	.type sub_404888, @function
sub_404888:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404890
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_374
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_375
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_375:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048b8
	.globl sub_4048b8
	.type sub_4048b8, @function
sub_4048b8:

	nop	dword ptr [rax + rax]
.label_374:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_376
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_376:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048de
	.globl sub_4048de
	.type sub_4048de, @function
sub_4048de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4048e0

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
	#Procedure 0x404917
	.globl sub_404917
	.type sub_404917, @function
sub_404917:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404920

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404925
	.globl sub_404925
	.type sub_404925, @function
sub_404925:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404930

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
	je	.label_377
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
.label_377:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404982
	.globl sub_404982
	.type sub_404982, @function
sub_404982:

	nop	word ptr cs:[rax + rax]
.label_380:
	add	r14, 0x10
.label_383:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_381
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_380
	nop	word ptr cs:[rax + rax]
.label_382:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_382
	jmp	.label_380
.label_385:
	mov	r14, qword ptr [r15]
	jmp	.label_383
	.section	.text
	.align	16
	#Procedure 0x4049c8
	.globl sub_4049c8
	.type sub_4049c8, @function
sub_4049c8:

	nop	word ptr [rax + rax]
.label_381:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_379
	nop	dword ptr [rax]
.label_378:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_378
.label_379:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x404a04
	.globl sub_404a04
	.type sub_404a04, @function
sub_404a04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a0e

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_385
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_385
	mov	r14, qword ptr [r15]
	jmp	.label_384
	.section	.text
	.align	16
	#Procedure 0x404a29
	.globl sub_404a29
	.type sub_404a29, @function
sub_404a29:

	nop	dword ptr [rax + rax]
.label_387:
	add	r14, 0x10
.label_384:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_385
	cmp	qword ptr [r14], 0
	je	.label_387
	test	r14, r14
	je	.label_387
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_386:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_386
	jmp	.label_387
	.section	.text
	.align	16
	#Procedure 0x404a60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a68
	.globl sub_404a68
	.type sub_404a68, @function
sub_404a68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a70

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a7a
	.globl sub_404a7a
	.type sub_404a7a, @function
sub_404a7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a80
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
	mov	edx, OFFSET FLAT:label_388
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_393
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_389]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_390]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_391]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_392
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_394
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
	#Procedure 0x404b6c
	.globl sub_404b6c
	.type sub_404b6c, @function
sub_404b6c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b70

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
	#Procedure 0x404b88
	.globl sub_404b88
	.type sub_404b88, @function
sub_404b88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b90

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
	jne	.label_396
	mov	qword ptr [rsp + 0x10], r15
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_400
.label_396:
	xor	ebp, ebp
.label_395:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_400:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_399
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_399:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_401
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_401:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_397
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_398
.label_397:
	xor	ebp, ebp
.label_398:
	mov	rdi, rbx
	call	free
	jmp	.label_395
	.section	.text
	.align	16
	#Procedure 0x404cca
	.globl sub_404cca
	.type sub_404cca, @function
sub_404cca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_402
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_403:
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
	jne	.label_403
.label_402:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d03
	.globl sub_404d03
	.type sub_404d03, @function
sub_404d03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d19
	.globl sub_404d19
	.type sub_404d19, @function
sub_404d19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d20
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
	#Procedure 0x404d39
	.globl sub_404d39
	.type sub_404d39, @function
sub_404d39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d40

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
	jae	.label_404
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_411:
	cmp	qword ptr [r15], 0
	je	.label_408
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_413
	nop	word ptr cs:[rax + rax]
.label_407:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_409
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_410
	.section	.text
	.align	16
	#Procedure 0x404db6
	.globl sub_404db6
	.type sub_404db6, @function
sub_404db6:

	nop	word ptr cs:[rax + rax]
.label_409:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_410:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_407
.label_413:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_408
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_412
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_405
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_406
.label_412:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_406:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_408:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_411
	mov	al, 1
.label_404:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_405:
	xor	eax, eax
	jmp	.label_404
	.section	.text
	.align	16
	#Procedure 0x404e55
	.globl sub_404e55
	.type sub_404e55, @function
sub_404e55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e60
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
	#Procedure 0x404e6f
	.globl sub_404e6f
	.type sub_404e6f, @function
sub_404e6f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404e70
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e7a
	.globl sub_404e7a
	.type sub_404e7a, @function
sub_404e7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e80
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_414
	call	rpl_calloc
	test	rax, rax
	je	.label_414
	pop	rcx
	ret	
.label_414:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404ea6
	.globl sub_404ea6
	.type sub_404ea6, @function
sub_404ea6:

	nop	word ptr cs:[rax + rax]
.label_415:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ec0
	.globl sub_404ec0
	.type sub_404ec0, @function
sub_404ec0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ece

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_415
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ee0

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
	je	.label_419
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_417
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_419
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
	je	.label_416
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
	jmp	.label_417
.label_418:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404fc0
	.globl sub_404fc0
	.type sub_404fc0, @function
sub_404fc0:

	nop	dword ptr [rax + rax]
.label_416:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_418
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_418
	mov	rdi, qword ptr [rsp]
	call	free
.label_419:
	xor	r14d, r14d
.label_417:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405010

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_420
	pop	rcx
	ret	
.label_420:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405022
	.globl sub_405022
	.type sub_405022, @function
sub_405022:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405030

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405035
	.globl sub_405035
	.type sub_405035, @function
sub_405035:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x405045
	.globl sub_405045
	.type sub_405045, @function
sub_405045:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405050

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_421
	test	rdx, rdx
	je	.label_421
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_421:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40507b
	.globl sub_40507b
	.type sub_40507b, @function
sub_40507b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_422:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_422
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4050a1
	.globl sub_4050a1
	.type sub_4050a1, @function
sub_4050a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0

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
.label_424:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_423
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_424
.label_423:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050eb
	.globl sub_4050eb
	.type sub_4050eb, @function
sub_4050eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050fa
	.globl sub_4050fa
	.type sub_4050fa, @function
sub_4050fa:

	nop	word ptr [rax + rax]
.label_425:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40510e
	.globl sub_40510e
	.type sub_40510e, @function
sub_40510e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405117

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_425
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_427
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_425
.label_427:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_425
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_426
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_426:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_428:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405185
	.globl sub_405185
	.type sub_405185, @function
sub_405185:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40518f

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_429
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_428
.label_429:
	mov	rax, rbx
	pop	rbx
	ret	
.label_430:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_431
	test	cl, cl
	jne	.label_431
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_431:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051db
	.globl sub_4051db
	.type sub_4051db, @function
sub_4051db:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e5

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
	je	.label_430
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_431
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_431
	.section	.text
	.align	16
	#Procedure 0x405220

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
	#Procedure 0x405238
	.globl sub_405238
	.type sub_405238, @function
sub_405238:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405240
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_432
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_432:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405266
	.globl sub_405266
	.type sub_405266, @function
sub_405266:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405270

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_433
	test	rbx, rbx
	jne	.label_433
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_433:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_435
	test	rax, rax
	je	.label_434
.label_435:
	pop	rbx
	ret	
.label_434:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4052a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_436
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_436:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4052c3
	.globl sub_4052c3
	.type sub_4052c3, @function
sub_4052c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_437
	test	rax, rax
	je	.label_438
.label_437:
	pop	rbx
	ret	
.label_438:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4052ea
	.globl sub_4052ea
	.type sub_4052ea, @function
sub_4052ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0
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
	#Procedure 0x405323
	.globl sub_405323
	.type sub_405323, @function
sub_405323:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330

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
	je	.label_440
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_439
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_439
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_439
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
	jmp	.label_440
.label_439:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_440:
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
	#Procedure 0x40540c
	.globl sub_40540c
	.type sub_40540c, @function
sub_40540c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405410

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_441
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_442
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_442:
	xor	eax, eax
	ret	
.label_441:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405440
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40544a
	.globl sub_40544a
	.type sub_40544a, @function
sub_40544a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405450

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	ebx, esi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x38], 0
	mov	r14d, ebx
	and	r14d, 3
	lea	eax, [rbx + 3]
	test	eax, r14d
	jne	.label_461
	test	rbp, rbp
	je	.label_461
	mov	al, byte ptr [rbp]
	cmp	al, 0x2f
	je	.label_471
	test	al, al
	jne	.label_474
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_445
.label_461:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_445:
	xor	ebp, ebp
.label_476:
	mov	rax, rbp
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_471:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	rax, [rdi + 0x1000]
	lea	r13, [rdi + 1]
	jmp	.label_486
.label_474:
	mov	r15, rbp
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_476
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r13, rax
	sub	r13, rdi
	cmp	r13, 0xfff
	jg	.label_496
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	r13, rdi
	add	rax, 0x1000
	jmp	.label_447
.label_496:
	mov	r13, rax
.label_447:
	mov	rbp, r15
.label_486:
	xor	r15d, r15d
	cmp	byte ptr [rbp], 0
	je	.label_459
	mov	ecx, ebx
	and	ecx, 4
	mov	dword ptr [rsp + 0x48], ecx
	mov	ecx, ebx
	and	ecx, 7
	mov	dword ptr [rsp + 0x4c], ecx
	xor	ecx, ecx
	cmp	r14d, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x44], ecx
	xor	r15d, r15d
	and	bl, 3
	mov	rdx, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x14], ecx
	mov	dword ptr [rsp + 0x2c], r14d
.label_456:
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp], r15
	mov	rbp, rdx
.label_487:
	lea	rdx, [rdi + 1]
	mov	r12, r13
	nop	word ptr cs:[rax + rax]
.label_448:
	dec	rbp
	mov	r15, rbp
	nop	word ptr cs:[rax + rax]
.label_477:
	cmp	byte ptr [r15 + 1], 0x2f
	lea	r15, [r15 + 1]
	je	.label_477
	mov	rbp, r15
	jmp	.label_479
.label_483:
	inc	rbp
.label_479:
	movzx	ecx, byte ptr [rbp]
	test	cl, cl
	je	.label_481
	cmp	cl, 0x2f
	jne	.label_483
.label_481:
	mov	r14, rbp
	sub	r14, r15
	cmp	r14, 1
	je	.label_485
	cmp	r14, 2
	jne	.label_488
	cmp	byte ptr [r15], 0x2e
	jne	.label_446
	cmp	byte ptr [r15 + 1], 0x2e
	jne	.label_446
	cmp	r12, rdx
	jbe	.label_444
	dec	r12
	mov	rcx, r12
	nop	word ptr [rax + rax]
.label_497:
	mov	r12, rcx
	cmp	r12, rdi
	jbe	.label_444
	lea	rcx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_497
	jmp	.label_444
	.section	.text
	.align	16
	#Procedure 0x405607
	.globl sub_405607
	.type sub_405607, @function
sub_405607:

	nop	word ptr [rax + rax]
.label_485:
	cmp	byte ptr [r15], 0x2e
	jne	.label_446
.label_444:
	cmp	byte ptr [rbp], 0
	jne	.label_448
	jmp	.label_451
.label_488:
	test	r14, r14
	je	.label_451
.label_446:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_453
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_453:
	lea	rcx, [r12 + r14]
	cmp	rcx, rax
	jae	.label_457
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_458
.label_457:
	sub	r12, rdi
	sub	rax, rdi
	lea	r13, [r14 + 1]
	cmp	r14, 0xfff
	mov	ecx, 0x1000
	cmovle	r13, rcx
	add	r13, rax
	mov	rsi, r13
	call	xrealloc
	add	r13, rax
	mov	qword ptr [rsp + 8], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x30], r13
.label_458:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	lea	r13, [r12 + r14]
	mov	byte ptr [r12 + r14], 0
	cmp	dword ptr [rsp + 0x4c], 6
	je	.label_475
	cmp	dword ptr [rsp + 0x48], 0
	jne	.label_454
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x58]
	call	lstat
	jmp	.label_484
.label_454:
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x58]
	call	stat
.label_484:
	test	eax, eax
	je	.label_489
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rax, rbx
	cmp	al, 1
	mov	dword ptr [rsp + 0x14], r14d
	je	.label_490
	test	al, al
	je	.label_494
.label_475:
	mov	dword ptr [rsp + 0x70], 0
.label_489:
	movzx	eax, word ptr [rsp + 0x70]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_498
	lea	rdi, [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x58]
	call	seen_triple
	test	al, al
	je	.label_450
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	mov	eax, dword ptr [rsp + 0x14]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x14], eax
	mov	ecx, dword ptr [rsp + 0x44]
	jmp	.label_452
.label_450:
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 8]
	call	areadlink_with_size
	mov	r14, rax
	test	r14, r14
	jne	.label_463
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	jne	.label_465
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_465
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_470
.label_490:
	mov	esi, 0x2f
	mov	rdi, rbp
	call	__strspn_c1
	xor	ecx, ecx
	cmp	byte ptr [rax + rbp], 0
	setne	cl
	cmp	r14d, 2
	lea	ecx, [rcx + rcx*8 + 4]
	mov	eax, 0xd
	cmovne	ecx, eax
.label_452:
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	and	cl, 0xf
	cmp	cl, 4
	mov	rax, qword ptr [rsp + 0x30]
	jne	.label_480
.label_470:
	cmp	byte ptr [rbp], 0
	jne	.label_487
	jmp	.label_460
.label_498:
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_491
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	jmp	.label_493
.label_491:
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	je	.label_443
	mov	cl, byte ptr [rbp]
	mov	edx, 0x14
	test	cl, cl
	jne	.label_449
.label_443:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, rbp
.label_493:
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_455
.label_463:
	mov	rdi, r14
	call	strlen
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, rbp
	call	strlen
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x50], r14
	je	.label_492
	cmp	rcx, rax
	jbe	.label_468
	mov	rdi, qword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	mov	r14, rdx
	call	xrealloc
	jmp	.label_472
.label_492:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	mov	r14, rdx
	call	xmalloc
.label_472:
	mov	rdx, r14
	mov	r14, rax
	jmp	.label_478
.label_468:
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp]
.label_478:
	mov	rdi, qword ptr [rsp + 0x20]
	add	rdi, r14
	inc	rdx
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rsp], r14
	mov	rdi, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 1]
	cmp	byte ptr [r14], 0x2f
	jne	.label_464
	mov	byte ptr [rcx], 0x2f
	mov	r13, rax
	jmp	.label_469
.label_464:
	cmp	r13, rax
	jbe	.label_469
	sub	r12, r15
	lea	rax, [r12 + rbp - 1]
.label_466:
	mov	r13, rax
	cmp	r13, rcx
	jbe	.label_469
	lea	rax, [r13 - 1]
	cmp	byte ptr [r13 - 1], 0x2f
	jne	.label_466
.label_469:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp]
	mov	r15, rdx
	mov	rbp, rdx
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
.label_455:
	cmp	byte ptr [rdx], 0
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_456
	jmp	.label_459
.label_451:
	mov	r13, r12
.label_460:
	mov	r15, qword ptr [rsp]
.label_459:
	lea	rcx, [rdi + 1]
	cmp	r13, rcx
	jbe	.label_462
	lea	rcx, [r13 - 1]
	cmp	byte ptr [r13 - 1], 0x2f
	cmove	r13, rcx
.label_462:
	mov	byte ptr [r13], 0
	lea	rcx, [r13 + 1]
	cmp	rax, rcx
	je	.label_467
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, r13
	call	xrealloc
	mov	rbp, rax
	jmp	.label_473
.label_467:
	mov	rbp, rdi
.label_473:
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_476
	call	hash_free
	jmp	.label_476
.label_465:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	jmp	.label_482
.label_480:
	cmp	cl, 0xd
	mov	r14d, dword ptr [rsp + 0x14]
	jne	.label_476
	jmp	.label_482
.label_494:
	mov	edx, dword ptr [rsp + 0x14]
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
.label_449:
	mov	r14d, edx
.label_482:
	mov	rbx, rdi
	mov	rdi, r15
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_495
	call	hash_free
.label_495:
	call	__errno_location
	mov	dword ptr [rax], r14d
	jmp	.label_445
	.section	.text
	.align	16
	#Procedure 0x405a11
	.globl sub_405a11
	.type sub_405a11, @function
sub_405a11:

	nop	word ptr cs:[rax + rax]
.label_501:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_499:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_502
	inc	r9
	cmp	r9, 0xa
	jb	.label_500
.label_502:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a4f
	.globl sub_405a4f
	.type sub_405a4f, @function
sub_405a4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405a50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_500:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_501
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_499
	.section	.text
	.align	16
	#Procedure 0x405a79
	.globl sub_405a79
	.type sub_405a79, @function
sub_405a79:

	nop	dword ptr [rax]
.label_503:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405a85
	.globl sub_405a85
	.type sub_405a85, @function
sub_405a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a8f

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
	je	.label_504
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
	je	.label_503
	cmp	rax, rbx
	je	.label_504
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_504:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b00

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
	jae	.label_505
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_505:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405b25
	.globl sub_405b25
	.type sub_405b25, @function
sub_405b25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b30
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
	#Procedure 0x405b3d
	.globl sub_405b3d
	.type sub_405b3d, @function
sub_405b3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b40
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b4a
	.globl sub_405b4a
	.type sub_405b4a, @function
sub_405b4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_507
	cmp	byte ptr [rax], 0x43
	jne	.label_509
	cmp	byte ptr [rax + 1], 0
	je	.label_506
.label_509:
	mov	esi, OFFSET FLAT:label_508
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_507
.label_506:
	xor	ebx, ebx
.label_507:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b81
	.globl sub_405b81
	.type sub_405b81, @function
sub_405b81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b90
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_510
.label_511:
	ret	
.label_510:
	cmp	edi, 0x7f
	je	.label_511
	xor	eax, eax
	jmp	.label_511
	.section	.text
	.align	16
	#Procedure 0x405ba1
	.globl sub_405ba1
	.type sub_405ba1, @function
sub_405ba1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_512
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_513
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_513:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_512:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c07
	.globl sub_405c07
	.type sub_405c07, @function
sub_405c07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_514
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_515
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_311
	mov	ecx, OFFSET FLAT:label_312
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_516
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405c84
	.globl sub_405c84
	.type sub_405c84, @function
sub_405c84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_518
	xor	eax, eax
.label_521:
	cmp	qword ptr [r8], 0
	je	.label_519
	test	r8, r8
	je	.label_519
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_520:
	cmp	rax, rdx
	jae	.label_518
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_520
.label_519:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_521
.label_518:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cd3
	.globl sub_405cd3
	.type sub_405cd3, @function
sub_405cd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ce0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_522]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cf4
	.globl sub_405cf4
	.type sub_405cf4, @function
sub_405cf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d00

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405d0a
	.globl sub_405d0a
	.type sub_405d0a, @function
sub_405d0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d10
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
	#Procedure 0x405d20

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x405d29
	.globl sub_405d29
	.type sub_405d29, @function
sub_405d29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d30
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x405d3a
	.globl sub_405d3a
	.type sub_405d3a, @function
sub_405d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40

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
	je	.label_524
	cmp	rsi, r13
	je	.label_527
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_529
.label_527:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_524
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_525
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_528
.label_529:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_524
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_526:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_523
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_523
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_526
	jmp	.label_524
.label_525:
	mov	qword ptr [rbx], 0
	jmp	.label_524
.label_523:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_524
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_528:
	mov	rdi, r14
	call	free_entry
.label_524:
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
	#Procedure 0x405e0a
	.globl sub_405e0a
	.type sub_405e0a, @function
sub_405e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e75
	.globl sub_405e75
	.type sub_405e75, @function
sub_405e75:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e82
	.globl sub_405e82
	.type sub_405e82, @function
sub_405e82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ea6
	.globl sub_405ea6
	.type sub_405ea6, @function
sub_405ea6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405eb9
	.globl sub_405eb9
	.type sub_405eb9, @function
sub_405eb9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x405ed0

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x405ee0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
