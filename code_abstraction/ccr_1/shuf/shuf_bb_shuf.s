	.section	.text
	.align	32
	#Procedure 0x401b69
	.globl sub_401b69
	.type sub_401b69, @function
sub_401b69:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401b6a
	.globl sub_401b6a
	.type sub_401b6a, @function
sub_401b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba2
	.globl sub_401ba2
	.type sub_401ba2, @function
sub_401ba2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bea
	.globl sub_401bea
	.type sub_401bea, @function
sub_401bea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c0c
	.globl sub_401c0c
	.type sub_401c0c, @function
sub_401c0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c1d
	.globl sub_401c1d
	.type sub_401c1d, @function
sub_401c1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c36
	.globl sub_401c36
	.type sub_401c36, @function
sub_401c36:

	nop	word ptr cs:[rax + rax]
.label_11:
	xor	eax, eax
	jmp	.label_9
	.section	.text
	.align	32
	#Procedure 0x401c44
	.globl sub_401c44
	.type sub_401c44, @function
sub_401c44:

	nop	word ptr cs:[rax + rax]
.label_9:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c4f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_11
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_10]]
	.section	.text
	.align	32
	#Procedure 0x401c60
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
	#Procedure 0x401c6d
	.globl sub_401c6d
	.type sub_401c6d, @function
sub_401c6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c70

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_12
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_12:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c93
	.globl sub_401c93
	.type sub_401c93, @function
sub_401c93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0

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
	#Procedure 0x401cba
	.globl sub_401cba
	.type sub_401cba, @function
sub_401cba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cc0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_15
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_16:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_16
.label_15:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cfe
	.globl sub_401cfe
	.type sub_401cfe, @function
sub_401cfe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401d0a
	.globl sub_401d0a
	.type sub_401d0a, @function
sub_401d0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d10
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x401d1d
	.globl sub_401d1d
	.type sub_401d1d, @function
sub_401d1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d20
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
	#Procedure 0x401d30

	.globl write_permuted_output_reservoir
	.type write_permuted_output_reservoir, @function
write_permuted_output_reservoir:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_17
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_18:
	mov	rax, qword ptr [r14 + rbx*8]
	lea	r13, [rax + rax*2]
	mov	rdi, qword ptr [r12 + r13*8 + 0x10]
	mov	rdx, qword ptr [r12 + r13*8 + 8]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	cmp	rax, qword ptr [r12 + r13*8 + 8]
	mov	eax, 0xffffffff
	jne	.label_17
	inc	rbx
	xor	eax, eax
	cmp	rbx, r15
	jb	.label_18
.label_17:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d93
	.globl sub_401d93
	.type sub_401d93, @function
sub_401d93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401da0

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
	#Procedure 0x401de9
	.globl sub_401de9
	.type sub_401de9, @function
sub_401de9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401df0

	.globl write_permuted_numbers
	.type write_permuted_numbers, @function
write_permuted_numbers:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r12, r12
	je	.label_19
	movsx	ebp, cl
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_21:
	mov	rdx, qword ptr [r14 + rbx*8]
	add	rdx, r15
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_20
	xor	eax, eax
	mov	ecx, ebp
	call	__printf_chk
	test	eax, eax
	mov	eax, 0xffffffff
	js	.label_19
	inc	rbx
	xor	eax, eax
	cmp	rbx, r12
	jb	.label_21
.label_19:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e46
	.globl sub_401e46
	.type sub_401e46, @function
sub_401e46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e50
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e5a
	.globl sub_401e5a
	.type sub_401e5a, @function
sub_401e5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e60

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_22
	mov	al, 1
	ret	
.label_22:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e7b
	.globl sub_401e7b
	.type sub_401e7b, @function
sub_401e7b:

	nop	dword ptr [rax + rax]
.label_26:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_23
	.section	.text
	.align	32
	#Procedure 0x401e8c

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_27
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_26
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_26
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_25
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_23
.label_27:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_23:
	test	ebx, ebx
	js	.label_25
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_25
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_24
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_25
.label_24:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_25:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f43
	.globl sub_401f43
	.type sub_401f43, @function
sub_401f43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50
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
	#Procedure 0x401f5f
	.globl sub_401f5f
	.type sub_401f5f, @function
sub_401f5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401f60
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
	jae	.label_28
	xor	ebx, ebx
.label_30:
	cmp	qword ptr [r13], 0
	je	.label_29
	test	r13, r13
	je	.label_29
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_31:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_28
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_31
.label_29:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_30
.label_28:
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
	#Procedure 0x401fd7
	.globl sub_401fd7
	.type sub_401fd7, @function
sub_401fd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fef
	.globl sub_401fef
	.type sub_401fef, @function
sub_401fef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401ff0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_32
	ret	
.label_32:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x402003
	.globl sub_402003
	.type sub_402003, @function
sub_402003:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402010

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_33
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_35:
	cmp	qword ptr [rcx], 0
	je	.label_34
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_36:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_36
	cmp	rsi, rax
	cmova	rax, rsi
.label_34:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_35
.label_33:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40205d
	.globl sub_40205d
	.type sub_40205d, @function
sub_40205d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402060
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402064
	.globl sub_402064
	.type sub_402064, @function
sub_402064:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402070
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	.section	.text
	.align	32
	#Procedure 0x402077
	.globl sub_402077
	.type sub_402077, @function
sub_402077:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402080

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], edx
	mov	r13, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	r15, qword ptr [r14 + 0x10]
	mov	rdi, r13
	call	feof_unlocked
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	eax, eax
	jne	.label_39
	add	rbx, r15
	mov	eax, dword ptr [rsp + 8]
	movsx	eax, al
	mov	dword ptr [rsp + 0xc], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, r15
	nop	
.label_38:
	mov	rdi, r13
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_40
	cmp	r12, r15
	je	.label_39
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	jne	.label_39
	mov	eax, dword ptr [rsp + 8]
	cmp	byte ptr [r12 - 1], al
	mov	ebp, dword ptr [rsp + 0xc]
	je	.label_37
.label_40:
	cmp	r12, rbx
	jne	.label_41
	mov	r12, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	r12, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	rbx, r15
	add	rbx, qword ptr [r14]
.label_41:
	mov	byte ptr [r12], bpl
	inc	r12
	cmp	ebp, dword ptr [rsp + 0xc]
	jne	.label_38
.label_37:
	sub	r12, r15
	mov	qword ptr [r14 + 8], r12
	mov	qword ptr [rsp + 0x10], r14
.label_39:
	mov	rax, qword ptr [rsp + 0x10]
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
	#Procedure 0x40214f
	.globl sub_40214f
	.type sub_40214f, @function
sub_40214f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402150
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
	#Procedure 0x402169
	.globl sub_402169
	.type sub_402169, @function
sub_402169:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402170

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402175
	.globl sub_402175
	.type sub_402175, @function
sub_402175:

	nop	word ptr cs:[rax + rax]
.label_42:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402185
	.globl sub_402185
	.type sub_402185, @function
sub_402185:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402190

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
	jae	.label_42
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021b0

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
	je	.label_58
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_55
.label_58:
	mov	edx, OFFSET FLAT:label_56
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
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
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_44
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_45]]
.label_664:
	add	rsp, 8
	jmp	.label_43
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
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
	jmp	.label_43
.label_665:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
.label_666:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
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
.label_667:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
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
.label_668:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
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
	jmp	.label_43
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
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
	jmp	.label_43
.label_670:
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
	jmp	.label_43
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
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
	jmp	.label_43
.label_673:
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
	jmp	.label_43
.label_672:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
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
.label_43:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402508
	.globl sub_402508
	.type sub_402508, @function
sub_402508:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402510

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
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_66
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_78:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_78
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_75
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_67
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_73
	cmp	eax, 0x22
	jne	.label_75
	mov	r12d, 1
.label_73:
	test	rbp, rbp
	jne	.label_77
	jmp	.label_62
.label_67:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_75
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_75
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_75
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_77:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_62
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_68
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_72
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_72
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_65
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_79
	cmp	ecx, 0x44
	je	.label_79
	cmp	ecx, 0x69
	jne	.label_65
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_65
.label_79:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_65
.label_72:
	mov	rsi, r14
.label_65:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_68
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_74]]
.label_682:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_64
.label_68:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_76
.label_683:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_64
.label_684:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_64
.label_686:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_64
.label_680:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_0
	jmp	.label_63
.label_681:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_64
.label_685:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_64
.label_687:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_64
.label_688:
	lea	rdi, [rsp]
	mov	edx, 7
.label_64:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_63:
	mov	rsi, r14
.label_690:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_62:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_76:
	mov	r15d, r12d
.label_75:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_689:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_0
	jmp	.label_63
.label_691:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_0
	jmp	.label_63
.label_66:
	mov	edi, OFFSET FLAT:label_69
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_71
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4027b2
	.globl sub_4027b2
	.type sub_4027b2, @function
sub_4027b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027c0

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
	#Procedure 0x4027f9
	.globl sub_4027f9
	.type sub_4027f9, @function
sub_4027f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402800
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
	#Procedure 0x402811
	.globl sub_402811
	.type sub_402811, @function
sub_402811:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820
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
	#Procedure 0x402834
	.globl sub_402834
	.type sub_402834, @function
sub_402834:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402840
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
	#Procedure 0x402854
	.globl sub_402854
	.type sub_402854, @function
sub_402854:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860
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
	#Procedure 0x40286f
	.globl sub_40286f
	.type sub_40286f, @function
sub_40286f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402870
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40287a
	.globl sub_40287a
	.type sub_40287a, @function
sub_40287a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880

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
	je	.label_80
	mov	qword ptr [rax], rbx
.label_80:
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
	#Procedure 0x40296c
	.globl sub_40296c
	.type sub_40296c, @function
sub_40296c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402970
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40297a
	.globl sub_40297a
	.type sub_40297a, @function
