	.section	.text
	.align	16
	#Procedure 0x4012d9
	.globl sub_4012d9
	.type sub_4012d9, @function
sub_4012d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4012da
	.globl sub_4012da
	.type sub_4012da, @function
sub_4012da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401312
	.globl sub_401312
	.type sub_401312, @function
sub_401312:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40135a
	.globl sub_40135a
	.type sub_40135a, @function
sub_40135a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40137c
	.globl sub_40137c
	.type sub_40137c, @function
sub_40137c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40138d
	.globl sub_40138d
	.type sub_40138d, @function
sub_40138d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4013a6
	.globl sub_4013a6
	.type sub_4013a6, @function
sub_4013a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013b0
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
.label_12:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_12
.label_9:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_13
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_10]], OFFSET FLAT:slot0
.label_13:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_11
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_11:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401441
	.globl sub_401441
	.type sub_401441, @function
sub_401441:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401450
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401458
	.globl sub_401458
	.type sub_401458, @function
sub_401458:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401460

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
	je	.label_16
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_14
	jmp	.label_15
.label_16:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_15
.label_14:
	mov	eax, 1
	test	bpl, bpl
	je	.label_15
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
.label_15:
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
	#Procedure 0x4014e8
	.globl sub_4014e8
	.type sub_4014e8, @function
sub_4014e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014f0

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
	je	.label_17
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_19
	jmp	.label_18
.label_17:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_18
.label_19:
	mov	eax, 1
	test	bpl, bpl
	je	.label_18
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
.label_18:
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
	#Procedure 0x401569
	.globl sub_401569
	.type sub_401569, @function
sub_401569:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401570

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
	je	.label_22
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_21
	jmp	.label_20
.label_22:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_20
.label_21:
	mov	eax, 1
	test	bpl, bpl
	je	.label_20
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
.label_20:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015d3
	.globl sub_4015d3
	.type sub_4015d3, @function
sub_4015d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015e0

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
	je	.label_25
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_23
	jmp	.label_24
.label_25:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_24
.label_23:
	mov	eax, 1
	test	bpl, bpl
	je	.label_24
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_24:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40163f
	.globl sub_40163f
	.type sub_40163f, @function
sub_40163f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401640

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
	je	.label_26
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_28
	jmp	.label_27
.label_26:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_27
.label_28:
	mov	eax, 1
	test	bpl, bpl
	je	.label_27
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_27:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401689
	.globl sub_401689
	.type sub_401689, @function
sub_401689:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401690

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
	je	.label_31
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_30
	jmp	.label_29
.label_31:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_29
.label_30:
	mov	eax, 1
	test	bpl, bpl
	je	.label_29
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_29:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016d5
	.globl sub_4016d5
	.type sub_4016d5, @function
sub_4016d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016e0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_34
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_33
	jmp	.label_32
.label_34:
	mov	eax, 1
	test	cl, cl
	je	.label_32
.label_33:
	xor	eax, eax
.label_32:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40170f
	.globl sub_40170f
	.type sub_40170f, @function
sub_40170f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401710

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
	#Procedure 0x401746
	.globl sub_401746
	.type sub_401746, @function
sub_401746:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401750

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_35
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_35
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_35:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401776
	.globl sub_401776
	.type sub_401776, @function
sub_401776:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401780

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
	jne	.label_45
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
	je	.label_42
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_43
	mov	eax, OFFSET FLAT:label_44
	jmp	.label_40
.label_42:
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
	je	.label_41
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_38
	mov	eax, OFFSET FLAT:label_39
	jmp	.label_40
.label_41:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_36
	mov	eax, OFFSET FLAT:label_37
.label_40:
	cmove	rax, rcx
.label_45:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40183d
	.globl sub_40183d
	.type sub_40183d, @function
sub_40183d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401840
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
	#Procedure 0x401856
	.globl sub_401856
	.type sub_401856, @function
sub_401856:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401860
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40186a
	.globl sub_40186a
	.type sub_40186a, @function
sub_40186a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401870

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
	#Procedure 0x4018a7
	.globl sub_4018a7
	.type sub_4018a7, @function
sub_4018a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_46
.label_47:
	ret	
.label_46:
	cmp	edi, 0x7f
	je	.label_47
	xor	eax, eax
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x4018c1
	.globl sub_4018c1
	.type sub_4018c1, @function
sub_4018c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4018da
	.globl sub_4018da
	.type sub_4018da, @function
