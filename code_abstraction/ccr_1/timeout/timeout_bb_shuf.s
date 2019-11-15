	.section	.text
	.align	32
	#Procedure 0x401b29
	.globl sub_401b29
	.type sub_401b29, @function
sub_401b29:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401b2a
	.globl sub_401b2a
	.type sub_401b2a, @function
sub_401b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b62
	.globl sub_401b62
	.type sub_401b62, @function
sub_401b62:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401baa
	.globl sub_401baa
	.type sub_401baa, @function
sub_401baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bcc
	.globl sub_401bcc
	.type sub_401bcc, @function
sub_401bcc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bdd
	.globl sub_401bdd
	.type sub_401bdd, @function
sub_401bdd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bf6
	.globl sub_401bf6
	.type sub_401bf6, @function
sub_401bf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c00

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	strtod
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax], 0
	je	.label_11
	movsd	qword ptr [rsp + 8], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp], rax
	jae	.label_10
	mov	qword ptr [rsp], rax
	jmp	.label_11
.label_10:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 8]
.label_11:
	test	r14, r14
	je	.label_12
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14], rax
.label_12:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c71
	.globl sub_401c71
	.type sub_401c71, @function
sub_401c71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c80
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x401c8a
	.globl sub_401c8a
	.type sub_401c8a, @function
sub_401c8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c90

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
	je	.label_14
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_13
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_13
.label_14:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_13
	test	cl, cl
	jne	.label_13
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_13:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cf6
	.globl sub_401cf6
	.type sub_401cf6, @function
sub_401cf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d00
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d08
	.globl sub_401d08
	.type sub_401d08, @function
sub_401d08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d10
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
	#Procedure 0x401d59
	.globl sub_401d59
	.type sub_401d59, @function
sub_401d59:

	nop	dword ptr [rax]
.label_16:
	mov	ecx, 1
.label_15:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401d70
	.globl sub_401d70
	.type sub_401d70, @function
sub_401d70:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d75

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_16
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
	.section	.text
	.align	32
	#Procedure 0x401db0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_17
.label_18:
	ret	
.label_17:
	cmp	edi, 0x7f
	je	.label_18
	xor	eax, eax
	jmp	.label_18
	.section	.text
	.align	32
	#Procedure 0x401dc1
	.globl sub_401dc1
	.type sub_401dc1, @function
sub_401dc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dd0
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
	#Procedure 0x401ddf
	.globl sub_401ddf
	.type sub_401ddf, @function
sub_401ddf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401de0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	xor	ecx, ecx
	or	rsi, rdi
	setne	cl
	test	rdi, rdi
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401df4
	.globl sub_401df4
	.type sub_401df4, @function
sub_401df4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl unblock_signal
	.type unblock_signal, @function
unblock_signal:
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	ebx, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	sigemptyset
	mov	rdi, r14
	mov	esi, ebx
	call	sigaddset
	mov	edi, 1
	xor	edx, edx
	mov	rsi, r14
	call	sigprocmask
	test	eax, eax
	je	.label_19
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_19:
	add	rsp, 0x88
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e6a
	.globl sub_401e6a
	.type sub_401e6a, @function
sub_401e6a:

	nop	word ptr [rax + rax]
.label_23:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_21
.label_22:
	mov	eax, 1
	test	bpl, bpl
	je	.label_21
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
.label_21:
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
	#Procedure 0x401eb8
	.globl sub_401eb8
	.type sub_401eb8, @function
sub_401eb8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ebb

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
	je	.label_23
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_22
	jmp	.label_21
	.section	.text
	.align	32
	#Procedure 0x401ef0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401efa
	.globl sub_401efa
	.type sub_401efa, @function
sub_401efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f00
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x401f0d
	.globl sub_401f0d
	.type sub_401f0d, @function
sub_401f0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f10
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
	#Procedure 0x401f20

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401f2a
	.globl sub_401f2a
	.type sub_401f2a, @function
sub_401f2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30
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
	#Procedure 0x401f40

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401f49
	.globl sub_401f49
	.type sub_401f49, @function
sub_401f49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x401f5a
	.globl sub_401f5a
	.type sub_401f5a, @function
sub_401f5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f60

	.globl parse_duration
	.type parse_duration, @function
parse_duration:
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, OFFSET FLAT:cl_strtod
	call	xstrtod
	test	al, al
	jne	.label_27
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_24
.label_27:
	movsd	xmm0, qword ptr [rsp + 8]
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jb	.label_24
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax], 0
	je	.label_26
	cmp	byte ptr [rax + 1], 0
	jne	.label_24
.label_26:
	mov	rax, qword ptr [rsp + 0x10]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rsp + 8]
	call	apply_time_suffix
	test	al, al
	je	.label_24
	movsd	xmm0, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	pop	r14
	ret	
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	mov	edi, 0x7d
	call	usage
	.section	.text
	.align	32
	#Procedure 0x402006
	.globl sub_402006
	.type sub_402006, @function
sub_402006:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402010

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_32
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, 0xffffffff
	cmp	rdx, r15
	je	.label_31
	cmp	byte ptr [rdx], 0
	jne	.label_31
	cmp	dword ptr [rbx], 0
	jne	.label_31
	cmp	eax, -1
	je	.label_31
	movsxd	rdx, eax
	cmp	rdx, rax
	jne	.label_31
	cmp	eax, 0xfe
	mov	edx, 0xff
	mov	ecx, 0x7f
	cmovg	ecx, edx
	and	ecx, eax
.label_31:
	mov	dword ptr [rsp + 4], ecx
	jmp	.label_30
.label_32:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_34
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_38:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_35
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_28
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_28:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_38
.label_34:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_33
	cmp	byte ptr [r12], 0x53
	jne	.label_29
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_29
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_29
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_33
.label_29:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_33:
	mov	rdi, r12
	call	free
.label_30:
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_40
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_37
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_36
.label_37:
	mov	eax, dword ptr [rsp + 4]
.label_36:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402181
	.globl sub_402181
	.type sub_402181, @function