sub_40297a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402980
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
	#Procedure 0x4029a7
	.globl sub_4029a7
	.type sub_4029a7, @function
sub_4029a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029b0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4029d2
	.globl sub_4029d2
	.type sub_4029d2, @function
sub_4029d2:

	nop	word ptr cs:[rax + rax]
.label_83:
	add	rbx, 2
.label_84:
	cmp	rbx, -1
	je	.label_82
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_83
	mov	r14, rbx
.label_82:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a04
	.globl sub_402a04
	.type sub_402a04, @function
sub_402a04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a10

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
	jmp	.label_84
	.section	.text
	.align	32
	#Procedure 0x402a2e
	.globl sub_402a2e
	.type sub_402a2e, @function
sub_402a2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a30

	.globl sparse_hash_
	.type sparse_hash_, @function
sparse_hash_:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a3c
	.globl sub_402a3c
	.type sub_402a3c, @function
sub_402a3c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x402a4a
	.globl sub_402a4a
	.type sub_402a4a, @function
sub_402a4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402a5e
	.globl sub_402a5e
	.type sub_402a5e, @function
sub_402a5e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a60

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
	js	.label_85
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_88
	cmp	r12d, 0x7fffffff
	je	.label_90
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
	jne	.label_86
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_86:
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
.label_88:
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
	jbe	.label_91
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_87
.label_91:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_89
	mov	rdi, r14
	call	free
.label_89:
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
.label_87:
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
.label_85:
	call	abort
.label_90:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402c1d
	.globl sub_402c1d
	.type sub_402c1d, @function
sub_402c1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c20

	.globl randint_choose_0
	.type randint_choose_0, @function
randint_choose_0:
	dec	rsi
	jmp	randint_genmax
	.section	.text
	.align	32
	#Procedure 0x402c28
	.globl sub_402c28
	.type sub_402c28, @function
sub_402c28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c30

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
	je	.label_101
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_100
	test	rbx, rbx
	je	.label_95
	mov	qword ptr [rbx], rax
	jmp	.label_95
.label_100:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_106
	cvtsi2ss	xmm0, rcx
	jmp	.label_93
.label_106:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_93:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_99
	cvtsi2ss	xmm1, rax
	jmp	.label_104
.label_99:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_104:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_105
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_97
	cvtsi2ss	xmm2, rcx
	jmp	.label_102
.label_97:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_102:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_108
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_96
.label_108:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_96:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_105
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_107
	mulss	xmm0, xmm1
.label_107:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_94]]
	jae	.label_95
	movss	xmm1,  dword ptr [dword ptr [rip + label_98]]
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
	je	.label_95
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_101
.label_105:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_103
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_95
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_92
.label_103:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_92:
	mov	ebp, 1
.label_95:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_101:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402e02
	.globl sub_402e02
	.type sub_402e02, @function
sub_402e02:

	nop	word ptr cs:[rax + rax]
.label_109:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e13
	.globl sub_402e13
	.type sub_402e13, @function
sub_402e13:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402e15
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_109
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e30

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_110
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_113
	mov	esi, OFFSET FLAT:label_111
	jmp	.label_112
.label_113:
	mov	esi, OFFSET FLAT:label_114
.label_112:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_110:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402e8e
	.globl sub_402e8e
	.type sub_402e8e, @function
sub_402e8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402e90

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_115
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_116:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_115
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_116
.label_115:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402edc
	.globl sub_402edc
	.type sub_402edc, @function
sub_402edc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0

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
	#Procedure 0x402f16
	.globl sub_402f16
	.type sub_402f16, @function
sub_402f16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f20

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
	je	.label_117
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_117:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f4c
	.globl sub_402f4c
	.type sub_402f4c, @function
sub_402f4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f50

	.globl ceil_lg
	.type ceil_lg, @function
ceil_lg:
	xor	eax, eax
	dec	rdi
	je	.label_118
	xor	eax, eax
	nop	dword ptr [rax]
.label_119:
	inc	rax
	shr	rdi, 1
	jne	.label_119
.label_118:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f69
	.globl sub_402f69
	.type sub_402f69, @function
sub_402f69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f70

	.globl next_line
	.type next_line, @function
next_line:
	push	rax
	call	memchr
	inc	rax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f7b
	.globl sub_402f7b
	.type sub_402f7b, @function
sub_402f7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_120
	test	rsi, rsi
	mov	ecx, 1
	je	.label_121
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_121
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_120:
	mov	ecx, 1
.label_121:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x402fcb
	.globl sub_402fcb
	.type sub_402fcb, @function
sub_402fcb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fd0

	.globl sparse_free
	.type sparse_free, @function
sparse_free:
	jmp	hash_free
	.section	.text
	.align	32
	#Procedure 0x402fd5
	.globl sub_402fd5
	.type sub_402fd5, @function
sub_402fd5:

	nop	word ptr cs:[rax + rax]
.label_123:
	cmp	edi, 0x7f
	je	.label_122
	xor	eax, eax
	jmp	.label_122
	.section	.text
	.align	32
	#Procedure 0x402fe9
	.globl sub_402fe9
	.type sub_402fe9, @function
sub_402fe9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ff8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_123
.label_122:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403000

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403009
	.globl sub_403009
	.type sub_403009, @function
sub_403009:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403010

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_126
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_127:
	cmp	r15, 0x800
	jb	.label_124
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_127
	jmp	.label_125
.label_124:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_126:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_125:
	mov	qword ptr [r14], r12
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
	#Procedure 0x4030ba
	.globl sub_4030ba
	.type sub_4030ba, @function
sub_4030ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0

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
	je	.label_128
	cmp	rsi, r13
	je	.label_132
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_134
.label_132:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_128
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_130
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_133
.label_130:
	mov	qword ptr [rbx], 0
	jmp	.label_128
.label_134:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_128
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_131:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_129
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_129
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_131
	jmp	.label_128
.label_129:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_128
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_133:
	mov	rdi, r14
	call	free_entry
.label_128:
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
	#Procedure 0x40318a
	.globl sub_40318a
	.type sub_40318a, @function
sub_40318a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403190

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4031a7
	.globl sub_4031a7
	.type sub_4031a7, @function
sub_4031a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031b0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031ba
	.globl sub_4031ba
	.type sub_4031ba, @function
sub_4031ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_135
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_137:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_137
.label_135:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_139
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_138]], OFFSET FLAT:slot0
.label_139:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_136
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_136:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403251
	.globl sub_403251
	.type sub_403251, @function
sub_403251:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403260

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
	mov	rcx,  qword ptr [word ptr [rip + label_140]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_141]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_142]]
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
	#Procedure 0x4032cd
	.globl sub_4032cd
	.type sub_4032cd, @function
sub_4032cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4032dd
	.globl sub_4032dd
	.type sub_4032dd, @function
sub_4032dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x4032e7
	.globl sub_4032e7
	.type sub_4032e7, @function
sub_4032e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_146
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_144
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_144
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_145
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_145:
	mov	rbx, r14
.label_144:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_146:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_147
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403391
	.globl sub_403391
	.type sub_403391, @function
sub_403391:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033a0
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
	#Procedure 0x4033d3
	.globl sub_4033d3
	.type sub_4033d3, @function
sub_4033d3:

	nop	word ptr cs:[rax + rax]
.label_149:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4033e5
	.globl sub_4033e5
	.type sub_4033e5, @function
sub_4033e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033ef

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_149
	call	rpl_calloc
	test	rax, rax
	je	.label_149
	pop	rcx
	ret	
.label_152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_150
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_153
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403455

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
	je	.label_152
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_152
.label_156:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_151
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_150:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_155
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_151:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4034d0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_157
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_158:
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
	jne	.label_158
.label_157:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403503
	.globl sub_403503
	.type sub_403503, @function
sub_403503:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403510
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40351a
	.globl sub_40351a
	.type sub_40351a, @function
sub_40351a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403520

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
	#Procedure 0x403537
	.globl sub_403537
	.type sub_403537, @function
sub_403537:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403540

	.globl input_from_argv
	.type input_from_argv, @function
input_from_argv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15d, edx
	mov	r14d, esi
	mov	r12, rdi
	movsxd	rax, r14d
	mov	r13d, eax
	test	eax, eax
	mov	qword ptr [rsp], rax
	jle	.label_159
	xor	ebp, ebp
	mov	rbx, rax
	nop	word ptr [rax + rax]
.label_162:
	mov	rdi, qword ptr [r12 + rbp*8]
	call	strlen
	add	rbx, rax
	inc	rbp
	cmp	r13d, ebp
	jne	.label_162
	mov	rdi, rbx
	call	xmalloc
	mov	rbx, rax
	test	r13d, r13d
	jle	.label_161
	mov	rbp, r12
	nop	word ptr [rax + rax]
.label_163:
	mov	rsi, qword ptr [rbp]
	mov	rdi, rbx
	call	stpcpy
	mov	qword ptr [rbp], rbx
	mov	byte ptr [rax], r15b
	inc	rax
	add	rbp, 8
	dec	r14d
	mov	rbx, rax
	jne	.label_163
	jmp	.label_160
.label_159:
	mov	rdi, rax
	call	xmalloc
	jmp	.label_160
.label_161:
	mov	rax, rbx
.label_160:
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [r12 + rcx*8], rax
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
	#Procedure 0x4035e8
	.globl sub_4035e8
	.type sub_4035e8, @function
sub_4035e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035f0

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	orig_freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_165
	test	rbx, rbx
	je	.label_165
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_165
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_165
	mov	edi, OFFSET FLAT:label_166
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_164
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_165
.label_164:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_165:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403681
	.globl sub_403681
	.type sub_403681, @function
sub_403681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403690

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	.section	.text
	.align	32
	#Procedure 0x403695
	.globl sub_403695
	.type sub_403695, @function
sub_403695:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_172
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_180:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_180
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_177
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_181
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_175
	cmp	eax, 0x22
	jne	.label_177
	mov	r12d, 1
