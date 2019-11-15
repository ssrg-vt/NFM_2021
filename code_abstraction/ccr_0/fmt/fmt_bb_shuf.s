	.section	.text
	.align	16
	#Procedure 0x401579
	.globl sub_401579
	.type sub_401579, @function
sub_401579:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40157a
	.globl sub_40157a
	.type sub_40157a, @function
sub_40157a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015b2
	.globl sub_4015b2
	.type sub_4015b2, @function
sub_4015b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015fa
	.globl sub_4015fa
	.type sub_4015fa, @function
sub_4015fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40161c
	.globl sub_40161c
	.type sub_40161c, @function
sub_40161c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40162d
	.globl sub_40162d
	.type sub_40162d, @function
sub_40162d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401646
	.globl sub_401646
	.type sub_401646, @function
sub_401646:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_10:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_9
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_10
.label_9:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40169d
	.globl sub_40169d
	.type sub_40169d, @function
sub_40169d:

	nop	dword ptr [rax]
.label_12:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_11
.label_11:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401713
	.globl sub_401713
	.type sub_401713, @function
sub_401713:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401721

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_11
	.section	.text
	.align	16
	#Procedure 0x401750

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_13
	test	byte ptr [rbp - 0x13], 1
	je	.label_14
	test	byte ptr [rbp - 0x11], 1
	jne	.label_13
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_14
.label_13:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_15
	call	__errno_location
	mov	dword ptr [rax], 0
.label_15:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_16
.label_14:
	mov	dword ptr [rbp - 4], 0
.label_16:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017f9
	.globl sub_4017f9
	.type sub_4017f9, @function
sub_4017f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401800

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401833
	.globl sub_401833
	.type sub_401833, @function
sub_401833:

	nop	word ptr cs:[rax + rax]
.label_45:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], eax
	call	get_prefix
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_40
	.section	.text
	.align	16
	#Procedure 0x40185e

	.globl get_paragraph
	.type get_paragraph, @function
get_paragraph:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [dword ptr [last_line_length]],  0
	mov	eax,  dword ptr [dword ptr [next_char]]
	mov	dword ptr [rbp - 0x14], eax
.label_40:
	mov	al, 1
	cmp	dword ptr [rbp - 0x14], 0xa
	mov	byte ptr [rbp - 0x15], al
	je	.label_25
	mov	al, 1
	cmp	dword ptr [rbp - 0x14], -1
	mov	byte ptr [rbp - 0x15], al
	je	.label_25
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [next_prefix_indent]]
	cmp	ecx,  dword ptr [dword ptr [prefix_lead_space]]
	mov	byte ptr [rbp - 0x15], al
	jl	.label_25
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	ecx,  dword ptr [dword ptr [next_prefix_indent]]
	add	ecx,  dword ptr [dword ptr [prefix_full_length]]
	cmp	eax, ecx
	setl	dl
	mov	byte ptr [rbp - 0x15], dl
.label_25:
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	jne	.label_46
	jmp	.label_42
.label_46:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	copy_rest
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_45
	mov	dword ptr [dword ptr [next_char]],  0xffffffff
	mov	byte ptr [rbp - 1], 0
	jmp	.label_47
.label_32:
	jmp	.label_26
.label_26:
	jmp	.label_18
.label_18:
	jmp	.label_23
.label_23:
	movabs	rax, OFFSET FLAT:unused_word_type
	cmp	rax,  qword ptr [word ptr [word_limit]]
	jae	.label_28
	jmp	.label_35
.label_35:
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	cl, byte ptr [rax - 0x18]
	and	cl, 0xf7
	or	cl, 8
	mov	byte ptr [rax - 0x18], cl
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	cl, byte ptr [rax - 0x18]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax - 0x18], cl
	mov	edx, dword ptr [rbp - 0x14]
	mov	dword ptr [dword ptr [next_char]],  edx
	mov	byte ptr [rbp - 1], 1
.label_47:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401980
	.globl sub_401980
	.type sub_401980, @function
sub_401980:

	nop	word ptr cs:[rax + rax]
.label_48:
	test	byte ptr [byte ptr [crown]],  1
	je	.label_24
	mov	edi, dword ptr [rbp - 0x14]
	call	same_para
	test	al, 1
	jne	.label_30
	jmp	.label_31
.label_30:
	jmp	.label_33
.label_33:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	get_line
	mov	dword ptr [rbp - 0x14], eax
	mov	edi, dword ptr [rbp - 0x14]
	call	same_para
	xor	edi, edi
	mov	cl, dil
	test	al, 1
	mov	byte ptr [rbp - 0x1d], cl
	jne	.label_38
	jmp	.label_41
.label_38:
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [other_indent]]
	sete	cl
	mov	byte ptr [rbp - 0x1d], cl
.label_41:
	mov	al, byte ptr [rbp - 0x1d]
	test	al, 1
	jne	.label_33
	jmp	.label_31
.label_31:
	jmp	.label_18
.label_28:
	movabs	rdi, OFFSET FLAT:label_20
	movabs	rsi, OFFSET FLAT:label_21
	mov	edx, 0x25e
	movabs	rcx, OFFSET FLAT:label_22
	call	__assert_fail
.label_37:
	jmp	.label_17
.label_17:
	mov	edi, dword ptr [rbp - 0x14]
	call	same_para
	xor	edi, edi
	mov	cl, dil
	test	al, 1
	mov	byte ptr [rbp - 0x1f], cl
	jne	.label_36
	jmp	.label_39
.label_36:
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [other_indent]]
	sete	cl
	mov	byte ptr [rbp - 0x1f], cl
.label_39:
	mov	al, byte ptr [rbp - 0x1f]
	test	al, 1
	jne	.label_43
	jmp	.label_32
.label_43:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	get_line
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_17
.label_24:
	test	byte ptr [byte ptr [tagged]],  1
	je	.label_37
	mov	edi, dword ptr [rbp - 0x14]
	call	same_para
	test	al, 1
	jne	.label_29
	jmp	.label_27
.label_29:
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [first_indent]]
	je	.label_27
	jmp	.label_19
.label_19:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	get_line
	mov	dword ptr [rbp - 0x14], eax
	mov	edi, dword ptr [rbp - 0x14]
	call	same_para
	xor	edi, edi
	mov	cl, dil
	test	al, 1
	mov	byte ptr [rbp - 0x1e], cl
	jne	.label_34
	jmp	.label_44
.label_34:
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [other_indent]]
	sete	cl
	mov	byte ptr [rbp - 0x1e], cl
.label_44:
	mov	al, byte ptr [rbp - 0x1e]
	test	al, 1
	jne	.label_19
	jmp	.label_27
.label_27:
	jmp	.label_26
.label_42:
	movabs	rax, OFFSET FLAT:unused_word_type
	movabs	rcx, OFFSET FLAT:parabuf
	mov	edx,  dword ptr [dword ptr [next_prefix_indent]]
	mov	dword ptr [dword ptr [prefix_indent]],  edx
	mov	edx,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [dword ptr [first_indent]],  edx
	mov	qword ptr [word ptr [wptr]],  rcx
	mov	qword ptr [word ptr [word_limit]],  rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	get_line
	mov	dword ptr [rbp - 0x14], eax
	mov	edi, dword ptr [rbp - 0x14]
	call	same_para
	and	al, 1
	movzx	edi, al
	call	set_other_indent
	test	byte ptr [byte ptr [split]],  1
	je	.label_48
	jmp	.label_23
	.section	.text
	.align	16
	#Procedure 0x401b90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bb8
	.globl sub_401bb8
	.type sub_401bb8, @function
sub_401bb8:

	nop	dword ptr [rax + rax]
.label_53:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_49
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_50
.label_49:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_50
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_50:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_51
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_51:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_52:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c4d
	.globl sub_401c4d
	.type sub_401c4d, @function
sub_401c4d:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401c4f

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_53
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_52
.label_55:
	mov	byte ptr [rbp - 1], 0
.label_56:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c9e
	.globl sub_401c9e
	.type sub_401c9e, @function
sub_401c9e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cac
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_55
	jmp	.label_54
.label_54:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_56
	.section	.text
	.align	16
	#Procedure 0x401cd0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_57
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_60
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_60:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_58
	call	xalloc_die
.label_57:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_59
	call	xalloc_die
.label_59:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_61:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401db2
	.globl sub_401db2
	.type sub_401db2, @function
sub_401db2:

	nop	word ptr [rax + rax]
.label_58:
	jmp	.label_61
	.section	.text
	.align	16
	#Procedure 0x401dc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_64:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_62
	jmp	.label_63
