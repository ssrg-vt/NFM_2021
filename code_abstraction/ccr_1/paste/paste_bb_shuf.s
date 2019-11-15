	.section	.text
	.align	16
	#Procedure 0x4014d9
	.globl sub_4014d9
	.type sub_4014d9, @function
sub_4014d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4014da
	.globl sub_4014da
	.type sub_4014da, @function
sub_4014da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401512
	.globl sub_401512
	.type sub_401512, @function
sub_401512:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40155a
	.globl sub_40155a
	.type sub_40155a, @function
sub_40155a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40157c
	.globl sub_40157c
	.type sub_40157c, @function
sub_40157c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40158d
	.globl sub_40158d
	.type sub_40158d, @function
sub_40158d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015a6
	.globl sub_4015a6
	.type sub_4015a6, @function
sub_4015a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_10
	cmp	byte ptr [rax], 0x43
	jne	.label_12
	cmp	byte ptr [rax + 1], 0
	je	.label_9
.label_12:
	mov	esi, OFFSET FLAT:label_11
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_10
.label_9:
	xor	ebx, ebx
.label_10:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015e1
	.globl sub_4015e1
	.type sub_4015e1, @function
sub_4015e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015f8
	.globl sub_4015f8
	.type sub_4015f8, @function
sub_4015f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401600

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_13
	test	rsi, rsi
	mov	ecx, 1
	je	.label_14
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_14
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_13:
	mov	ecx, 1
.label_14:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40164b
	.globl sub_40164b
	.type sub_40164b, @function
sub_40164b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650

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
	je	.label_25
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_17
.label_25:
	mov	edx, OFFSET FLAT:label_19
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_26
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_27]]
.label_408:
	add	rsp, 8
	jmp	.label_18
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
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
	jmp	.label_18
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
.label_410:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
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
.label_411:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
.label_412:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	jmp	.label_18
.label_413:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	jmp	.label_18
.label_414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	jmp	.label_18
.label_415:
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
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_18
.label_417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	jmp	.label_18
.label_416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
.label_18:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019a8
	.globl sub_4019a8
	.type sub_4019a8, @function
sub_4019a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019b0

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
	#Procedure 0x4019e7
	.globl sub_4019e7
	.type sub_4019e7, @function
sub_4019e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019f0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_34
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_34:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a13
	.globl sub_401a13
	.type sub_401a13, @function
sub_401a13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a20

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_35
	test	rax, rax
	je	.label_36
.label_35:
	pop	rbx
	ret	
.label_36:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a3a
	.globl sub_401a3a
	.type sub_401a3a, @function
sub_401a3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a40

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
	mov	rcx,  qword ptr [word ptr [rip + label_37]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_38]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_39]]
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
	#Procedure 0x401aad
	.globl sub_401aad
	.type sub_401aad, @function
sub_401aad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401abd
	.globl sub_401abd
	.type sub_401abd, @function
sub_401abd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ac0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x401ac7
	.globl sub_401ac7
	.type sub_401ac7, @function
sub_401ac7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ad0
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
	#Procedure 0x401add
	.globl sub_401add
	.type sub_401add, @function
sub_401add:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0

	.globl paste_serial
	.type paste_serial, @function
paste_serial:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r14, rdi
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	test	r14, r14
	je	.label_54
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_60:
	mov	rax, qword ptr [r13]
	cmp	byte ptr [rax], 0x2d
	jne	.label_44
	cmp	byte ptr [rax + 1], 0
	je	.label_45
.label_44:
	mov	rdi, qword ptr [r13]
	mov	esi, OFFSET FLAT:label_52
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_51
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_55
	.section	.text
	.align	16
	#Procedure 0x401b4c
	.globl sub_401b4c
	.type sub_401b4c, @function
sub_401b4c:

	nop	dword ptr [rax]
.label_51:
	call	__errno_location
	jmp	.label_57
.label_45:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
.label_55:
	mov	r15,  qword ptr [word ptr [rip + delims]]
	mov	rdi, rbp
	call	getc_unlocked
	mov	ebx, eax
	call	__errno_location
	cmp	ebx, -1
	mov	qword ptr [rsp + 0x10], rax
	jne	.label_40
	mov	r15d, dword ptr [rax]
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	test	al, al
	jne	.label_42
	mov	al, 0xa
	jmp	.label_48
	.section	.text
	.align	16
	#Procedure 0x401ba6
	.globl sub_401ba6
	.type sub_401ba6, @function
sub_401ba6:

	nop	word ptr cs:[rax + rax]
.label_49:
	inc	r15
	cmp	r15,  qword ptr [word ptr [rip + delim_end]]
	cmove	r15,  qword ptr [word ptr [rip + delims]]
.label_40:
	mov	rdi, rbp
	call	getc_unlocked
	cmp	eax, -1
	je	.label_50
	mov	ecx, ebx
	nop	word ptr cs:[rax + rax]
.label_41:
	mov	ebx, eax
	movzx	eax,  byte ptr [byte ptr [rip + line_delim]]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, r12d
	cmp	ecx, eax
	je	.label_58
	movsx	edi, cl
	call	xputchar
	mov	rdi, rbp
	call	getc_unlocked
	cmp	eax, -1
	mov	ecx, ebx
	jne	.label_41
	jmp	.label_50
	.section	.text
	.align	16
	#Procedure 0x401c11
	.globl sub_401c11
	.type sub_401c11, @function