sub_402181:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402190
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_41
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_41:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4021b6
	.globl sub_4021b6
	.type sub_4021b6, @function
sub_4021b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_42
	test	rbx, rbx
	jne	.label_42
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_42:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_44
	test	rax, rax
	je	.label_43
.label_44:
	pop	rbx
	ret	
.label_43:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4021f0

	.globl apply_time_suffix
	.type apply_time_suffix, @function
apply_time_suffix:
	movsd	xmm0,  qword ptr [word ptr [rip + label_45]]
	xor	eax, eax
	lea	ecx, [rsi - 0x64]
	cmp	ecx, 0xf
	ja	.label_46
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_48]]
.label_476:
	movsd	xmm0,  qword ptr [word ptr [rip + label_52]]
	jmp	.label_49
.label_46:
	test	esi, esi
	je	.label_49
	jmp	.label_51
.label_475:
	movsd	xmm0,  qword ptr [word ptr [rip + label_50]]
	jmp	.label_49
.label_477:
	movsd	xmm0,  qword ptr [word ptr [rip + label_47]]
.label_49:
	mulsd	xmm0, qword ptr [rdi]
	movsd	qword ptr [rdi], xmm0
	mov	al, 1
.label_51:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402236
	.globl sub_402236
	.type sub_402236, @function
sub_402236:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402240

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  0x7d
	ret	
	.section	.text
	.align	32
	#Procedure 0x40224b
	.globl sub_40224b
	.type sub_40224b, @function
sub_40224b:

	nop	dword ptr [rax + rax]
.label_53:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40225e
	.globl sub_40225e
	.type sub_40225e, @function
sub_40225e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402267

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_53
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_55
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_53
.label_55:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_53
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_54
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_54:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_57:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_59
	jnp	.label_60
.label_59:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_60
	.section	.text
	.align	32
	#Procedure 0x4022e7

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
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
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbx
	je	.label_56
	test	r15, r15
	jne	.label_57
	cmp	byte ptr [rax], 0
	je	.label_57
	xor	eax, eax
	jmp	.label_58
.label_56:
	xor	eax, eax
.label_60:
	test	r15, r15
	je	.label_58
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15], rcx
.label_58:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402355
	.globl sub_402355
	.type sub_402355, @function
sub_402355:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402360
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
	#Procedure 0x402376
	.globl sub_402376
	.type sub_402376, @function
sub_402376:

	nop	word ptr cs:[rax + rax]
.label_61:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402383
	.globl sub_402383
	.type sub_402383, @function
sub_402383:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40238b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_61
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4023d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_65
	cmp	byte ptr [rax], 0x43
	jne	.label_67
	cmp	byte ptr [rax + 1], 0
	je	.label_64
.label_67:
	mov	esi, OFFSET FLAT:label_66
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_65
.label_64:
	xor	ebx, ebx
.label_65:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402401
	.globl sub_402401
	.type sub_402401, @function
sub_402401:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402410
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40241a
	.globl sub_40241a
	.type sub_40241a, @function
sub_40241a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402420

	.globl install_sigchld
	.type install_sigchld, @function
install_sigchld:
	sub	rsp, 0x98
	lea	rdi, [rsp + 8]
	call	sigemptyset
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:chld
	mov	dword ptr [rsp + 0x88], 0x10000000
	lea	rsi, [rsp]
	mov	edi, 0x11
	xor	edx, edx
	call	sigaction
	mov	edi, 0x11
	call	unblock_signal
	add	rsp, 0x98
	ret	
	.section	.text
	.align	32
	#Procedure 0x402466
	.globl sub_402466
	.type sub_402466, @function
sub_402466:

	nop	word ptr cs:[rax + rax]
.label_71:
	sub	ebp, -0x80
	mov	edi, ebp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402480

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x20
	mov	ebp, edi
	cmp	ebp, 0xe
	jne	.label_68
	mov	byte ptr [byte ptr [rip + timed_out]],  1
	mov	ebp,  dword ptr [dword ptr [rip + term_signal]]
.label_68:
	cmp	dword ptr [dword ptr [rip + monitored_pid]],  0
	je	.label_71
	movsd	xmm0,  qword ptr [word ptr [rip + kill_after]]
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_73
	jnp	.label_75
.label_73:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	dword ptr [dword ptr [rip + term_signal]],  9
	movsd	xmm0,  qword ptr [word ptr [rip + kill_after]]
	xor	edi, edi
	call	settimeout
	mov	qword ptr [word ptr [rip + kill_after]],  0
	mov	dword ptr [rbx], r14d
.label_75:
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_74
	lea	rsi, [rsp]
	mov	edi, ebp
	call	sig2str
	test	eax, eax
	je	.label_69
	lea	rdi, [rsp]
	mov	esi, 0x13
	mov	edx, 1
	mov	ecx, 0x13
	mov	r8d, OFFSET FLAT:label_72
	xor	eax, eax
	mov	r9d, ebp
	call	__snprintf_chk
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + command]]
	call	quote
	mov	rbx, rax
	lea	rcx, [rsp]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r8, rbx
	call	error
.label_74:
	mov	edi,  dword ptr [dword ptr [rip + monitored_pid]]
	mov	esi, ebp
	call	send_sig
	mov	al,  byte ptr [byte ptr [rip + foreground]]
	test	al, al
	jne	.label_70
	xor	edi, edi
	mov	esi, ebp
	call	send_sig
	cmp	ebp, 9
	je	.label_70
	cmp	ebp, 0x12
	je	.label_70
	mov	edi,  dword ptr [dword ptr [rip + monitored_pid]]
	mov	esi, 0x12
	call	send_sig
	xor	edi, edi
	mov	esi, 0x12
	call	send_sig
.label_70:
	add	rsp, 0x20
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_77
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_79:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_79
.label_77:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_81
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_80]], OFFSET FLAT:slot0
.label_81:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_78
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_78:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402641
	.globl sub_402641
	.type sub_402641, @function