.label_63:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_64
.label_62:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
.label_65:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e36
	.globl sub_401e36
	.type sub_401e36, @function
sub_401e36:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e3f

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_68
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_71
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_68
.label_71:
	movabs	rdi, OFFSET FLAT:label_70
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_67
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_69
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_72
.label_68:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_65
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_67:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_66
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_72:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_74:
	mov	byte ptr [rbp - 1], 0
.label_75:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f2e
	.globl sub_401f2e
	.type sub_401f2e, @function
sub_401f2e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f3c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_74
	jmp	.label_73
.label_73:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_75
.label_76:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f7e

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_78
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_78:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_77
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_76
.label_77:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_79
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_79:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402013
	.globl sub_402013
	.type sub_402013, @function
sub_402013:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402020

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_80
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_80
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_82
.label_80:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_81
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_81
	call	xalloc_die
.label_81:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_82:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40209a
	.globl sub_40209a
	.type sub_40209a, @function
sub_40209a:

	nop	word ptr [rax + rax]
.label_94:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_83
	call	__errno_location
	mov	dword ptr [rax], 0
.label_83:
	jmp	.label_86
.label_86:
	jmp	.label_89
.label_89:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_90
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_84
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_85
.label_84:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_87
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_88
.label_87:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_88:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_69
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_90:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402153
	.globl sub_402153
	.type sub_402153, @function
sub_402153:

	nop	word ptr cs:[rax + rax]
.label_95:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_93:
	jmp	.label_91
.label_91:
	jmp	.label_89
.label_92:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_94
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_86
	.section	.text
	.align	16
	#Procedure 0x40218c

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_92
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_96
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_91
.label_96:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_95
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_93
	.section	.text
	.align	16
	#Procedure 0x402220
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_97
	jmp	.label_99
.label_99:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_98
.label_97:
	mov	byte ptr [rbp - 1], 0
.label_98:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402252
	.globl sub_402252
	.type sub_402252, @function
sub_402252:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402260

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_100
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_101
.label_100:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_102
.label_101:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_102:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022b8
	.globl sub_4022b8
	.type sub_4022b8, @function
sub_4022b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_113:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_112
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_112:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_106
	jmp	.label_110
.label_106:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_113
.label_110:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_115
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_115:
	movabs	rdi, OFFSET FLAT:label_105
	call	gettext
	movabs	rsi, OFFSET FLAT:label_116
	movabs	rdx, OFFSET FLAT:label_114
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_104
	movabs	rsi, OFFSET FLAT:label_109
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_104
	movabs	rdi, OFFSET FLAT:label_117
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_104:
	movabs	rdi, OFFSET FLAT:label_111
	call	gettext
	movabs	rsi, OFFSET FLAT:label_114
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_103
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_107
	movabs	rsi, OFFSET FLAT:label_108
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402459
	.globl sub_402459
	.type sub_402459, @function
sub_402459:

	nop	dword ptr [rax]
.label_148:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_128
	movabs	rdi, OFFSET FLAT:label_118
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	ecx, 0x9c4
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:label_107
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r8, rax
	call	xdectoumax
	mov	r9d, eax
	mov	dword ptr [dword ptr [max_width]],  r9d
.label_128:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_134
	movabs	rdi, OFFSET FLAT:label_118
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rdx,  dword ptr [dword ptr [max_width]]
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0x98], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	movabs	rcx, OFFSET FLAT:label_107
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	r8, rax
	call	xdectoumax
	mov	r9d, eax
	mov	dword ptr [dword ptr [goal_width]],  r9d
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_131
	mov	eax,  dword ptr [dword ptr [goal_width]]
	add	eax, 0xa
	mov	dword ptr [dword ptr [max_width]],  eax
.label_131:
	jmp	.label_126
.label_139:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_prefix
	jmp	.label_138
.label_134:
	mov	eax, 0xc8
	imul	ecx,  dword ptr [dword ptr [max_width]],  0xbb
	mov	dword ptr [rbp - 0x9c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x9c]
	idiv	ecx
	mov	dword ptr [dword ptr [goal_width]],  eax
.label_126:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jne	.label_135
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fmt
	jmp	.label_123
.label_121:
	movabs	rsi, OFFSET FLAT:label_125
	mov	rdi, qword ptr [rbp - 0x30]
	call	fopen
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_120
	mov	rdi, qword ptr [rbp - 0x38]
	call	fmt
	mov	rdi, qword ptr [rbp - 0x38]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_119
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0xa0], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_66
	mov	esi, dword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x15], 0
.label_119:
	jmp	.label_122
.label_135:
	jmp	.label_124
.label_124:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_127
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, OFFSET FLAT:label_132
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_121
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fmt
	jmp	.label_130
.label_136:
	mov	byte ptr [byte ptr [uniform]],  1
	jmp	.label_138
.label_154:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_138
.label_120:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_129
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x15], 0
.label_122:
	jmp	.label_130
.label_130:
	jmp	.label_133
.label_133:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_124
.label_127:
	jmp	.label_123
.label_123:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402717
	.globl sub_402717
	.type sub_402717, @function
sub_402717:

	nop	dword ptr [rax]
.label_145:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_138
.label_146:
	mov	byte ptr [byte ptr [split]],  1
	jmp	.label_138
.label_151:
	movabs	rsi, OFFSET FLAT:label_156
	movabs	rdx, OFFSET FLAT:label_116
	movabs	r8, OFFSET FLAT:label_157
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_138:
	jmp	.label_158
.label_147:
	mov	byte ptr [byte ptr [crown]],  1
	jmp	.label_138
.label_141:
	mov	byte ptr [byte ptr [tagged]],  1
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x402799

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 1
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_107
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_162
	movabs	rsi, OFFSET FLAT:label_163
	mov	qword ptr [rbp - 0x40], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_162
	mov	qword ptr [rbp - 0x48], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x50], rax
	call	atexit
	movabs	rsi, OFFSET FLAT:label_107
	mov	byte ptr [byte ptr [uniform]],  0
	mov	byte ptr [byte ptr [split]],  0
	mov	byte ptr [byte ptr [tagged]],  0
	mov	byte ptr [byte ptr [crown]],  0
	mov	dword ptr [dword ptr [max_width]],  0x4b
	mov	qword ptr [word ptr [prefix]],  rsi
	mov	dword ptr [dword ptr [prefix_full_length]],  0
	mov	dword ptr [dword ptr [prefix_lead_space]],  0
	mov	dword ptr [dword ptr [prefix_length]],  0
	cmp	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 0x54], eax
	jle	.label_164
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_164
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_164
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 8]
	add	edx, -1
	mov	dword ptr [rbp - 8], edx
.label_164:
	jmp	.label_158
.label_158:
	movabs	rdx, OFFSET FLAT:label_159
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_148
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x58], eax
	mov	dword ptr [rbp - 0x5c], ecx
	je	.label_151
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x60], eax
	je	.label_140
	jmp	.label_142
.label_142:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x64], eax
	je	.label_147
	jmp	.label_152
.label_152:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x68], eax
	je	.label_154
	jmp	.label_161
.label_161:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_139
	jmp	.label_144
.label_144:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x70], eax
	je	.label_146
	jmp	.label_149
.label_149:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x74], eax
	je	.label_141
	jmp	.label_160
.label_160:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x78], eax
	je	.label_136
	jmp	.label_143
.label_143:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_145
	jmp	.label_153
.label_153:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_150
	movabs	rdi, OFFSET FLAT:label_155
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x14]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x80], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x80]
	mov	al, 0
	call	error
.label_150:
	mov	edi, 1
	call	usage
.label_140:
	xor	edi, edi
	call	usage
	.section	.text
	.align	16
	#Procedure 0x402a30

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a4f
	.globl sub_402a4f
	.type sub_402a4f, @function
sub_402a4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402a50

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a75
	.globl sub_402a75
	.type sub_402a75, @function
sub_402a75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_165
	jmp	.label_167
.label_167:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_166
.label_165:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_166:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ab7
	.globl sub_402ab7
	.type sub_402ab7, @function
sub_402ab7:

	nop	word ptr [rax + rax]
.label_168:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	get_space
	mov	dword ptr [rbp - 0x14], eax
.label_173:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
.label_170:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ade
	.globl sub_402ade
	.type sub_402ade, @function
sub_402ade:

	nop	dword ptr [rax]
.label_169:
	mov	eax,  dword ptr [dword ptr [in_column]]
	add	eax, 1
	mov	dword ptr [dword ptr [in_column]],  eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_171
.label_175:
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [rbp - 0x34], eax
.label_172:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [dword ptr [next_prefix_indent]],  eax
	jmp	.label_173