sub_4018da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018e0
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
	#Procedure 0x4018f0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4018f9
	.globl sub_4018f9
	.type sub_4018f9, @function
sub_4018f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401900
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40190a
	.globl sub_40190a
	.type sub_40190a, @function
sub_40190a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401910

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
	#Procedure 0x40193d
	.globl sub_40193d
	.type sub_40193d, @function
sub_40193d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401940
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
	#Procedure 0x401953
	.globl sub_401953
	.type sub_401953, @function
sub_401953:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401960
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
	#Procedure 0x4019d2
	.globl sub_4019d2
	.type sub_4019d2, @function
sub_4019d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0
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
	#Procedure 0x4019ef
	.globl sub_4019ef
	.type sub_4019ef, @function
sub_4019ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4019f0
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
	#Procedure 0x4019ff
	.globl sub_4019ff
	.type sub_4019ff, @function
sub_4019ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401a00

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x401a05
	.globl sub_401a05
	.type sub_401a05, @function
sub_401a05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a10
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
	#Procedure 0x401a1f
	.globl sub_401a1f
	.type sub_401a1f, @function
sub_401a1f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401a20

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
	je	.label_60
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_57
.label_60:
	mov	edx, OFFSET FLAT:label_58
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
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
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_63
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_64]]
.label_344:
	add	rsp, 8
	jmp	.label_50
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
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
	jmp	.label_50
.label_345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
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
.label_346:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
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
.label_347:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
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
.label_348:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
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
	jmp	.label_50
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
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
	jmp	.label_50
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
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
	jmp	.label_50
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
	jmp	.label_50
.label_353:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
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
	jmp	.label_50
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
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
.label_50:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d78
	.globl sub_401d78
	.type sub_401d78, @function
sub_401d78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d80

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_67
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_68
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_67
.label_68:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_67
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_69
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_69:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_67:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401df7
	.globl sub_401df7
	.type sub_401df7, @function
sub_401df7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_70
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_72
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_72
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_75
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_75:
	mov	rbx, r14
.label_72:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_70:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_71
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ea1
	.globl sub_401ea1
	.type sub_401ea1, @function
sub_401ea1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401eb0
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
	#Procedure 0x401ebd
	.globl sub_401ebd
	.type sub_401ebd, @function
sub_401ebd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ec0

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
	je	.label_76
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_77
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_77
.label_76:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_77
	test	cl, cl
	jne	.label_77
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_77:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f26
	.globl sub_401f26
	.type sub_401f26, @function
sub_401f26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_78
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_80
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_80
.label_78:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_79
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_83:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_79:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_83
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_81
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_86:
	mov	ecx, 1
.label_85:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402000
	.globl sub_402000
	.type sub_402000, @function
sub_402000:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402005

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_86
	test	rsi, rsi
	mov	ecx, 1
	je	.label_85
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_85
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402040

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_87
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_87:
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
	#Procedure 0x4020c3
	.globl sub_4020c3
	.type sub_4020c3, @function
sub_4020c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020d0
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
	#Procedure 0x402103
	.globl sub_402103
	.type sub_402103, @function
sub_402103:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402110

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_89
	cmp	byte ptr [rax], 0x43
	jne	.label_91
	cmp	byte ptr [rax + 1], 0
	je	.label_88
.label_91:
	mov	esi, OFFSET FLAT:label_90
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_89
.label_88:
	xor	ebx, ebx
.label_89:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402141
	.globl sub_402141
	.type sub_402141, @function
sub_402141:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402150

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_100
	nop	
.label_99:
	mov	edi, OFFSET FLAT:label_92
	call	strcmp
	test	eax, eax
	je	.label_97
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_99
.label_97:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_92
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_95
	mov	ecx, OFFSET FLAT:label_96
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_93
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_93
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_93:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_92
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_96
	mov	ecx, OFFSET FLAT:label_92
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_104
	mov	ecx, OFFSET FLAT:label_105
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
	#Procedure 0x40226a
	.globl sub_40226a
	.type sub_40226a, @function
sub_40226a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402270
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
	#Procedure 0x402297
	.globl sub_402297
	.type sub_402297, @function
sub_402297:

	nop	word ptr [rax + rax]
.label_106:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022a3
	.globl sub_4022a3
	.type sub_4022a3, @function
sub_4022a3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022ab
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_106
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022c0

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
	#Procedure 0x4022d7
	.globl sub_4022d7
	.type sub_4022d7, @function