sub_401c11:

	nop	word ptr cs:[rax + rax]
.label_58:
	mov	al, byte ptr [r15]
	test	al, al
	je	.label_49
	movsx	edi, al
	call	xputchar
	jmp	.label_49
	.section	.text
	.align	16
	#Procedure 0x401c34
	.globl sub_401c34
	.type sub_401c34, @function
sub_401c34:

	nop	word ptr cs:[rax + rax]
.label_50:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r15d, dword ptr [rax]
	movsx	edi, bl
	call	xputchar
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	test	al, al
	jne	.label_56
	mov	al, 0xa
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x401c5e
	.globl sub_401c5e
	.type sub_401c5e, @function
sub_401c5e:

	nop	
.label_56:
	xor	eax, eax
.label_47:
	movzx	ecx, al
	cmp	ebx, ecx
	jne	.label_48
	jmp	.label_59
.label_42:
	xor	eax, eax
.label_48:
	movsx	edi, al
	call	xputchar
.label_59:
	mov	rdi, rbp
	call	ferror_unlocked
	test	eax, eax
	je	.label_61
	mov	rdx, qword ptr [r13]
	mov	dword ptr [rsp + 8], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_46
	xor	eax, eax
	mov	esi, r15d
	call	error
.label_61:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rdi, rbp
	test	al, al
	je	.label_43
	call	clearerr_unlocked
	jmp	.label_53
	.section	.text
	.align	16
	#Procedure 0x401cbf
	.globl sub_401cbf
	.type sub_401cbf, @function
sub_401cbf:

	nop	
.label_43:
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_53
	mov	rax, qword ptr [rsp + 0x10]
.label_57:
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [r13]
	mov	dword ptr [rsp + 8], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_46
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_53:
	add	r13, 8
	dec	r14
	jne	.label_60
.label_54:
	mov	eax, dword ptr [rsp + 8]
	and	al, 1
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
	#Procedure 0x401d1e
	.globl sub_401d1e
	.type sub_401d1e, @function
sub_401d1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d20
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
	#Procedure 0x401d92
	.globl sub_401d92
	.type sub_401d92, @function
sub_401d92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401da0

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
.label_80:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_148
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_86]]
.label_397:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_94
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_101
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_398:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_110
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_110
	xor	r14d, r14d
.label_122:
	cmp	r14, r11
	jae	.label_118
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_118:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_122
.label_110:
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
	jmp	.label_135
.label_390:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_135
.label_393:
	mov	al, 1
.label_391:
	mov	r12b, 1
.label_394:
	test	r12b, 1
	mov	cl, 1
	je	.label_143
	mov	ecx, eax
.label_143:
	mov	al, cl
.label_392:
	test	r12b, 1
	jne	.label_146
	test	r11, r11
	je	.label_126
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_126:
	mov	r14d, 1
	jmp	.label_153
.label_146:
	xor	r14d, r14d
.label_153:
	mov	ecx, OFFSET FLAT:label_101
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_135
.label_395:
	test	r12b, 1
	jne	.label_159
	test	r11, r11
	je	.label_138
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_138:
	mov	r14d, 1
	jmp	.label_162
.label_396:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_165
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_135
.label_159:
	xor	r14d, r14d
.label_162:
	mov	eax, OFFSET FLAT:label_165
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_135:
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
	jmp	.label_90
	.section	.text
	.align	16
	#Procedure 0x40207c
	.globl sub_40207c
	.type sub_40207c, @function
sub_40207c:

	nop	dword ptr [rax]
.label_128:
	inc	rsi
.label_90:
	cmp	rbp, -1
	je	.label_99
	cmp	rsi, rbp
	jne	.label_141
	jmp	.label_106
	.section	.text
	.align	16
	#Procedure 0x402093
	.globl sub_402093
	.type sub_402093, @function
sub_402093:

	nop	word ptr cs:[rax + rax]
.label_99:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_106
.label_141:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_113
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_98
	cmp	rbp, -1
	jne	.label_98
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
.label_98:
	cmp	rbx, rbp
	jbe	.label_124
.label_113:
	xor	r8d, r8d
.label_77:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_127
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_132]]
.label_451:
	test	rsi, rsi
	jne	.label_120
	jmp	.label_136
	.section	.text
	.align	16
	#Procedure 0x40212e
	.globl sub_40212e
	.type sub_40212e, @function
sub_40212e:

	nop	
.label_124:
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
	jne	.label_151
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_77
	jmp	.label_93
.label_151:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_77
.label_455:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_166
	test	rsi, rsi
	jne	.label_167
	cmp	rbp, 1
	je	.label_136
	xor	r13d, r13d
	jmp	.label_75
.label_444:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_172
	cmp	byte ptr [rsp + 7], 0
	jne	.label_69
	cmp	r12d, 2
	jne	.label_174
	mov	eax, r9d
	and	al, 1
	jne	.label_174
	cmp	r14, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_63
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_63:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_71
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_71:
	add	r14, 3
	mov	r9b, 1
.label_174:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_79
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_79:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_82
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_82
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_82
	cmp	r14, r11
	jae	.label_95
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_95:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_105
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_105:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_75
.label_445:
	mov	bl, 0x62
	jmp	.label_109