sub_402641:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402650
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
	#Procedure 0x40265d
	.globl sub_40265d
	.type sub_40265d, @function
sub_40265d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402660

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
	#Procedure 0x402699
	.globl sub_402699
	.type sub_402699, @function
sub_402699:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4026a0
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
	#Procedure 0x4026b1
	.globl sub_4026b1
	.type sub_4026b1, @function
sub_4026b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0
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
	#Procedure 0x4026d4
	.globl sub_4026d4
	.type sub_4026d4, @function
sub_4026d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026e0

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
	je	.label_84
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_82
	jmp	.label_83
.label_84:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_83
.label_82:
	mov	eax, 1
	test	bpl, bpl
	je	.label_83
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
.label_83:
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
	#Procedure 0x402768
	.globl sub_402768
	.type sub_402768, @function
sub_402768:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402770

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
	je	.label_85
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_87
	jmp	.label_86
.label_85:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_86
.label_87:
	mov	eax, 1
	test	bpl, bpl
	je	.label_86
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
.label_86:
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
	#Procedure 0x4027e9
	.globl sub_4027e9
	.type sub_4027e9, @function
sub_4027e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0

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
	je	.label_90
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_89
	jmp	.label_88
.label_90:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_88
.label_89:
	mov	eax, 1
	test	bpl, bpl
	je	.label_88
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
.label_88:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402853
	.globl sub_402853
	.type sub_402853, @function
sub_402853:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860

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
	je	.label_93
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_91
	jmp	.label_92
.label_93:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_92
.label_91:
	mov	eax, 1
	test	bpl, bpl
	je	.label_92
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_92:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028bf
	.globl sub_4028bf
	.type sub_4028bf, @function
sub_4028bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4028c0

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
	je	.label_94
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_96
	jmp	.label_95
.label_94:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_95
.label_96:
	mov	eax, 1
	test	bpl, bpl
	je	.label_95
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_95:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402909
	.globl sub_402909
	.type sub_402909, @function
sub_402909:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402910

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
	je	.label_99
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_98
	jmp	.label_97
.label_99:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_97
.label_98:
	mov	eax, 1
	test	bpl, bpl
	je	.label_97
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_97:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402955
	.globl sub_402955
	.type sub_402955, @function
sub_402955:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_102
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_101
	jmp	.label_100
.label_102:
	mov	eax, 1
	test	cl, cl
	je	.label_100
.label_101:
	xor	eax, eax
.label_100:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40298f
	.globl sub_40298f
	.type sub_40298f, @function
sub_40298f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402990

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_103
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_104
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029b5
	.globl sub_4029b5
	.type sub_4029b5, @function
sub_4029b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4029c9
	.globl sub_4029c9
	.type sub_4029c9, @function
sub_4029c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029d0

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
	mov	rax,  qword ptr [word ptr [rip + label_105]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_106]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_107]]
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
	#Procedure 0x402a38
	.globl sub_402a38
	.type sub_402a38, @function
sub_402a38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_108
	ret	
.label_108:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x402a53
	.globl sub_402a53
	.type sub_402a53, @function
sub_402a53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402a82
	.globl sub_402a82
	.type sub_402a82, @function
sub_402a82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a98
	.globl sub_402a98
	.type sub_402a98, @function
sub_402a98:

	nop	dword ptr [rax + rax]
.label_113:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_111:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_112
	inc	r9
	cmp	r9, 0xa
	jb	.label_110
.label_112:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402acf
	.globl sub_402acf
	.type sub_402acf, @function
sub_402acf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402ad0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_110:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_113
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_111
	.section	.text
	.align	32
	#Procedure 0x402af9
	.globl sub_402af9
	.type sub_402af9, @function
sub_402af9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b00
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_114
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_114
.label_115:
	ret	
.label_114:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_115
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b26
	.globl sub_402b26
	.type sub_402b26, @function
sub_402b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b30

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
	jne	.label_120
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
	je	.label_116
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_123
	mov	eax, OFFSET FLAT:label_124
	jmp	.label_119
.label_116:
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
	je	.label_125
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_117
	mov	eax, OFFSET FLAT:label_118
	jmp	.label_119
.label_125:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_121
	mov	eax, OFFSET FLAT:label_122
.label_119:
	cmove	rax, rcx
.label_120:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bed
	.globl sub_402bed
	.type sub_402bed, @function
sub_402bed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402bf0

	.globl block_cleanup_and_chld
	.type block_cleanup_and_chld, @function
block_cleanup_and_chld:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x80
	mov	r14, rsi
	mov	ebp, edi
	lea	rbx, [rsp]
	mov	rdi, rbx
	call	sigemptyset
	mov	esi, 0xe
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 2
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 3
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 1
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 0xf
	mov	rdi, rbx
	call	sigaddset
	mov	rdi, rbx
	mov	esi, ebp
	call	sigaddset
	mov	esi, 0x11
	mov	rdi, rbx
	call	sigaddset
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	call	sigprocmask
	test	eax, eax
	je	.label_126
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_126:
	add	rsp, 0x80
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402caa
	.globl sub_402caa
	.type sub_402caa, @function
sub_402caa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cb0
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
	#Procedure 0x402cbd
	.globl sub_402cbd
	.type sub_402cbd, @function
sub_402cbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cc0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_127
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_127:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402ce3
	.globl sub_402ce3
	.type sub_402ce3, @function
sub_402ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cf0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_128
	test	rax, rax
	je	.label_129
.label_128:
	pop	rbx
	ret	
.label_129:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402d0a
	.globl sub_402d0a
	.type sub_402d0a, @function
sub_402d0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d10

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
	#Procedure 0x402d47
	.globl sub_402d47
	.type sub_402d47, @function
sub_402d47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d50

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
	#Procedure 0x402d7d
	.globl sub_402d7d
	.type sub_402d7d, @function
sub_402d7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d80

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
	#Procedure 0x402d93
	.globl sub_402d93
	.type sub_402d93, @function
sub_402d93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402da0
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
	#Procedure 0x402db3
	.globl sub_402db3
	.type sub_402db3, @function