sub_4022d7:

	nop	word ptr [rax + rax]
.label_107:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4022e5
	.globl sub_4022e5
	.type sub_4022e5, @function
sub_4022e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f3

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
	je	.label_107
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
	.align	16
	#Procedure 0x402340
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40234a
	.globl sub_40234a
	.type sub_40234a, @function
sub_40234a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402350
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
	#Procedure 0x402363
	.globl sub_402363
	.type sub_402363, @function
sub_402363:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402370

	.globl sub_402370
	.type sub_402370, @function
sub_402370:
	mov	eax, 0xb
	ret	
.label_109:
	movzx	eax, dil
	add	eax, -0x30
	ret	
	.section	.text
	.align	16
	#Procedure 0x40237e
	.globl sub_40237e
	.type sub_40237e, @function
sub_40237e:

	nop
mov	eax, 0xe
	ret	
	.section	.text
	.align	16
	#Procedure 0x402386

	.globl hextobin
	.type hextobin, @function
hextobin:
	mov	eax, edi
	add	al, 0xbf
	movzx	ecx, al
	cmp	cl, 0x25
	ja	.label_109
	mov	eax, 0xa
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_108]]
	.section	.text
	.align	16
	#Procedure 0x40239e

	.globl sub_40239e
	.type sub_40239e, @function
sub_40239e:
	mov	eax, 0xc
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023a4

	.globl sub_4023a4
	.type sub_4023a4, @function
sub_4023a4:
	mov	eax, 0xd
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023aa

	.globl sub_4023aa
	.type sub_4023aa, @function
sub_4023aa:
	mov	eax, 0xf
.label_408:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023b0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_110
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_110
.label_111:
	ret	
.label_110:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_111
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023d6
	.globl sub_4023d6
	.type sub_4023d6, @function
sub_4023d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023e0
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
	#Procedure 0x4023f9
	.globl sub_4023f9
	.type sub_4023f9, @function
sub_4023f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402400

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_112
	test	rdx, rdx
	je	.label_112
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_112:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40242b
	.globl sub_40242b
	.type sub_40242b, @function
sub_40242b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_113
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_113:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402453
	.globl sub_402453
	.type sub_402453, @function
sub_402453:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_114
	test	rax, rax
	je	.label_115
.label_114:
	pop	rbx
	ret	
.label_115:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40247a
	.globl sub_40247a
	.type sub_40247a, @function
sub_40247a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402480
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_116
	call	rpl_calloc
	test	rax, rax
	je	.label_116
	pop	rcx
	ret	
.label_116:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4024a6
	.globl sub_4024a6
	.type sub_4024a6, @function
sub_4024a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024b0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024ba
	.globl sub_4024ba
	.type sub_4024ba, @function
sub_4024ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4024ca
	.globl sub_4024ca
	.type sub_4024ca, @function
sub_4024ca:

	nop	word ptr [rax + rax]
.label_120:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_118:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_119
	inc	r9
	cmp	r9, 0xa
	jb	.label_117
.label_119:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024ff
	.globl sub_4024ff
	.type sub_4024ff, @function
sub_4024ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402500

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_117:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_120
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_118
	.section	.text
	.align	16
	#Procedure 0x402529
	.globl sub_402529
	.type sub_402529, @function
sub_402529:

	nop	dword ptr [rax]
.label_121:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x40253c
	.globl sub_40253c
	.type sub_40253c, @function
sub_40253c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402549

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_121
	ret	
	.section	.text
	.align	16
	#Procedure 0x402550
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_122
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_122:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40256e
	.globl sub_40256e
	.type sub_40256e, @function
sub_40256e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402570

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_81
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_128:
	test	rcx, rcx
	jne	.label_124
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_124:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_126
.label_125:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_126:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025e7
	.globl sub_4025e7
	.type sub_4025e7, @function
sub_4025e7:

	nop	dword ptr [rax]
.label_127:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025f3

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_128
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_127
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_125
	.section	.text
	.align	16
	#Procedure 0x402620
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
	#Procedure 0x40262d
	.globl sub_40262d
	.type sub_40262d, @function
sub_40262d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402630
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_129
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_130]]
.label_131:
	ret	
.label_129:
	xor	eax, eax
	jmp	.label_131
	.section	.text
	.align	16
	#Procedure 0x402646
	.globl sub_402646
	.type sub_402646, @function
sub_402646:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402650
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_132
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_132:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402676
	.globl sub_402676
	.type sub_402676, @function