.label_446:
	mov	cl, 0x74
	jmp	.label_112
.label_447:
	mov	bl, 0x76
	jmp	.label_109
.label_448:
	mov	bl, 0x66
	jmp	.label_109
.label_449:
	mov	cl, 0x72
	jmp	.label_112
.label_452:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_116
	cmp	byte ptr [rsp + 7], 0
	jne	.label_69
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
	jae	.label_123
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_123:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_133
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_133:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_137
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_137:
	add	r14, 3
	xor	r9d, r9d
.label_116:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_75
.label_453:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_150
	cmp	r12d, 2
	jne	.label_120
	cmp	byte ptr [rsp + 7], 0
	je	.label_120
	jmp	.label_69
.label_454:
	cmp	r12d, 2
	jne	.label_157
	cmp	byte ptr [rsp + 7], 0
	jne	.label_69
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_89
.label_127:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_119
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
.label_68:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_72
	test	r8b, r8b
	je	.label_72
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_75
.label_166:
	test	rsi, rsi
	jne	.label_81
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_81
.label_136:
	mov	dl, 1
.label_450:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_69
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_75:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_88
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_91
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402474
	.globl sub_402474
	.type sub_402474, @function
sub_402474:

	nop	word ptr cs:[rax + rax]
.label_88:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_78
.label_91:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_102
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_89
	jmp	.label_115
	.section	.text
	.align	16
	#Procedure 0x4024bd
	.globl sub_4024bd
	.type sub_4024bd, @function
sub_4024bd:

	nop	dword ptr [rax]
.label_78:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_115
	jmp	.label_89
.label_102:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_115
.label_172:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_128
	xor	r15d, r15d
	jmp	.label_120
.label_157:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_112
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_89
.label_112:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_69
.label_109:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_75
	nop	word ptr cs:[rax + rax]
.label_115:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_69
	cmp	r12d, 2
	jne	.label_144
	mov	eax, r9d
	and	al, 1
	jne	.label_144
	cmp	r14, r11
	jae	.label_147
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_147:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_67
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_67:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_155
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_155:
	add	r14, 3
	mov	r9b, 1
.label_144:
	cmp	r14, r11
	jae	.label_158
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_158:
	inc	r14
	jmp	.label_160
.label_119:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_163
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_163:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_173:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_176
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_66
	cmp	rbp, -2
	je	.label_108
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_76
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_117:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_96
	bt	rsi, rdx
	jb	.label_93
.label_96:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_117
.label_76:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_104
	xor	r13d, r13d
.label_104:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_173
	jmp	.label_68
.label_82:
	xor	r13d, r13d
	jmp	.label_75
.label_81:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_75
.label_150:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_120
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_120
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_120
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_62
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_87
	cmp	byte ptr [rsp + 7], 0
	jne	.label_69
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_139
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_139:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_142
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_142:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_152
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_152:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_154
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_154:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_75
.label_120:
	xor	eax, eax
.label_167:
	xor	r13d, r13d
	jmp	.label_75
.label_72:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_161
	.section	.text
	.align	16
	#Procedure 0x4027a3
	.globl sub_4027a3
	.type sub_4027a3, @function
sub_4027a3:

	nop	word ptr cs:[rax + rax]
.label_121:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_161:
	test	r8b, r8b
	je	.label_168
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_169
	cmp	r14, r11
	jae	.label_97
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_97:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_169
	.section	.text
	.align	16
	#Procedure 0x4027ec
	.globl sub_4027ec
	.type sub_4027ec, @function
sub_4027ec:

	nop	dword ptr [rax]
.label_168:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_93
	cmp	r12d, 2
	jne	.label_64
	mov	eax, r9d
	and	al, 1
	jne	.label_64
	cmp	r14, r11
	jae	.label_65
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_65:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_70
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_70:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_125
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_125:
	add	r14, 3
	mov	r9b, 1
.label_64:
	cmp	r14, r11
	jae	.label_134
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_134:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_84
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_84:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_92
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_92:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_169:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_89
	test	r9b, 1
	je	.label_111
	mov	ebx, eax
	and	bl, 1
	jne	.label_111
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_114
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_114:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_130
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_130:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_111:
	cmp	r14, r11
	jae	.label_121
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_121
	.section	.text
	.align	16
	#Procedure 0x4028f3
	.globl sub_4028f3
	.type sub_4028f3, @function
sub_4028f3:

	nop	word ptr cs:[rax + rax]
.label_89:
	test	r9b, 1
	je	.label_129
	and	al, 1
	jne	.label_129
	cmp	r14, r11
	jae	.label_131
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_131:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_107
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_107:
	add	r14, 2
	xor	r9d, r9d
.label_129:
	mov	ebx, r15d
.label_160:
	cmp	r14, r11
	jae	.label_140
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_140:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_128
.label_66:
	xor	r13d, r13d
.label_176:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_68
.label_108:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_156
	mov	rsi, qword ptr [rsp + 0x50]
.label_164:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_100
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_164
	xor	r13d, r13d
	jmp	.label_68
.label_156:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_68
.label_100:
	xor	r13d, r13d
	jmp	.label_68
.label_62:
	xor	r13d, r13d
	jmp	.label_75