.label_174:
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [dword ptr [next_prefix_indent]],  eax
	mov	rcx,  qword ptr [word ptr [prefix]]
	mov	qword ptr [rbp - 0x20], rcx
.label_171:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_168
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	mov	edx, dword ptr [rbp - 0x14]
	movzx	esi, byte ptr [rbp - 0x21]
	cmp	edx, esi
	je	.label_169
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_170
	.section	.text
	.align	16
	#Procedure 0x402b76

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [dword ptr [in_column]],  0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rax
	call	getc_unlocked
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, eax
	call	get_space
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [dword ptr [prefix_length]],  0
	jne	.label_174
	mov	eax,  dword ptr [dword ptr [prefix_lead_space]]
	cmp	eax,  dword ptr [dword ptr [in_column]]
	jge	.label_175
	mov	eax,  dword ptr [dword ptr [prefix_lead_space]]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_172
	.section	.text
	.align	16
	#Procedure 0x402be0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bf6
	.globl sub_402bf6
	.type sub_402bf6, @function
sub_402bf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_176
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_178
	jmp	.label_176
.label_176:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_177
.label_178:
	mov	byte ptr [rbp - 1], 0
.label_177:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c4b
	.globl sub_402c4b
	.type sub_402c4b, @function
sub_402c4b:

	nop	dword ptr [rax + rax]
.label_188:
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	dword ptr [rbp - 8], eax
.label_182:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [dword ptr [other_indent]],  eax
	jmp	.label_180
.label_187:
	test	byte ptr [byte ptr [crown]],  1
	je	.label_185
	test	byte ptr [rbp - 1], 1
	je	.label_188
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_182
	.section	.text
	.align	16
	#Procedure 0x402c90

	.globl set_other_indent
	.type set_other_indent, @function
set_other_indent:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [byte ptr [split]],  1
	je	.label_187
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	dword ptr [dword ptr [other_indent]],  eax
	jmp	.label_181
.label_185:
	test	byte ptr [byte ptr [tagged]],  1
	je	.label_190
	test	byte ptr [rbp - 1], 1
	je	.label_186
	mov	eax,  dword ptr [dword ptr [in_column]]
	cmp	eax,  dword ptr [dword ptr [first_indent]]
	je	.label_186
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [dword ptr [other_indent]],  eax
	jmp	.label_184
.label_190:
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	dword ptr [dword ptr [other_indent]],  eax
.label_183:
	jmp	.label_180
.label_180:
	jmp	.label_181
.label_181:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d16
	.globl sub_402d16
	.type sub_402d16, @function
sub_402d16:

	nop	dword ptr [rax]
.label_186:
	mov	eax,  dword ptr [dword ptr [other_indent]]
	cmp	eax,  dword ptr [dword ptr [first_indent]]
	jne	.label_189
	xor	eax, eax
	mov	ecx, 3
	cmp	dword ptr [dword ptr [first_indent]],  0
	cmove	eax, ecx
	mov	dword ptr [dword ptr [other_indent]],  eax
.label_189:
	jmp	.label_184
.label_184:
	jmp	.label_183
	.section	.text
	.align	16
	#Procedure 0x402d50
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_191
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_192
.label_191:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_192
.label_192:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e15
	.globl sub_402e15
	.type sub_402e15, @function
sub_402e15:

	nop	word ptr cs:[rax + rax]
.label_194:
	mov	byte ptr [rbp - 1], 0
.label_196:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e2e
	.globl sub_402e2e
	.type sub_402e2e, @function
sub_402e2e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e36
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_193
	jmp	.label_195
.label_195:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_194
	jmp	.label_193
.label_193:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_196
.label_199:
	mov	byte ptr [rbp - 1], 0
.label_198:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e7e
	.globl sub_402e7e
	.type sub_402e7e, @function
sub_402e7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402e7f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_199
	jmp	.label_197
.label_197:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_198
.label_203:
	jmp	.label_200
.label_200:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_201
	jmp	.label_204
.label_201:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_200
.label_204:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_202:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f17
	.globl sub_402f17
	.type sub_402f17, @function
sub_402f17:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f26

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_203
	mov	dword ptr [rbp - 4], 0
	jmp	.label_202
.label_213:
	call	fmt_paragraph
	movabs	rax, 0x7fffffffffffffff
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [label_208]]
	mov	qword ptr [rbp - 0x10], rax
.label_205:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [word_limit]]
	je	.label_209
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	sub	rax, qword ptr [rcx + 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_214
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	sub	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_214:
	movabs	rax, 0x7ffffffffffffff6
	cmp	qword ptr [rbp - 0x20], rax
	jg	.label_206
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	qword ptr [rbp - 0x20], rax
.label_206:
	jmp	.label_212
.label_212:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_205
.label_209:
	mov	rdi, qword ptr [rbp - 8]
	call	put_paragraph
	xor	eax, eax
	mov	edi, eax
	movabs	rcx, OFFSET FLAT:parabuf
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	rdx,  qword ptr [word ptr [wptr]]
	mov	r8, qword ptr [rbp - 8]
	mov	r8, qword ptr [r8]
	sub	rdx, r8
	mov	eax, OFFSET FLAT:parabuf
	mov	r8d, eax
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x38], rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	r9d, ecx
	mov	dword ptr [rbp - 0x14], r9d
	mov	r9d, dword ptr [rbp - 0x14]
	mov	rcx,  qword ptr [word ptr [wptr]]
	movsxd	rsi, r9d
	mov	rdi, qword ptr [rbp - 0x30]
	sub	rdi, rsi
	add	rcx, rdi
	mov	qword ptr [word ptr [wptr]],  rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x40], rax
.label_210:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [word_limit]]
	ja	.label_211
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx]
	movsxd	rdi, eax
	sub	rcx, rdi
	add	rsi, rcx
	mov	qword ptr [rdx], rsi
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_210
	.section	.text
	.align	16
	#Procedure 0x4030d8

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	movabs	rax, OFFSET FLAT:unused_word_type
	cmp	qword ptr [word ptr [word_limit]],  rax
	jne	.label_213
	movabs	rax, OFFSET FLAT:parabuf
	mov	ecx, 1
	mov	esi, ecx
	mov	rdx,  qword ptr [word ptr [wptr]]
	sub	rdx, rax
	mov	rcx,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fwrite_unlocked
	movabs	rcx, OFFSET FLAT:parabuf
	mov	qword ptr [word ptr [wptr]],  rcx
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_207
.label_211:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 0x28
	mov	edx, eax
	movabs	rsi, OFFSET FLAT:unused_word_type
	mov	rdi, qword ptr [rbp - 8]
	mov	r8,  qword ptr [word ptr [word_limit]]
	mov	r9, qword ptr [rbp - 8]
	sub	r8, r9
	mov	rax, r8
	mov	qword ptr [rbp - 0x48], rdx
	cqo	
	mov	r8, qword ptr [rbp - 0x48]
	idiv	r8
	add	rax, 1
	imul	rax, rax, 0x28
	mov	r10d, OFFSET FLAT:unused_word_type
	mov	r9d, r10d
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, r9
	mov	r9, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsi, r9
	mov	rdx, rax
	mov	qword ptr [rbp - 0x60], rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, rcx
	cqo	
	mov	rcx, qword ptr [rbp - 0x48]
	idiv	rcx
	mov	rsi,  qword ptr [word ptr [word_limit]]
	mov	rdi, qword ptr [rbp - 0x60]
	sub	rdi, rax
	imul	rax, rdi, 0x28
	add	rsi, rax
	mov	qword ptr [word ptr [word_limit]],  rsi
.label_207:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031e5
	.globl sub_4031e5
	.type sub_4031e5, @function
sub_4031e5:

	nop	word ptr cs:[rax + rax]
.label_217:
	mov	byte ptr [rbp - 1], 0
.label_215:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031fe
	.globl sub_4031fe
	.type sub_4031fe, @function
sub_4031fe:

	nop	word ptr cs:[rax + rax]
.label_794:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_215
	.section	.text
	.align	16
	#Procedure 0x403216
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_217
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_216]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x403240

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032b5
	.globl sub_4032b5
	.type sub_4032b5, @function
sub_4032b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_218
	movabs	rdi, OFFSET FLAT:label_225
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_218:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_219
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_222
.label_219:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_222:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_220
	movabs	rsi, OFFSET FLAT:label_221
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_220
	movabs	rsi, OFFSET FLAT:label_223
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_224
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_224:
	jmp	.label_220
.label_220:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033d9
	.globl sub_4033d9
	.type sub_4033d9, @function
sub_4033d9:

	nop	dword ptr [rax]