.label_175:
	test	rbp, rbp
	jne	.label_179
	jmp	.label_168
.label_181:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_177
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_177
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_177
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_179:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_168
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_173
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_174
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_174
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_169
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_167
	cmp	ecx, 0x44
	je	.label_167
	cmp	ecx, 0x69
	jne	.label_169
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_169
.label_167:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_169
.label_174:
	mov	rsi, r14
.label_169:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_173
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_176]]
.label_704:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_171
.label_173:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_178
.label_705:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_171
.label_706:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_171
.label_708:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_171
.label_702:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_170
.label_703:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_171
.label_707:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_171
.label_709:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_171
.label_710:
	lea	rdi, [rsp]
	mov	edx, 7
.label_171:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_170:
	mov	rsi, r14
.label_712:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_168:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_178:
	mov	r15d, r12d
.label_177:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_711:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_170
.label_713:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_170
.label_172:
	mov	edi, OFFSET FLAT:label_69
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_182
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403942
	.globl sub_403942
	.type sub_403942, @function
sub_403942:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403950

	.globl swap
	.type swap, @function
swap:
	mov	rax, qword ptr [rdi + rsi*8]
	mov	rcx, qword ptr [rdi + rdx*8]
	mov	qword ptr [rdi + rsi*8], rcx
	mov	qword ptr [rdi + rdx*8], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403961
	.globl sub_403961
	.type sub_403961, @function
sub_403961:

	nop	word ptr cs:[rax + rax]
.label_183:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403973
	.globl sub_403973
	.type sub_403973, @function
sub_403973:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403975
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_183
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x403990

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_186
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_186
	mov	r14, qword ptr [r15]
	jmp	.label_191
	.section	.text
	.align	32
	#Procedure 0x4039ab
	.globl sub_4039ab
	.type sub_4039ab, @function
sub_4039ab:

	nop	dword ptr [rax + rax]
.label_184:
	add	r14, 0x10
.label_191:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_186
	cmp	qword ptr [r14], 0
	je	.label_184
	test	r14, r14
	je	.label_184
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_188:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_188
	jmp	.label_184
.label_186:
	mov	r14, qword ptr [r15]
	jmp	.label_190
	.section	.text
	.align	32
	#Procedure 0x4039e7
	.globl sub_4039e7
	.type sub_4039e7, @function
sub_4039e7:

	nop	word ptr [rax + rax]
.label_193:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_192
	nop	dword ptr [rax]
.label_185:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_185
.label_192:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x403a23
	.globl sub_403a23
	.type sub_403a23, @function
sub_403a23:

	nop	word ptr cs:[rax + rax]
.label_189:
	add	r14, 0x10
.label_190:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_193
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_189
	nop	word ptr cs:[rax + rax]
.label_187:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_187
	jmp	.label_189
	.section	.text
	.align	32
	#Procedure 0x403a60

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a8d
	.globl sub_403a8d
	.type sub_403a8d, @function
sub_403a8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_195
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_198
	mov	ecx, OFFSET FLAT:label_199
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403b04
	.globl sub_403b04
	.type sub_403b04, @function
sub_403b04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b10

	.globl read_input
	.type read_input, @function
read_input:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r15d, esi
	lea	rsi, [rsp]
	call	fread_file
	mov	r14, rax
	test	r14, r14
	je	.label_202
	mov	rbx, r14
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_206
	cmp	byte ptr [rbx + rax - 1], r15b
	je	.label_200
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rbx + rax], r15b
.label_200:
	mov	rax, qword ptr [rsp]
	add	r14, rax
	mov	edi, 1
	xor	ebp, ebp
	test	rax, rax
	jle	.label_205
	xor	ebp, ebp
	movsx	r13d, r15b
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_203:
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	next_line
	inc	rbp
	cmp	rax, r14
	jb	.label_203
	lea	rdi, [rbp + 1]
	jmp	.label_205
.label_206:
	add	r14, rax
	mov	edi, 1
	xor	ebp, ebp
.label_205:
	mov	esi, 8
	call	xnmalloc
	mov	r13, rax
	mov	qword ptr [r12], r13
	mov	qword ptr [r13], rbx
	test	rbp, rbp
	je	.label_204
	mov	r12d, 1
	movsx	r15d, r15b
	nop	dword ptr [rax]
.label_207:
	mov	rdx, r14
	sub	rdx, rbx
	mov	rdi, rbx
	mov	esi, r15d
	call	next_line
	mov	rbx, rax
	mov	qword ptr [r13 + r12*8], rbx
	inc	r12
	cmp	r12, rbp
	jbe	.label_207
.label_204:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_202:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x403c30

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
.label_254:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_257
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_261]]
.label_732:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_271
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_274
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_733:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_285
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_285
	xor	r14d, r14d
.label_296:
	cmp	r14, r11
	jae	.label_293
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_293:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_296
.label_285:
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
	jmp	.label_223
.label_725:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_223
.label_728:
	mov	al, 1
.label_726:
	mov	r12b, 1
.label_729:
	test	r12b, 1
	mov	cl, 1
	je	.label_309
	mov	ecx, eax
.label_309:
	mov	al, cl
.label_727:
	test	r12b, 1
	jne	.label_312
	test	r11, r11
	je	.label_280
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_280:
	mov	r14d, 1
	jmp	.label_317
.label_312:
	xor	r14d, r14d
.label_317:
	mov	ecx, OFFSET FLAT:label_274
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_223
.label_730:
	test	r12b, 1
	jne	.label_212
	test	r11, r11
	je	.label_244
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_244:
	mov	r14d, 1
	jmp	.label_218
.label_731:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_222
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_223
.label_212:
	xor	r14d, r14d
.label_218:
	mov	eax, OFFSET FLAT:label_222
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_223:
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
	jmp	.label_269
	.section	.text
	.align	32
	#Procedure 0x403f0c
	.globl sub_403f0c
	.type sub_403f0c, @function
sub_403f0c:

	nop	dword ptr [rax]
.label_265:
	inc	rsi
.label_269:
	cmp	rbp, -1
	je	.label_273
	cmp	rsi, rbp
	jne	.label_276
	jmp	.label_278
	.section	.text
	.align	32
	#Procedure 0x403f23
	.globl sub_403f23
	.type sub_403f23, @function
sub_403f23:

	nop	word ptr cs:[rax + rax]
.label_273:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_278
.label_276:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_288
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_290
	cmp	rbp, -1
	jne	.label_290
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
.label_290:
	cmp	rbx, rbp
	jbe	.label_298
.label_288:
	xor	r8d, r8d
.label_214:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_299
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_303]]
.label_790:
	test	rsi, rsi
	jne	.label_237
	jmp	.label_228
	.section	.text
	.align	32
	#Procedure 0x403fbe
	.globl sub_403fbe
	.type sub_403fbe, @function
sub_403fbe:

	nop	
.label_298:
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
	jne	.label_316
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_214
	jmp	.label_213
.label_316:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_214
.label_794:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_224
	test	rsi, rsi
	jne	.label_225
	cmp	rbp, 1
	je	.label_228
	xor	r13d, r13d
	jmp	.label_215
.label_783:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_233
	cmp	byte ptr [rsp + 7], 0
	jne	.label_208
	cmp	r12d, 2
	jne	.label_235
	mov	eax, r9d
	and	al, 1
	jne	.label_235
	cmp	r14, r11
	jae	.label_315
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_315:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_240
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_240:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_247
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_247:
	add	r14, 3
	mov	r9b, 1
.label_235:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_253
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_253:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_255
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_255
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_255
	cmp	r14, r11
	jae	.label_210
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_210:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_318
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_318:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_215
.label_784:
	mov	bl, 0x62
	jmp	.label_283
.label_785:
	mov	cl, 0x74
	jmp	.label_260
.label_786:
	mov	bl, 0x76
	jmp	.label_283
.label_787:
	mov	bl, 0x66
	jmp	.label_283
.label_788:
	mov	cl, 0x72
	jmp	.label_260
.label_791:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_292
	cmp	byte ptr [rsp + 7], 0
	jne	.label_208
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
	jae	.label_297
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_297:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_305
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_305:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_306
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_306:
	add	r14, 3
	xor	r9d, r9d
.label_292:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_215
.label_792:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_284
	cmp	r12d, 2
	jne	.label_237
	cmp	byte ptr [rsp + 7], 0
	je	.label_237
	jmp	.label_208
.label_793:
	cmp	r12d, 2
	jne	.label_209
	cmp	byte ptr [rsp + 7], 0
	jne	.label_208
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_279
.label_299:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_262
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
.label_219:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_234
	test	r8b, r8b
	je	.label_234
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_215
.label_224:
	test	rsi, rsi
	jne	.label_252
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_252
.label_228:
	mov	dl, 1
.label_789:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_208
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_215:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_264
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_267
	jmp	.label_272
	.section	.text
	.align	32
	#Procedure 0x404304
	.globl sub_404304
	.type sub_404304, @function
sub_404304:

	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_272
.label_267:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_275
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_279
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x40434d
	.globl sub_40434d
	.type sub_40434d, @function
sub_40434d:

	nop	dword ptr [rax]
.label_272:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_291
	jmp	.label_279
.label_275:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_291
.label_233:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_265
	xor	r15d, r15d
	jmp	.label_237
.label_209:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_260
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_279
.label_260:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_208
.label_283:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_215
	nop	word ptr cs:[rax + rax]
.label_291:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_208
	cmp	r12d, 2
	jne	.label_310
	mov	eax, r9d
	and	al, 1
	jne	.label_310
	cmp	r14, r11
	jae	.label_313
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_313:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_286
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_286:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_321
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_321:
	add	r14, 3
	mov	r9b, 1
.label_310:
	cmp	r14, r11
	jae	.label_211
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_211:
	inc	r14
	jmp	.label_216
.label_262:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_220
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_220:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_287:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_239
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_243
	cmp	rbp, -2
	je	.label_248
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_250
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_236:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_301
	bt	rsi, rdx
	jb	.label_213