.label_87:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_75
	.section	.text
	.align	16
	#Procedure 0x4029c8
	.globl sub_4029c8
	.type sub_4029c8, @function
sub_4029c8:

	nop	dword ptr [rax + rax]
.label_106:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_171
	or	dl, al
	je	.label_93
.label_171:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_73
	or	dl, al
	jne	.label_73
	test	r10b, 1
	jne	.label_74
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_73
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_80
.label_73:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_83
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_85
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_85
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_103:
	cmp	r14, r11
	jae	.label_170
	mov	byte ptr [rcx + r14], al
.label_170:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_103
	jmp	.label_85
.label_69:
	mov	qword ptr [rsp + 0x20], rbp
.label_93:
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
.label_145:
	mov	r14, rax
.label_149:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_74:
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
	jmp	.label_145
.label_83:
	mov	rcx, qword ptr [rsp + 8]
.label_85:
	cmp	r14, r11
	jae	.label_149
	mov	byte ptr [rcx + r14], 0
	jmp	.label_149
.label_148:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402b5c
	.globl sub_402b5c
	.type sub_402b5c, @function
sub_402b5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_177
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_179:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_179
.label_177:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_181
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_180]], OFFSET FLAT:slot0
.label_181:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_178
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_178:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bf1
	.globl sub_402bf1
	.type sub_402bf1, @function
sub_402bf1:

	nop	word ptr cs:[rax + rax]
.label_182:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c03
	.globl sub_402c03
	.type sub_402c03, @function
sub_402c03:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402c05
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_182
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_183
	call	rpl_calloc
	test	rax, rax
	je	.label_183
	pop	rcx
	ret	
.label_183:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c46
	.globl sub_402c46
	.type sub_402c46, @function
sub_402c46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c50

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
	jne	.label_188
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
	je	.label_184
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_189
	mov	eax, OFFSET FLAT:label_190
	jmp	.label_187
.label_184:
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
	je	.label_191
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_185
	mov	eax, OFFSET FLAT:label_186
	jmp	.label_187
.label_191:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_165
	mov	eax, OFFSET FLAT:label_101
.label_187:
	cmove	rax, rcx
.label_188:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d0d
	.globl sub_402d0d
	.type sub_402d0d, @function
sub_402d0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402d10

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x402d15
	.globl sub_402d15
	.type sub_402d15, @function
sub_402d15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_192
.label_193:
	ret	
.label_192:
	cmp	edi, 0x7f
	je	.label_193
	xor	eax, eax
	jmp	.label_193
	.section	.text
	.align	16
	#Procedure 0x402d31
	.globl sub_402d31
	.type sub_402d31, @function
sub_402d31:

	nop	word ptr cs:[rax + rax]
.label_194:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d46
	.globl sub_402d46
	.type sub_402d46, @function
sub_402d46:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d4b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_194
	test	rdx, rdx
	je	.label_194
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d70
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d78
	.globl sub_402d78
	.type sub_402d78, @function
sub_402d78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d8a
	.globl sub_402d8a
	.type sub_402d8a, @function
sub_402d8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d90

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402db2
	.globl sub_402db2
	.type sub_402db2, @function
sub_402db2:

	nop	word ptr cs:[rax + rax]
.label_196:
	call	write_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dd4

	.globl xputchar
	.type xputchar, @function
xputchar:
	push	rax
	call	putchar_unlocked
	test	eax, eax
	js	.label_196
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402de0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dea
	.globl sub_402dea
	.type sub_402dea, @function
sub_402dea:

	nop	word ptr [rax + rax]
.label_197:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402df5
	.globl sub_402df5
	.type sub_402df5, @function
sub_402df5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e03

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
	je	.label_197
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
	#Procedure 0x402e50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_199
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_202
	mov	ecx, OFFSET FLAT:label_203
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402ec4
	.globl sub_402ec4
	.type sub_402ec4, @function
sub_402ec4:

	nop	word ptr cs:[rax + rax]
.label_205:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ed1
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_204
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_206]]
.label_204:
	xor	eax, eax
	jmp	.label_205
	.section	.text
	.align	16
	#Procedure 0x402ee6
	.globl sub_402ee6
	.type sub_402ee6, @function
sub_402ee6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402efe
	.globl sub_402efe
	.type sub_402efe, @function
sub_402efe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402f00

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
	js	.label_207
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_210
	cmp	r12d, 0x7fffffff
	je	.label_212
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
	jne	.label_208
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_208:
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
.label_210:
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
	jbe	.label_213
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_209
.label_213:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_211
	mov	rdi, r14
	call	free
.label_211:
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
.label_209:
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
.label_207:
	call	abort
.label_212:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4030bd
	.globl sub_4030bd
	.type sub_4030bd, @function
sub_4030bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_235
	call	setlocale
	mov	edi, OFFSET FLAT:label_232
	mov	esi, OFFSET FLAT:label_233
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_232
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + serial_merge]],  0
	mov	r14d, OFFSET FLAT:label_216
	mov	r15d, OFFSET FLAT:label_217
	jmp	.label_218
.label_220:
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	nop	dword ptr [rax]
.label_218:
	mov	edx, OFFSET FLAT:label_231
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x63
	jle	.label_219
	cmp	eax, 0x7a
	je	.label_220
	cmp	eax, 0x73
	je	.label_222
	cmp	eax, 0x64
	jne	.label_226
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [r14], 0
	cmove	r14, r15
	jmp	.label_218