.label_237:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_228
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_234
	movabs	rax, OFFSET FLAT:label_235
	movabs	rcx, OFFSET FLAT:label_236
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_231
.label_234:
	movabs	rsi, OFFSET FLAT:label_226
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_227
	movabs	rax, OFFSET FLAT:label_229
	movabs	rcx, OFFSET FLAT:label_230
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x403477

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_237
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_231
.label_227:
	movabs	rax, OFFSET FLAT:label_232
	movabs	rcx, OFFSET FLAT:label_233
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_231:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034d8
	.globl sub_4034d8
	.type sub_4034d8, @function
sub_4034d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034e0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_238
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_238:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_239
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_239
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_239
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_240
.label_239:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_240:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403581
	.globl sub_403581
	.type sub_403581, @function
sub_403581:

	nop	word ptr cs:[rax + rax]
.label_250:
	cmp	dword ptr [rbp - 0xc], -1
	je	.label_244
	cmp	dword ptr [rbp - 0xc], 0xa
	je	.label_244
	mov	eax,  dword ptr [dword ptr [in_column]]
	sub	eax,  dword ptr [dword ptr [out_column]]
	mov	edi, eax
	call	put_space
.label_244:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_241
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	ecx,  dword ptr [dword ptr [next_prefix_indent]]
	add	ecx,  dword ptr [dword ptr [prefix_length]]
	cmp	eax, ecx
	jl	.label_241
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x24], eax
.label_241:
	jmp	.label_243
.label_243:
	jmp	.label_245
.label_245:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xc], 0xa
	mov	byte ptr [rbp - 0x25], cl
	je	.label_246
	cmp	dword ptr [rbp - 0xc], -1
	setne	al
	mov	byte ptr [rbp - 0x25], al
.label_246:
	mov	al, byte ptr [rbp - 0x25]
	test	al, 1
	jne	.label_242
	jmp	.label_247
.label_242:
	mov	edi, dword ptr [rbp - 0xc]
	call	putchar_unlocked
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2c], eax
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_245
.label_247:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403647
	.globl sub_403647
	.type sub_403647, @function
sub_403647:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40364b

	.globl copy_rest
	.type copy_rest, @function
copy_rest:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [dword ptr [out_column]],  0
	mov	esi,  dword ptr [dword ptr [in_column]]
	cmp	esi,  dword ptr [dword ptr [next_prefix_indent]]
	jg	.label_251
	cmp	dword ptr [rbp - 0xc], 0xa
	je	.label_243
	cmp	dword ptr [rbp - 0xc], -1
	je	.label_243
.label_251:
	mov	edi,  dword ptr [dword ptr [next_prefix_indent]]
	call	put_space
	mov	rax,  qword ptr [word ptr [prefix]]
	mov	qword ptr [rbp - 0x18], rax
.label_252:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [out_column]]
	cmp	eax,  dword ptr [dword ptr [in_column]]
	mov	byte ptr [rbp - 0x19], cl
	je	.label_249
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x19], dl
.label_249:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_248
	jmp	.label_250
.label_248:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
	mov	eax,  dword ptr [dword ptr [out_column]]
	add	eax, 1
	mov	dword ptr [dword ptr [out_column]],  eax
	jmp	.label_252
	.section	.text
	.align	16
	#Procedure 0x403710

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_253
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_253:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40374b
	.globl sub_40374b
	.type sub_40374b, @function
sub_40374b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403788
	.globl sub_403788
	.type sub_403788, @function
sub_403788:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403790

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_254
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_259:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_255
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_258]],  rax
.label_255:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_256
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_256:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403846
	.globl sub_403846
	.type sub_403846, @function
sub_403846:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403852
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_257:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_259
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_257
	.section	.text
	.align	16
	#Procedure 0x4038a0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_260
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_260:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038dd
	.globl sub_4038dd
	.type sub_4038dd, @function
sub_4038dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0

	.globl fmt
	.type fmt, @function
fmt:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 2
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	fadvise
	mov	byte ptr [byte ptr [tabs]],  0
	mov	dword ptr [dword ptr [other_indent]],  0
	mov	rdi, qword ptr [rbp - 8]
	call	get_prefix
	mov	dword ptr [dword ptr [next_char]],  eax
.label_263:
	mov	rdi, qword ptr [rbp - 8]
	call	get_paragraph
	test	al, 1
	jne	.label_261
	jmp	.label_262
.label_261:
	call	fmt_paragraph
	mov	rdi,  qword ptr [word ptr [word_limit]]
	call	put_paragraph
	jmp	.label_263
.label_262:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403950
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40397d
	.globl sub_40397d
	.type sub_40397d, @function
sub_40397d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403980
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_264
	jmp	.label_267
.label_267:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_265
	jmp	.label_264
.label_264:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_266
.label_265:
	mov	byte ptr [rbp - 1], 0
.label_266:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039ce
	.globl sub_4039ce
	.type sub_4039ce, @function
sub_4039ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a0f
	.globl sub_403a0f
	.type sub_403a0f, @function
sub_403a0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a10

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a2b
	.globl sub_403a2b
	.type sub_403a2b, @function
sub_403a2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a30

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_268
	cmp	qword ptr [rbp - 8], 0
	je	.label_268
	call	xalloc_die
.label_268:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a6e
	.globl sub_403a6e
	.type sub_403a6e, @function
sub_403a6e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_269:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_273
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_271
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_270
.label_271:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_270:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_273:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_275
	jmp	.label_274
.label_275:
	jmp	.label_272
.label_272:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_269
.label_274:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b79
	.globl sub_403b79
	.type sub_403b79, @function
sub_403b79:

	nop	dword ptr [rax]
.label_277:
	mov	byte ptr [rbp - 1], 0
.label_278:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b8e
	.globl sub_403b8e
	.type sub_403b8e, @function
sub_403b8e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b9c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_277
	jmp	.label_276
.label_276:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_278
.label_280:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_279:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bdb
	.globl sub_403bdb
	.type sub_403bdb, @function
sub_403bdb:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403bdf

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_280
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_279
.label_283:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_281
.label_281:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_282
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_282:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d43
	.globl sub_403d43
	.type sub_403d43, @function
sub_403d43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d4f

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_283
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_281
.label_287:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax - 0x1c]
	mov	rax, qword ptr [rbp - 0x10]
	add	ecx, dword ptr [rax + 8]
	add	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], ecx
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax,  dword ptr [dword ptr [max_width]]
	jl	.label_284
.label_289:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	base_cost
	mov	rdi, qword ptr [rbp - 0x38]
	add	rdi, rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], rdi
	mov	rax, qword ptr [rbp - 8]
	add	rax, -0x28
	mov	qword ptr [rbp - 8], rax
	jmp	.label_285
.label_290:
	mov	eax,  dword ptr [dword ptr [other_indent]]
	mov	dword ptr [rbp - 0x30], eax
.label_292:
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x14], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rcx + 8]
	add	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
.label_284:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	line_cost
	movabs	rdi, OFFSET FLAT:unused_word_type
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 8], rdi
	jne	.label_288
	cmp	dword ptr [dword ptr [last_line_length]],  0
	jle	.label_288
	mov	eax, 2
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax,  dword ptr [dword ptr [last_line_length]]
	imul	eax, eax, 0xa
	movsxd	rdx, eax
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax,  dword ptr [dword ptr [last_line_length]]
	imul	eax, eax, 0xa
	movsxd	rsi, eax
	imul	rdx, rsi
	mov	rax, rdx
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_288:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_291
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], edx
.label_291:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [word_limit]]
	jne	.label_287
	jmp	.label_289
	.section	.text
	.align	16
	#Procedure 0x403ebe

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	qword ptr [rax + 0x18], 0
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	ecx,  dword ptr [dword ptr [max_width]]
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rax + 8], ecx
	mov	rax,  qword ptr [word ptr [word_limit]]
	add	rax, -0x28
	mov	qword ptr [rbp - 8], rax
.label_285:
	movabs	rax, OFFSET FLAT:unused_word_type
	cmp	qword ptr [rbp - 8], rax
	jb	.label_286
	movabs	rax, OFFSET FLAT:unused_word_type
	movabs	rcx, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 8], rax
	jne	.label_290
	mov	eax,  dword ptr [dword ptr [first_indent]]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_292
.label_286:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rcx + 8], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f5f
	.globl sub_403f5f
	.type sub_403f5f, @function
sub_403f5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403f60

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f97
	.globl sub_403f97
	.type sub_403f97, @function
sub_403f97:

	nop	word ptr [rax + rax]
.label_294:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_295:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fab
	.globl sub_403fab
	.type sub_403fab, @function