.label_301:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_236
.label_250:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_277
	xor	r13d, r13d
.label_277:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_287
	jmp	.label_219
.label_255:
	xor	r13d, r13d
	jmp	.label_215
.label_252:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_215
.label_284:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_237
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_237
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_237
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_300
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_256
	cmp	byte ptr [rsp + 7], 0
	jne	.label_208
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_307
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_307:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_268
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_268:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_282
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_282:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_320
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_320:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_215
.label_237:
	xor	eax, eax
.label_225:
	xor	r13d, r13d
	jmp	.label_215
.label_234:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_217
	.section	.text
	.align	32
	#Procedure 0x404633
	.globl sub_404633
	.type sub_404633, @function
sub_404633:

	nop	word ptr cs:[rax + rax]
.label_295:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_217:
	test	r8b, r8b
	je	.label_226
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_227
	cmp	r14, r11
	jae	.label_230
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_230:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_227
	.section	.text
	.align	32
	#Procedure 0x40467c
	.globl sub_40467c
	.type sub_40467c, @function
sub_40467c:

	nop	dword ptr [rax]
.label_226:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_213
	cmp	r12d, 2
	jne	.label_221
	mov	eax, r9d
	and	al, 1
	jne	.label_221
	cmp	r14, r11
	jae	.label_242
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_242:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_246
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_246:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_251
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_251:
	add	r14, 3
	mov	r9b, 1
.label_221:
	cmp	r14, r11
	jae	.label_263
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_263:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_259
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_259:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_270
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_270:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_227:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_279
	test	r9b, 1
	je	.label_281
	mov	ebx, eax
	and	bl, 1
	jne	.label_281
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_289
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_289:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_304
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_304:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_281:
	cmp	r14, r11
	jae	.label_295
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_295
	.section	.text
	.align	32
	#Procedure 0x404783
	.globl sub_404783
	.type sub_404783, @function
sub_404783:

	nop	word ptr cs:[rax + rax]
.label_279:
	test	r9b, 1
	je	.label_294
	and	al, 1
	jne	.label_294
	cmp	r14, r11
	jae	.label_302
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_302:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_319
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_319:
	add	r14, 2
	xor	r9d, r9d
.label_294:
	mov	ebx, r15d
.label_216:
	cmp	r14, r11
	jae	.label_308
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_308:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_265
.label_243:
	xor	r13d, r13d
.label_239:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_219
.label_248:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_322
	mov	rsi, qword ptr [rsp + 0x50]
.label_245:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_229
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_245
	xor	r13d, r13d
	jmp	.label_219
.label_322:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_219
.label_229:
	xor	r13d, r13d
	jmp	.label_219
.label_300:
	xor	r13d, r13d
	jmp	.label_215
.label_256:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_215
	.section	.text
	.align	32
	#Procedure 0x404858
	.globl sub_404858
	.type sub_404858, @function
sub_404858:

	nop	dword ptr [rax + rax]
.label_278:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_231
	or	dl, al
	je	.label_213
.label_231:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_238
	or	dl, al
	jne	.label_238
	test	r10b, 1
	jne	.label_249
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_238
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_254
.label_238:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_258
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_266
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_266
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_241:
	cmp	r14, r11
	jae	.label_232
	mov	byte ptr [rcx + r14], al
.label_232:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_241
	jmp	.label_266
.label_208:
	mov	qword ptr [rsp + 0x20], rbp
.label_213:
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
.label_311:
	mov	r14, rax
.label_314:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_249:
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
	jmp	.label_311
.label_258:
	mov	rcx, qword ptr [rsp + 8]
.label_266:
	cmp	r14, r11
	jae	.label_314
	mov	byte ptr [rcx + r14], 0
	jmp	.label_314
.label_257:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4049ec
	.globl sub_4049ec
	.type sub_4049ec, @function
sub_4049ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0
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
	mov	edx, OFFSET FLAT:label_324
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_323
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_325]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_326]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_327]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_328
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_329
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
	#Procedure 0x404adc
	.globl sub_404adc
	.type sub_404adc, @function
sub_404adc:

	nop	dword ptr [rax]
.label_331:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_330
	test	cl, cl
	jne	.label_330
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_330:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b0b
	.globl sub_404b0b
	.type sub_404b0b, @function
sub_404b0b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b15

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
	je	.label_331
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_330
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_330
	.section	.text
	.align	32
	#Procedure 0x404b50

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_332:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_332
	xor	ecx, ecx
	nop	
.label_333:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_333
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
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
	#Procedure 0x404e6c
	.globl sub_404e6c
	.type sub_404e6c, @function
sub_404e6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e70
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e79
	.globl sub_404e79
	.type sub_404e79, @function
sub_404e79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e80

	.globl randperm_new
	.type randperm_new, @function
randperm_new:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	xor	r12d, r12d
	test	r14, r14
	je	.label_334
	cmp	r14, 1
	jne	.label_341
	mov	edi, 8
	call	xmalloc
	mov	r12, rax
	mov	rdi, r15
	mov	rsi, rbx
	call	randint_choose
	mov	qword ptr [r12], rax
	jmp	.label_334
.label_341:
	cmp	rbx, 0x20000
	jb	.label_336
	xor	edx, edx
	mov	rax, rbx
	div	r14
	cmp	rax, 0x1f
	jbe	.label_337
	lea	rdi, [r14 + r14]
	call	sparse_new
	mov	rcx, rax
	mov	qword ptr [rsp], rcx
	test	rax, rax
	je	.label_343
	mov	esi, 8
	mov	rdi, r14
	call	xnmalloc
	mov	r12, rax
	mov	r13b, 1
	jmp	.label_335
.label_336:
	mov	esi, 8
	mov	rdi, rbx
	call	xnmalloc
	mov	r12, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	mov	r13d, 0
	jne	.label_339
	jmp	.label_335
.label_337:
	mov	esi, 8
	mov	rdi, rbx
	call	xnmalloc
	mov	r12, rax
.label_339:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_342:
	mov	qword ptr [r12 + rax*8], rax
	inc	rax
	cmp	rbx, rax
	jne	.label_342
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	r14, r14
	mov	r13d, 0
	je	.label_340
.label_335:
	xor	ebp, ebp
	nop	
.label_344:
	mov	rdi, r15
	mov	rsi, rbx
	call	randint_choose
	add	rax, rbp
	test	r13b, r13b
	je	.label_345
	mov	rdi, qword ptr [rsp]
	mov	rsi, r12
	mov	rdx, rbp
	mov	rcx, rax
	call	sparse_swap
	jmp	.label_338
	.section	.text
	.align	32
	#Procedure 0x404f97
	.globl sub_404f97
	.type sub_404f97, @function
sub_404f97:

	nop	word ptr [rax + rax]
.label_345:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rax
	call	swap
.label_338:
	inc	rbp
	dec	rbx
	cmp	r14, rbp
	jne	.label_344
	test	r13b, r13b
	je	.label_340
	mov	rdi, qword ptr [rsp]
	call	sparse_free
	jmp	.label_334
.label_340:
	mov	edx, 8
	mov	rdi, r12
	mov	rsi, r14
	call	xnrealloc
	mov	r12, rax
.label_334:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_343:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404ff3
	.globl sub_404ff3
	.type sub_404ff3, @function
sub_404ff3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405000

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:label_346
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_347
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_347
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_348
.label_347:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_348
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_348
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_348
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_348
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_348:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405199
	.globl sub_405199
	.type sub_405199, @function
sub_405199:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r15, rdi
	call	fileno
	lea	rsi, [rsp + 8]
	mov	edi, eax
	call	fstat
	mov	r13d, 0x2000
	test	eax, eax
	js	.label_349
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	r13d, 0x2000
	cmp	eax, 0x8000
	jne	.label_349
	mov	rdi, r15
	call	ftello
	mov	r13d, 0x2000
	test	rax, rax
	js	.label_349
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r13d, 0x2000
	sub	rcx, rax
	jle	.label_349
	cmp	rcx, -1
	je	.label_350
	inc	rcx
	mov	r13, rcx
.label_349:
	mov	rdi, r13
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_355
	mov	qword ptr [rsp], rbx
	xor	ebp, ebp
	mov	r14, -1
	nop	dword ptr [rax]
.label_352:
	mov	r12, rax
	mov	rbx, r13
	sub	rbx, rbp
	lea	rdi, [r12 + rbp]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r15
	call	fread
	add	rbp, rax
	cmp	rax, rbx
	jne	.label_353
	mov	ebx, 0xc
	cmp	r13, -1
	je	.label_354
	mov	rbx, r13
	shr	rbx, 1
	mov	rax, rbx
	not	rax
	add	rbx, r13
	cmp	r13, rax
	cmovae	rbx, r14
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	test	rax, rax
	mov	r13, rbx
	jne	.label_352
	call	__errno_location
	mov	ebx, dword ptr [rax]
	jmp	.label_354
.label_350:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_356
	.section	.text
	.align	32
	#Procedure 0x4052af
	.globl sub_4052af
	.type sub_4052af, @function
sub_4052af:

	nop	word ptr cs:[rax + rax]
.label_353:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	je	.label_351
.label_354:
	mov	rdi, r12
	call	free
	call	__errno_location
	mov	dword ptr [rax], ebx
.label_356:
	xor	r12d, r12d
.label_355:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_351:
	dec	r13
	cmp	rbp, r13
	jae	.label_357
	lea	rsi, [rbp + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
.label_357:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r12 + rbp], 0
	mov	qword ptr [rax], rbp
	jmp	.label_355
	.section	.text
	.align	32
	#Procedure 0x405320

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
	je	.label_370
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_361
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_365
	cvtsi2ss	xmm0, rax
	jmp	.label_367
.label_365:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_367:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_360
	cvtsi2ss	xmm1, rcx
	jmp	.label_363