sub_402676:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402680

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_133
	test	rbx, rbx
	jne	.label_133
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_133:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_135
	test	rax, rax
	je	.label_134
.label_135:
	pop	rbx
	ret	
.label_134:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4026b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026ba
	.globl sub_4026ba
	.type sub_4026ba, @function
sub_4026ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c0

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
	je	.label_136
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_138
	jmp	.label_137
.label_136:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_137
.label_138:
	mov	eax, 1
	test	bpl, bpl
	je	.label_137
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
.label_137:
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
	#Procedure 0x40273d
	.globl sub_40273d
	.type sub_40273d, @function
sub_40273d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402740

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
	#Procedure 0x402779
	.globl sub_402779
	.type sub_402779, @function
sub_402779:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402780
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
	#Procedure 0x402791
	.globl sub_402791
	.type sub_402791, @function
sub_402791:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027a0
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
	#Procedure 0x4027b4
	.globl sub_4027b4
	.type sub_4027b4, @function
sub_4027b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027c0

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
	je	.label_139
	cmp	r15, -2
	jb	.label_139
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_139
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_139:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402816
	.globl sub_402816
	.type sub_402816, @function
sub_402816:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402820
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_95
	mov	ecx, OFFSET FLAT:label_96
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402894
	.globl sub_402894
	.type sub_402894, @function
sub_402894:

	nop	word ptr cs:[rax + rax]
.label_147:
	mov	edi, OFFSET FLAT:label_144
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 0x28
	mov	ecx, OFFSET FLAT:label_146
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4028b9
	.globl sub_4028b9
	.type sub_4028b9, @function
sub_4028b9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028c4

	.globl usage
	.type usage, @function
usage:
	push	rbx
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_147
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
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
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_92
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402a10

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a1a
	.globl sub_402a1a
	.type sub_402a1a, @function
sub_402a1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a20
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a2a
	.globl sub_402a2a
	.type sub_402a2a, @function
sub_402a2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a30

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x402a39
	.globl sub_402a39
	.type sub_402a39, @function
sub_402a39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

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
	mov	rax,  qword ptr [word ptr [rip + label_157]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_158]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_159]]
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
	#Procedure 0x402aa8
	.globl sub_402aa8
	.type sub_402aa8, @function
sub_402aa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ab0

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
	mov	rcx,  qword ptr [word ptr [rip + label_157]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_158]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_159]]
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
	#Procedure 0x402b1d
	.globl sub_402b1d
	.type sub_402b1d, @function
sub_402b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b20

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x402b2d
	.globl sub_402b2d
	.type sub_402b2d, @function
sub_402b2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
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
	jne	.label_160
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_160
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_161
.label_160:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_161:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_162
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_162:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bae
	.globl sub_402bae
	.type sub_402bae, @function
sub_402bae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402bb0
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
	#Procedure 0x402bf9
	.globl sub_402bf9
	.type sub_402bf9, @function
sub_402bf9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_105
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_163
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c25
	.globl sub_402c25
	.type sub_402c25, @function
sub_402c25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c38
	.globl sub_402c38
	.type sub_402c38, @function
sub_402c38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40

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
.label_218:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_220
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_224]]
.label_445:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_232
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_37
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_446:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_241
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_241
	xor	r14d, r14d
.label_252:
	cmp	r14, r11
	jae	.label_251
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_251:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_252
.label_241:
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
	jmp	.label_164
.label_438:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_164
.label_441:
	mov	al, 1
.label_439:
	mov	r12b, 1
.label_442:
	test	r12b, 1
	mov	cl, 1
	je	.label_267
	mov	ecx, eax
.label_267:
	mov	al, cl
.label_440:
	test	r12b, 1
	jne	.label_270
	test	r11, r11
	je	.label_272
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_272:
	mov	r14d, 1
	jmp	.label_276
.label_270:
	xor	r14d, r14d
.label_276:
	mov	ecx, OFFSET FLAT:label_37
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_164
.label_443:
	test	r12b, 1
	jne	.label_175
	test	r11, r11
	je	.label_177
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_177:
	mov	r14d, 1
	jmp	.label_181
.label_444:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_36
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_164
.label_175:
	xor	r14d, r14d
.label_181:
	mov	eax, OFFSET FLAT:label_36
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_164:
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
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x402f1c
	.globl sub_402f1c
	.type sub_402f1c, @function
sub_402f1c:

	nop	dword ptr [rax]