sub_403fab:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fb4
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_294
	jmp	.label_293
.label_293:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_295
	.section	.text
	.align	16
	#Procedure 0x403fe0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404000
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404031
	.globl sub_404031
	.type sub_404031, @function
sub_404031:

	nop	word ptr cs:[rax + rax]
.label_297:
	mov	byte ptr [rbp - 1], 0
.label_298:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40404e
	.globl sub_40404e
	.type sub_40404e, @function
sub_40404e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40405c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_297
	jmp	.label_296
.label_296:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_298
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040be
	.globl sub_4040be
	.type sub_4040be, @function
sub_4040be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4040c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040da
	.globl sub_4040da
	.type sub_4040da, @function
sub_4040da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040e0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40412e
	.globl sub_40412e
	.type sub_40412e, @function
sub_40412e:

	nop	
.label_357:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_370
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_370
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_374
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_374:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_380
.label_380:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_353
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_389
.label_389:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_392
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_392:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_370:
	jmp	.label_454
.label_454:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_400
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_406
.label_406:
	jmp	.label_413
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_414
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_414:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_420
.label_420:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_423
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_423:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_329
.label_804:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_383
	movabs	rdi, OFFSET FLAT:label_436
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_232
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_383:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_442
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_425:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_347
	jmp	.label_450
.label_450:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_452
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_452:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_461
.label_461:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_425
.label_415:
	jmp	.label_315
.label_315:
	jmp	.label_330
.label_314:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_475
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_475:
	jmp	.label_409
.label_409:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_489
	jmp	.label_372
.label_346:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_491
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_491
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_491:
	jmp	.label_468
.label_468:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_482
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_482:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_301
.label_301:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_304
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_317
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_317:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_340:
	jmp	.label_330
.label_306:
	mov	byte ptr [rbp - 0x81], 1
.label_303:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_326
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_342]]
	jmp	rcx
.label_433:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_320
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_320
	test	byte ptr [rbp - 0x7d], 1
	je	.label_320
	test	byte ptr [rbp - 0x7e], 1
	je	.label_351
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_365
.label_343:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_447
	jmp	.label_308
.label_694:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_336
.label_489:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_368
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_372
.label_799:
	mov	byte ptr [rbp - 0x79], 1
.label_798:
	mov	byte ptr [rbp - 0x7b], 1
.label_800:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_376
	mov	byte ptr [rbp - 0x79], 1
.label_376:
	jmp	.label_379
.label_379:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_382
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_387
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_387:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_382
.label_382:
	movabs	rax, OFFSET FLAT:label_232
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_362
.label_698:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_330
.label_802:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_801:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_360
	jmp	.label_405
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_407
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_407:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_360
.label_360:
	movabs	rax, OFFSET FLAT:label_233
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_362
.label_402:
	jmp	.label_348
.label_348:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_395
	test	byte ptr [rbp - 0x7b], 1
	je	.label_395
	jmp	.label_308
.label_701:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_430
	test	byte ptr [rbp - 0x7b], 1
	je	.label_432
	jmp	.label_308
.label_441:
	jmp	.label_434
.label_434:
	mov	byte ptr [rbp - 0x83], 1
.label_697:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_399
	test	byte ptr [rbp - 0x7b], 1
	je	.label_399
	jmp	.label_308
.label_397:
	jmp	.label_325
.label_325:
	jmp	.label_364
.label_364:
	jmp	.label_333
.label_464:
	jmp	.label_330
.label_330:
	test	byte ptr [rbp - 0x79], 1
	je	.label_440
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_443
.label_440:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_445
.label_443:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_445
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_451
.label_445:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_451
	jmp	.label_316
.label_331:
	jmp	.label_467
.label_467:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_458
	test	byte ptr [rbp - 0x82], 1
	jne	.label_458
	jmp	.label_472
.label_472:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_459
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_459:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_476
.label_476:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_478
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_478:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_458:
	jmp	.label_484
.label_484:
	jmp	.label_486
.label_486:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_487
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_487:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_490
.label_451:
	jmp	.label_435
.label_435:
	jmp	.label_495
.label_495:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_498
	jmp	.label_308
.label_695:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_336
.label_308:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_300
	test	byte ptr [rbp - 0x79], 1
	je	.label_300
	mov	dword ptr [rbp - 0x34], 4
.label_300:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_365:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404879
	.globl sub_404879
	.type sub_404879, @function
sub_404879:

	nop	dword ptr [rax + rax]
.label_362:
	mov	qword ptr [rbp - 0x58], 0
.label_437:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_469
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_337
.label_496:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_344
.label_334:
	jmp	.label_330
.label_421:
	jmp	.label_310
.label_310:
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_350
.label_689:
	test	byte ptr [rbp - 0x79], 1
	je	.label_355
	jmp	.label_356
.label_356:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_358
	jmp	.label_308
.label_498:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_363
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_363
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_367
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_367:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_375
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_381
.label_381:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_385
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_385:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_363:
	jmp	.label_493
.label_493:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_393
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_393:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_398
.label_398:
	jmp	.label_316
.label_316:
	jmp	.label_411
.label_411:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_403
	test	byte ptr [rbp - 0x82], 1
	jne	.label_403
	jmp	.label_408
.label_408:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_410
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_410:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_419
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_419:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_403:
	jmp	.label_426
.label_426:
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_431
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_431:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_448
	mov	byte ptr [rbp - 0x7e], 0
.label_448:
	jmp	.label_417
.label_417:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_437
.label_432:
	jmp	.label_316
.label_471:
	jmp	.label_439
.label_439:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_444
	mov	byte ptr [rbp - 0x91], 0
.label_444:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_449
.label_449:
	jmp	.label_457
.label_457:
	jmp	.label_460
.label_460:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_409
.label_372:
	jmp	.label_324
.label_324:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_466
	test	byte ptr [rbp - 0x79], 1
	je	.label_464
	test	byte ptr [rbp - 0x91], 1
	jne	.label_464
.label_466:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_490:
	test	byte ptr [rbp - 0x79], 1
	je	.label_477
	test	byte ptr [rbp - 0x91], 1
	jne	.label_477
	jmp	.label_480
.label_480:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_357
	jmp	.label_308
.label_341:
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_485
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_485:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_365
.label_401:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_492
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_492:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_499
.label_499:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_500
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_500:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_305
.label_305:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_311
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_311:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_322
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_322:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_325
.label_418:
	jmp	.label_328
.label_328:
	jmp	.label_320
.label_320:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_332
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_332
	jmp	.label_338
.label_338:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_341
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_345
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_345:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_338
.label_797:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_362
.label_399:
	jmp	.label_330
.label_469:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_337:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_438
	jmp	.label_473
.label_438:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_303
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_303
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_303
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_335
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_335
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_391
.label_395:
	jmp	.label_336
.label_336:
	test	byte ptr [rbp - 0x79], 1
	je	.label_394
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_435
.label_339:
	jmp	.label_316
.label_692:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_348
.label_455:
	call	abort
.label_430:
	test	byte ptr [rbp - 0x79], 1
	je	.label_402
	test	byte ptr [rbp - 0x7b], 1
	je	.label_402
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_402
	jmp	.label_316
.label_693:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_348
.label_355:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_415
	jmp	.label_417
.label_424:
	jmp	.label_372
.label_351:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_418
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_418
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_377
	.section	.text
	.align	16
	#Procedure 0x404e4f

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_377:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_455
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_463]]
	jmp	rcx
.label_404:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_439
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_439
	mov	qword ptr [rbp - 0xb8], 1
.label_350:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_471
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_396
	jmp	.label_481
.label_481:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_396
	jmp	.label_488
.label_488:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_396
	jmp	.label_422
.label_422:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_421
	jmp	.label_396
.label_396:
	jmp	.label_308
.label_335:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_391:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_303
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_303
	test	byte ptr [rbp - 0x7b], 1
	je	.label_306
	jmp	.label_308
.label_691:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_336
.label_326:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_314
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_324
.label_394:
	jmp	.label_330
.label_447:
	jmp	.label_333
.label_690:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_336
.label_359:
	jmp	.label_333
.label_333:
	jmp	.label_330
.label_699:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_340
	test	byte ptr [rbp - 0x7b], 1
	je	.label_346
	jmp	.label_308
.label_700:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_343
	jmp	.label_352
.label_352:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_354
	jmp	.label_359
.label_803:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_362
.label_354:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_364
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_364
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_364
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_371
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_371
	jmp	.label_388
.label_388:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_371
	jmp	.label_390
.label_390:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_371
	jmp	.label_429
.label_429:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_397
	jmp	.label_371
.label_371:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_401
	jmp	.label_308