.label_360:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_363:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_361
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_359
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_362
.label_359:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_362:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_368
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_358
.label_368:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_358:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_361
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_369
	mulss	xmm0, dword ptr [rcx + 8]
.label_369:
	movss	xmm1,  dword ptr [dword ptr [rip + label_98]]
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
	jne	.label_361
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_366
	nop	dword ptr [rax + rax]
.label_364:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_364
.label_366:
	mov	qword ptr [r15 + 0x48], 0
.label_361:
	mov	rax, r14
.label_370:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054a6
	.globl sub_4054a6
	.type sub_4054a6, @function
sub_4054a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_377
	nop	
.label_376:
	mov	edi, OFFSET FLAT:label_371
	call	strcmp
	test	eax, eax
	je	.label_374
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_376
.label_374:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_371
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_198
	mov	ecx, OFFSET FLAT:label_199
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_372
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_372
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_372:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_371
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_199
	mov	ecx, OFFSET FLAT:label_371
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_381
	mov	ecx, OFFSET FLAT:label_382
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
	#Procedure 0x4055ca
	.globl sub_4055ca
	.type sub_4055ca, @function
sub_4055ca:

	nop	word ptr [rax + rax]
.label_383:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055d3
	.globl sub_4055d3
	.type sub_4055d3, @function
sub_4055d3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055db
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_383
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055f0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055f9
	.globl sub_4055f9
	.type sub_4055f9, @function
sub_4055f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405600

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_384
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_384:
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
	ja	.label_386
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_385
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_387
	test	esi, esi
	jne	.label_386
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_391
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_394
.label_386:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_392
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_387
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_389
.label_385:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_387:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_395
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_397
.label_395:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_397:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_389:
	cmp	eax, 6
	jne	.label_392
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_393
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_396
.label_392:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_390
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_388
.label_391:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_394:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_393:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_396:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_390:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_388:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057b4
	.globl sub_4057b4
	.type sub_4057b4, @function
sub_4057b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057c0

	.globl write_random_numbers
	.type write_random_numbers, @function
write_random_numbers:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	ebx, 1
	xor	eax, eax
	test	r12, r12
	je	.label_398
	sub	rbx, r14
	add	rbx, rcx
	movsx	r13d, r8b
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_399:
	mov	rdi, r15
	mov	rsi, rbx
	call	randint_choose_0
	lea	rdx, [rax + r14]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_20
	xor	eax, eax
	mov	ecx, r13d
	call	__printf_chk
	test	eax, eax
	mov	eax, 0xffffffff
	js	.label_398
	inc	rbp
	xor	eax, eax
	cmp	rbp, r12
	jb	.label_399
.label_398:
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
	#Procedure 0x405835
	.globl sub_405835
	.type sub_405835, @function
sub_405835:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405845
	.globl sub_405845
	.type sub_405845, @function
sub_405845:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405850

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40585b
	.globl sub_40585b
	.type sub_40585b, @function
sub_40585b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860

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
	je	.label_402
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_400
	jmp	.label_401
.label_402:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_401
.label_400:
	mov	eax, 1
	test	bpl, bpl
	je	.label_401
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
.label_401:
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
	#Procedure 0x4058e8
	.globl sub_4058e8
	.type sub_4058e8, @function
sub_4058e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0

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
	je	.label_403
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_405
	jmp	.label_404
.label_403:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_404
.label_405:
	mov	eax, 1
	test	bpl, bpl
	je	.label_404
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
.label_404:
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
	#Procedure 0x405969
	.globl sub_405969
	.type sub_405969, @function
sub_405969:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405970

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
	je	.label_408
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_407
	jmp	.label_406
.label_408:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_406
.label_407:
	mov	eax, 1
	test	bpl, bpl
	je	.label_406
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
.label_406:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059d3
	.globl sub_4059d3
	.type sub_4059d3, @function
sub_4059d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059e0

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
	je	.label_411
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_409
	jmp	.label_410
.label_411:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_410
.label_409:
	mov	eax, 1
	test	bpl, bpl
	je	.label_410
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_410:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a3f
	.globl sub_405a3f
	.type sub_405a3f, @function
sub_405a3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405a40

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
	je	.label_412
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_414
	jmp	.label_413
.label_412:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_413
.label_414:
	mov	eax, 1
	test	bpl, bpl
	je	.label_413
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_413:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a89
	.globl sub_405a89
	.type sub_405a89, @function
sub_405a89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a90

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
	je	.label_417
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_416
	jmp	.label_415
.label_417:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_415
.label_416:
	mov	eax, 1
	test	bpl, bpl
	je	.label_415
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_415:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ad5
	.globl sub_405ad5
	.type sub_405ad5, @function
sub_405ad5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ae0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_420
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_419
	jmp	.label_418
.label_420:
	mov	eax, 1
	test	cl, cl
	je	.label_418
.label_419:
	xor	eax, eax
.label_418:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b0f
	.globl sub_405b0f
	.type sub_405b0f, @function
sub_405b0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405b10
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
	#Procedure 0x405b1d
	.globl sub_405b1d
	.type sub_405b1d, @function
sub_405b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

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
	#Procedure 0x405b2d
	.globl sub_405b2d
	.type sub_405b2d, @function
sub_405b2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b30

	.globl randint_choose
	.type randint_choose, @function
randint_choose:
	dec	rsi
	jmp	randint_genmax
	.section	.text
	.align	32
	#Procedure 0x405b38
	.globl sub_405b38
	.type sub_405b38, @function
sub_405b38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b40
	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b7b
	.globl sub_405b7b
	.type sub_405b7b, @function
sub_405b7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b80

	.globl sparse_swap
	.type sparse_swap, @function
sparse_swap:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x18], r15
	mov	qword ptr [rsp + 0x20], 0
	lea	rsi, [rsp + 0x18]
	call	hash_delete
	mov	rbx, rax
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], 0
	lea	rsi, [rsp + 8]
	mov	rdi, r12
	call	hash_delete
	mov	rbp, rax
	test	rbx, rbx
	jne	.label_423
	mov	edi, 0x10
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbx + 8], r15
	mov	qword ptr [rbx], r15
.label_423:
	test	rbp, rbp
	jne	.label_422
	mov	edi, 0x10
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rbp + 8], r13
	mov	qword ptr [rbp], r13
.label_422:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbp + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r12
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_421
	mov	rdi, r12
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_421
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + r15*8], rax
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_421:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405c52
	.globl sub_405c52
	.type sub_405c52, @function
sub_405c52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c65
	.globl sub_405c65
	.type sub_405c65, @function
sub_405c65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c70

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_424
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_424:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c92
	.globl sub_405c92
	.type sub_405c92, @function
sub_405c92:

	nop	word ptr cs:[rax + rax]
.label_428:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405ca5
	.globl sub_405ca5
	.type sub_405ca5, @function
sub_405ca5:

	nop	dword ptr [rax]
.label_429:
	test	rcx, rcx
	jne	.label_427
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_427:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_428
.label_425:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x405cee

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_429
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_426
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_425
.label_426:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405d20
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
	#Procedure 0x405d92
	.globl sub_405d92
	.type sub_405d92, @function
sub_405d92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405da0

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_430
	jmp	readsource
.label_430:
	add	rdi, 0x18
	jmp	readisaac
	.section	.text
	.align	32
	#Procedure 0x405db1
	.globl sub_405db1
	.type sub_405db1, @function
sub_405db1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405dc0

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_432
	.section	.text
	.align	32
	#Procedure 0x405def
	.globl sub_405def
	.type sub_405def, @function
sub_405def:

	nop	
.label_431:
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
.label_432:
	sub	r13, rbx
	jne	.label_431
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e35
	.globl sub_405e35
	.type sub_405e35, @function
sub_405e35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e48
	.globl sub_405e48
	.type sub_405e48, @function
sub_405e48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e50

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x405e59
	.globl sub_405e59
	.type sub_405e59, @function
sub_405e59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405e60

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
	mov	rax,  qword ptr [word ptr [rip + label_140]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_141]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_142]]
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
	#Procedure 0x405ec8
	.globl sub_405ec8
	.type sub_405ec8, @function
sub_405ec8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ed0

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
	je	.label_433
	cmp	r15, -2
	jb	.label_433
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_433
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_433:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f26
	.globl sub_405f26
	.type sub_405f26, @function
sub_405f26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f30

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_434
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_435:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebp, eax
	dec	ebx
	jne	.label_435
.label_434:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f6e
	.globl sub_405f6e
	.type sub_405f6e, @function
sub_405f6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405f70

	.globl input_size
	.type input_size, @function
input_size:
	push	r14
	push	rbx
	sub	rsp, 0x98
	movabs	rbx, 0x7fffffffffffffff
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	fstat
	test	eax, eax
	jne	.label_436
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_436
	mov	r14, qword ptr [rsp + 0x38]
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	sub	r14, rax
	test	rax, rax
	cmovns	rbx, r14
.label_436:
	mov	rax, rbx
	add	rsp, 0x98
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405fcd
	.globl sub_405fcd
	.type sub_405fcd, @function
sub_405fcd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405fd0

	.globl write_random_lines
	.type write_random_lines, @function
write_random_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r13, rdx
	mov	r15, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_437
	xor	ebp, ebp
.label_438:
	mov	rdi, r12
	mov	rsi, r14
	call	randint_choose_0
	mov	rbx, qword ptr [r13 + rax*8 + 8]
	mov	rdi, qword ptr [r13 + rax*8]
	sub	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	mov	eax, 0xffffffff
	jne	.label_437
	inc	rbp
	xor	eax, eax
	cmp	rbp, r15
	jb	.label_438
.label_437:
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
	#Procedure 0x40603f
	.globl sub_40603f
	.type sub_40603f, @function
sub_40603f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406040

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
	#Procedure 0x406054
	.globl sub_406054
	.type sub_406054, @function
sub_406054:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406060
	.globl read_file
	.type read_file, @function