.label_213:
	inc	rsi
.label_188:
	cmp	rbp, -1
	je	.label_235
	cmp	rsi, rbp
	jne	.label_237
	jmp	.label_239
	.section	.text
	.align	16
	#Procedure 0x402f33
	.globl sub_402f33
	.type sub_402f33, @function
sub_402f33:

	nop	word ptr cs:[rax + rax]
.label_235:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_239
.label_237:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_243
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_247
	cmp	rbp, -1
	jne	.label_247
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
.label_247:
	cmp	rbx, rbp
	jbe	.label_256
.label_243:
	xor	r8d, r8d
.label_195:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_258
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_261]]
.label_416:
	test	rsi, rsi
	jne	.label_165
	jmp	.label_191
	.section	.text
	.align	16
	#Procedure 0x402fce
	.globl sub_402fce
	.type sub_402fce, @function
sub_402fce:

	nop	
.label_256:
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
	jne	.label_274
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_195
	jmp	.label_176
.label_274:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_195
.label_420:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_185
	test	rsi, rsi
	jne	.label_187
	cmp	rbp, 1
	je	.label_191
	xor	r13d, r13d
	jmp	.label_178
.label_409:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_196
	cmp	byte ptr [rsp + 7], 0
	jne	.label_169
	cmp	r12d, 2
	jne	.label_201
	mov	eax, r9d
	and	al, 1
	jne	.label_201
	cmp	r14, r11
	jae	.label_202
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_202:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_206
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_206:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_210
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_210:
	add	r14, 3
	mov	r9b, 1
.label_201:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_217
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_217:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_219
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_219
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_219
	cmp	r14, r11
	jae	.label_233
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_233:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_203
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_203:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_178
.label_410:
	mov	bl, 0x62
	jmp	.label_240
.label_411:
	mov	cl, 0x74
	jmp	.label_242
.label_412:
	mov	bl, 0x76
	jmp	.label_240
.label_413:
	mov	bl, 0x66
	jmp	.label_240
.label_414:
	mov	cl, 0x72
	jmp	.label_242
.label_417:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_250
	cmp	byte ptr [rsp + 7], 0
	jne	.label_169
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
	jae	.label_253
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_253:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_263
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_263:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_264
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_264:
	add	r14, 3
	xor	r9d, r9d
.label_250:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_178
.label_418:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_273
	cmp	r12d, 2
	jne	.label_165
	cmp	byte ptr [rsp + 7], 0
	je	.label_165
	jmp	.label_169
.label_419:
	cmp	r12d, 2
	jne	.label_170
	cmp	byte ptr [rsp + 7], 0
	jne	.label_169
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_225
.label_258:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_244
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
.label_182:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_200
	test	r8b, r8b
	je	.label_200
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_178
.label_185:
	test	rsi, rsi
	jne	.label_171
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_171
.label_191:
	mov	dl, 1
.label_415:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_169
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_178:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_226
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_230
	jmp	.label_234
	.section	.text
	.align	16
	#Procedure 0x403314
	.globl sub_403314
	.type sub_403314, @function
sub_403314:

	nop	word ptr cs:[rax + rax]
.label_226:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_234
.label_230:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_236
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_225
	jmp	.label_174
	.section	.text
	.align	16
	#Procedure 0x40335d
	.globl sub_40335d
	.type sub_40335d, @function
sub_40335d:

	nop	dword ptr [rax]
.label_234:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_174
	jmp	.label_225
.label_236:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_174
.label_196:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_213
	xor	r15d, r15d
	jmp	.label_165
.label_170:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_242
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_225
.label_242:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_169
.label_240:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_178
	nop	word ptr cs:[rax + rax]
.label_174:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_169
	cmp	r12d, 2
	jne	.label_268
	mov	eax, r9d
	and	al, 1
	jne	.label_268
	cmp	r14, r11
	jae	.label_271
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_271:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_262
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_167
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_167:
	add	r14, 3
	mov	r9b, 1
.label_268:
	cmp	r14, r11
	jae	.label_173
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_173:
	inc	r14
	jmp	.label_179
.label_244:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_183
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_183:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_257:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_205
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_208
	cmp	rbp, -2
	je	.label_212
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_215
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_198:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_214
	bt	rsi, rdx
	jb	.label_176
.label_214:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_198
.label_215:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_238
	xor	r13d, r13d
.label_238:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_257
	jmp	.label_182
.label_219:
	xor	r13d, r13d
	jmp	.label_178