.label_368:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_404
	mov	byte ptr [rbp - 0x91], 0
.label_427:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_412
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_412:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_384
	jmp	.label_424
.label_384:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_427
.label_473:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_433
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_433
	test	byte ptr [rbp - 0x7b], 1
	je	.label_433
	jmp	.label_308
.label_347:
	jmp	.label_442
.label_442:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_362
.label_344:
	jmp	.label_307
.label_307:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_441
	jmp	.label_330
.label_358:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_446
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_446
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_456
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_456:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_462
.label_462:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_465
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_465:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_470
.label_470:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_474
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_474:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_446:
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_327
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_327:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_483
.label_483:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_312
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_312
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_312
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_312
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_497
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_497:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_299
.label_299:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_302
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_302:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_312
.label_312:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_315
.label_477:
	test	byte ptr [rbp - 0x81], 1
	je	.label_319
	jmp	.label_321
.label_321:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_323
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_319:
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_331
	jmp	.label_339
.label_702:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_496
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_344
	jmp	.label_334
.label_696:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_348
.label_501:
	mov	rdi, qword ptr [rbp - 8]
	call	put_word
	mov	edi, 0xa
	mov	eax,  dword ptr [dword ptr [out_column]]
	mov	dword ptr [dword ptr [last_line_length]],  eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054fa
	.globl sub_4054fa
	.type sub_4054fa, @function
sub_4054fa:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405508

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [dword ptr [out_column]],  0
	mov	edi,  dword ptr [dword ptr [prefix_indent]]
	call	put_space
	mov	rdi,  qword ptr [word ptr [prefix]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	ecx,  dword ptr [dword ptr [prefix_length]]
	add	ecx,  dword ptr [dword ptr [out_column]]
	mov	dword ptr [dword ptr [out_column]],  ecx
	mov	ecx, dword ptr [rbp - 0xc]
	sub	ecx,  dword ptr [dword ptr [out_column]]
	mov	edi, ecx
	mov	dword ptr [rbp - 0x1c], eax
	call	put_space
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	add	rsi, -0x28
	mov	qword ptr [rbp - 0x18], rsi
.label_502:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_501
	mov	rdi, qword ptr [rbp - 8]
	call	put_word
	mov	rdi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rdi + 0xc]
	call	put_space
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x28
	mov	qword ptr [rbp - 8], rax
	jmp	.label_502
	.section	.text
	.align	16
	#Procedure 0x4055b0

	.globl put_word
	.type put_word, @function
put_word:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 8]
	mov	dword ptr [rbp - 0x14], eax
.label_504:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_503
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, -1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_504
.label_503:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	add	ecx,  dword ptr [dword ptr [out_column]]
	mov	dword ptr [dword ptr [out_column]],  ecx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40561e
	.globl sub_40561e
	.type sub_40561e, @function
sub_40561e:

	nop	
.label_510:
	jmp	.label_505
.label_505:
	jmp	.label_506
.label_506:
	jmp	.label_507
.label_507:
	mov	eax,  dword ptr [dword ptr [out_column]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_508
	mov	edi, 0x20
	call	putchar_unlocked
	mov	edi,  dword ptr [dword ptr [out_column]]
	add	edi, 1
	mov	dword ptr [dword ptr [out_column]],  edi
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_507
	.section	.text
	.align	16
	#Procedure 0x405662

	.globl put_space
	.type put_space, @function
put_space:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [out_column]]
	add	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	test	byte ptr [byte ptr [tabs]],  1
	je	.label_506
	mov	eax, 8
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x10]
	idiv	ecx
	shl	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	mov	eax,  dword ptr [dword ptr [out_column]]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 0xc]
	jge	.label_505
	jmp	.label_509
.label_509:
	mov	eax,  dword ptr [dword ptr [out_column]]
	cmp	eax, dword ptr [rbp - 0xc]
	jge	.label_510
	mov	edi, 9
	call	putchar_unlocked
	mov	edi, 8
	mov	ecx,  dword ptr [dword ptr [out_column]]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, ecx
	cdq	
	idiv	edi
	add	eax, 1
	shl	eax, 3
	mov	dword ptr [dword ptr [out_column]],  eax
	jmp	.label_509
.label_508:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056ff
	.globl sub_4056ff
	.type sub_4056ff, @function
sub_4056ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405700

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_511
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_511:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405864
	.globl sub_405864
	.type sub_405864, @function
sub_405864:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405870

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405898
	.globl sub_405898
	.type sub_405898, @function
sub_405898:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058a0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_512
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_514:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058ee
	.globl sub_4058ee
	.type sub_4058ee, @function
sub_4058ee:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058f7
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_514
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_513
	.section	.text
	.align	16
	#Procedure 0x405920
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405957
	.globl sub_405957
	.type sub_405957, @function
sub_405957:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405960

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_515
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_518
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_519
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_516
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_517
.label_519:
	mov	byte ptr [rbp - 5], 0
.label_517:
	jmp	.label_515
.label_515:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059d3
	.globl sub_4059d3
	.type sub_4059d3, @function
sub_4059d3:

	nop	word ptr cs:[rax + rax]
.label_521:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_520
.label_520:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059fb
	.globl sub_4059fb
	.type sub_4059fb, @function
sub_4059fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a00
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_521
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_520
.label_527:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x57e40
	mov	qword ptr [rbp - 0x10], rax
.label_525:
	jmp	.label_523
	.section	.text
	.align	16
	#Procedure 0x405a33

	.globl base_cost
	.type base_cost, @function
base_cost:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:unused_word_type
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0x1324
	cmp	qword ptr [rbp - 8], rax
	jbe	.label_528
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax - 0x18]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_530
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax - 0x18]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_527
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 0x9c4
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_525
.label_529:
	movabs	rax, OFFSET FLAT:unused_word_type
	add	rax, 0x28
	cmp	qword ptr [rbp - 8], rax
	jbe	.label_531
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax - 0x40]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_531
	mov	eax, 0x9c40
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx - 0x20]
	add	edx, 2
	movsxd	rcx, edx
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_531:
	jmp	.label_526
.label_526:
	jmp	.label_523
.label_523:
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x10]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_532
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 0x640
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_524
.label_532:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x10]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_522
	mov	eax, 0x57e4
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 8]
	add	edx, 2
	movsxd	rcx, edx
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_522:
	jmp	.label_524
.label_524:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b67
	.globl sub_405b67
	.type sub_405b67, @function
sub_405b67:

	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax - 0x18]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_529
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 0x640
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_526
	.section	.text
	.align	16
	#Procedure 0x405ba0

	.globl same_para
	.type same_para, @function
same_para:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	eax,  dword ptr [dword ptr [next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [prefix_indent]]
	mov	byte ptr [rbp - 5], cl
	jne	.label_533
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [in_column]]
	mov	edx,  dword ptr [dword ptr [next_prefix_indent]]
	add	edx,  dword ptr [dword ptr [prefix_full_length]]
	cmp	eax, edx
	mov	byte ptr [rbp - 5], cl
	jl	.label_533
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 4], 0xa
	mov	byte ptr [rbp - 5], cl
	je	.label_533
	cmp	dword ptr [rbp - 4], -1
	setne	al
	mov	byte ptr [rbp - 5], al
.label_533:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c0b
	.globl sub_405c0b
	.type sub_405c0b, @function
sub_405c0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c10

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_534
	jmp	.label_536
.label_536:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_535
.label_534:
	jmp	.label_535
.label_535:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c5a
	.globl sub_405c5a
	.type sub_405c5a, @function
sub_405c5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c60

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c93
	.globl sub_405c93
	.type sub_405c93, @function
sub_405c93:

	nop	word ptr cs:[rax + rax]
.label_557:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_537
.label_763:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_762:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_554:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_575
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_578
	mov	dword ptr [rbp - 4], 4
	jmp	.label_537
.label_548:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_539
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_549
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_537
.label_579:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_537
.label_568:
	movabs	rdi, OFFSET FLAT:label_559
	movabs	rsi, OFFSET FLAT:label_560
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_561
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405d9e

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_568
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_568
	jmp	.label_573
.label_558:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_541:
	jmp	.label_563
.label_563:
	jmp	.label_556
.label_556:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_579
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_543]]
	jmp	rcx
.label_578:
	mov	dword ptr [rbp - 0x4c], 1
.label_575:
	jmp	.label_547
.label_547:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_548
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_537
.label_565:
	jmp	.label_547
.label_756:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_549:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_540
	jmp	.label_564
.label_564:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_540
	jmp	.label_566
.label_566:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_540
	jmp	.label_570
.label_570:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_540
	jmp	.label_572