sub_402db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dc0

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
	je	.label_130
	cmp	r15, -2
	jb	.label_130
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_130
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_130:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e16
	.globl sub_402e16
	.type sub_402e16, @function
sub_402e16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_131:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_131
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402e41
	.globl sub_402e41
	.type sub_402e41, @function
sub_402e41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50
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
	#Procedure 0x402e69
	.globl sub_402e69
	.type sub_402e69, @function
sub_402e69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e70

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rax
	movabs	rdi, 0x7fffffffffffffff
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_132]]
	jbe	.label_133
	movsd	xmm1,  qword ptr [word ptr [rip + label_135]]
	ucomisd	xmm1, xmm0
	jbe	.label_136
	cvttsd2si	rdi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rdi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_137]]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	xor	ecx, ecx
	ucomisd	xmm0, xmm1
	seta	cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rsi, rcx
	sub	rsi, rax
	add	rsi, 0x3b9aca00
	sub	rcx, rax
	cmovns	rsi, rcx
	add	rdi, rdx
	sar	rcx, 0x3f
	add	rcx, rdi
	mov	rdi, rcx
	jmp	.label_134
.label_133:
	inc	rdi
	xor	esi, esi
	jmp	.label_134
.label_136:
	mov	esi, 0x3b9ac9ff
.label_134:
	call	make_timespec
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f28
	.globl sub_402f28
	.type sub_402f28, @function
sub_402f28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_138
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_140
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_140
.label_138:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_139
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_139:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_140:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_142
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_142:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ff0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ffa
	.globl sub_402ffa
	.type sub_402ffa, @function
sub_402ffa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403000
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
	#Procedure 0x403033
	.globl sub_403033
	.type sub_403033, @function
sub_403033:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403040

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_144
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_145
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_144:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40306f
	.globl sub_40306f
	.type sub_40306f, @function
sub_40306f:

	nop	
.label_146:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403073
	.globl sub_403073
	.type sub_403073, @function
sub_403073:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403075
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_146
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x403090
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_147
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_148]]
.label_149:
	ret	
.label_147:
	xor	eax, eax
	jmp	.label_149
	.section	.text
	.align	32
	#Procedure 0x4030a6
	.globl sub_4030a6
	.type sub_4030a6, @function
sub_4030a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0

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
	#Procedure 0x4030e6
	.globl sub_4030e6
	.type sub_4030e6, @function
sub_4030e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xb0
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_103
	call	setlocale
	mov	edi, OFFSET FLAT:label_154
	mov	esi, OFFSET FLAT:label_155
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_154
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	r14, [rsp + 0x10]
	jmp	.label_157
.label_508:
	mov	byte ptr [byte ptr [rip + preserve_status]],  1
	nop	dword ptr [rax]
.label_157:
	mov	edx, OFFSET FLAT:label_160
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x6a
	jle	.label_163
	add	eax, -0x6b
	cmp	eax, 0x16
	ja	.label_165
	jmp	qword ptr [word ptr [+ (rax * 8) + label_181]]
.label_504:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	parse_duration
	movsd	qword ptr [word ptr [rip + kill_after]],  xmm0
	jmp	.label_157
.label_505:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r14
	call	operand2sig
	mov	dword ptr [dword ptr [rip + term_signal]],  eax
	cmp	eax, -1
	jne	.label_157
	jmp	.label_173
.label_506:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_157
.label_507:
	mov	byte ptr [byte ptr [rip + foreground]],  1
	jmp	.label_157
.label_163:
	cmp	eax, -1
	jne	.label_179
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebp, eax
	cmp	ebp, 1
	jle	.label_180
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rdi, qword ptr [rbx + rax*8]
	call	parse_duration
	movsd	qword ptr [rsp + 8], xmm0
	movsxd	rbp,  dword ptr [dword ptr [rip + optind]]
	mov	rax, qword ptr [rbx + rbp*8]
	mov	qword ptr [word ptr [rip + command]],  rax
	mov	al,  byte ptr [byte ptr [rip + foreground]]
	test	al, al
	jne	.label_153
	xor	edi, edi
	xor	esi, esi
	call	setpgid
.label_153:
	mov	edi,  dword ptr [dword ptr [rip + term_signal]]
	call	install_cleanup
	mov	edi, 0x15
	mov	esi, 1
	call	signal
	mov	edi, 0x16
	mov	esi, 1
	call	signal
	call	install_sigchld
	call	fork
	mov	dword ptr [dword ptr [rip + monitored_pid]],  eax
	test	eax, eax
	je	.label_161
	cmp	eax, -1
	jne	.label_162
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebx, 0x7d
	jmp	.label_150
.label_161:
	lea	rbx, [rbx + rbp*8]
	mov	edi, 0x15
	xor	esi, esi
	call	signal
	mov	edi, 0x16
	xor	esi, esi
	call	signal
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbx
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	cmp	ebp, 2
	sete	bl
	or	ebx, 0x7e
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + command]]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_150
.label_162:
	mov	edi, 0xe
	call	unblock_signal
	mov	edi, 1
	movsd	xmm0, qword ptr [rsp + 8]
	call	settimeout
	mov	edi,  dword ptr [dword ptr [rip + term_signal]]
	lea	rsi, [rsp + 0x30]
	call	block_cleanup_and_chld
	mov	edi,  dword ptr [dword ptr [rip + monitored_pid]]
	lea	rsi, [rsp + 4]
	mov	edx, 1
	call	waitpid
	test	eax, eax
	jne	.label_159
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 4]
	nop	word ptr cs:[rax + rax]
.label_167:
	mov	rdi, rbx
	call	sigsuspend
	mov	edi,  dword ptr [dword ptr [rip + monitored_pid]]
	mov	edx, 1
	mov	rsi, rbp
	call	waitpid
	test	eax, eax
	je	.label_167