.label_171:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_178
.label_273:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_165
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_165
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_165
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_259
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_172
	cmp	byte ptr [rsp + 7], 0
	jne	.label_169
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_265
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_265:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_248
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_248:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_275
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_275:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_166
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_166:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_178
.label_165:
	xor	eax, eax
.label_187:
	xor	r13d, r13d
	jmp	.label_178
.label_200:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_180
	.section	.text
	.align	16
	#Procedure 0x403643
	.globl sub_403643
	.type sub_403643, @function
sub_403643:

	nop	word ptr cs:[rax + rax]
.label_184:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_180:
	test	r8b, r8b
	je	.label_189
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_190
	cmp	r14, r11
	jae	.label_192
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_192:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x40368c
	.globl sub_40368c
	.type sub_40368c, @function
sub_40368c:

	nop	dword ptr [rax]
.label_189:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_176
	cmp	r12d, 2
	jne	.label_204
	mov	eax, r9d
	and	al, 1
	jne	.label_204
	cmp	r14, r11
	jae	.label_207
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_207:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_216
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_216:
	add	r14, 3
	mov	r9b, 1
.label_204:
	cmp	r14, r11
	jae	.label_245
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_245:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_222
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_231
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_231:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_190:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_225
	test	r9b, 1
	je	.label_254
	mov	ebx, eax
	and	bl, 1
	jne	.label_254
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_246
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_246:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_227
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_227:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_254:
	cmp	r14, r11
	jae	.label_184
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_184
	.section	.text
	.align	16
	#Procedure 0x403793
	.globl sub_403793
	.type sub_403793, @function
sub_403793:

	nop	word ptr cs:[rax + rax]
.label_225:
	test	r9b, 1
	je	.label_197
	and	al, 1
	jne	.label_197
	cmp	r14, r11
	jae	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_186
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_186:
	add	r14, 2
	xor	r9d, r9d
.label_197:
	mov	ebx, r15d
.label_179:
	cmp	r14, r11
	jae	.label_266
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_266:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_213
.label_208:
	xor	r13d, r13d
.label_205:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_182
.label_212:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_168
	mov	rsi, qword ptr [rsp + 0x50]
.label_228:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_211
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_228
	xor	r13d, r13d
	jmp	.label_182
.label_168:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_182
.label_211:
	xor	r13d, r13d
	jmp	.label_182
.label_259:
	xor	r13d, r13d
	jmp	.label_178
.label_172:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_178
	.section	.text
	.align	16
	#Procedure 0x403868
	.globl sub_403868
	.type sub_403868, @function
sub_403868:

	nop	dword ptr [rax + rax]
.label_239:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_194
	or	dl, al
	je	.label_176
.label_194:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_193
	or	dl, al
	jne	.label_193
	test	r10b, 1
	jne	.label_199
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_193
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_218
.label_193:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_221
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_229
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_229
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_223:
	cmp	r14, r11
	jae	.label_255
	mov	byte ptr [rcx + r14], al
.label_255:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_223
	jmp	.label_229
.label_169:
	mov	qword ptr [rsp + 0x20], rbp
.label_176:
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
.label_269:
	mov	r14, rax
.label_249:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_199:
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
	jmp	.label_269
.label_221:
	mov	rcx, qword ptr [rsp + 8]
.label_229:
	cmp	r14, r11
	jae	.label_249
	mov	byte ptr [rcx + r14], 0
	jmp	.label_249
.label_220:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4039fc
	.globl sub_4039fc
	.type sub_4039fc, @function
sub_4039fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a00
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x403a0a
	.globl sub_403a0a
	.type sub_403a0a, @function
sub_403a0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a10

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
	je	.label_277
	mov	qword ptr [rax], rbx
.label_277:
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
	#Procedure 0x403afc
	.globl sub_403afc
	.type sub_403afc, @function
sub_403afc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403b0a
	.globl sub_403b0a
	.type sub_403b0a, @function
sub_403b0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_278:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_278
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403b31
	.globl sub_403b31
	.type sub_403b31, @function
sub_403b31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40

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
	mov	r12, rsi
	mov	r15d, edi
	mov	edi, OFFSET FLAT:label_287
	call	getenv
	mov	r14, rax
	mov	bl, 1
	test	r14, r14
	je	.label_291
	cmp	r15d, 2
	jl	.label_293
	mov	rcx, qword ptr [r12 + 8]
	movzx	edx, byte ptr [rcx]
	mov	eax, 0x2d
	sub	eax, edx
	jne	.label_294
	movzx	edx, byte ptr [rcx + 1]
	mov	eax, 0x6e
	sub	eax, edx
	jne	.label_294
	movzx	eax, byte ptr [rcx + 2]
	neg	eax