.label_572:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_540
	jmp	.label_553
.label_553:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_540
	jmp	.label_538
.label_538:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_540
	jmp	.label_544
.label_544:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_540
	jmp	.label_562
.label_562:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_540
	jmp	.label_552
.label_552:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_540
	jmp	.label_555
.label_555:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_556
	jmp	.label_540
.label_540:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_563
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_558
	jmp	.label_569
.label_569:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_558
	jmp	.label_571
.label_571:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_541
	jmp	.label_567
.label_567:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_551
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_551:
	jmp	.label_541
.label_757:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_764:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_550:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_554
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_557
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_557
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_557
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_565
.label_765:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_759:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_542:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_574
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_574:
	jmp	.label_539
.label_539:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_537:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406138
	.globl sub_406138
	.type sub_406138, @function
sub_406138:

	nop	dword ptr [rax + rax]
.label_577:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_550
	mov	dword ptr [rbp - 4], 4
	jmp	.label_537
.label_767:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_758:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_766:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_542
.label_545:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_546
.label_546:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_576:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_577
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_576
.label_761:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
.label_573:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_545
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_546
.label_760:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_542
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:unused_word_type
	add	rax, 0x9bf0
	movabs	rcx, OFFSET FLAT:parabuf
	add	rcx, 0x1388
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], rax
.label_582:
	mov	rax,  qword ptr [word ptr [wptr]]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	qword ptr [rcx], rax
.label_588:
	mov	rax,  qword ptr [word ptr [wptr]]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_585
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_585:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [wptr]]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [word ptr [wptr]],  rsi
	mov	byte ptr [rdx], cl
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xc], -1
	mov	byte ptr [rbp - 0x21], cl
	je	.label_587
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x30], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	setne	sil
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21], sil
.label_587:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_588
	mov	rax,  qword ptr [word ptr [wptr]]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	edx, eax
	mov	rax,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rax + 8], edx
	add	edx,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [dword ptr [in_column]],  edx
	mov	rdi,  qword ptr [word ptr [word_limit]]
	call	check_punctuation
	mov	edx,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [rbp - 0x10], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	get_space
	mov	r8b, 1
	mov	dword ptr [rbp - 0xc], eax
	mov	eax,  dword ptr [dword ptr [in_column]]
	sub	eax, dword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rcx + 0xc], eax
	cmp	dword ptr [rbp - 0xc], -1
	mov	byte ptr [rbp - 0x31], r8b
	je	.label_581
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [word_limit]]
	mov	sil, byte ptr [rdx + 0x10]
	shr	sil, 1
	and	sil, 1
	movzx	eax, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x32], cl
	je	.label_590
	mov	al, 1
	cmp	dword ptr [rbp - 0xc], 0xa
	mov	byte ptr [rbp - 0x33], al
	je	.label_584
	mov	rax,  qword ptr [word ptr [word_limit]]
	cmp	dword ptr [rax + 0xc], 1
	setg	cl
	mov	byte ptr [rbp - 0x33], cl
.label_584:
	mov	al, byte ptr [rbp - 0x33]
	mov	byte ptr [rbp - 0x32], al
.label_590:
	mov	al, byte ptr [rbp - 0x32]
	mov	byte ptr [rbp - 0x31], al
.label_581:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	mov	rdx,  qword ptr [word ptr [word_limit]]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x10]
	and	al, 1
	shl	al, 3
	and	sil, 0xf7
	or	sil, al
	mov	byte ptr [rdx + 0x10], sil
	cmp	dword ptr [rbp - 0xc], 0xa
	je	.label_580
	cmp	dword ptr [rbp - 0xc], -1
	je	.label_580
	test	byte ptr [byte ptr [uniform]],  1
	je	.label_583
.label_580:
	mov	eax, 1
	mov	ecx, 2
	mov	rdx,  qword ptr [word ptr [word_limit]]
	mov	sil, byte ptr [rdx + 0x10]
	shr	sil, 3
	and	sil, 1
	movzx	edi, sil
	cmp	edi, 0
	cmovne	eax, ecx
	mov	rdx,  qword ptr [word ptr [word_limit]]
	mov	dword ptr [rdx + 0xc], eax
.label_583:
	mov	rax,  qword ptr [word ptr [word_limit]]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_589
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_589:
	mov	rax,  qword ptr [word ptr [word_limit]]
	add	rax, 0x28
	mov	qword ptr [word ptr [word_limit]],  rax
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xc], 0xa
	mov	byte ptr [rbp - 0x34], cl
	je	.label_586
	cmp	dword ptr [rbp - 0xc], -1
	setne	al
	mov	byte ptr [rbp - 0x34], al
.label_586:
	mov	al, byte ptr [rbp - 0x34]
	test	al, 1
	jne	.label_582
	mov	rdi, qword ptr [rbp - 8]
	call	get_prefix
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064e6
	.globl sub_4064e6
	.type sub_4064e6, @function
sub_4064e6:

	nop	word ptr cs:[rax + rax]
.label_591:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40651a
	.globl sub_40651a
	.type sub_40651a, @function
sub_40651a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406526

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_591
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406560

	.globl get_space
	.type get_space, @function
get_space:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
.label_592:
	cmp	dword ptr [rbp - 0xc], 0x20
	jne	.label_595
	mov	eax,  dword ptr [dword ptr [in_column]]
	add	eax, 1
	mov	dword ptr [dword ptr [in_column]],  eax
	jmp	.label_593
.label_595:
	cmp	dword ptr [rbp - 0xc], 9
	jne	.label_596
	mov	eax, 8
	mov	byte ptr [byte ptr [tabs]],  1
	mov	ecx,  dword ptr [dword ptr [in_column]]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x10]
	idiv	ecx
	add	eax, 1
	shl	eax, 3
	mov	dword ptr [dword ptr [in_column]],  eax
	jmp	.label_594
.label_594:
	jmp	.label_593
.label_593:
	mov	rdi, qword ptr [rbp - 8]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_592
	.section	.text
	.align	16
	#Procedure 0x4065e0
	.globl sub_4065e0
	.type sub_4065e0, @function
sub_4065e0:

	nop	dword ptr [rax]
.label_596:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065f0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406626
	.globl sub_406626
	.type sub_406626, @function
sub_406626:

	nop	word ptr cs:[rax + rax]
.label_602:
	movabs	rdi, OFFSET FLAT:label_597
	mov	rax, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	setne	cl
	and	cl, 1
	movzx	esi, cl
	mov	rax, qword ptr [rbp - 8]
	mov	cl, sil
	mov	dl, byte ptr [rax + 0x10]
	and	cl, 1
	shl	cl, 1
	and	dl, 0xfd
	or	dl, cl
	mov	byte ptr [rax + 0x10], dl
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406671
	.globl sub_406671
	.type sub_406671, @function
sub_406671:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40667a

	.globl check_punctuation
	.type check_punctuation, @function
check_punctuation:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_599
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 8]
	sub	edx, 1
	movsxd	rcx, edx
	add	rdi, rcx
	mov	qword ptr [rbp - 0x18], rdi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	sil, byte ptr [rcx]
	mov	byte ptr [rbp - 0x19], sil
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rcx]
	mov	rdi, rax
	call	strchr
	cmp	rax, 0
	setne	r8b
	and	r8b, 1
	movzx	edx, r8b
	mov	rax, qword ptr [rbp - 8]
	mov	r8b, dl
	mov	r9b, byte ptr [rax + 0x10]
	and	r8b, 1
	and	r9b, 0xfe
	or	r9b, r8b
	mov	byte ptr [rax + 0x10], r9b
	movzx	edx, byte ptr [rbp - 0x19]
	movsxd	rax, edx
	mov	qword ptr [rbp - 0x28], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	cmp	edx, 0
	setne	r8b
	xor	r8b, 0xff
	xor	r8b, 0xff
	and	r8b, 1
	movzx	edx, r8b
	mov	rax, qword ptr [rbp - 8]
	mov	r8b, dl
	mov	r9b, byte ptr [rax + 0x10]
	and	r8b, 1
	shl	r8b, 2
	and	r9b, 0xfb
	or	r9b, r8b
	mov	byte ptr [rax + 0x10], r9b
.label_598:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x29], cl
	jae	.label_601
	movabs	rdi, OFFSET FLAT:label_603
	mov	rax, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0x29], cl
.label_601:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_600
	jmp	.label_602
.label_600:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_598
.label_715:
	movabs	rdi, OFFSET FLAT:label_613
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_604
.label_719:
	movabs	rdi, OFFSET FLAT:label_611
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_604
.label_722:
	movabs	rdi, OFFSET FLAT:label_605
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_604
.label_721:
	movabs	rdi, OFFSET FLAT:label_617
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_604
.label_615:
	movabs	rdi, OFFSET FLAT:label_606
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_604:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a42
	.globl sub_406a42
	.type sub_406a42, @function
