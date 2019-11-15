	.section	.text
	.align	16
	#Procedure 0x4015b9
	.globl sub_4015b9
	.type sub_4015b9, @function
sub_4015b9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4015ba
	.globl sub_4015ba
	.type sub_4015ba, @function
sub_4015ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015f2
	.globl sub_4015f2
	.type sub_4015f2, @function
sub_4015f2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40163a
	.globl sub_40163a
	.type sub_40163a, @function
sub_40163a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40165c
	.globl sub_40165c
	.type sub_40165c, @function
sub_40165c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40166d
	.globl sub_40166d
	.type sub_40166d, @function
sub_40166d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401686
	.globl sub_401686
	.type sub_401686, @function
sub_401686:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401690
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
	#Procedure 0x4016a6
	.globl sub_4016a6
	.type sub_4016a6, @function
sub_4016a6:

	nop	word ptr cs:[rax + rax]
.label_11:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_10
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_10:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016e4
	.globl sub_4016e4
	.type sub_4016e4, @function
sub_4016e4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4016e6

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
	je	.label_11
.label_12:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x401720

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
	je	.label_15
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_13
	jmp	.label_14
.label_15:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_14
.label_13:
	mov	eax, 1
	test	bpl, bpl
	je	.label_14
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
.label_14:
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
	#Procedure 0x4017a8
	.globl sub_4017a8
	.type sub_4017a8, @function
sub_4017a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017b0

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
	je	.label_16
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_18
	jmp	.label_17
.label_16:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_17
.label_18:
	mov	eax, 1
	test	bpl, bpl
	je	.label_17
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
.label_17:
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
	#Procedure 0x401829
	.globl sub_401829
	.type sub_401829, @function
sub_401829:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401830

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
	je	.label_21
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_20
	jmp	.label_19
.label_21:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_19
.label_20:
	mov	eax, 1
	test	bpl, bpl
	je	.label_19
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
.label_19:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401893
	.globl sub_401893
	.type sub_401893, @function
sub_401893:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018a0

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
	je	.label_24
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_22
	jmp	.label_23
.label_24:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_23
.label_22:
	mov	eax, 1
	test	bpl, bpl
	je	.label_23
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_23:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018ff
	.globl sub_4018ff
	.type sub_4018ff, @function
sub_4018ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401900

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
	je	.label_25
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_27
	jmp	.label_26
.label_25:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_26
.label_27:
	mov	eax, 1
	test	bpl, bpl
	je	.label_26
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_26:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401949
	.globl sub_401949
	.type sub_401949, @function
sub_401949:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401950

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
	je	.label_30
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_29
	jmp	.label_28
.label_30:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_28
.label_29:
	mov	eax, 1
	test	bpl, bpl
	je	.label_28
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_28:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401995
	.globl sub_401995
	.type sub_401995, @function
sub_401995:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019a0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_33
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_32
	jmp	.label_31
.label_33:
	mov	eax, 1
	test	cl, cl
	je	.label_31
.label_32:
	xor	eax, eax
.label_31:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019cf
	.globl sub_4019cf
	.type sub_4019cf, @function
sub_4019cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4019d0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x4019d5
	.globl sub_4019d5
	.type sub_4019d5, @function
sub_4019d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0
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
	#Procedure 0x4019ef
	.globl sub_4019ef
	.type sub_4019ef, @function
sub_4019ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4019f0

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
	#Procedure 0x401a1d
	.globl sub_401a1d
	.type sub_401a1d, @function
sub_401a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a20

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
	#Procedure 0x401a33
	.globl sub_401a33
	.type sub_401a33, @function
sub_401a33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a40

	.globl print_table_row
	.type print_table_row, @function
print_table_row:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15d, edx
	mov	ebx, esi
	mov	ebp, edi
	mov	edi, ebx
	call	strsignal
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_34
	cmovne	rcx, rax
	mov	qword ptr [rsp], rcx
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_35
	xor	eax, eax
	mov	r8d, r15d
	mov	edx, ebp
	mov	ecx, ebx
	mov	r9, r14
	call	__printf_chk
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a8e
	.globl sub_401a8e
	.type sub_401a8e, @function
sub_401a8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401a90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_36:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_36
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401ab1
	.globl sub_401ab1
	.type sub_401ab1, @function
sub_401ab1:

	nop	word ptr cs:[rax + rax]
.label_38:
	cmp	edi, 0x7f
	je	.label_37
	xor	eax, eax
	jmp	.label_37
	.section	.text
	.align	16
	#Procedure 0x401ac9
	.globl sub_401ac9
	.type sub_401ac9, @function