.label_294:
	test	eax, eax
	sete	bl
	jmp	.label_291
.label_293:
	xor	ebx, ebx
.label_291:
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_105
	call	setlocale
	mov	edi, OFFSET FLAT:label_306
	mov	esi, OFFSET FLAT:label_307
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_306
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	cmp	r15d, 2
	jne	.label_280
	test	bl, bl
	je	.label_280
	mov	rbp, qword ptr [r12 + 8]
	mov	esi, OFFSET FLAT:label_315
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_317
	mov	esi, OFFSET FLAT:label_320
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_281
.label_280:
	lea	r13d, [r15 - 1]
	add	r12, 8
	cmp	r15d, 1
	setg	al
	and	al, bl
	mov	r15b, 1
	cmp	al, 1
	jne	.label_282
	xor	eax, eax
	movabs	rdx, 0x20100000001
	mov	ecx, r13d
.label_310:
	mov	rdi, qword ptr [r12]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_285
	mov	bl, byte ptr [rdi + 1]
	test	bl, bl
	je	.label_285
	lea	rsi, [rdi + 1]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_295:
	movsx	ebx, bl
	add	ebx, -0x45
	cmp	ebx, 0x29
	ja	.label_285
	bt	rdx, rbx
	jae	.label_285
	movzx	ebx, byte ptr [rdi + rbp + 2]
	inc	rbp
	test	bl, bl
	jne	.label_295
	test	rbp, rbp
	jne	.label_297
	jmp	.label_285
.label_302:
	mov	al, 1
	nop	word ptr cs:[rax + rax]
.label_297:
	movsx	edi, byte ptr [rsi]
	test	edi, edi
	je	.label_292
	inc	rsi
	cmp	edi, 0x6e
	je	.label_301
	cmp	edi, 0x65
	je	.label_302
	cmp	edi, 0x45
	jne	.label_297
	xor	eax, eax
	jmp	.label_297
.label_301:
	xor	r15d, r15d
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x403cb2
	.globl sub_403cb2
	.type sub_403cb2, @function
sub_403cb2:

	nop	word ptr cs:[rax + rax]
.label_292:
	lea	r13d, [rcx - 1]
	add	r12, 8
	cmp	ecx, 1
	mov	ecx, r13d
	jg	.label_310
	jmp	.label_313
.label_282:
	xor	eax, eax
	jmp	.label_313
.label_285:
	mov	r13d, ecx
.label_313:
	test	r14, r14
	jne	.label_314
	and	al, 1
	jne	.label_314
	test	r13d, r13d
	jle	.label_283
	inc	r13d
	nop	word ptr cs:[rax + rax]
.label_284:
	mov	rdi, qword ptr [r12]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	cmp	r13d, 2
	je	.label_283
	add	r12, 8
	mov	edi, 0x20
	call	putchar_unlocked
	dec	r13d
	cmp	r13d, 1
	jg	.label_284
	jmp	.label_283
.label_314:
	test	r13d, r13d
	jle	.label_283
	mov	dword ptr [rsp + 0x14], r15d
	jmp	.label_286
	.section	.text
	.align	16
	#Procedure 0x403d46
	.globl sub_403d46
	.type sub_403d46, @function
sub_403d46:

	nop	word ptr cs:[rax + rax]
.label_312:
	add	r12, 8
	dec	r13d
	mov	edi, 0x20
	call	putchar_unlocked
.label_286:
	mov	rbx, qword ptr [r12]
	jmp	.label_288
	.section	.text
	.align	16
	#Procedure 0x403d67
	.globl sub_403d67
	.type sub_403d67, @function
sub_403d67:

	nop	word ptr [rax + rax]
.label_279:
	movzx	edi, al
	call	putchar_unlocked
	mov	rbx, rbp
.label_288:
	lea	rbp, [rbx + 1]
	mov	al, byte ptr [rbx]
	cmp	al, 0x5c
	je	.label_296
	test	al, al
	jne	.label_279
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x403d8e
	.globl sub_403d8e
	.type sub_403d8e, @function
sub_403d8e:

	nop	