.label_222:
	mov	byte ptr [byte ptr [rip + serial_merge]],  1
	jmp	.label_218
.label_219:
	cmp	eax, -1
	jne	.label_227
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebp, eax
	jne	.label_215
	mov	qword ptr [word ptr [rbx + (rax * 8)]], OFFSET FLAT:label_214
	mov	ebp, 1
.label_215:
	mov	rdi, r14
	call	collapse_escapes
	test	eax, eax
	jne	.label_228
	mov	al,  byte ptr [byte ptr [rip + serial_merge]]
	mov	ecx, OFFSET FLAT:paste_serial
	mov	edx, OFFSET FLAT:paste_parallel
	test	al, al
	cmovne	rdx, rcx
	movsxd	rdi, ebp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rbx + rax*8]
	call	rdx
	mov	ebx, eax
	mov	rdi,  qword ptr [word ptr [rip + delims]]
	call	free
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_230
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_234
.label_230:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_227:
	cmp	eax, 0xffffff7d
	je	.label_221
	cmp	eax, 0xffffff7e
	jne	.label_226
	xor	edi, edi
	call	usage
.label_221:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_223
	mov	edx, OFFSET FLAT:label_202
	mov	r8d, OFFSET FLAT:label_224
	mov	r9d, OFFSET FLAT:label_225
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_228:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 6
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_226:
	mov	edi, 1
	call	usage
.label_234:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_214
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032c0
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
	#Procedure 0x4032cf
	.globl sub_4032cf
	.type sub_4032cf, @function
sub_4032cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4032d0

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
	#Procedure 0x4032e7
	.globl sub_4032e7
	.type sub_4032e7, @function
sub_4032e7:

	nop	word ptr [rax + rax]
.label_236:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032f3
	.globl sub_4032f3
	.type sub_4032f3, @function
sub_4032f3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032fb
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_236
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x403310
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40331a
	.globl sub_40331a
	.type sub_40331a, @function
sub_40331a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403320

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
	#Procedure 0x40334d
	.globl sub_40334d
	.type sub_40334d, @function
sub_40334d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403350

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
	#Procedure 0x403363
	.globl sub_403363
	.type sub_403363, @function
sub_403363:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403370

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_237
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_239
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_239
.label_237:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_238
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_242:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_241
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_238:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_239:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_242
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_46
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403430

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
	#Procedure 0x403469
	.globl sub_403469
	.type sub_403469, @function
sub_403469:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403470
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
	#Procedure 0x403481
	.globl sub_403481
	.type sub_403481, @function
sub_403481:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490
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
	#Procedure 0x4034a4
	.globl sub_4034a4
	.type sub_4034a4, @function
sub_4034a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034b0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_243
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_243
.label_244:
	ret	
.label_243:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_244
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034d6
	.globl sub_4034d6
	.type sub_4034d6, @function
sub_4034d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_46
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403510

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
	#Procedure 0x403546
	.globl sub_403546
	.type sub_403546, @function
sub_403546:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403550

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_248
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_248:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
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
	#Procedure 0x403675
	.globl sub_403675
	.type sub_403675, @function
sub_403675:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_254:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_254
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4036a1
	.globl sub_4036a1
	.type sub_4036a1, @function
sub_4036a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0

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
	je	.label_255
	cmp	r15, -2
	jb	.label_255
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_255
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_255:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403706
	.globl sub_403706
	.type sub_403706, @function
sub_403706:

	nop	word ptr cs:[rax + rax]
.label_257:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_256
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_256:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403744
	.globl sub_403744
	.type sub_403744, @function
sub_403744:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403746

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
	jne	.label_258
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_258
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_257
.label_258:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403780
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
	#Procedure 0x40378f
	.globl sub_40378f
	.type sub_40378f, @function
sub_40378f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403790
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
	#Procedure 0x40379f
	.globl sub_40379f
	.type sub_40379f, @function
sub_40379f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4037a0
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
	#Procedure 0x4037c7
	.globl sub_4037c7
	.type sub_4037c7, @function
sub_4037c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_260:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_259
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_261
	.section	.text
	.align	16
	#Procedure 0x4037f9
	.globl sub_4037f9
	.type sub_4037f9, @function
sub_4037f9:

	nop	dword ptr [rax]
.label_259:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_261:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_262
	inc	r9
	cmp	r9, 0xa
	jb	.label_260
.label_262:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40382f
	.globl sub_40382f
	.type sub_40382f, @function
sub_40382f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403830

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
	je	.label_263
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_265
	jmp	.label_264
.label_263:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_264
.label_265:
	mov	eax, 1
	test	bpl, bpl
	je	.label_264
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
.label_264:
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
	#Procedure 0x4038ad
	.globl sub_4038ad
	.type sub_4038ad, @function
sub_4038ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x4038b9
	.globl sub_4038b9
	.type sub_4038b9, @function
sub_4038b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0

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
	mov	rax,  qword ptr [word ptr [rip + label_37]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_38]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_39]]
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
	#Procedure 0x403928
	.globl sub_403928
	.type sub_403928, @function
sub_403928:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403930
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
	#Procedure 0x403946
	.globl sub_403946
	.type sub_403946, @function