.label_159:
	test	eax, eax
	js	.label_168
	mov	eax, dword ptr [rsp + 4]
	mov	ebx, eax
	and	ebx, 0x7f
	je	.label_169
	mov	ecx, ebx
	shl	ecx, 0x18
	add	ecx, 0x1000000
	sar	ecx, 0x19
	test	ecx, ecx
	jle	.label_170
	test	al, al
	jns	.label_172
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_172:
	mov	al,  byte ptr [byte ptr [rip + timed_out]]
	test	al, al
	jne	.label_151
	call	disable_core_dumps
	test	al, al
	je	.label_151
	xor	esi, esi
	mov	edi, ebx
	call	signal
	mov	edi, ebx
	call	unblock_signal
	mov	edi, ebx
	call	raise
.label_151:
	or	ebx, 0x80
	mov	dword ptr [rsp + 4], ebx
	jmp	.label_156
.label_168:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	dword ptr [rsp + 4], 0x7d
	jmp	.label_156
.label_169:
	movzx	eax, ah
	mov	dword ptr [rsp + 4], eax
	jmp	.label_156
.label_170:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 4]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
	mov	dword ptr [rsp + 4], 1
.label_156:
	cmp	byte ptr [byte ptr [rip + timed_out]],  1
	jne	.label_166
	mov	al,  byte ptr [byte ptr [rip + preserve_status]]
	test	al, al
	jne	.label_166
	mov	dword ptr [rsp + 4], 0x7c
.label_166:
	mov	ebx, dword ptr [rsp + 4]
.label_150:
	mov	eax, ebx
	add	rsp, 0xb0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_179:
	cmp	eax, 0xffffff7d
	je	.label_171
	cmp	eax, 0xffffff7e
	jne	.label_165
	xor	edi, edi
	call	usage
.label_171:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_175
	mov	edx, OFFSET FLAT:label_176
	mov	r8d, OFFSET FLAT:label_177
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_165:
	mov	edi, 0x7d
	call	usage
.label_173:
	mov	edi, 0x7d
	call	usage
.label_180:
	mov	edi, 0x7d
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4034fe
	.globl sub_4034fe
	.type sub_4034fe, @function
sub_4034fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403500
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_183
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_176
	mov	ecx, OFFSET FLAT:label_186
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403574
	.globl sub_403574
	.type sub_403574, @function
sub_403574:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403580

	.globl str2signum
	.type str2signum, @function
str2signum:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_187
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_188
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_197
	jmp	.label_188
.label_187:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_190
	nop	dword ptr [rax + rax]
.label_196:
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	je	.label_193
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_196
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r14d, eax
	test	ebp, ebp
	jle	.label_198
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	je	.label_191
.label_198:
	test	r14d, r14d
	jle	.label_188
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_188
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	jne	.label_188
	sub	ebp, r14d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_188
	test	rax, rax
	jg	.label_188
	mov	ecx, r14d
	jmp	.label_195
.label_193:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_197
.label_191:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_188
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_188
	sub	r14d, ebp
	movsxd	rcx, r14d
	cmp	rax, rcx
	jle	.label_192
.label_188:
	mov	eax, 0xffffffff
.label_197:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_192:
	mov	ecx, ebp
.label_195:
	add	rax, rcx
	jmp	.label_197
	.section	.text
	.align	32
	#Procedure 0x4036b2
	.globl sub_4036b2
	.type sub_4036b2, @function
sub_4036b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_199
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_199:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036de
	.globl sub_4036de
	.type sub_4036de, @function
sub_4036de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4036e0

	.globl settimeout
	.type settimeout, @function
settimeout:
	push	rbx
	sub	rsp, 0x30
	mov	ebx, edi
	movsd	qword ptr [rsp + 8], xmm0
	call	dtotimespec
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdx, [rsp]
	xor	edi, edi
	xor	esi, esi
	call	timer_create
	test	eax, eax
	je	.label_203
	test	bl, bl
	je	.label_200
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_200
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_200
.label_203:
	mov	rdi, qword ptr [rsp]
	lea	rdx, [rsp + 0x10]
	xor	esi, esi
	xor	ecx, ecx
	call	timer_settime
	test	eax, eax
	je	.label_206
	test	bl, bl
	je	.label_207
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_207:
	mov	rdi, qword ptr [rsp]
	call	timer_delete
.label_200:
	mov	edi, 0xffffffff
	movsd	xmm1, qword ptr [rsp + 8]
	ucomisd	xmm1,  qword ptr [word ptr [rip + label_204]]
	jae	.label_205
	cvttsd2si	rax, xmm1
	mov	ecx, eax
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	xor	edi, edi
	ucomisd	xmm1, xmm0
	seta	dil
	add	edi, eax
.label_205:
	call	alarm
.label_206:
	add	rsp, 0x30
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037d2
	.globl sub_4037d2
	.type sub_4037d2, @function
sub_4037d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0

	.globl chld
	.type chld, @function
chld:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037e1
	.globl sub_4037e1
	.type sub_4037e1, @function
sub_4037e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037f0

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbx
	mov	rbx, rsi
	call	str2signum
	mov	dword ptr [rbx], eax
	sar	eax, 0x1f
	pop	rbx
	ret	
.label_208:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403806
	.globl sub_403806
	.type sub_403806, @function
sub_403806:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40380b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_208
	test	rdx, rdx
	je	.label_208
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403830

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40383a
	.globl sub_40383a
	.type sub_40383a, @function
sub_40383a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403840

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_209
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_209:
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
	#Procedure 0x4038c3
	.globl sub_4038c3
	.type sub_4038c3, @function
sub_4038c3:

	nop	word ptr cs:[rax + rax]
.label_211:
	test	rbx, rbx
	je	.label_210
	mov	qword ptr [rbx], r14
.label_210:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038e3
	.globl sub_4038e3
	.type sub_4038e3, @function
sub_4038e3:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038e7

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_211
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
	.section	.text
	.align	32
	#Procedure 0x403910

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
.label_308:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_233
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_312]]
.label_411:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_318
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_122
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_412:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_218
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_218
	xor	r14d, r14d