sub_401ac9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ad8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_38
.label_37:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ae0

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
	mov	rcx,  qword ptr [word ptr [rip + label_39]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_40]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_41]]
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
	#Procedure 0x401b4d
	.globl sub_401b4d
	.type sub_401b4d, @function
sub_401b4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401b5d
	.globl sub_401b5d
	.type sub_401b5d, @function
sub_401b5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x401b67
	.globl sub_401b67
	.type sub_401b67, @function
sub_401b67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b70
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
	#Procedure 0x401b83
	.globl sub_401b83
	.type sub_401b83, @function
sub_401b83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90

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
	jae	.label_46
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_42
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_43
	jmp	.label_42
.label_46:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_48
	nop	dword ptr [rax + rax]
.label_53:
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	je	.label_44
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_53
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r14d, eax
	test	ebp, ebp
	jle	.label_45
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	je	.label_50
.label_45:
	test	r14d, r14d
	jle	.label_42
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_42
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	jne	.label_42
	sub	ebp, r14d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_42
	test	rax, rax
	jg	.label_42
	mov	ecx, r14d
	jmp	.label_52
.label_44:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_43
.label_50:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_42
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_42
	sub	r14d, ebp
	movsxd	rcx, r14d
	cmp	rax, rcx
	jle	.label_49
.label_42:
	mov	eax, 0xffffffff
.label_43:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_49:
	mov	ecx, ebp
.label_52:
	add	rax, rcx
	jmp	.label_43
	.section	.text
	.align	16
	#Procedure 0x401cc2
	.globl sub_401cc2
	.type sub_401cc2, @function
sub_401cc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cd0

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
	mov	esi, OFFSET FLAT:label_48
	nop	word ptr cs:[rax + rax]
.label_58:
	cmp	dword ptr [rsi - 4], ebp
	je	.label_54
	inc	eax
	add	rsi, 0xc
	cmp	eax, 0x22
	jbe	.label_58
	call	__libc_current_sigrtmin
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	jg	.label_56
	cmp	eax, ebp
	jl	.label_56
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_59
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	jmp	.label_57
.label_54:
	mov	rdi, r14
	call	strcpy
	xor	ebx, ebx
	jmp	.label_56
.label_59:
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_57:
	xor	ebx, ebx
	sub	ebp, r15d
	je	.label_56
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_55
	xor	eax, eax
	mov	rdi, r14
	mov	r8d, ebp
	call	__sprintf_chk
.label_56:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d95
	.globl sub_401d95
	.type sub_401d95, @function
sub_401d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401da0
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
	#Procedure 0x401e12
	.globl sub_401e12
	.type sub_401e12, @function
sub_401e12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e20
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_60
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_60:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e3e
	.globl sub_401e3e
	.type sub_401e3e, @function
sub_401e3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e40

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e4a
	.globl sub_401e4a
	.type sub_401e4a, @function
sub_401e4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e50
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
	#Procedure 0x401e69
	.globl sub_401e69
	.type sub_401e69, @function
sub_401e69:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e70

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
	#Procedure 0x401e87
	.globl sub_401e87
	.type sub_401e87, @function
sub_401e87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_61
	ret	
.label_61:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x401ea3
	.globl sub_401ea3
	.type sub_401ea3, @function
sub_401ea3:

	nop	word ptr cs:[rax + rax]
.label_62:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401eb6
	.globl sub_401eb6
	.type sub_401eb6, @function
sub_401eb6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ebb

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_62
	test	rdx, rdx
	je	.label_62
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ee0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_63
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_66:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_66
.label_63:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_67
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_64]], OFFSET FLAT:slot0
.label_67:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_65
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_65:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f71
	.globl sub_401f71
	.type sub_401f71, @function
sub_401f71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f80
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
	#Procedure 0x401f8f
	.globl sub_401f8f
	.type sub_401f8f, @function
sub_401f8f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f90
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
	#Procedure 0x401fc3
	.globl sub_401fc3
	.type sub_401fc3, @function
sub_401fc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fd0

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
	#Procedure 0x402009
	.globl sub_402009
	.type sub_402009, @function
sub_402009:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402010
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
	#Procedure 0x402021
	.globl sub_402021
	.type sub_402021, @function
sub_402021:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402030
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
	#Procedure 0x402044
	.globl sub_402044
	.type sub_402044, @function
sub_402044:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402050

	.globl send_signals
	.type send_signals, @function