read_file:

	mov	edx, OFFSET FLAT:label_439
	jmp	internal_read_file
	.section	.text
	.align	32
	#Procedure 0x406067
	.globl sub_406067
	.type sub_406067, @function
sub_406067:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406070

	.globl internal_read_file
	.type internal_read_file, @function
internal_read_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rsi, rdx
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_440
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_440
	test	r15, r15
	je	.label_441
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_441:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_440:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060d6
	.globl sub_4060d6
	.type sub_4060d6, @function
sub_4060d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	mov	edx, OFFSET FLAT:label_442
	jmp	internal_read_file
	.section	.text
	.align	32
	#Procedure 0x4060e7
	.globl sub_4060e7
	.type sub_4060e7, @function
sub_4060e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060f0

	.globl freebuffer
	.type freebuffer, @function
freebuffer:
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4060f9
	.globl sub_4060f9
	.type sub_4060f9, @function
sub_4060f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406100

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_443
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_443:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40613a
	.globl sub_40613a
	.type sub_40613a, @function
sub_40613a:

	nop	word ptr [rax + rax]
.label_445:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_444
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40614b
	.globl sub_40614b
	.type sub_40614b, @function
sub_40614b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406155
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_445
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_445
.label_444:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406170

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x406178
	.globl sub_406178
	.type sub_406178, @function
sub_406178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406180

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_446
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_447]]
	jbe	.label_448
	movss	xmm1,  dword ptr [dword ptr [rip + label_451]]
	ucomiss	xmm1, xmm0
	jbe	.label_448
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_450]]
	jbe	.label_448
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_448
	addss	xmm1,  dword ptr [dword ptr [rip + label_447]]
	ucomiss	xmm0, xmm1
	jbe	.label_448
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_449]]
	ucomiss	xmm2, xmm0
	jb	.label_448
	ucomiss	xmm0, xmm1
	ja	.label_446
.label_448:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_446:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061f4
	.globl sub_4061f4
	.type sub_4061f4, @function
sub_4061f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406200

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x406222
	.globl sub_406222
	.type sub_406222, @function
sub_406222:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406230

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	.section	.text
	.align	32
	#Procedure 0x40623d
	.globl sub_40623d
	.type sub_40623d, @function
sub_40623d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406240

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rsi
	mov	dword ptr [rsp + 0x10], edi
	mov	qword ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x38], 0
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_382
	call	setlocale
	mov	edi, OFFSET FLAT:label_487
	mov	esi, OFFSET FLAT:label_488
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_487
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rbp, -1
	mov	byte ptr [rsp + 0xb], 0xa
	xor	ecx, ecx
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x20], -1
	xor	r14d, r14d
	xor	r15d, r15d
.label_822:
	mov	eax, ecx
	mov	byte ptr [rsp + 0xc], al
	mov	al, byte ptr [rsp + 0xb]
	mov	bl, al
.label_823:
	mov	eax, ebx
	mov	byte ptr [rsp + 0xb], al
	jmp	.label_472
.label_456:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x30], rax
	nop	word ptr cs:[rax + rax]
.label_472:
	mov	cl, r15b
.label_818:
	mov	r15b, cl
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_453
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0x10]
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_463
	add	eax, -0x65
	cmp	eax, 0x1b
	ja	.label_466
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_468]]
.label_819:
	mov	r12, r14
	mov	r14, rbp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 0x2d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	r12b, r12b
	jne	.label_477
	test	rbx, rbx
	je	.label_480
	mov	byte ptr [rbx], 0
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_382
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rbx], 0x2d
	lea	rbp, [rbx + 1]
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_382
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	rcx, r12
	sub	rcx, qword ptr [rsp + 0x20]
	setae	al
	cmp	rcx, -1
	sete	cl
	test	rbx, rbx
	mov	rbp, r14
	je	.label_478
	xor	al, cl
	mov	r14b, 1
	jne	.label_472
	jmp	.label_478
.label_821:
	mov	rdi, qword ptr [rsp + 0x30]
	test	rdi, rdi
	je	.label_456
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	je	.label_456
	jmp	.label_467
.label_820:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	lea	rcx, [rsp + 0x50]
	call	xstrtoul
	cmp	eax, 1
	je	.label_472
	test	eax, eax
	jne	.label_476
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbp, rax
	cmovae	rbp, rax
	jmp	.label_472
.label_824:
	mov	rdi, qword ptr [rsp + 0x28]
	test	rdi, rdi
	je	.label_483
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_489
.label_483:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_472
.label_463:
	cmp	eax, -1
	jne	.label_495
	mov	rbx, r12
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	test	r15b, r15b
	sete	al
	test	r14b, r14b
	je	.label_496
	test	al, al
	je	.label_500
.label_496:
	movsxd	r12, dword ptr [rsp + 0x10]
	sub	r12, rcx
	lea	rsi, [r13 + rcx*8]
	test	r14b, r14b
	je	.label_502
	test	r12d, r12d
	mov	r13b, byte ptr [rsp + 0xb]
	jle	.label_454
	jmp	.label_505
.label_502:
	cmp	r12d, 1
	setg	cl
	and	cl, al
	cmp	cl, 1
	mov	r13b, byte ptr [rsp + 0xb]
	je	.label_505
.label_454:
	test	r15b, r15b
	mov	qword ptr [rsp + 0x48], rbx
	je	.label_510
	movsx	edx, r13b
	mov	rax, rsi
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rsi
	mov	esi, r12d
	call	input_from_argv
	jmp	.label_462
.label_510:
	test	r14b, r14b
	je	.label_464
	lea	r12, [rbx + 1]
	sub	r12, qword ptr [rsp + 0x20]
	xor	eax, eax
	jmp	.label_465
.label_464:
	cmp	r12d, 1
	jne	.label_469
	mov	rcx, qword ptr [rsi]
	movzx	edx, byte ptr [rcx]
	mov	eax, 0x2d
	sub	eax, edx
	jne	.label_470
	movzx	eax, byte ptr [rcx + 1]
	neg	eax
.label_470:
	test	rbp, rbp
	je	.label_469
	test	eax, eax
	je	.label_469
	mov	r12, rsi
	mov	rdi, qword ptr [r12]
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_439
	call	freopen_safer
	test	rax, rax
	je	.label_484
.label_469:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	call	fadvise
	cmp	byte ptr [rsp + 0xc], 0
	jne	.label_473
	cmp	rbp, -1
	je	.label_473
	test	rbp, rbp
	je	.label_494
	call	input_size
	cmp	rax, 0x800000
	jle	.label_473
.label_494:
	mov	qword ptr [rsp + 0x10], rbp
	cmp	byte ptr [rsp + 0xc], 0
	setne	al
	mov	dword ptr [rsp + 0xc], eax
	mov	r12, -1
	mov	bl, 1
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, -1
	jmp	.label_459
.label_473:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	movsx	esi, r13b
	lea	rdx, [rsp + 0x40]
	call	read_input
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x40]
.label_465:
	mov	qword ptr [rsp + 0x18], rax
.label_462:
	cmp	rbp, r12
	mov	rax, r12
	cmovb	rax, rbp
	cmp	byte ptr [rsp + 0xc], 0
	cmove	rbp, rax
	mov	qword ptr [rsp + 0x10], rbp
	je	.label_509
	xor	ebx, ebx
	mov	rsi, -1
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_459
.label_509:
	mov	rdi, rbp
	mov	rsi, r12
	call	randperm_bound
	mov	rsi, rax
	mov	dword ptr [rsp + 0xc], 0
	xor	ebx, ebx
.label_459:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, rbp
	call	randint_all_new
	mov	r13, rax
	test	r13, r13
	je	.label_499
	test	bl, bl
	je	.label_475
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	movsx	esi, byte ptr [rsp + 0xb]
	lea	r8, [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, r13
	call	read_input_reservoir_sampling
	mov	r12, rax
	mov	qword ptr [rsp + 0x10], r12
.label_475:
	mov	dword ptr [rsp + 0x28], ebx
	mov	rax, r14
	or	r15b, al
	jne	.label_508
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	jne	.label_493
.label_508:
	xor	r15d, r15d
	mov	ebx, dword ptr [rsp + 0xc]
	test	bl, bl
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_504
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	randperm_new
	mov	r15, rax
.label_504:
	test	rbp, rbp
	je	.label_490
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:label_503
	mov	rdi, rbp
	call	freopen_safer
	test	rax, rax
	je	.label_499
.label_490:
	test	bl, bl
	je	.label_506
	mov	rsi, qword ptr [rsp + 0x10]
	test	rsi, rsi
	je	.label_482
	test	r12, r12
	je	.label_497
	test	r14b, r14b
	mov	al, byte ptr [rsp + 0xb]
	je	.label_511
	movsx	r8d, al
	mov	rdi, r13
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x48]
	call	write_random_numbers
	jmp	.label_471
.label_506:
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_485
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, r12
	mov	rdx, r15
	call	write_permuted_output_reservoir
	jmp	.label_471
.label_485:
	test	r14b, r14b
	je	.label_507
	movsx	ecx, byte ptr [rsp + 0xb]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r15
	call	write_permuted_numbers
	jmp	.label_471
.label_511:
	mov	rdi, r13
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, r12
	call	write_random_lines
	jmp	.label_471
.label_507:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r15
	call	write_permuted_lines
.label_471:
	test	eax, eax
	jne	.label_486
.label_482:
	xor	eax, eax
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_495:
	cmp	eax, 0xffffff7d
	je	.label_492
	cmp	eax, 0xffffff7e
	jne	.label_466
	xor	edi, edi
	call	usage
.label_492:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_371
	mov	edx, OFFSET FLAT:label_198
	mov	r8d, OFFSET FLAT:label_498
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_466:
	mov	edi, 1
	call	usage
.label_499:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_153
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_477:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
	jmp	.label_458