sub_403946:

	nop	word ptr cs:[rax + rax]
.label_266:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40395e
	.globl sub_40395e
	.type sub_40395e, @function
sub_40395e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403967

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_266
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_268
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_266
.label_268:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_266
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_267
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_267:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_269
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_269
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_269:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
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
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
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
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_270
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_270:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a36
	.globl sub_403a36
	.type sub_403a36, @function
sub_403a36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_271
	test	rbx, rbx
	jne	.label_271
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_271:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_273
	test	rax, rax
	je	.label_272
.label_273:
	pop	rbx
	ret	
.label_272:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x403a75
	.globl sub_403a75
	.type sub_403a75, @function
sub_403a75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a80

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_274
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_274:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a9a
	.globl sub_403a9a
	.type sub_403a9a, @function
sub_403a9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403aa0

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
	#Procedure 0x403ae9
	.globl sub_403ae9
	.type sub_403ae9, @function
sub_403ae9:

	nop	dword ptr [rax]
.label_383:
	mov	byte ptr [rax], 0xa
	jmp	.label_276
.label_282:
	mov	ecx, 1
.label_280:
	mov	qword ptr [word ptr [rip + delim_end]],  rax
	mov	eax, ecx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b05
	.globl sub_403b05
	.type sub_403b05, @function
sub_403b05:

	nop	word ptr cs:[rax + rax]
.label_378:
	mov	byte ptr [rax], 0
	jmp	.label_276
	.section	.text
	.align	16
	#Procedure 0x403b14
	.globl sub_403b14
	.type sub_403b14, @function
sub_403b14:

	nop	word ptr cs:[rax + rax]
.label_385:
	mov	byte ptr [rax], 9
	jmp	.label_276
.label_382:
	mov	byte ptr [rax], 0xc
	jmp	.label_276
.label_381:
	mov	byte ptr [rax], 8
	jmp	.label_276
.label_386:
	mov	byte ptr [rax], 0xb
	jmp	.label_276
.label_281:
	mov	byte ptr [rax], dl
	jmp	.label_279
.label_275:
	test	esi, esi
	je	.label_282
.label_379:
	mov	byte ptr [rax], dl
	nop	dword ptr [rax]
.label_276:
	add	rbx, 2
	mov	rsi, rbx
.label_279:
	inc	rax
	movzx	edx, byte ptr [rsi]
	test	dl, dl
	mov	rbx, rsi
	jne	.label_277
	jmp	.label_280
	.section	.text
	.align	16
	#Procedure 0x403b58

	.globl collapse_escapes
	.type collapse_escapes, @function
collapse_escapes:
	push	rbx
	mov	rbx, rdi
	call	xstrdup
	mov	qword ptr [word ptr [rip + delims]],  rax
	mov	dl, byte ptr [rbx]
	xor	ecx, ecx
	test	dl, dl
	je	.label_280
	nop	dword ptr [rax]
.label_277:
	lea	rsi, [rbx + 1]
	cmp	dl, 0x5c
	jne	.label_281
	movzx	edx, byte ptr [rsi]
	movsx	esi, dl
	lea	edi, [rsi - 0x30]
	cmp	edi, 0x46
	ja	.label_275
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_278]]
.label_380:
	mov	byte ptr [rax], 0x5c
	jmp	.label_276
.label_384:
	mov	byte ptr [rax], 0xd
	jmp	.label_276
	.section	.text
	.align	16
	#Procedure 0x403ba0
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
	#Procedure 0x403bd3
	.globl sub_403bd3
	.type sub_403bd3, @function
sub_403bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

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
	je	.label_285
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_283
	jmp	.label_284
.label_285:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_284
.label_283:
	mov	eax, 1
	test	bpl, bpl
	je	.label_284
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
.label_284:
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
	#Procedure 0x403c68
	.globl sub_403c68
	.type sub_403c68, @function
sub_403c68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c70

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
	je	.label_286
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_288
	jmp	.label_287
.label_286:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_287
.label_288:
	mov	eax, 1
	test	bpl, bpl
	je	.label_287
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
.label_287:
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
	#Procedure 0x403ce9
	.globl sub_403ce9
	.type sub_403ce9, @function
sub_403ce9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0

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
	je	.label_291
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_290
	jmp	.label_289
.label_291:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_289
.label_290:
	mov	eax, 1
	test	bpl, bpl
	je	.label_289
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
.label_289:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d53
	.globl sub_403d53
	.type sub_403d53, @function
sub_403d53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d60

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
	je	.label_294
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_292
	jmp	.label_293
.label_294:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_293
.label_292:
	mov	eax, 1
	test	bpl, bpl
	je	.label_293
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_293:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dbf
	.globl sub_403dbf
	.type sub_403dbf, @function
sub_403dbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403dc0

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
	je	.label_295
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_297
	jmp	.label_296
.label_295:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_296
.label_297:
	mov	eax, 1
	test	bpl, bpl
	je	.label_296
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_296:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e09
	.globl sub_403e09
	.type sub_403e09, @function
sub_403e09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e10

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
	je	.label_300
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_299
	jmp	.label_298
.label_300:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_298
.label_299:
	mov	eax, 1
	test	bpl, bpl
	je	.label_298
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_298:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e55
	.globl sub_403e55
	.type sub_403e55, @function