.label_235:
	cmp	r14, r11
	jae	.label_229
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_229:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_235
.label_218:
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
	jmp	.label_239
.label_404:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_239
.label_407:
	mov	al, 1
.label_405:
	mov	r12b, 1
.label_408:
	test	r12b, 1
	mov	cl, 1
	je	.label_256
	mov	ecx, eax
.label_256:
	mov	al, cl
.label_406:
	test	r12b, 1
	jne	.label_259
	test	r11, r11
	je	.label_311
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_311:
	mov	r14d, 1
	jmp	.label_265
.label_259:
	xor	r14d, r14d
.label_265:
	mov	ecx, OFFSET FLAT:label_122
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_239
.label_409:
	test	r12b, 1
	jne	.label_273
	test	r11, r11
	je	.label_317
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_317:
	mov	r14d, 1
	jmp	.label_279
.label_410:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_121
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_239
.label_273:
	xor	r14d, r14d
.label_279:
	mov	eax, OFFSET FLAT:label_121
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_239:
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
	jmp	.label_230
	.section	.text
	.align	32
	#Procedure 0x403bec
	.globl sub_403bec
	.type sub_403bec, @function
sub_403bec:

	nop	dword ptr [rax]
.label_231:
	inc	rsi
.label_230:
	cmp	rbp, -1
	je	.label_321
	cmp	rsi, rbp
	jne	.label_282
	jmp	.label_238
	.section	.text
	.align	32
	#Procedure 0x403c03
	.globl sub_403c03
	.type sub_403c03, @function
sub_403c03:

	nop	word ptr cs:[rax + rax]
.label_321:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_238
.label_282:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_221
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_223
	cmp	rbp, -1
	jne	.label_223
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
.label_223:
	cmp	rbx, rbp
	jbe	.label_240
.label_221:
	xor	r8d, r8d
.label_314:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_242
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_247]]
.label_530:
	test	rsi, rsi
	jne	.label_237
	jmp	.label_251
	.section	.text
	.align	32
	#Procedure 0x403c9e
	.globl sub_403c9e
	.type sub_403c9e, @function
sub_403c9e:

	nop	
.label_240:
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
	jne	.label_263
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_314
	jmp	.label_274
.label_263:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_314
.label_534:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_283
	test	rsi, rsi
	jne	.label_284
	cmp	rbp, 1
	je	.label_251
	xor	r13d, r13d
	jmp	.label_212
.label_523:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_291
	cmp	byte ptr [rsp + 7], 0
	jne	.label_232
	cmp	r12d, 2
	jne	.label_287
	mov	eax, r9d
	and	al, 1
	jne	.label_287
	cmp	r14, r11
	jae	.label_296
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_296:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_299
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_299:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_303
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_303:
	add	r14, 3
	mov	r9b, 1
.label_287:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_266
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_266:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_253
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_253
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_253
	cmp	r14, r11
	jae	.label_319
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_319:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_217
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_217:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_212
.label_524:
	mov	bl, 0x62
	jmp	.label_215
.label_525:
	mov	cl, 0x74
	jmp	.label_220
.label_526:
	mov	bl, 0x76
	jmp	.label_215
.label_527:
	mov	bl, 0x66
	jmp	.label_215
.label_528:
	mov	cl, 0x72
	jmp	.label_220
.label_531:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_227
	cmp	byte ptr [rsp + 7], 0
	jne	.label_232
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
	jae	.label_236
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_236:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_249
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_249:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_252
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	add	r14, 3
	xor	r9d, r9d
.label_227:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_212
.label_532:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_262
	cmp	r12d, 2
	jne	.label_237
	cmp	byte ptr [rsp + 7], 0
	je	.label_237
	jmp	.label_232
.label_533:
	cmp	r12d, 2
	jne	.label_270
	cmp	byte ptr [rsp + 7], 0
	jne	.label_232
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_216
.label_242:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_225
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
.label_214:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_293
	test	r8b, r8b
	je	.label_293
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_212
.label_283:
	test	rsi, rsi
	jne	.label_309
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_309
.label_251:
	mov	dl, 1
.label_529:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_232
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_212:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_313
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_315
	jmp	.label_224
	.section	.text
	.align	32
	#Procedure 0x403fe4
	.globl sub_403fe4
	.type sub_403fe4, @function
sub_403fe4:

	nop	word ptr cs:[rax + rax]
.label_313:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_224
.label_315:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_322
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_216
	jmp	.label_277
	.section	.text
	.align	32
	#Procedure 0x40402d
	.globl sub_40402d
	.type sub_40402d, @function
sub_40402d:

	nop	dword ptr [rax]
.label_224:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_277
	jmp	.label_216
.label_322:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_277
.label_291:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_231
	xor	r15d, r15d
	jmp	.label_237
.label_270:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_220
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_216
.label_220:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_232
.label_215:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_212
	nop	word ptr cs:[rax + rax]
.label_277:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_232
	cmp	r12d, 2
	jne	.label_257
	mov	eax, r9d
	and	al, 1
	jne	.label_257
	cmp	r14, r11
	jae	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_294
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_294:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_268
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_268:
	add	r14, 3
	mov	r9b, 1
.label_257:
	cmp	r14, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_272:
	inc	r14
	jmp	.label_276
.label_225:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_280
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_280:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_245:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_298
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_301
	cmp	rbp, -2
	je	.label_250
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_304
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_295:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_244
	bt	rsi, rdx
	jb	.label_274
.label_244:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_295
.label_304:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_324
	xor	r13d, r13d
.label_324:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_245
	jmp	.label_214
.label_253:
	xor	r13d, r13d
	jmp	.label_212
.label_309:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_212
.label_262:
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
	ja	.label_254
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_275
	cmp	byte ptr [rsp + 7], 0
	jne	.label_232
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_271
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_271:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_228
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_228:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_264
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_264:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_267
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_267:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_212
.label_237:
	xor	eax, eax
.label_284:
	xor	r13d, r13d
	jmp	.label_212