.label_478:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_155
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_476:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_479
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
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
.label_505:
	mov	rbp, rsi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movzx	eax, r14b
	xor	rax, 1
	mov	rdi, qword ptr [rbp + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_486:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	jmp	.label_455
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
	jmp	.label_458
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
	jmp	.label_458
.label_493:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
.label_455:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_497:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_474
.label_458:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_484:
	mov	rbx, r12
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_153
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069b0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069ba
	.globl sub_4069ba
	.type sub_4069ba, @function
sub_4069ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069e3
	.globl sub_4069e3
	.type sub_4069e3, @function
sub_4069e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069f0
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
	#Procedure 0x4069ff
	.globl sub_4069ff
	.type sub_4069ff, @function
sub_4069ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406a00

	.globl randperm_bound
	.type randperm_bound, @function
randperm_bound:
	push	rbx
	mov	rbx, rdi
	mov	rdi, rsi
	call	ceil_lg
	imul	rax, rbx
	add	rax, 7
	shr	rax, 3
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a1a
	.globl sub_406a1a
	.type sub_406a1a, @function
sub_406a1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a20
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
	#Procedure 0x406a34
	.globl sub_406a34
	.type sub_406a34, @function
sub_406a34:

	nop	word ptr cs:[rax + rax]
.label_512:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406a46
	.globl sub_406a46
	.type sub_406a46, @function
sub_406a46:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a4d
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_515
	mov	rcx, qword ptr [rdi]
	jmp	.label_513
	.section	.text
	.align	32
	#Procedure 0x406a5b
	.globl sub_406a5b
	.type sub_406a5b, @function
sub_406a5b:

	nop	
.label_514:
	add	rcx, 0x10
.label_513:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_512
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_514
.label_515:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a70

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a8a
	.globl sub_406a8a
	.type sub_406a8a, @function
sub_406a8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a90

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_516
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_516:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406aa5
	.globl sub_406aa5
	.type sub_406aa5, @function
sub_406aa5:

	nop	word ptr cs:[rax + rax]
.label_517:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406ab5
	.globl sub_406ab5
	.type sub_406ab5, @function
sub_406ab5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ac3

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
	je	.label_517
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
	#Procedure 0x406b10
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b17
	.globl sub_406b17
	.type sub_406b17, @function
sub_406b17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b20

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b25
	.globl sub_406b25
	.type sub_406b25, @function
sub_406b25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b30

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_519
	cmp	byte ptr [rax], 0x43
	jne	.label_521
	cmp	byte ptr [rax + 1], 0
	je	.label_518
.label_521:
	mov	esi, OFFSET FLAT:label_520
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_519
.label_518:
	xor	ebx, ebx
.label_519:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b61
	.globl sub_406b61
	.type sub_406b61, @function
sub_406b61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b70

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x406b75
	.globl sub_406b75
	.type sub_406b75, @function
sub_406b75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b80

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_522
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_522:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b9a
	.globl sub_406b9a
	.type sub_406b9a, @function
sub_406b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ba0
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
	#Procedure 0x406bb6
	.globl sub_406bb6
	.type sub_406bb6, @function
sub_406bb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x406bca
	.globl sub_406bca
	.type sub_406bca, @function
sub_406bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bd0
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
	#Procedure 0x406be0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x406be9
	.globl sub_406be9
	.type sub_406be9, @function
sub_406be9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bf0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x406bfa
	.globl sub_406bfa
	.type sub_406bfa, @function
sub_406bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c00
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
	#Procedure 0x406c14
	.globl sub_406c14
	.type sub_406c14, @function
sub_406c14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c20

	.globl sparse_new
	.type sparse_new, @function
sparse_new:
	xor	esi, esi
	mov	edx, OFFSET FLAT:sparse_hash_
	mov	ecx, OFFSET FLAT:sparse_cmp_
	mov	r8d, OFFSET FLAT:free
	jmp	hash_initialize
	.section	.text
	.align	32
	#Procedure 0x406c37
	.globl sub_406c37
	.type sub_406c37, @function
sub_406c37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c40

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
	#Procedure 0x406c58
	.globl sub_406c58
	.type sub_406c58, @function
sub_406c58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c60

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
	#Procedure 0x406c8d
	.globl sub_406c8d
	.type sub_406c8d, @function
sub_406c8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c90
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
	#Procedure 0x406ca3
	.globl sub_406ca3
	.type sub_406ca3, @function
sub_406ca3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cb0
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
	#Procedure 0x406cc3
	.globl sub_406cc3
	.type sub_406cc3, @function
sub_406cc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cd0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x406cde
	.globl sub_406cde
	.type sub_406cde, @function
sub_406cde:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406ce0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_153
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406d10

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	mov	qword ptr [rsp], rbp
	je	.label_532
	cmp	eax, 1
	je	.label_535
	cmp	eax, 2
	je	.label_536
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_536:
	mov	bpl, r14b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_530
.label_532:
	xor	ebp, ebp
	xor	r15d, r15d
	jmp	.label_533
.label_535:
	xor	ebp, ebp
.label_530:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_524
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_525
.label_524:
	test	r14b, r14b
	je	.label_527
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_531
.label_527:
	test	bpl, bpl
	je	.label_533
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_525
.label_533:
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
	jmp	.label_525
.label_531:
	mov	r14b, 1
.label_525:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	test	bpl, bpl
	je	.label_529
	mov	edi, 2
	call	close
.label_529:
	test	r14b, r14b
	je	.label_528
	mov	edi, 1
	call	close
.label_528:
	test	r15b, r15b
	je	.label_534
	xor	edi, edi
	call	close
.label_534:
	test	r13, r13
	jne	.label_526
	mov	dword ptr [rbx], r12d
.label_526:
	mov	rax, r13
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
	#Procedure 0x406e2e
	.globl sub_406e2e
	.type sub_406e2e, @function
sub_406e2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406e30

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
	#Procedure 0x406e67
	.globl sub_406e67
	.type sub_406e67, @function
sub_406e67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e70

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
	je	.label_537
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_539
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_537
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
	je	.label_540
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
	jmp	.label_539
.label_538:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406f50
	.globl sub_406f50
	.type sub_406f50, @function
sub_406f50:

	nop	dword ptr [rax + rax]
.label_540:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_538
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_538
	mov	rdi, qword ptr [rsp]
	call	free
.label_537:
	xor	r14d, r14d
.label_539:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fa0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406faa
	.globl sub_406faa
	.type sub_406faa, @function
sub_406faa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fb8
	.globl sub_406fb8
	.type sub_406fb8, @function
sub_406fb8:

	nop	dword ptr [rax + rax]
.label_541:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406fc6
	.globl sub_406fc6
	.type sub_406fc6, @function
sub_406fc6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fcb

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_541
	test	rdx, rdx
	je	.label_541
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_545:
	mov	rax, rbx
	jmp	.label_542
	.section	.text
	.align	32
	#Procedure 0x406ff5

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
	je	.label_542
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_545
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_546
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_543
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_542
.label_543:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_544
.label_546:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_544:
	xor	eax, eax
.label_542:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407076
	.globl sub_407076
	.type sub_407076, @function
sub_407076:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407080
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407085
	.globl sub_407085
	.type sub_407085, @function
sub_407085:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407090
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_547
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_552:
	cmp	qword ptr [rsi], 0
	je	.label_549
	mov	rax, rsi
	nop	dword ptr [rax]
.label_550:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_550
	inc	rdx
.label_549:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_552
.label_547:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_548
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_551
.label_548:
	xor	eax, eax
.label_551:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070e9
	.globl sub_4070e9
	.type sub_4070e9, @function
sub_4070e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070f0
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
	#Procedure 0x407104
	.globl sub_407104
	.type sub_407104, @function
sub_407104:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407110

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_554:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_553
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_555
	.section	.text
	.align	32
	#Procedure 0x407139
	.globl sub_407139
	.type sub_407139, @function
sub_407139:

	nop	dword ptr [rax]
.label_553:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_555:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_556
	inc	r9
	cmp	r9, 0xa
	jb	.label_554
.label_556:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40716f
	.globl sub_40716f
	.type sub_40716f, @function
sub_40716f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407170

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_382
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_557
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407195
	.globl sub_407195
	.type sub_407195, @function
sub_407195:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071a0
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
.label_562:
	cmp	qword ptr [rcx], rbx
	jne	.label_558
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_559
.label_558:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_562
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_561:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_560
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_561
	jmp	.label_560
.label_559:
	mov	rcx, qword ptr [rdx]
.label_560:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x407206
	.globl sub_407206
	.type sub_407206, @function
sub_407206:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407210

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_563
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_565
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_563
.label_565:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_563
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_564
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_564:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_563:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x407287
	.globl sub_407287
	.type sub_407287, @function
sub_407287:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407290

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_566
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_566:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4072b6
	.globl sub_4072b6
	.type sub_4072b6, @function
sub_4072b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_567
	test	rbx, rbx
	jne	.label_567
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_567:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_569
	test	rax, rax
	je	.label_568
.label_569:
	pop	rbx
	ret	
.label_568:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4072f0

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072f4
	.globl sub_4072f4
	.type sub_4072f4, @function
sub_4072f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407300

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_570
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_570
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_570:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x407326
	.globl sub_407326
	.type sub_407326, @function
sub_407326:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407330

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x407337
	.globl sub_407337
	.type sub_407337, @function
sub_407337:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407340
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_571
	xor	eax, eax
.label_574:
	cmp	qword ptr [r8], 0
	je	.label_572
	test	r8, r8
	je	.label_572
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_573:
	cmp	rax, rdx
	jae	.label_571
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_573
.label_572:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_574
.label_571:
	ret	
	.section	.text
	.align	32
	#Procedure 0x407383
	.globl sub_407383
	.type sub_407383, @function
sub_407383:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407390

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
	jne	.label_581
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
	je	.label_575
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_579
	mov	eax, OFFSET FLAT:label_580
	jmp	.label_578
.label_582:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_222
	mov	eax, OFFSET FLAT:label_274
.label_578:
	cmove	rax, rcx
.label_581:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40740f
	.globl sub_40740f
	.type sub_40740f, @function
sub_40740f:

	nop	dword ptr [rax]
.label_575:
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
	je	.label_582
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_576
	mov	eax, OFFSET FLAT:label_577
	jmp	.label_578
	.section	.text
	.align	32
	#Procedure 0x407450

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_584:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_584
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_583:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_583
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	#Procedure 0x4077e2
	.globl sub_4077e2
	.type sub_4077e2, @function
sub_4077e2:

	nop	word ptr cs:[rax + rax]
.label_587:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_585
.label_586:
	mov	eax, 1
	test	bpl, bpl
	je	.label_585
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
.label_585:
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
	#Procedure 0x407838
	.globl sub_407838
	.type sub_407838, @function
sub_407838:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40783b

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
	je	.label_587
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_586
	jmp	.label_585
	.section	.text
	.align	32
	#Procedure 0x407870

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_591
	cmp	eax, 1
	je	.label_593
	test	eax, eax
	jne	.label_588
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_589
	cmp	rbx, r15
	jbe	.label_590
.label_589:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_592
	mov	dword ptr [rax], 0x4b
	jmp	.label_588
.label_591:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_588
.label_593:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_588
.label_592:
	mov	dword ptr [rax], 0x22
.label_588:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_155
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_590:
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
	.align	32
	#Procedure 0x407936
	.globl sub_407936
	.type sub_407936, @function
sub_407936:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407940

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
	jae	.label_594
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_601:
	cmp	qword ptr [r15], 0
	je	.label_598
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_603
	nop	word ptr cs:[rax + rax]
.label_597:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_599
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_600
	.section	.text
	.align	32
	#Procedure 0x4079b6
	.globl sub_4079b6
	.type sub_4079b6, @function
sub_4079b6:

	nop	word ptr cs:[rax + rax]
.label_599:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_600:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_597
.label_603:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_598
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_602
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_595
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_596
.label_602:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_596:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_598:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_601
	mov	al, 1
.label_594:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_595:
	xor	eax, eax
	jmp	.label_594
	.section	.text
	.align	32
	#Procedure 0x407a55
	.globl sub_407a55
	.type sub_407a55, @function
sub_407a55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a60

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x407a65
	.globl sub_407a65
	.type sub_407a65, @function
sub_407a65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a70

	.globl read_input_reservoir_sampling
	.type read_input_reservoir_sampling, @function
read_input_reservoir_sampling:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r12, rdx
	mov	dword ptr [rsp + 4], esi
	mov	qword ptr [rsp + 8], rdi
	cmp	r12, 0x400
	mov	r13d, 0x400
	cmovb	r13, r12
	mov	esi, 0x18
	mov	rdi, r13
	call	xcalloc
	mov	r14, rax
	xor	r15d, r15d
	xor	ebp, ebp
	jmp	.label_612
	.section	.text
	.align	32
	#Procedure 0x407abc
	.globl sub_407abc
	.type sub_407abc, @function
sub_407abc:

	nop	dword ptr [rax]
.label_611:
	add	r13, 0x400
	mov	edx, 0x18
	mov	rdi, r14
	mov	rsi, r13
	call	xnrealloc
	mov	r14, rax
	add	rbx, r14
	xor	esi, esi
	mov	edx, 0x6000
	mov	rdi, rbx
	call	memset
.label_612:
	lea	rax, [rbp*8]
	lea	rbx, [rax + rax*2]
	nop	dword ptr [rax + rax]
.label_605:
	cmp	rbp, r12
	jae	.label_604
	lea	rdi, [r14 + rbx]
	mov	eax, dword ptr [rsp + 4]
	movsx	edx, al
	mov	rsi, qword ptr [rsp + 8]
	call	readlinebuffer_delim
	mov	r15, rax
	test	r15, r15
	je	.label_607
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, r13
	jb	.label_605
	jmp	.label_611
.label_604:
	test	r15, r15
	je	.label_607
	lea	r15, [rsp + 0x20]
	mov	rdi, r15
	call	initbuffer
	mov	eax, dword ptr [rsp + 4]
	movsx	r13d, al
	nop	word ptr [rax + rax]
.label_613:
	mov	rbx, rbp
	lea	rbp, [rbx + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	randint_choose_0
	cmp	rax, r12
	lea	rax, [rax + rax*2]
	lea	rdi, [r14 + rax*8]
	cmovae	rdi, r15
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, r13d
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_609
	cmp	rbp, 1
	mov	rbx, rbp
	jne	.label_613
.label_609:
	test	rbx, rbx
	je	.label_606
	lea	rdi, [rsp + 0x20]
	call	freebuffer
	jmp	.label_608
.label_607:
	mov	rbx, rbp
.label_608:
	mov	rdi, qword ptr [rsp + 8]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_610
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r14
	cmp	rbx, r12
	cmova	rbx, r12
	mov	rax, rbx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_610:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_606:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_614
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x4b
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c30

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 0x10]
	lea	r12, [r13 + 1]
	nop	word ptr cs:[rax + rax]
.label_616:
	cmp	rbx, r13
	jae	.label_615
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_617:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_617
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_619:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_619
.label_615:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_620
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_616
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_618
.label_620:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_618:
	mov	rax, rcx
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
	#Procedure 0x407d4c
	.globl sub_407d4c
	.type sub_407d4c, @function
sub_407d4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_621:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_621
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x407d71
	.globl sub_407d71
	.type sub_407d71, @function
sub_407d71:

	nop	word ptr cs:[rax + rax]
.label_624:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_622
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_622:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407db4
	.globl sub_407db4
	.type sub_407db4, @function
sub_407db4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407db6

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
	jne	.label_623
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_623
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_624
.label_623:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x407df0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x407dfa
	.globl sub_407dfa
	.type sub_407dfa, @function
sub_407dfa:

	nop	word ptr [rax + rax]
.label_627:
	add	r14, 0x10
.label_631:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_626
	cmp	qword ptr [r14], 0
	je	.label_627
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_628
	nop	word ptr cs:[rax + rax]
.label_630:
	test	cl, 1
	je	.label_625
	mov	rdi, qword ptr [rbx]
	call	rax
.label_625:
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
	jne	.label_630
.label_628:
	test	cl, cl
	je	.label_629
	mov	rdi, qword ptr [r14]
	call	rax
.label_629:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_627
	.section	.text
	.align	32
	#Procedure 0x407e75
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_631
	.section	.text
	.align	32
	#Procedure 0x407e82
	.globl sub_407e82
	.type sub_407e82, @function
sub_407e82:

	nop	dword ptr [rax]
.label_626:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e93
	.globl sub_407e93
	.type sub_407e93, @function
sub_407e93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ea0

	.globl sparse_cmp_
	.type sparse_cmp_, @function
sparse_cmp_:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x407eaa
	.globl sub_407eaa
	.type sub_407eaa, @function
sub_407eaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407eb0

	.globl write_permuted_lines
	.type write_permuted_lines, @function
write_permuted_lines:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_632
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_633:
	mov	rax, qword ptr [r14 + r13*8]
	mov	rbx, qword ptr [r12 + rax*8 + 8]
	mov	rdi, qword ptr [r12 + rax*8]
	sub	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	mov	eax, 0xffffffff
	jne	.label_632
	inc	r13
	xor	eax, eax
	cmp	r13, r15
	jb	.label_633
.label_632:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f12
	.globl sub_407f12
	.type sub_407f12, @function
sub_407f12:

	nop	word ptr cs:[rax + rax]
.label_640:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_634
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
	#Procedure 0x407f58
	.globl sub_407f58
	.type sub_407f58, @function
sub_407f58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f5d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_640
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_636
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
	mov	esi, OFFSET FLAT:label_639
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_635
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_638
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_641
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_637
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x408050
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_642]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x408064
	.globl sub_408064
	.type sub_408064, @function