sub_403e55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e60

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_302
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_303
	jmp	.label_301
.label_302:
	mov	eax, 1
	test	cl, cl
	je	.label_301
.label_303:
	xor	eax, eax
.label_301:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e8f
	.globl sub_403e8f
	.type sub_403e8f, @function
sub_403e8f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x403e9a
	.globl sub_403e9a
	.type sub_403e9a, @function
sub_403e9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x403eaa
	.globl sub_403eaa
	.type sub_403eaa, @function
sub_403eaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0

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
	je	.label_304
	mov	qword ptr [rax], rbx
.label_304:
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
	#Procedure 0x403f9c
	.globl sub_403f9c
	.type sub_403f9c, @function
sub_403f9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl write_error
	.type write_error, @function
write_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x403ff2
	.globl sub_403ff2
	.type sub_403ff2, @function
sub_403ff2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404000

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40400a
	.globl sub_40400a
	.type sub_40400a, @function
sub_40400a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010
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
	#Procedure 0x404020

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x404029
	.globl sub_404029
	.type sub_404029, @function
sub_404029:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404030
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40403a
	.globl sub_40403a
	.type sub_40403a, @function
sub_40403a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404040
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
	#Procedure 0x404053
	.globl sub_404053
	.type sub_404053, @function
sub_404053:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404060
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40406a
	.globl sub_40406a
	.type sub_40406a, @function
sub_40406a:

	nop	word ptr [rax + rax]
.label_306:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x40407c
	.globl sub_40407c
	.type sub_40407c, @function
sub_40407c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404089

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_306
	ret	
	.section	.text
	.align	16
	#Procedure 0x404090
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
	#Procedure 0x40409d
	.globl sub_40409d
	.type sub_40409d, @function
sub_40409d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_235
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_307
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040c5
	.globl sub_4040c5
	.type sub_4040c5, @function
sub_4040c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl paste_parallel
	.type paste_parallel, @function
paste_parallel:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 8], rsi
	mov	r13, rdi
	lea	rdi, [r13 + 2]
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [r13 + 1]
	mov	esi, 8
	call	xnmalloc
	mov	rbx, rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	test	r13, r13
	je	.label_308
	xor	r14d, r14d
	xor	r15d, r15d
	jmp	.label_310
.label_328:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	qword ptr [rbx + r14*8], rax
	jmp	.label_319
.label_310:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + r14*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_320
	cmp	byte ptr [rax + 1], 0
	je	.label_328
.label_320:
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r14*8]
	mov	esi, OFFSET FLAT:label_52
	call	fopen
	mov	qword ptr [rbx + r14*8], rax
	test	rax, rax
	je	.label_334
	mov	rdi, rax
	call	fileno
	test	eax, eax
	mov	bpl, 1
	je	.label_336
	mov	ebp, r15d
.label_336:
	mov	rdi, qword ptr [rbx + r14*8]
	mov	esi, 2
	call	fadvise
	mov	r15b, bpl
.label_319:
	inc	r14
	cmp	r14, r13
	jb	.label_310
	test	r15b, 1
	je	.label_313
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	je	.label_316
.label_313:
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	mov	qword ptr [rsp + 0x20], r13
	nop	dword ptr [rax]
.label_321:
	test	r14, r14
	je	.label_324
	test	r13, r13
	je	.label_324
	mov	rbp,  qword ptr [word ptr [rip + delims]]
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	nop	word ptr cs:[rax + rax]
.label_318:
	mov	rdi, qword ptr [rbx + r15*8]
	test	rdi, rdi
	je	.label_333
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x28], r14
	call	getc_unlocked
	mov	r14d, eax
	call	__errno_location
	mov	r13d, dword ptr [rax]
	test	r12, r12
	je	.label_309
	cmp	r14d, -1
	je	.label_309
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, r12
	call	fwrite_unlocked
	cmp	rax, r12
	mov	r12d, 0
	jne	.label_323
.label_309:
	cmp	r14d, -1
	je	.label_326
.label_338:
	movzx	eax,  byte ptr [byte ptr [rip + line_delim]]
	test	al, al
	mov	eax, 0xa
	mov	ecx, 0
	cmovne	eax, ecx
	cmp	r14d, eax
	je	.label_329
	movsx	edi, r14b
	call	xputchar
	mov	rdi, qword ptr [rbx + r15*8]
	call	getc_unlocked
	mov	r14d, eax
	mov	eax, 0xffffffff
	cmp	r14d, -1
	jne	.label_338
	jmp	.label_339
	.section	.text
	.align	16
	#Procedure 0x404284
	.globl sub_404284
	.type sub_404284, @function
sub_404284:

	nop	word ptr cs:[rax + rax]
.label_326:
	mov	rdi, qword ptr [rbx + r15*8]
	test	rdi, rdi
	je	.label_314
	call	ferror_unlocked
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_331
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r15*8]
	mov	dword ptr [rsp + 4], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_46
	xor	eax, eax
	mov	esi, r13d
	call	error