.label_293:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_278
	.section	.text
	.align	32
	#Procedure 0x404313
	.globl sub_404313
	.type sub_404313, @function
sub_404313:

	nop	word ptr cs:[rax + rax]
.label_234:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_278:
	test	r8b, r8b
	je	.label_285
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_286
	cmp	r14, r11
	jae	.label_289
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_289:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_286
	.section	.text
	.align	32
	#Procedure 0x40435c
	.globl sub_40435c
	.type sub_40435c, @function
sub_40435c:

	nop	dword ptr [rax]
.label_285:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_274
	cmp	r12d, 2
	jne	.label_297
	mov	eax, r9d
	and	al, 1
	jne	.label_297
	cmp	r14, r11
	jae	.label_300
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_300:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_302
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_302:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_306
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_306:
	add	r14, 3
	mov	r9b, 1
.label_297:
	cmp	r14, r11
	jae	.label_281
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_281:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_248
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_248:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_316
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_316:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_286:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_216
	test	r9b, 1
	je	.label_219
	mov	ebx, eax
	and	bl, 1
	jne	.label_219
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_222
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_222:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_292
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_292:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_219:
	cmp	r14, r11
	jae	.label_234
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_234
	.section	.text
	.align	32
	#Procedure 0x404463
	.globl sub_404463
	.type sub_404463, @function
sub_404463:

	nop	word ptr cs:[rax + rax]
.label_216:
	test	r9b, 1
	je	.label_243
	and	al, 1
	jne	.label_243
	cmp	r14, r11
	jae	.label_246
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_288
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_288:
	add	r14, 2
	xor	r9d, r9d
.label_243:
	mov	ebx, r15d
.label_276:
	cmp	r14, r11
	jae	.label_255
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_255:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_231
.label_301:
	xor	r13d, r13d
.label_298:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_214
.label_250:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_269
	mov	rsi, qword ptr [rsp + 0x50]
.label_320:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_226
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_320
	xor	r13d, r13d
	jmp	.label_214
.label_269:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_214
.label_226:
	xor	r13d, r13d
	jmp	.label_214
.label_254:
	xor	r13d, r13d
	jmp	.label_212
.label_275:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_212
	.section	.text
	.align	32
	#Procedure 0x404538
	.globl sub_404538
	.type sub_404538, @function
sub_404538:

	nop	dword ptr [rax + rax]
.label_238:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_290
	or	dl, al
	je	.label_274
.label_290:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_241
	or	dl, al
	jne	.label_241
	test	r10b, 1
	jne	.label_305
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_241
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_308
.label_241:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_310
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_213
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_213
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_323:
	cmp	r14, r11
	jae	.label_307
	mov	byte ptr [rcx + r14], al
.label_307:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_323
	jmp	.label_213
.label_232:
	mov	qword ptr [rsp + 0x20], rbp
.label_274:
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
.label_258:
	mov	r14, rax
.label_261:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_305:
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
	jmp	.label_258
.label_310:
	mov	rcx, qword ptr [rsp + 8]
.label_213:
	cmp	r14, r11
	jae	.label_261
	mov	byte ptr [rcx + r14], 0
	jmp	.label_261
.label_233:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4046cc
	.globl sub_4046cc
	.type sub_4046cc, @function
sub_4046cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_328
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_326
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_326
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_327
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_327:
	mov	rbx, r14
.label_326:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_328:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_329
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404771
	.globl sub_404771
	.type sub_404771, @function
sub_404771:

	nop	word ptr cs:[rax + rax]
.label_335:
	call	xalloc_die
.label_333:
	test	rcx, rcx
	jne	.label_332
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_332:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_331
.label_334:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x4047c7

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_333
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_335
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_334
.label_331:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4047f9
	.globl sub_4047f9
	.type sub_4047f9, @function
sub_4047f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404800

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40480e
	.globl sub_40480e
	.type sub_40480e, @function
sub_40480e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404810

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
	js	.label_339
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_342
	cmp	r12d, 0x7fffffff
	je	.label_337
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
	jne	.label_340
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_340:
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
.label_342:
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
	jbe	.label_338
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_341
.label_338:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_336
	mov	rdi, r14
	call	free
.label_336:
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
.label_341:
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
.label_339:
	call	abort
.label_337:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4049cd
	.globl sub_4049cd
	.type sub_4049cd, @function
sub_4049cd:

	nop	dword ptr [rax]
.label_345:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_343
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_343:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a04
	.globl sub_404a04
	.type sub_404a04, @function
sub_404a04:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404a06

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
	jne	.label_344
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_344
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_345
.label_344:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x404a40

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
	je	.label_346
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
.label_346:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404a92
	.globl sub_404a92
	.type sub_404a92, @function
sub_404a92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404aa0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_353
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
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
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_353:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
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
	#Procedure 0x404c03
	.globl sub_404c03
	.type sub_404c03, @function
sub_404c03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10
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
	#Procedure 0x404c37
	.globl sub_404c37
	.type sub_404c37, @function
sub_404c37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c40
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c4a
	.globl sub_404c4a
	.type sub_404c4a, @function
sub_404c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50

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
	mov	rcx,  qword ptr [word ptr [rip + label_105]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_106]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_107]]
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
	#Procedure 0x404cbd
	.globl sub_404cbd
	.type sub_404cbd, @function
sub_404cbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x404ccd
	.globl sub_404ccd
	.type sub_404ccd, @function
sub_404ccd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x404cd7
	.globl sub_404cd7
	.type sub_404cd7, @function
sub_404cd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ce0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_357
	nop	
.label_366:
	mov	edi, OFFSET FLAT:label_175
	call	strcmp
	test	eax, eax
	je	.label_364
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_366
.label_364:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_175
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_176
	mov	ecx, OFFSET FLAT:label_186
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_358
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_358
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_175
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_186
	mov	ecx, OFFSET FLAT:label_175
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_361
	mov	ecx, OFFSET FLAT:label_103
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
	#Procedure 0x404dfa
	.globl sub_404dfa
	.type sub_404dfa, @function