send_signals:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	dword ptr [rsp + 0xc], edi
	mov	rbp, qword ptr [r14]
	add	r14, 8
	lea	r15, [rsp + 0x10]
	xor	r12d, r12d
	jmp	.label_70
.label_73:
	mov	edi, eax
	mov	esi, dword ptr [rsp + 0xc]
	call	kill
	test	eax, eax
	je	.label_72
	mov	ebx, dword ptr [r13]
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_68
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_69
	.section	.text
	.align	16
	#Procedure 0x4020a5
	.globl sub_4020a5
	.type sub_4020a5, @function
sub_4020a5:

	nop	word ptr cs:[rax + rax]
.label_70:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	edx, 0xa
	mov	rdi, rbp
	mov	rsi, r15
	call	strtoimax
	cmp	dword ptr [r13], 0x22
	je	.label_71
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_71
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rbp, rcx
	je	.label_71
	cmp	byte ptr [rcx], 0
	je	.label_73
	nop	
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
.label_69:
	call	error
	mov	r12d, 1
.label_72:
	mov	rbp, qword ptr [r14]
	add	r14, 8
	test	rbp, rbp
	jne	.label_70
	mov	eax, r12d
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
	#Procedure 0x402141
	.globl sub_402141
	.type sub_402141, @function
sub_402141:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402150

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
	je	.label_81
	mov	edx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_77
.label_81:
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_85
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_86]]
.label_413:
	add	rsp, 8
	jmp	.label_78
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
	jmp	.label_78
.label_414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
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
.label_416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
.label_417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
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
	jmp	.label_78
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
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
	jmp	.label_78
.label_419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
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
	jmp	.label_78
.label_420:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
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
	jmp	.label_78
.label_422:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
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
	jmp	.label_78
.label_421:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
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
.label_78:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024a8
	.globl sub_4024a8
	.type sub_4024a8, @function
sub_4024a8:

	nop	dword ptr [rax + rax]
.label_94:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024b3
	.globl sub_4024b3
	.type sub_4024b3, @function
sub_4024b3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024bb
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_94
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024d0

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
	je	.label_95
	cmp	r15, -2
	jb	.label_95
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_95
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_95:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402526
	.globl sub_402526
	.type sub_402526, @function
sub_402526:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402530
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
	#Procedure 0x40253d
	.globl sub_40253d
	.type sub_40253d, @function
sub_40253d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402540

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_96
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_97
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402565
	.globl sub_402565
	.type sub_402565, @function
sub_402565:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402570
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40257a
	.globl sub_40257a
	.type sub_40257a, @function
sub_40257a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402580
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40258a
	.globl sub_40258a
	.type sub_40258a, @function
sub_40258a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402590

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
	jne	.label_104
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
	je	.label_98
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_102
	mov	eax, OFFSET FLAT:label_103
	jmp	.label_101
.label_98:
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
	je	.label_107
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_99
	mov	eax, OFFSET FLAT:label_100
	jmp	.label_101
.label_107:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_105
	mov	eax, OFFSET FLAT:label_106
.label_101:
	cmove	rax, rcx
.label_104:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40264d
	.globl sub_40264d
	.type sub_40264d, @function
sub_40264d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402650
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402658
	.globl sub_402658
	.type sub_402658, @function
sub_402658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_108
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_108:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402686
	.globl sub_402686
	.type sub_402686, @function
sub_402686:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402690

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_109
	test	rbx, rbx
	jne	.label_109
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_109:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_111
	test	rax, rax
	je	.label_110
.label_111:
	pop	rbx
	ret	
.label_110:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4026c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_68
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4026f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4026fa
	.globl sub_4026fa
	.type sub_4026fa, @function
sub_4026fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402700

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
	je	.label_113
	mov	qword ptr [rax], rbx
.label_113:
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
	#Procedure 0x4027ec
	.globl sub_4027ec
	.type sub_4027ec, @function
sub_4027ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4027f0
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
	#Procedure 0x4027ff
	.globl sub_4027ff
	.type sub_4027ff, @function
sub_4027ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402822
	.globl sub_402822
	.type sub_402822, @function
sub_402822:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402830

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_96
	call	setlocale
	mov	edi, OFFSET FLAT:label_133
	mov	esi, OFFSET FLAT:label_134
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_133
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebp, 0xffffffff
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	r15, [rsp + 0x10]
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_132:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	lea	ecx, [rbx + 0x83]
	cmp	ecx, 0xf7
	ja	.label_125
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_131]]
.label_125:
	mov	edi, 1
	call	usage
.label_405:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, 2
	jne	.label_135