sub_408064:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408070

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
	je	.label_644
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_643
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_643
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_643
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
	jmp	.label_644
.label_643:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_644:
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
	#Procedure 0x40814c
	.globl sub_40814c
	.type sub_40814c, @function
sub_40814c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408150
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408157
	.globl sub_408157
	.type sub_408157, @function
sub_408157:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408160

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_645
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_648
	cvtsi2ss	xmm0, rdi
	jmp	.label_646
.label_648:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_646:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_98]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_94]]
	jae	.label_647
.label_645:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_647:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081de
	.globl sub_4081de
	.type sub_4081de, @function
sub_4081de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4081e0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40820d
	.globl sub_40820d
	.type sub_40820d, @function
sub_40820d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408210
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
	je	.label_650
	test	rbx, rbx
	je	.label_650
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_649:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_651
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_651
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_649
	jmp	.label_650
.label_651:
	mov	r15, qword ptr [rbx]
.label_650:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408270

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_652
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_652:
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
	#Procedure 0x4082f3
	.globl sub_4082f3
	.type sub_4082f3, @function
sub_4082f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408300

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_653
	test	rbx, rbx
	je	.label_655
	mov	esi, OFFSET FLAT:label_442
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_654
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_654
.label_653:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_655:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_654:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083ad
	.globl sub_4083ad
	.type sub_4083ad, @function
sub_4083ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083b0

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083db
	.globl sub_4083db
	.type sub_4083db, @function
sub_4083db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083e0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083e9
	.globl sub_4083e9
	.type sub_4083e9, @function
sub_4083e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083f0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_166
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_656
	test	ecx, ecx
	js	.label_657
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_657:
	xor	eax, eax
.label_656:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408423
	.globl sub_408423
	.type sub_408423, @function
sub_408423:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408495
	.globl sub_408495
	.type sub_408495, @function
sub_408495:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084a2
	.globl sub_4084a2
	.type sub_4084a2, @function
sub_4084a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084c6
	.globl sub_4084c6
	.type sub_4084c6, @function
sub_4084c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084d9
	.globl sub_4084d9
	.type sub_4084d9, @function
sub_4084d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084e0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