sub_404dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00
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
	#Procedure 0x404e0f
	.globl sub_404e0f
	.type sub_404e0f, @function
sub_404e0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404e10
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e1a
	.globl sub_404e1a
	.type sub_404e1a, @function
sub_404e1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x404e25
	.globl sub_404e25
	.type sub_404e25, @function
sub_404e25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e30
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
	#Procedure 0x404e3f
	.globl sub_404e3f
	.type sub_404e3f, @function
sub_404e3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404e40
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x404e4a
	.globl sub_404e4a
	.type sub_404e4a, @function
sub_404e4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e50

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
	je	.label_367
	mov	qword ptr [rax], rbx
.label_367:
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
	#Procedure 0x404f3c
	.globl sub_404f3c
	.type sub_404f3c, @function
sub_404f3c:

	nop	dword ptr [rax]
.label_368:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404f45
	.globl sub_404f45
	.type sub_404f45, @function
sub_404f45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f4f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_368
	call	rpl_calloc
	test	rax, rax
	je	.label_368
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f70

	.globl disable_core_dumps
	.type disable_core_dumps, @function
disable_core_dumps:
	push	rbp
	push	rbx
	push	rax
	mov	edi, 4
	xor	esi, esi
	xor	eax, eax
	call	prctl
	mov	bl, 1
	test	eax, eax
	je	.label_369
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_369:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fbb
	.globl sub_404fbb
	.type sub_404fbb, @function
sub_404fbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fc0
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
	#Procedure 0x405032
	.globl sub_405032
	.type sub_405032, @function
sub_405032:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405040
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_137]]
	addsd	xmm0, xmm1
	ret	
	.section	.text
	.align	32
	#Procedure 0x405057
	.globl sub_405057
	.type sub_405057, @function
sub_405057:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405060

	.globl send_sig
	.type send_sig, @function
send_sig:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, esi
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_371
	mov	esi, 1
	mov	edi, ebx
	call	signal
.label_371:
	mov	edi, ebp
	mov	esi, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	kill
	.section	.text
	.align	32
	#Procedure 0x405086
	.globl sub_405086
	.type sub_405086, @function
sub_405086:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405090

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_372
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_372
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_372:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4050b6
	.globl sub_4050b6
	.type sub_4050b6, @function
sub_4050b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050ca
	.globl sub_4050ca
	.type sub_4050ca, @function
sub_4050ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050d0
	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:

	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_373
	mov	eax, 1
	jg	.label_373
	sub	esi, ecx
	mov	eax, esi
.label_373:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050e6
	.globl sub_4050e6
	.type sub_4050e6, @function
sub_4050e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	mov	rax, rdi
	mov	rdx, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050f7
	.globl sub_4050f7
	.type sub_4050f7, @function
sub_4050f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405100

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	xor	eax, eax
	mov	esi, OFFSET FLAT:label_190
	nop	word ptr cs:[rax + rax]
.label_375:
	cmp	dword ptr [rsi - 4], ebp
	je	.label_374
	inc	eax
	add	rsi, 0xc
	cmp	eax, 0x22
	jbe	.label_375
	call	__libc_current_sigrtmin
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	jg	.label_376
	cmp	eax, ebp
	jl	.label_376
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_377
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	jmp	.label_378
.label_374:
	mov	rdi, r14
	call	strcpy
	xor	ebx, ebx
	jmp	.label_376
.label_377:
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_378:
	xor	ebx, ebx
	sub	ebp, r15d
	je	.label_376
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_379
	xor	eax, eax
	mov	rdi, r14
	mov	r8d, ebp
	call	__sprintf_chk
.label_376:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051c5
	.globl sub_4051c5
	.type sub_4051c5, @function
sub_4051c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

	.globl install_cleanup
	.type install_cleanup, @function
install_cleanup:
	push	rbp
	push	rbx
	sub	rsp, 0x98
	mov	ebp, edi
	lea	rdi, [rsp + 8]
	call	sigemptyset
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:cleanup
	mov	dword ptr [rsp + 0x88], 0x10000000
	lea	rbx, [rsp]
	mov	edi, 0xe
	xor	edx, edx
	mov	rsi, rbx
	call	sigaction
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigaction
	mov	edi, 3
	xor	edx, edx
	mov	rsi, rbx
	call	sigaction
	mov	edi, 1
	xor	edx, edx
	mov	rsi, rbx
	call	sigaction
	mov	edi, 0xf
	xor	edx, edx
	mov	rsi, rbx
	call	sigaction
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, rbx
	call	sigaction
	add	rsp, 0x98
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40525d
	.globl sub_40525d
	.type sub_40525d, @function
sub_40525d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405260
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x40526a
	.globl sub_40526a
	.type sub_40526a, @function
sub_40526a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270

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
	#Procedure 0x405287
	.globl sub_405287
	.type sub_405287, @function
sub_405287:

	nop	word ptr [rax + rax]
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
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
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
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
.label_382:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405316
	.globl sub_405316
	.type sub_405316, @function
sub_405316:

	nop	dword ptr [rax + rax]
.label_511:
	add	rsp, 8
	jmp	.label_382
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
	jmp	.label_382
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
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
	jmp	.label_382
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
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
	jmp	.label_382
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
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
	jmp	.label_382
	.section	.text
	.align	32
	#Procedure 0x40544c

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
	je	.label_385
	mov	edx, OFFSET FLAT:label_389
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_381
.label_385:
	mov	edx, OFFSET FLAT:label_383
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
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
	mov	esi, OFFSET FLAT:label_384
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_390
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_393]]
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
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
	jmp	.label_382
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
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
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
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
	jmp	.label_382
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
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
	.section	.text
	.align	32
	#Procedure 0x405655
	.globl sub_405655
	.type sub_405655, @function
sub_405655:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405662
	.globl sub_405662
	.type sub_405662, @function
sub_405662:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405686
	.globl sub_405686
	.type sub_405686, @function
sub_405686:

	nop	word ptr cs:[rax + rax]