.label_406:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	jne	.label_137
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	r13, qword ptr [r12 + rax*8 - 8]
	mov	rdi, r13
	call	strlen
	add	rax, r13
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_137:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [r12 + rcx*8 - 8]
	add	rcx, 2
	cmp	rax, rcx
	jne	.label_119
	dec	rax
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_409:
	test	ebp, ebp
	jns	.label_126
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r15
	call	operand2sig
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_132
	jmp	.label_136
.label_136:
	mov	edi, 1
	call	usage
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_119:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	mov	edi, 1
	call	usage
.label_123:
	lea	rsi, [r12 + rcx*8]
	call	send_signals
.label_127:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_135:
	dec	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_404:
	mov	edi, 0xf
	test	ebp, ebp
	mov	rdx, qword ptr [rsp + 8]
	js	.label_139
	test	dl, dl
	mov	edi, ebp
	jne	.label_115
.label_139:
	test	dl, dl
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jne	.label_116
	cmp	eax, r14d
	jge	.label_120
.label_116:
	movsxd	rcx, eax
	test	dl, dl
	je	.label_123
	mov	rdx, qword ptr [rsp]
	and	dl, 1
	xor	esi, esi
	cmp	eax, r14d
	lea	rax, [r12 + rcx*8]
	cmovl	rsi, rax
	movzx	edi, dl
	call	list_signals
	jmp	.label_127
.label_402:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_128
	mov	edx, OFFSET FLAT:label_129
	mov	r8d, OFFSET FLAT:label_130
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_408:
	mov	rax, qword ptr [rsp]
.label_407:
	mov	rcx, qword ptr [rsp + 8]
	test	cl, cl
	mov	cl, 1
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rax
	je	.label_132
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	jmp	.label_118
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	jmp	.label_118
.label_403:
	xor	edi, edi
	call	usage
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
.label_118:
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
	#Procedure 0x402adc
	.globl sub_402adc
	.type sub_402adc, @function
sub_402adc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ae0

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
.label_229:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_211
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_237]]
.label_462:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_241
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
.label_463:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_141
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_141
	xor	r14d, r14d
.label_150:
	cmp	r14, r11
	jae	.label_145
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_145:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_150
.label_141:
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
	jmp	.label_163
.label_455:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_163
.label_458:
	mov	al, 1
.label_456:
	mov	r12b, 1
.label_459:
	test	r12b, 1
	mov	cl, 1
	je	.label_170
	mov	ecx, eax
.label_170:
	mov	al, cl
.label_457:
	test	r12b, 1
	jne	.label_175
	test	r11, r11
	je	.label_216
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_216:
	mov	r14d, 1
	jmp	.label_181
.label_175:
	xor	r14d, r14d
.label_181:
	mov	ecx, OFFSET FLAT:label_106
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_163
.label_460:
	test	r12b, 1
	jne	.label_192
	test	r11, r11
	je	.label_208
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_208:
	mov	r14d, 1
	jmp	.label_196
.label_461:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_105
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_163
.label_192:
	xor	r14d, r14d
.label_196:
	mov	eax, OFFSET FLAT:label_105
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_163:
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
	jmp	.label_212
	.section	.text
	.align	16
	#Procedure 0x402dbc
	.globl sub_402dbc
	.type sub_402dbc, @function
sub_402dbc:

	nop	dword ptr [rax]
.label_173:
	inc	rsi
.label_212:
	cmp	rbp, -1
	je	.label_244
	cmp	rsi, rbp
	jne	.label_189
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x402dd3
	.globl sub_402dd3
	.type sub_402dd3, @function
sub_402dd3:

	nop	word ptr cs:[rax + rax]
.label_244:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_248
.label_189:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_251
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_140
	cmp	rbp, -1
	jne	.label_140
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
.label_140:
	cmp	rbx, rbp
	jbe	.label_156
.label_251:
	xor	r8d, r8d
.label_182:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_157
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_161]]
.label_433:
	test	rsi, rsi
	jne	.label_153
	jmp	.label_166
	.section	.text
	.align	16
	#Procedure 0x402e6e
	.globl sub_402e6e
	.type sub_402e6e, @function
sub_402e6e:

	nop	
.label_156:
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
	jne	.label_179
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_182
	jmp	.label_193
.label_179:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_182
.label_437:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_198
	test	rsi, rsi
	jne	.label_201
	cmp	rbp, 1
	je	.label_166
	xor	r13d, r13d
	jmp	.label_142