.label_331:
	mov	rdi, qword ptr [rbx + r15*8]
	cmp	rdi,  qword ptr [word ptr [rip + stdin]]
	je	.label_335
	call	rpl_fclose
	cmp	eax, -1
	mov	r13, qword ptr [rsp + 0x20]
	jne	.label_311
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r15*8]
	mov	dword ptr [rsp + 4], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_46
	xor	eax, eax
	mov	esi, r14d
	mov	rbp, qword ptr [rsp + 0x10]
	call	error
	jmp	.label_311
.label_329:
	mov	eax, r14d
.label_339:
	lea	rcx, [r15 + 1]
	mov	r13, qword ptr [rsp + 0x20]
	cmp	rcx, r13
	jne	.label_330
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	test	cl, cl
	mov	ecx, 0xa
	mov	edx, 0
	cmovne	ecx, edx
	cmp	eax, -1
	cmovne	ecx, eax
	movsx	edi, cl
	call	xputchar
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_315
.label_330:
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	test	cl, cl
	mov	ecx, 0xa
	mov	edx, 0
	cmovne	ecx, edx
	cmp	eax, -1
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_325
	cmp	eax, ecx
	je	.label_325
	movsx	edi, al
	call	xputchar
.label_325:
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_327
	movsx	edi, al
	call	xputchar
.label_327:
	inc	rbp
	cmp	rbp,  qword ptr [word ptr [rip + delim_end]]
	cmove	rbp,  qword ptr [word ptr [rip + delims]]
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_315
.label_314:
	mov	r13, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_333
.label_335:
	call	clearerr_unlocked
	mov	r13, qword ptr [rsp + 0x20]
.label_311:
	mov	qword ptr [rbx + r15*8], 0
	mov	r14, qword ptr [rsp + 0x28]
	dec	r14
.label_333:
	lea	rax, [r15 + 1]
	cmp	rax, r13
	jne	.label_317
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_315
	test	r12, r12
	je	.label_322
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, r12
	call	fwrite_unlocked
	cmp	rax, r12
	jne	.label_323
.label_322:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	r12d, r12d
	test	al, al
	mov	eax, 0
	jne	.label_332
	mov	al, 0xa
.label_332:
	movzx	edi, al
	call	xputchar
	jmp	.label_315
	.section	.text
	.align	16
	#Procedure 0x40446c
	.globl sub_40446c
	.type sub_40446c, @function
sub_40446c:

	nop	dword ptr [rax]
.label_317:
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_337
	mov	rcx, qword ptr [rsp + 0x18]
	mov	byte ptr [rcx + r12], al
	inc	r12
.label_337:
	inc	rbp
	cmp	rbp,  qword ptr [word ptr [rip + delim_end]]
	cmove	rbp,  qword ptr [word ptr [rip + delims]]
.label_315:
	test	r14, r14
	je	.label_324
	inc	r15
	cmp	r15, r13
	jb	.label_318
.label_324:
	test	r14, r14
	jne	.label_321
.label_308:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	eax, dword ptr [rsp + 4]
	and	al, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_323:
	call	write_error
.label_334:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r14*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_46
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_316:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404540

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40454a
	.globl sub_40454a
	.type sub_40454a, @function
sub_40454a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404550
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40455d
	.globl sub_40455d
	.type sub_40455d, @function
sub_40455d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404560
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
	#Procedure 0x404570

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
	je	.label_341
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_340
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_340
.label_341:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_340
	test	cl, cl
	jne	.label_340
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_340:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045d6
	.globl sub_4045d6
	.type sub_4045d6, @function
sub_4045d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_342
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_342:
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
	#Procedure 0x404663
	.globl sub_404663
	.type sub_404663, @function
sub_404663:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404670

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_349
	nop	
.label_348:
	mov	edi, OFFSET FLAT:label_223
	call	strcmp
	test	eax, eax
	je	.label_346
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_348
.label_346:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_223
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_202
	mov	ecx, OFFSET FLAT:label_203
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_343
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_343
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_343:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_223
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_203
	mov	ecx, OFFSET FLAT:label_223
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_352
	mov	ecx, OFFSET FLAT:label_235
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
	#Procedure 0x40478a
	.globl sub_40478a
	.type sub_40478a, @function
sub_40478a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404790
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40479a
	.globl sub_40479a
	.type sub_40479a, @function
sub_40479a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0
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
	#Procedure 0x4047b9
	.globl sub_4047b9
	.type sub_4047b9, @function
sub_4047b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047ca
	.globl sub_4047ca
	.type sub_4047ca, @function
sub_4047ca:

	nop	word ptr [rax + rax]
.label_354:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4047d5

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_356
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_354
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_357
.label_356:
	test	rcx, rcx
	jne	.label_355
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_355:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_353
.label_357:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_353:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404849
	.globl sub_404849
	.type sub_404849, @function
sub_404849:

	nop	dword ptr [rax]
.label_358:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404853
	.globl sub_404853
	.type sub_404853, @function
sub_404853:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404855
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_358
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x404870

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_362
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_364
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_364
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_360
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_360:
	mov	rbx, r14
.label_364:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_362:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_363
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404911
	.globl sub_404911
	.type sub_404911, @function
sub_404911:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404985
	.globl sub_404985
	.type sub_404985, @function
sub_404985:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404992
	.globl sub_404992
	.type sub_404992, @function
sub_404992:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049b6
	.globl sub_4049b6
	.type sub_4049b6, @function
sub_4049b6:

	nop	word ptr cs:[rax + rax]