.label_296:
	mov	r14b, byte ptr [rbp]
	mov	al, 0x5c
	test	r14b, r14b
	je	.label_279
	lea	rbp, [rbx + 2]
	mov	ecx, r14d
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	cl, 0x48
	ja	.label_303
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_304]]
.label_377:
	mov	r14b, byte ptr [rbp]
	mov	eax, r14d
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_308
	add	rbx, 3
	mov	rbp, rbx
.label_378:
	mov	al, r14b
	add	al, 0xd0
	movzx	ecx, byte ptr [rbp]
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_311
	shl	al, 3
	inc	rbp
	add	cl, al
	add	cl, 0xd0
	mov	al, cl
.label_311:
	movzx	ecx, byte ptr [rbp]
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_279
	shl	al, 3
	inc	rbp
	add	cl, al
	add	cl, 0xd0
	mov	al, cl
	jmp	.label_279
.label_379:
	mov	al, 7
	jmp	.label_279
.label_380:
	mov	al, 8
	jmp	.label_279
.label_381:
	mov	al, 0x1b
	jmp	.label_279
.label_382:
	mov	al, 0xc
	jmp	.label_279
.label_383:
	mov	al, 0xa
	jmp	.label_279
.label_384:
	mov	al, 0xd
	jmp	.label_279
.label_385:
	mov	al, 9
	jmp	.label_279
.label_386:
	mov	al, 0xb
	jmp	.label_279
.label_387:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_b_loc
	mov	r15, qword ptr [rax]
	test	byte ptr [r15 + r14*2 + 1], 0x10
	jne	.label_289
	mov	r14b, 0x78
	mov	eax, 0x11
	mov	r15d, dword ptr [rsp + 0x14]
	jmp	.label_290
.label_308:
	xor	eax, eax
	jmp	.label_279
.label_289:
	movzx	edi, r14b
	call	hextobin
	mov	r14d, eax
	movzx	eax, byte ptr [rbx + 3]
	test	byte ptr [r15 + rax*2 + 1], 0x10
	jne	.label_298
	add	rbx, 3
	jmp	.label_300
.label_298:
	add	rbx, 4
	shl	r14d, 4
	movzx	edi, al
	call	hextobin
	add	r14d, eax
.label_300:
	mov	rbp, rbx
	mov	r15d, dword ptr [rsp + 0x14]
	xor	eax, eax
.label_290:
	mov	ecx, eax
	and	cl, 0x1f
	je	.label_305
	cmp	cl, 0x11
	jne	.label_309
.label_303:
	mov	edi, 0x5c
	call	putchar_unlocked
.label_305:
	mov	al, r14b
	jmp	.label_279
.label_299:
	cmp	r13d, 2
	jge	.label_312
	jmp	.label_283
.label_309:
	test	eax, eax
	je	.label_286
	jmp	.label_316
.label_283:
	test	r15b, 1
	je	.label_316
	mov	edi, 0xa
	call	putchar_unlocked
	jmp	.label_316
.label_281:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_92
	mov	edx, OFFSET FLAT:label_95
	mov	r8d, OFFSET FLAT:label_318
	mov	r9d, OFFSET FLAT:label_319
	xor	eax, eax
	call	version_etc
.label_316:
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_317:
	xor	edi, edi
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_321
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_321:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f6e
	.globl sub_403f6e
	.type sub_403f6e, @function
sub_403f6e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403f70

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403f7a
	.globl sub_403f7a
	.type sub_403f7a, @function
sub_403f7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f80
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x403f8d
	.globl sub_403f8d
	.type sub_403f8d, @function
sub_403f8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f90
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
	#Procedure 0x403fa0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403fae
	.globl sub_403fae
	.type sub_403fae, @function
sub_403fae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403fb0

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
	js	.label_325
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_328
	cmp	r12d, 0x7fffffff
	je	.label_323
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
	jne	.label_326
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_326:
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
.label_328:
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
	jbe	.label_324
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_327
.label_324:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_322
	mov	rdi, r14
	call	free
.label_322:
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
.label_327:
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
.label_325:
	call	abort
.label_323:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40416d
	.globl sub_40416d
	.type sub_40416d, @function
sub_40416d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041d5
	.globl sub_4041d5
	.type sub_4041d5, @function
sub_4041d5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041e2
	.globl sub_4041e2
	.type sub_4041e2, @function
sub_4041e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404206
	.globl sub_404206
	.type sub_404206, @function
sub_404206:

	nop	word ptr cs:[rax + rax]