.label_426:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_207
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
	cmp	r12d, 2
	jne	.label_210
	mov	eax, r9d
	and	al, 1
	jne	.label_210
	cmp	r14, r11
	jae	.label_221
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_221:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_217:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_223
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_223:
	add	r14, 3
	mov	r9b, 1
.label_210:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_184
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_184:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_231
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_231
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_231
	cmp	r14, r11
	jae	.label_242
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_242:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_151
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_151:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_142
.label_427:
	mov	bl, 0x62
	jmp	.label_250
.label_428:
	mov	cl, 0x74
	jmp	.label_183
.label_429:
	mov	bl, 0x76
	jmp	.label_250
.label_430:
	mov	bl, 0x66
	jmp	.label_250
.label_431:
	mov	cl, 0x72
	jmp	.label_183
.label_434:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_143
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
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
	jae	.label_152
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_152:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_164
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_164:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_167
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_167:
	add	r14, 3
	xor	r9d, r9d
.label_143:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_142
.label_435:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_178
	cmp	r12d, 2
	jne	.label_153
	cmp	byte ptr [rsp + 7], 0
	je	.label_153
	jmp	.label_147
.label_436:
	cmp	r12d, 2
	jne	.label_188
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_144
.label_157:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_204
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
.label_172:
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
	jmp	.label_142
.label_198:
	test	rsi, rsi
	jne	.label_228
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_228
.label_166:
	mov	dl, 1
.label_432:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_147
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_142:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_238
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_239
	jmp	.label_146
	.section	.text
	.align	16
	#Procedure 0x4031b4
	.globl sub_4031b4
	.type sub_4031b4, @function
sub_4031b4:

	nop	word ptr cs:[rax + rax]
.label_238:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_146
.label_239:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_245
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_144
	jmp	.label_162
	.section	.text
	.align	16
	#Procedure 0x4031fd
	.globl sub_4031fd
	.type sub_4031fd, @function
sub_4031fd:

	nop	dword ptr [rax]
.label_146:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_162
	jmp	.label_144
.label_245:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_162
.label_207:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_173
	xor	r15d, r15d
	jmp	.label_153
.label_188:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_183
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_144
.label_183:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_147
.label_250:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_142
	nop	word ptr cs:[rax + rax]
.label_162:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
	cmp	r12d, 2
	jne	.label_171
	mov	eax, r9d
	and	al, 1
	jne	.label_171
	cmp	r14, r11
	jae	.label_176
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_176:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_233
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_233:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_186
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_186:
	add	r14, 3
	mov	r9b, 1
.label_171:
	cmp	r14, r11
	jae	.label_190
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_190:
	inc	r14
	jmp	.label_194
.label_204:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_197
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_197:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_224:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_215
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_220
	cmp	rbp, -2
	je	.label_155
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_226
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_159:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_165
	bt	rsi, rdx
	jb	.label_193
.label_165:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_159
.label_226:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_247
	xor	r13d, r13d
.label_247:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_224
	jmp	.label_172
.label_231:
	xor	r13d, r13d
	jmp	.label_142
.label_228:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_142
.label_178:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_153
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_153
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_153
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_230
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_249
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_168
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_168:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_180
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_180:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_185
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_185:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_142
.label_153:
	xor	eax, eax
.label_201:
	xor	r13d, r13d
	jmp	.label_142
.label_200:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_195
	.section	.text
	.align	16
	#Procedure 0x4034e3
	.globl sub_4034e3
	.type sub_4034e3, @function
sub_4034e3:

	nop	word ptr cs:[rax + rax]
.label_148:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_195:
	test	r8b, r8b
	je	.label_202
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_203
	cmp	r14, r11
	jae	.label_205
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_205:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x40352c
	.globl sub_40352c
	.type sub_40352c, @function
sub_40352c:

	nop	dword ptr [rax]
.label_202:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_193
	cmp	r12d, 2
	jne	.label_214
	mov	eax, r9d
	and	al, 1
	jne	.label_214
	cmp	r14, r11
	jae	.label_219
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_219:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_222
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_227
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_227:
	add	r14, 3
	mov	r9b, 1
.label_214:
	cmp	r14, r11
	jae	.label_199
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_199:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_235
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_235:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_240
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_240:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_203:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_144
	test	r9b, 1
	je	.label_218
	mov	ebx, eax
	and	bl, 1
	jne	.label_218
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_252
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_252:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_234
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_234:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_218:
	cmp	r14, r11
	jae	.label_148
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_148
	.section	.text
	.align	16
	#Procedure 0x403633
	.globl sub_403633
	.type sub_403633, @function
sub_403633:

	nop	word ptr cs:[rax + rax]