sub_406a42:

	nop	
.label_714:
	jmp	.label_604
.label_723:
	movabs	rdi, OFFSET FLAT:label_607
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_604
.label_716:
	movabs	rdi, OFFSET FLAT:label_621
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_604
	.section	.text
	.align	16
	#Procedure 0x406b3b

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_620
	movabs	rsi, OFFSET FLAT:label_616
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_609
.label_620:
	movabs	rsi, OFFSET FLAT:label_612
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_609:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_619
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_608
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_615
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_614]]
	jmp	rcx
.label_720:
	movabs	rdi, OFFSET FLAT:label_618
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_604
.label_718:
	movabs	rdi, OFFSET FLAT:label_622
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_604
.label_717:
	movabs	rdi, OFFSET FLAT:label_610
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_604
.label_625:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_627:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_624
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_258]]
	mov	qword ptr [rax + 8], rcx
.label_624:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_629:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_626
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_623
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_623:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_626:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f3e
	.globl sub_406f3e
	.type sub_406f3e, @function
sub_406f3e:

	nop	word ptr cs:[rax + rax]
.label_630:
	test	byte ptr [rbp - 0x31], 1
	je	.label_625
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_627
	.section	.text
	.align	16
	#Procedure 0x406f62

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_628
	call	abort
.label_628:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_629
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_630
	call	xalloc_die
.label_631:
	mov	byte ptr [rbp - 1], 0
.label_635:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406fee
	.globl sub_406fee
	.type sub_406fee, @function
sub_406fee:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ff9
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_632
	jmp	.label_634
.label_634:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_632
	jmp	.label_633
.label_633:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_631
	jmp	.label_632
.label_632:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_635
	.section	.text
	.align	16
	#Procedure 0x407050
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407077
	.globl sub_407077
	.type sub_407077, @function
sub_407077:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407080
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40709f
	.globl sub_40709f
	.type sub_40709f, @function
sub_40709f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4070a0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407112
	.globl sub_407112
	.type sub_407112, @function
sub_407112:

	nop	word ptr cs:[rax + rax]
.label_638:
	mov	eax,  dword ptr [dword ptr [goal_width]]
	sub	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	imul	eax, dword ptr [rbp - 0x18], 0xa
	movsxd	rcx, eax
	imul	eax, dword ptr [rbp - 0x18], 0xa
	movsxd	rdx, eax
	imul	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	cmp	rcx,  qword ptr [word ptr [word_limit]]
	je	.label_636
	mov	eax, 2
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x18], eax
	imul	eax, dword ptr [rbp - 0x18], 0xa
	movsxd	rdx, eax
	imul	eax, dword ptr [rbp - 0x18], 0xa
	movsxd	rsi, eax
	imul	rdx, rsi
	mov	rax, rdx
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_636:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_637:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40719d
	.globl sub_40719d
	.type sub_40719d, @function
sub_40719d:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071a6

	.globl line_cost
	.type line_cost, @function
line_cost:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [word_limit]]
	jne	.label_638
	mov	qword ptr [rbp - 8], 0
	jmp	.label_637
.label_643:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [prefix]],  rax
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	ecx, eax
	mov	dword ptr [dword ptr [prefix_full_length]],  ecx
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdi,  dword ptr [dword ptr [prefix_full_length]]
	add	rax, rdi
	mov	qword ptr [rbp - 0x10], rax
.label_642:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x11], cl
	jbe	.label_639
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	sete	dl
	mov	byte ptr [rbp - 0x11], dl
.label_639:
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_641
	jmp	.label_640
.label_641:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_642
	.section	.text
	.align	16
	#Procedure 0x407248

	.globl set_prefix
	.type set_prefix, @function
set_prefix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [dword ptr [prefix_lead_space]],  0
.label_644:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x20
	jne	.label_643
	mov	eax,  dword ptr [dword ptr [prefix_lead_space]]
	add	eax, 1
	mov	dword ptr [dword ptr [prefix_lead_space]],  eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_644
.label_640:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	edx, eax
	mov	dword ptr [dword ptr [prefix_length]],  edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072b2
	.globl sub_4072b2
	.type sub_4072b2, @function
sub_4072b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_645
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_66
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4072ff
	.globl sub_4072ff
	.type sub_4072ff, @function
sub_4072ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407300

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407332
	.globl sub_407332
	.type sub_407332, @function
sub_407332:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407340
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_646
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_647
.label_646:
	call	xalloc_die
.label_647:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407396
	.globl sub_407396
	.type sub_407396, @function
sub_407396:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_648
	call	xalloc_die
.label_648:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073e8
	.globl sub_4073e8
	.type sub_4073e8, @function
sub_4073e8:

	nop	dword ptr [rax + rax]
.label_649:
	mov	byte ptr [rbp - 1], 0
.label_652:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073fe
	.globl sub_4073fe
	.type sub_4073fe, @function
sub_4073fe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407409
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_650
	jmp	.label_651
.label_651:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_650
	jmp	.label_653
.label_653:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_649
	jmp	.label_650
.label_650:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_652
	.section	.text
	.align	16
	#Procedure 0x407460

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_654
	movabs	rax, OFFSET FLAT:label_107
	mov	qword ptr [rbp - 8], rax
.label_654:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_655
	movabs	rax, OFFSET FLAT:label_656
	mov	qword ptr [rbp - 8], rax
.label_655:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074b7
	.globl sub_4074b7
	.type sub_4074b7, @function
sub_4074b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074c0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074fa
	.globl sub_4074fa
	.type sub_4074fa, @function
sub_4074fa:

	nop	word ptr [rax + rax]
.label_659:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_657
	.section	.text
	.align	16
	#Procedure 0x407526

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_658
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_658
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_658
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_659
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_657
.label_658:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_657:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075c2
	.globl sub_4075c2
	.type sub_4075c2, @function
sub_4075c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075d0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_660
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_661
.label_660:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_661
.label_661:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407642
	.globl sub_407642
	.type sub_407642, @function
sub_407642:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407650

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407682
	.globl sub_407682
	.type sub_407682, @function
sub_407682:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407690
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076ba
	.globl sub_4076ba
	.type sub_4076ba, @function
sub_4076ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076c0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40776d
	.globl sub_40776d
	.type sub_40776d, @function
sub_40776d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407770
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_662
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_662:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40779a
	.globl sub_40779a
	.type sub_40779a, @function
sub_40779a:

	nop	word ptr [rax + rax]
.label_663:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077bb
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_663
	call	xalloc_die
.label_669:
	movabs	rdi, OFFSET FLAT:label_670
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_671
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_664
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_672
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_665
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_667
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_156
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_ancillary_info
.label_673:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4078df
	.globl sub_4078df
	.type sub_4078df, @function
sub_4078df:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078ed

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_669
	jmp	.label_666
.label_666:
	movabs	rdi, OFFSET FLAT:label_668
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_673
	.section	.text
	.align	16
	#Procedure 0x407940

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40796c
	.globl sub_40796c
	.type sub_40796c, @function
sub_40796c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407970
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_674
	call	gettext
	movabs	rsi, OFFSET FLAT:label_676
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_677
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_116
	movabs	rdx, OFFSET FLAT:label_114
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_675
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079f6
	.globl sub_4079f6
	.type sub_4079f6, @function
sub_4079f6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a00
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a2f
	.globl sub_407a2f
	.type sub_407a2f, @function
sub_407a2f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407a30
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a57
	.globl sub_407a57
	.type sub_407a57, @function
sub_407a57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a60

	.globl put_paragraph
	.type put_paragraph, @function
put_paragraph:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:unused_word_type
	mov	qword ptr [rbp - 8], rdi
	mov	esi,  dword ptr [dword ptr [first_indent]]
	mov	rdi, rax
	call	put_line
	mov	rax,  qword ptr [word ptr [label_208]]
	mov	qword ptr [rbp - 0x10], rax
.label_679:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	je	.label_678
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi,  dword ptr [dword ptr [other_indent]]
	call	put_line
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_679
.label_678:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ac6
	.globl sub_407ac6
	.type sub_407ac6, @function
sub_407ac6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b35
	.globl sub_407b35
	.type sub_407b35, @function
sub_407b35:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b42
	.globl sub_407b42
	.type sub_407b42, @function
sub_407b42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b66
	.globl sub_407b66
	.type sub_407b66, @function
sub_407b66:

	nop	word ptr cs:[rax + rax]