.label_144:
	test	r9b, 1
	je	.label_158
	and	al, 1
	jne	.label_158
	cmp	r14, r11
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_154
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_154:
	add	r14, 2
	xor	r9d, r9d
.label_158:
	mov	ebx, r15d
.label_194:
	cmp	r14, r11
	jae	.label_169
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_169:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_173
.label_220:
	xor	r13d, r13d
.label_215:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_172
.label_155:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_187
	mov	rsi, qword ptr [rsp + 0x50]
.label_191:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_149
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_191
	xor	r13d, r13d
	jmp	.label_172
.label_187:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_172
.label_149:
	xor	r13d, r13d
	jmp	.label_172
.label_230:
	xor	r13d, r13d
	jmp	.label_142
.label_249:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_142
	.section	.text
	.align	16
	#Procedure 0x403708
	.globl sub_403708
	.type sub_403708, @function
sub_403708:

	nop	dword ptr [rax + rax]
.label_248:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_206
	or	dl, al
	je	.label_193
.label_206:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_213
	or	dl, al
	jne	.label_213
	test	r10b, 1
	jne	.label_225
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_213
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_229
.label_213:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_232
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_236
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_236
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_246:
	cmp	r14, r11
	jae	.label_243
	mov	byte ptr [rcx + r14], al
.label_243:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_246
	jmp	.label_236
.label_147:
	mov	qword ptr [rsp + 0x20], rbp
.label_193:
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
.label_174:
	mov	r14, rax
.label_177:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_225:
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
	jmp	.label_174
.label_232:
	mov	rcx, qword ptr [rsp + 8]
.label_236:
	cmp	r14, r11
	jae	.label_177
	mov	byte ptr [rcx + r14], 0
	jmp	.label_177
.label_211:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40389c
	.globl sub_40389c
	.type sub_40389c, @function
sub_40389c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038a0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4038aa
	.globl sub_4038aa
	.type sub_4038aa, @function
sub_4038aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0
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
	#Procedure 0x4038c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4038c9
	.globl sub_4038c9
	.type sub_4038c9, @function
sub_4038c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038d0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4038da
	.globl sub_4038da
	.type sub_4038da, @function
sub_4038da:

	nop	word ptr [rax + rax]
.label_253:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038e3
	.globl sub_4038e3
	.type sub_4038e3, @function
sub_4038e3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4038e5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_253
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x403900
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
	#Procedure 0x40390d
	.globl sub_40390d
	.type sub_40390d, @function
sub_40390d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403910

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_254
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_254
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_254:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403936
	.globl sub_403936
	.type sub_403936, @function
sub_403936:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403940
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
	#Procedure 0x403967
	.globl sub_403967
	.type sub_403967, @function
sub_403967:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_256
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_129
	mov	ecx, OFFSET FLAT:label_259
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4039e4
	.globl sub_4039e4
	.type sub_4039e4, @function
sub_4039e4:

	nop	word ptr cs:[rax + rax]
.label_261:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_260
	test	cl, cl
	jne	.label_260
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_260:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a1b
	.globl sub_403a1b
	.type sub_403a1b, @function
sub_403a1b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a25

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
	je	.label_261
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_260
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_260
	.section	.text
	.align	16
	#Procedure 0x403a60

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
	je	.label_262
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_264
	jmp	.label_263
.label_262:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_263
.label_264:
	mov	eax, 1
	test	bpl, bpl
	je	.label_263
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
.label_263:
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
	#Procedure 0x403add
	.globl sub_403add
	.type sub_403add, @function
sub_403add:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ae0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403aea
	.globl sub_403aea
	.type sub_403aea, @function
sub_403aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x403afd
	.globl sub_403afd
	.type sub_403afd, @function
sub_403afd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b00
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
	#Procedure 0x403b10
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403b1a
	.globl sub_403b1a
	.type sub_403b1a, @function
sub_403b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b20
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b2a
	.globl sub_403b2a
	.type sub_403b2a, @function
sub_403b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b30

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403b3e
	.globl sub_403b3e
	.type sub_403b3e, @function
sub_403b3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403b40

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
	js	.label_265
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_268
	cmp	r12d, 0x7fffffff
	je	.label_270
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
	jne	.label_266
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_266:
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
.label_268:
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
	jbe	.label_271
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_267
.label_271:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_269
	mov	rdi, r14
	call	free
.label_269:
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
.label_267:
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
.label_265:
	call	abort
.label_270:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403cfd
	.globl sub_403cfd
	.type sub_403cfd, @function
sub_403cfd:

	nop	dword ptr [rax]
.label_273:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_272
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d20
	.globl sub_403d20
	.type sub_403d20, @function
sub_403d20:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d2f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_273
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_274
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_274
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_275
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_275:
	mov	rbx, r14
.label_274:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403db0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dba
	.globl sub_403dba
	.type sub_403dba, @function
sub_403dba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dc0

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
	ja	.label_278
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
	je	.label_282
	cmp	byte ptr [rdx], 0
	jne	.label_282
	cmp	dword ptr [rbx], 0
	jne	.label_282
	cmp	eax, -1
	je	.label_282
	movsxd	rdx, eax
	cmp	rdx, rax
	jne	.label_282
	cmp	eax, 0xfe
	mov	edx, 0xff
	mov	ecx, 0x7f
	cmovg	ecx, edx
	and	ecx, eax
.label_282:
	mov	dword ptr [rsp + 4], ecx
	jmp	.label_280
.label_278:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_281
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_290:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_286
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_289
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_289:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_290
.label_281:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_279
	cmp	byte ptr [r12], 0x53
	jne	.label_283
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_283
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_283
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_279
.label_283:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_279:
	mov	rdi, r12
	call	free
.label_280:
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_284
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_287
.label_284:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
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
	jmp	.label_285
.label_287:
	mov	eax, dword ptr [rsp + 4]
.label_285:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f31
	.globl sub_403f31
	.type sub_403f31, @function
sub_403f31:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_291
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_291
.label_292:
	ret	
.label_291:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_292
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f66
	.globl sub_403f66
	.type sub_403f66, @function
sub_403f66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f70

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x403f79
	.globl sub_403f79
	.type sub_403f79, @function
sub_403f79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f80

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
	mov	rax,  qword ptr [word ptr [rip + label_39]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_40]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_41]]
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
	#Procedure 0x403fe8
	.globl sub_403fe8
	.type sub_403fe8, @function
sub_403fe8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_293
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_293:
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
	#Procedure 0x404073
	.globl sub_404073
	.type sub_404073, @function
sub_404073:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404088
	.globl sub_404088
	.type sub_404088, @function
sub_404088:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_294
	test	rsi, rsi
	mov	ecx, 1
	je	.label_295
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_295
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_294:
	mov	ecx, 1
.label_295:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4040db
	.globl sub_4040db
	.type sub_4040db, @function
sub_4040db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4040ea
	.globl sub_4040ea
	.type sub_4040ea, @function
sub_4040ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040f0
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
	#Procedure 0x404139
	.globl sub_404139
	.type sub_404139, @function
sub_404139:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404140

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
	#Procedure 0x404176
	.globl sub_404176
	.type sub_404176, @function
sub_404176:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404180

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_296
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_298
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_297
.label_299:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4041b2
	.globl sub_4041b2
	.type sub_4041b2, @function
sub_4041b2:

	nop	dword ptr [rax]
.label_298:
	call	xalloc_die
.label_296:
	test	rcx, rcx
	jne	.label_300
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_300:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_299
.label_297:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x404200
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_301
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_302]]
.label_303:
	ret	
.label_301:
	xor	eax, eax
	jmp	.label_303
	.section	.text
	.align	16
	#Procedure 0x404216
	.globl sub_404216
	.type sub_404216, @function
sub_404216:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404220

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
.label_304:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404235
	.globl sub_404235
	.type sub_404235, @function
sub_404235:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40423f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_304
	call	rpl_calloc
	test	rax, rax
	je	.label_304
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404260

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_305
	nop	
.label_314:
	mov	edi, OFFSET FLAT:label_128
	call	strcmp
	test	eax, eax
	je	.label_312
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_314
.label_312:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_128
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_129
	mov	ecx, OFFSET FLAT:label_259
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_306
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_306
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_128
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_259
	mov	ecx, OFFSET FLAT:label_128
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_310
	mov	ecx, OFFSET FLAT:label_96
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
	#Procedure 0x40437a
	.globl sub_40437a
	.type sub_40437a, @function
sub_40437a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40438a
	.globl sub_40438a
	.type sub_40438a, @function
sub_40438a:

	nop	word ptr [rax + rax]
.label_315:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_317:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_318
	inc	r9
	cmp	r9, 0xa
	jb	.label_316
.label_318:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043bf
	.globl sub_4043bf
	.type sub_4043bf, @function
sub_4043bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4043c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_316:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_315
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_317
	.section	.text
	.align	16
	#Procedure 0x4043e9
	.globl sub_4043e9
	.type sub_4043e9, @function
sub_4043e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_319
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_319:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404413
	.globl sub_404413
	.type sub_404413, @function
sub_404413:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404420

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_320
	test	rax, rax
	je	.label_321
.label_320:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40443a
	.globl sub_40443a
	.type sub_40443a, @function
sub_40443a:

	nop	word ptr [rax + rax]
.label_322:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_324
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_322
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_68
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_327:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4044c4

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_325
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_326
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_326
.label_325:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_327
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_333:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
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
	#Procedure 0x404538
	.globl sub_404538
	.type sub_404538, @function
sub_404538:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40453a

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_333
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x404650

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_338
	cmp	byte ptr [rax], 0x43
	jne	.label_340
	cmp	byte ptr [rax + 1], 0
	je	.label_337
.label_340:
	mov	esi, OFFSET FLAT:label_339
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_338
.label_337:
	xor	ebx, ebx
.label_338:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404681
	.globl sub_404681
	.type sub_404681, @function
sub_404681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690

	.globl list_signals
	.type list_signals, @function
list_signals:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	test	dil, dil
	je	.label_344
	mov	ebp, 1
	xor	r15d, r15d
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_350:
	mov	edi, ebp
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	jne	.label_357
	mov	rdi, r14
	call	strlen
	mov	ecx, r15d
	cmp	rcx, rax
	cmovae	eax, r15d
	mov	r15d, eax
.label_357:
	inc	ebp
	cmp	ebp, 0x41
	jne	.label_350
	test	rbx, rbx
	je	.label_352
	mov	rdi, qword ptr [rbx]
	xor	eax, eax
	test	rdi, rdi
	je	.label_345
	add	rbx, 8
	xor	ebp, ebp
	lea	r14, [rsp]
	nop	dword ptr [rax + rax]
.label_354:
	mov	rsi, r14
	call	operand2sig
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	js	.label_356
	mov	edi, 2
	mov	esi, ecx
	mov	edx, r15d
	mov	rcx, r14
	call	print_table_row
	mov	eax, ebp
.label_356:
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	mov	ebp, eax
	jne	.label_354
	jmp	.label_345
.label_344:
	test	rbx, rbx
	je	.label_342
	mov	rdi, qword ptr [rbx]
	xor	eax, eax
	test	rdi, rdi
	je	.label_345
	add	rbx, 8
	lea	r14, [rsp]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_353:
	mov	rsi, r14
	call	operand2sig
	mov	ecx, eax
	test	ecx, ecx
	mov	eax, 1
	js	.label_355
	mov	rax, qword ptr [rbx - 8]
	movsx	eax, byte ptr [rax]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_341
	mov	rdi, r14
	call	puts
	jmp	.label_346
	.section	.text
	.align	16
	#Procedure 0x40479c
	.globl sub_40479c
	.type sub_40479c, @function
sub_40479c:

	nop	dword ptr [rax]
.label_341:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_349
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
.label_346:
	mov	eax, ebp
.label_355:
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	mov	ebp, eax
	jne	.label_353
	jmp	.label_345
.label_352:
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	
.label_343:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_348
	mov	edi, 2
	mov	esi, ebx
	mov	edx, r15d
	mov	rcx, rbp
	call	print_table_row
.label_348:
	inc	ebx
	xor	eax, eax
	cmp	ebx, 0x41
	jne	.label_343
	jmp	.label_345
.label_342:
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	word ptr cs:[rax + rax]
.label_351:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_347
	mov	rdi, rbp
	call	puts
.label_347:
	inc	ebx
	xor	eax, eax
	cmp	ebx, 0x41
	jne	.label_351
.label_345:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40483a
	.globl sub_40483a
	.type sub_40483a, @function
sub_40483a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404840

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_359
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_360
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_359
.label_360:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_359
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_358
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_358:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_359:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4048b7
	.globl sub_4048b7
	.type sub_4048b7, @function
sub_4048b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0

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
	#Procedure 0x4048f7
	.globl sub_4048f7
	.type sub_4048f7, @function
sub_4048f7:

	nop	word ptr [rax + rax]
.label_361:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404905
	.globl sub_404905
	.type sub_404905, @function
sub_404905:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404913

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
	je	.label_361
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
	#Procedure 0x4049c5
	.globl sub_4049c5
	.type sub_4049c5, @function
sub_4049c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d2
	.globl sub_4049d2
	.type sub_4049d2, @function
sub_4049d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f6
	.globl sub_4049f6
	.type sub_4049f6, @function
sub_4049f6:

	nop	word ptr cs:[rax + rax]
