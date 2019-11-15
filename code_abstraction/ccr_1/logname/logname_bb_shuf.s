	.section	.text
	.align	32
	#Procedure 0x401349
	.globl sub_401349
	.type sub_401349, @function
sub_401349:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40134a
	.globl sub_40134a
	.type sub_40134a, @function
sub_40134a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401382
	.globl sub_401382
	.type sub_401382, @function
sub_401382:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ca
	.globl sub_4013ca
	.type sub_4013ca, @function
sub_4013ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ec
	.globl sub_4013ec
	.type sub_4013ec, @function
sub_4013ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4013fd
	.globl sub_4013fd
	.type sub_4013fd, @function
sub_4013fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401416
	.globl sub_401416
	.type sub_401416, @function
sub_401416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401420

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_9
	nop	
.label_22:
	mov	edi, OFFSET FLAT:label_13
	call	strcmp
	test	eax, eax
	je	.label_20
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_22
.label_20:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_13
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_10
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_13
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
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
	#Procedure 0x40153a
	.globl sub_40153a
	.type sub_40153a, @function
sub_40153a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401540
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40154a
	.globl sub_40154a
	.type sub_40154a, @function
sub_40154a:

	nop	word ptr [rax + rax]
.label_26:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_23
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401570
	.globl sub_401570
	.type sub_401570, @function
sub_401570:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40157f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_26
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_25
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_25
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_24
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_24:
	mov	rbx, r14
.label_25:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401600
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_29
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_29:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401623
	.globl sub_401623
	.type sub_401623, @function
sub_401623:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401630

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_30
	test	rax, rax
	je	.label_31
.label_30:
	pop	rbx
	ret	
.label_31:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40164a
	.globl sub_40164a
	.type sub_40164a, @function
sub_40164a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401650

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
	je	.label_34
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_32
	jmp	.label_33
.label_34:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_33
.label_32:
	mov	eax, 1
	test	bpl, bpl
	je	.label_33
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
.label_33:
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
	#Procedure 0x4016d8
	.globl sub_4016d8
	.type sub_4016d8, @function
sub_4016d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016e0

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
	je	.label_35
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_37
	jmp	.label_36
.label_35:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_36
.label_37:
	mov	eax, 1
	test	bpl, bpl
	je	.label_36
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
.label_36:
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
	#Procedure 0x401759
	.globl sub_401759
	.type sub_401759, @function
sub_401759:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401760

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
	je	.label_40
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_39
	jmp	.label_38
.label_40:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_38
.label_39:
	mov	eax, 1
	test	bpl, bpl
	je	.label_38
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
.label_38:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4017c3
	.globl sub_4017c3
	.type sub_4017c3, @function
sub_4017c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017d0

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
	je	.label_43
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_41
	jmp	.label_42
.label_43:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_42
.label_41:
	mov	eax, 1
	test	bpl, bpl
	je	.label_42
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_42:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
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
	je	.label_44
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_46
	jmp	.label_45
.label_44:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_45
.label_46:
	mov	eax, 1
	test	bpl, bpl
	je	.label_45
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_45:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401879
	.globl sub_401879
	.type sub_401879, @function
sub_401879:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401880

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
	je	.label_49
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_48
	jmp	.label_47
.label_49:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_47
.label_48:
	mov	eax, 1
	test	bpl, bpl
	je	.label_47
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_47:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018c5
	.globl sub_4018c5
	.type sub_4018c5, @function
sub_4018c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_52
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_51
	jmp	.label_50
.label_52:
	mov	eax, 1
	test	cl, cl
	je	.label_50
.label_51:
	xor	eax, eax
.label_50:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018ff
	.globl sub_4018ff
	.type sub_4018ff, @function
sub_4018ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401900

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40190a
	.globl sub_40190a
	.type sub_40190a, @function
sub_40190a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401910
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401918
	.globl sub_401918
	.type sub_401918, @function
sub_401918:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401920
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x40192a
	.globl sub_40192a
	.type sub_40192a, @function
sub_40192a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401930
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_53
.label_54:
	ret	
.label_53:
	cmp	edi, 0x7f
	je	.label_54
	xor	eax, eax
	jmp	.label_54
	.section	.text
	.align	32
	#Procedure 0x401941
	.globl sub_401941
	.type sub_401941, @function
sub_401941:

	nop	word ptr cs:[rax + rax]
.label_55:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401955
	.globl sub_401955
	.type sub_401955, @function
sub_401955:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40195f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_55
	call	rpl_calloc
	test	rax, rax
	je	.label_55
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401980
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4019f4
	.globl sub_4019f4
	.type sub_4019f4, @function
sub_4019f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a00

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
	#Procedure 0x401a2d
	.globl sub_401a2d
	.type sub_401a2d, @function
sub_401a2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a30
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
	#Procedure 0x401a43
	.globl sub_401a43
	.type sub_401a43, @function
sub_401a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a50

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_64
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_64:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_17
	mov	edx, OFFSET FLAT:label_60
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_63
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_65
	cmp	eax, 0x76
	je	.label_62
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_61
.label_65:
	xor	edi, edi
.label_61:
	call	rcx
.label_63:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_62:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401b4c
	.globl sub_401b4c
	.type sub_401b4c, @function
sub_401b4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b50

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_66
	ret	
.label_66:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x401b63
	.globl sub_401b63
	.type sub_401b63, @function
sub_401b63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b70
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
	#Procedure 0x401b7f
	.globl sub_401b7f
	.type sub_401b7f, @function
sub_401b7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401b80
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_67
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_67:
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
	#Procedure 0x401c03
	.globl sub_401c03
	.type sub_401c03, @function
sub_401c03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x401c15
	.globl sub_401c15
	.type sub_401c15, @function
sub_401c15:

	nop	word ptr cs:[rax + rax]
.label_69:
	mov	ecx, 1
.label_68:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401c30
	.globl sub_401c30
	.type sub_401c30, @function
sub_401c30:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c35

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_69
	test	rsi, rsi
	mov	ecx, 1
	je	.label_68
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_68
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_70:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c73
	.globl sub_401c73
	.type sub_401c73, @function
sub_401c73:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c7b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_70
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c90

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
	je	.label_71
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
.label_71:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ce2
	.globl sub_401ce2
	.type sub_401ce2, @function
sub_401ce2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cf0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x401cf9
	.globl sub_401cf9
	.type sub_401cf9, @function
sub_401cf9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d00

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
	mov	rax,  qword ptr [word ptr [rip + label_72]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_73]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_74]]
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
	#Procedure 0x401d68
	.globl sub_401d68
	.type sub_401d68, @function
sub_401d68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d70
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
	#Procedure 0x401d7d
	.globl sub_401d7d
	.type sub_401d7d, @function
sub_401d7d:

	nop	dword ptr [rax]
.label_76:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_75
	test	cl, cl
	jne	.label_75
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_75:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dab
	.globl sub_401dab
	.type sub_401dab, @function
sub_401dab:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401db5

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
	jne	.label_75
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x401df0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_78:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_77
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_79
	.section	.text
	.align	32
	#Procedure 0x401e19
	.globl sub_401e19
	.type sub_401e19, @function
sub_401e19:

	nop	dword ptr [rax]
.label_77:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_79:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_80
	inc	r9
	cmp	r9, 0xa
	jb	.label_78
.label_80:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e4f
	.globl sub_401e4f
	.type sub_401e4f, @function
sub_401e4f:

	nop	
	.section	.text
	.align	32
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
	.align	32
	#Procedure 0x401e69
	.globl sub_401e69
	.type sub_401e69, @function
sub_401e69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e70
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
	#Procedure 0x401e7f
	.globl sub_401e7f
	.type sub_401e7f, @function
sub_401e7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401e80

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
	jne	.label_90
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
	je	.label_87
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_88
	mov	eax, OFFSET FLAT:label_89
	jmp	.label_85
.label_87:
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
	je	.label_86
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_83
	mov	eax, OFFSET FLAT:label_84
	jmp	.label_85
.label_86:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_81
	mov	eax, OFFSET FLAT:label_82
.label_85:
	cmove	rax, rcx
.label_90:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f3d
	.globl sub_401f3d
	.type sub_401f3d, @function
sub_401f3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f40
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f4a
	.globl sub_401f4a
	.type sub_401f4a, @function
sub_401f4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
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
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x401f6d
	.globl sub_401f6d
	.type sub_401f6d, @function
sub_401f6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f70
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
	#Procedure 0x401f80

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_17
	call	setlocale
	mov	edi, OFFSET FLAT:label_93
	mov	esi, OFFSET FLAT:label_95
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_93
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_11
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_91
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jl	.label_94
	call	getlogin
	test	rax, rax
	je	.label_92
	mov	rdi, rax
	call	puts
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_94:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402090

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
	mov	rcx,  qword ptr [word ptr [rip + label_72]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_73]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_74]]
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
	#Procedure 0x4020fd
	.globl sub_4020fd
	.type sub_4020fd, @function
sub_4020fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402100

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40210d
	.globl sub_40210d
	.type sub_40210d, @function
sub_40210d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402110

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x402117
	.globl sub_402117
	.type sub_402117, @function
sub_402117:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402120
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40212a
	.globl sub_40212a
	.type sub_40212a, @function
sub_40212a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402130
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
	#Procedure 0x40213d
	.globl sub_40213d
	.type sub_40213d, @function
sub_40213d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402140
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_98
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_98:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40215e
	.globl sub_40215e
	.type sub_40215e, @function
sub_40215e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402160

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_100
	cmp	byte ptr [rax], 0x43
	jne	.label_102
	cmp	byte ptr [rax + 1], 0
	je	.label_99
.label_102:
	mov	esi, OFFSET FLAT:label_101
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_100
.label_99:
	xor	ebx, ebx
.label_100:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402191
	.globl sub_402191
	.type sub_402191, @function
sub_402191:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021a0
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
	#Procedure 0x4021c7
	.globl sub_4021c7
	.type sub_4021c7, @function
sub_4021c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0

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
	je	.label_112
	mov	edx, OFFSET FLAT:label_118
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_105
.label_112:
	mov	edx, OFFSET FLAT:label_107
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
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
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_113
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_114]]
.label_351:
	add	rsp, 8
	jmp	.label_106
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
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
	jmp	.label_106
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
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
.label_353:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
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
.label_354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
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
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
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
	jmp	.label_106
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
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
	jmp	.label_106
.label_357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
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
	jmp	.label_106
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
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
	jmp	.label_106
.label_360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
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
	jmp	.label_106
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
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
.label_106:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402528
	.globl sub_402528
	.type sub_402528, @function
sub_402528:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402530
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_122
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_122
.label_123:
	ret	
.label_122:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_123
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402556
	.globl sub_402556
	.type sub_402556, @function
sub_402556:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402560
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_124
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_126:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_126
.label_124:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_127
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_128]], OFFSET FLAT:slot0
.label_127:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_125
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_125:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025f1
	.globl sub_4025f1
	.type sub_4025f1, @function
sub_4025f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402600

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_129
	test	rdx, rdx
	je	.label_129
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_129:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40262b
	.globl sub_40262b
	.type sub_40262b, @function
sub_40262b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402630

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
	#Procedure 0x402669
	.globl sub_402669
	.type sub_402669, @function
sub_402669:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402670
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
	#Procedure 0x402681
	.globl sub_402681
	.type sub_402681, @function
sub_402681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402690
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
	#Procedure 0x4026a4
	.globl sub_4026a4
	.type sub_4026a4, @function
sub_4026a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026b0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026ba
	.globl sub_4026ba
	.type sub_4026ba, @function
sub_4026ba:

	nop	word ptr [rax + rax]
.label_135:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	edi, ebx
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4026f8
	.globl sub_4026f8
	.type sub_4026f8, @function
sub_4026f8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4026fc

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_135
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
.label_138:
	xor	eax, eax
	jmp	.label_136
	.section	.text
	.align	32
	#Procedure 0x4027a4
	.globl sub_4027a4
	.type sub_4027a4, @function
sub_4027a4:

	nop	word ptr cs:[rax + rax]
.label_136:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027af
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_138
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_137]]
	.section	.text
	.align	32
	#Procedure 0x4027c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027ca
	.globl sub_4027ca
	.type sub_4027ca, @function
sub_4027ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_139
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_139
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_139:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4027f6
	.globl sub_4027f6
	.type sub_4027f6, @function
sub_4027f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402800

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40280a
	.globl sub_40280a
	.type sub_40280a, @function
sub_40280a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402810
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
	#Procedure 0x402820

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x402829
	.globl sub_402829
	.type sub_402829, @function
sub_402829:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402830

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40283a
	.globl sub_40283a
	.type sub_40283a, @function
sub_40283a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402840
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40284a
	.globl sub_40284a
	.type sub_40284a, @function
sub_40284a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402850

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
	je	.label_140
	mov	qword ptr [rax], rbx
.label_140:
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
	#Procedure 0x40293c
	.globl sub_40293c
	.type sub_40293c, @function
sub_40293c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402940

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_143:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402975

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_144
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_143
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_147
.label_145:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4029a7
	.globl sub_4029a7
	.type sub_4029a7, @function
sub_4029a7:

	nop	dword ptr [rax]
.label_144:
	test	rcx, rcx
	jne	.label_146
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_146:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_145
.label_147:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x4029f0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4029fe
	.globl sub_4029fe
	.type sub_4029fe, @function
sub_4029fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a00

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
	js	.label_148
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_151
	cmp	r12d, 0x7fffffff
	je	.label_153
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
	jne	.label_149
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_149:
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
.label_151:
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
	jbe	.label_154
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_150
.label_154:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_152
	mov	rdi, r14
	call	free
.label_152:
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
.label_150:
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
.label_148:
	call	abort
.label_153:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402bbd
	.globl sub_402bbd
	.type sub_402bbd, @function
sub_402bbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402bc0

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
	#Procedure 0x402bf7
	.globl sub_402bf7
	.type sub_402bf7, @function
sub_402bf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c00
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c0a
	.globl sub_402c0a
	.type sub_402c0a, @function
sub_402c0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c10
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_155:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_155
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402c31
	.globl sub_402c31
	.type sub_402c31, @function
sub_402c31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c40

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
	#Procedure 0x402c57
	.globl sub_402c57
	.type sub_402c57, @function
sub_402c57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c60
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
	#Procedure 0x402c73
	.globl sub_402c73
	.type sub_402c73, @function
sub_402c73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c80
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
	#Procedure 0x402cb3
	.globl sub_402cb3
	.type sub_402cb3, @function
sub_402cb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cc0
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_156
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_156:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_157
	mov	edx, OFFSET FLAT:label_60
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_158
	cmp	eax, 0x76
	jne	.label_157
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_158:
	xor	edi, edi
	call	rbx
.label_157:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402db1
	.globl sub_402db1
	.type sub_402db1, @function
sub_402db1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dc0

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
	je	.label_159
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_161
	jmp	.label_160
.label_159:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_160
.label_161:
	mov	eax, 1
	test	bpl, bpl
	je	.label_160
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
.label_160:
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
	#Procedure 0x402e3d
	.globl sub_402e3d
	.type sub_402e3d, @function
sub_402e3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e40
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
	#Procedure 0x402e56
	.globl sub_402e56
	.type sub_402e56, @function
sub_402e56:

	nop	word ptr cs:[rax + rax]
.label_162:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_164
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_166:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_162
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_167:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402ee4

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_165
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_166
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_166
.label_165:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_167
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f20

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_17
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_168
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f45
	.globl sub_402f45
	.type sub_402f45, @function
sub_402f45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f50
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
	#Procedure 0x402f5f
	.globl sub_402f5f
	.type sub_402f5f, @function
sub_402f5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f60
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_169
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_169:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402f86
	.globl sub_402f86
	.type sub_402f86, @function
sub_402f86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_170
	test	rbx, rbx
	jne	.label_170
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_170:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_172
	test	rax, rax
	je	.label_171
.label_172:
	pop	rbx
	ret	
.label_171:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402fc0

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
	je	.label_173
	cmp	r15, -2
	jb	.label_173
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_173
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_173:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403016
	.globl sub_403016
	.type sub_403016, @function
sub_403016:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403028
	.globl sub_403028
	.type sub_403028, @function
sub_403028:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403030

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
	jne	.label_174
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_174
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_175
.label_174:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_175:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_176
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_176:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40309e
	.globl sub_40309e
	.type sub_40309e, @function
sub_40309e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4030a0
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
	#Procedure 0x403112
	.globl sub_403112
	.type sub_403112, @function
sub_403112:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403120

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
	#Procedure 0x403156
	.globl sub_403156
	.type sub_403156, @function
sub_403156:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403160
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_177
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_177:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40317e
	.globl sub_40317e
	.type sub_40317e, @function
sub_40317e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403180
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
	#Procedure 0x4031c9
	.globl sub_4031c9
	.type sub_4031c9, @function
sub_4031c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031d0

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
.label_208:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_282
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_216]]
.label_306:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_221
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_82
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_307:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_235
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_235
	xor	r14d, r14d
.label_246:
	cmp	r14, r11
	jae	.label_244
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_244:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_246
.label_235:
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
	jmp	.label_250
.label_299:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_250
.label_302:
	mov	al, 1
.label_300:
	mov	r12b, 1
.label_303:
	test	r12b, 1
	mov	cl, 1
	je	.label_262
	mov	ecx, eax
.label_262:
	mov	al, cl
.label_301:
	test	r12b, 1
	jne	.label_264
	test	r11, r11
	je	.label_240
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_240:
	mov	r14d, 1
	jmp	.label_272
.label_264:
	xor	r14d, r14d
.label_272:
	mov	ecx, OFFSET FLAT:label_82
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_250
.label_304:
	test	r12b, 1
	jne	.label_280
	test	r11, r11
	je	.label_206
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_206:
	mov	r14d, 1
	jmp	.label_284
.label_305:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_81
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_250
.label_280:
	xor	r14d, r14d
.label_284:
	mov	eax, OFFSET FLAT:label_81
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_250:
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
	jmp	.label_189
	.section	.text
	.align	32
	#Procedure 0x4034ac
	.globl sub_4034ac
	.type sub_4034ac, @function
sub_4034ac:

	nop	dword ptr [rax]
.label_209:
	inc	rsi
.label_189:
	cmp	rbp, -1
	je	.label_228
	cmp	rsi, rbp
	jne	.label_205
	jmp	.label_232
	.section	.text
	.align	32
	#Procedure 0x4034c3
	.globl sub_4034c3
	.type sub_4034c3, @function
sub_4034c3:

	nop	word ptr cs:[rax + rax]
.label_228:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_232
.label_205:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_237
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_239
	cmp	rbp, -1
	jne	.label_239
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
.label_239:
	cmp	rbx, rbp
	jbe	.label_249
.label_237:
	xor	r8d, r8d
.label_186:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_251
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_255]]
.label_320:
	test	rsi, rsi
	jne	.label_198
	jmp	.label_259
	.section	.text
	.align	32
	#Procedure 0x40355e
	.globl sub_40355e
	.type sub_40355e, @function
sub_40355e:

	nop	
.label_249:
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
	jne	.label_270
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_186
	jmp	.label_188
.label_270:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_186
.label_324:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_287
	test	rsi, rsi
	jne	.label_288
	cmp	rbp, 1
	je	.label_259
	xor	r13d, r13d
	jmp	.label_179
.label_313:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_180
	cmp	byte ptr [rsp + 7], 0
	jne	.label_184
	cmp	r12d, 2
	jne	.label_220
	mov	eax, r9d
	and	al, 1
	jne	.label_220
	cmp	r14, r11
	jae	.label_201
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_201:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_194
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_200
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	add	r14, 3
	mov	r9b, 1
.label_220:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_207
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_207:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_211
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_211
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_211
	cmp	r14, r11
	jae	.label_222
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_222:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_286
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_286:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_179
.label_314:
	mov	bl, 0x62
	jmp	.label_233
.label_315:
	mov	cl, 0x74
	jmp	.label_223
.label_316:
	mov	bl, 0x76
	jmp	.label_233
.label_317:
	mov	bl, 0x66
	jmp	.label_233
.label_318:
	mov	cl, 0x72
	jmp	.label_223
.label_321:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_242
	cmp	byte ptr [rsp + 7], 0
	jne	.label_184
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
	jae	.label_248
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_257
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_257:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_260
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_260:
	add	r14, 3
	xor	r9d, r9d
.label_242:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_179
.label_322:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_268
	cmp	r12d, 2
	jne	.label_198
	cmp	byte ptr [rsp + 7], 0
	je	.label_198
	jmp	.label_184
.label_323:
	cmp	r12d, 2
	jne	.label_277
	cmp	byte ptr [rsp + 7], 0
	jne	.label_184
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_224
.label_251:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_226
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
.label_204:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_202
	test	r8b, r8b
	je	.label_202
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_179
.label_287:
	test	rsi, rsi
	jne	.label_199
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_199
.label_259:
	mov	dl, 1
.label_319:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_184
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_179:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_217
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_218
	jmp	.label_210
	.section	.text
	.align	32
	#Procedure 0x4038a4
	.globl sub_4038a4
	.type sub_4038a4, @function
sub_4038a4:

	nop	word ptr cs:[rax + rax]
.label_217:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_210
.label_218:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_229
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_224
	jmp	.label_241
	.section	.text
	.align	32
	#Procedure 0x4038ed
	.globl sub_4038ed
	.type sub_4038ed, @function
sub_4038ed:

	nop	dword ptr [rax]
.label_210:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_241
	jmp	.label_224
.label_229:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_241
.label_180:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_209
	xor	r15d, r15d
	jmp	.label_198
.label_277:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_223
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_224
.label_223:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_184
.label_233:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_179
	nop	word ptr cs:[rax + rax]
.label_241:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_184
	cmp	r12d, 2
	jne	.label_225
	mov	eax, r9d
	and	al, 1
	jne	.label_225
	cmp	r14, r11
	jae	.label_265
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_265:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_276
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_274
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_274:
	add	r14, 3
	mov	r9b, 1
.label_225:
	cmp	r14, r11
	jae	.label_279
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_279:
	inc	r14
	jmp	.label_281
.label_226:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_285
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_285:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_243:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_193
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_196
	cmp	rbp, -2
	je	.label_238
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_181
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_258:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_278
	bt	rsi, rdx
	jb	.label_188
.label_278:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_258
.label_181:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_231
	xor	r13d, r13d
.label_231:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_243
	jmp	.label_204
.label_211:
	xor	r13d, r13d
	jmp	.label_179
.label_199:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_179
.label_268:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_198
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_198
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_198
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_269
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_256
	cmp	byte ptr [rsp + 7], 0
	jne	.label_184
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_234:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_266
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_266:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_271
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_271:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_273
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_273:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_179
.label_198:
	xor	eax, eax
.label_288:
	xor	r13d, r13d
	jmp	.label_179
.label_202:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_283
	.section	.text
	.align	32
	#Procedure 0x403bd3
	.globl sub_403bd3
	.type sub_403bd3, @function
sub_403bd3:

	nop	word ptr cs:[rax + rax]
.label_245:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_283:
	test	r8b, r8b
	je	.label_289
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_182
	cmp	r14, r11
	jae	.label_290
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_290:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_182
	.section	.text
	.align	32
	#Procedure 0x403c1c
	.globl sub_403c1c
	.type sub_403c1c, @function
sub_403c1c:

	nop	dword ptr [rax]
.label_289:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_188
	cmp	r12d, 2
	jne	.label_192
	mov	eax, r9d
	and	al, 1
	jne	.label_192
	cmp	r14, r11
	jae	.label_195
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_195:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_197
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_197:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_185
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_185:
	add	r14, 3
	mov	r9b, 1
.label_192:
	cmp	r14, r11
	jae	.label_227
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_227:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_214
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_214:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_219
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_219:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_182:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_224
	test	r9b, 1
	je	.label_236
	mov	ebx, eax
	and	bl, 1
	jne	.label_236
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_253
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_253:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_183
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_183:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_236:
	cmp	r14, r11
	jae	.label_245
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_245
	.section	.text
	.align	32
	#Procedure 0x403d23
	.globl sub_403d23
	.type sub_403d23, @function
sub_403d23:

	nop	word ptr cs:[rax + rax]
.label_224:
	test	r9b, 1
	je	.label_252
	and	al, 1
	jne	.label_252
	cmp	r14, r11
	jae	.label_254
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_254:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_213
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_213:
	add	r14, 2
	xor	r9d, r9d
.label_252:
	mov	ebx, r15d
.label_281:
	cmp	r14, r11
	jae	.label_261
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_261:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_209
.label_196:
	xor	r13d, r13d
.label_193:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_204
.label_238:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_275
	mov	rsi, qword ptr [rsp + 0x50]
.label_247:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_187
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_247
	xor	r13d, r13d
	jmp	.label_204
.label_275:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_204
.label_187:
	xor	r13d, r13d
	jmp	.label_204
.label_269:
	xor	r13d, r13d
	jmp	.label_179
.label_256:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x403df8
	.globl sub_403df8
	.type sub_403df8, @function
sub_403df8:

	nop	dword ptr [rax + rax]
.label_232:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_178
	or	dl, al
	je	.label_188
.label_178:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_191
	or	dl, al
	jne	.label_191
	test	r10b, 1
	jne	.label_203
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_191
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_208
.label_191:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_212
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_215
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_215
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_230:
	cmp	r14, r11
	jae	.label_190
	mov	byte ptr [rcx + r14], al
.label_190:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_230
	jmp	.label_215
.label_184:
	mov	qword ptr [rsp + 0x20], rbp
.label_188:
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
.label_263:
	mov	r14, rax
.label_267:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_203:
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
	jmp	.label_263
.label_212:
	mov	rcx, qword ptr [rsp + 8]
.label_215:
	cmp	r14, r11
	jae	.label_267
	mov	byte ptr [rcx + r14], 0
	jmp	.label_267
.label_282:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403f8c
	.globl sub_403f8c
	.type sub_403f8c, @function
sub_403f8c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f90

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_291
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_293
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_291
.label_293:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_291
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_292
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_292:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_291:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x404007
	.globl sub_404007
	.type sub_404007, @function
sub_404007:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404075
	.globl sub_404075
	.type sub_404075, @function
sub_404075:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404082
	.globl sub_404082
	.type sub_404082, @function
sub_404082:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040a6
	.globl sub_4040a6
	.type sub_4040a6, @function
sub_4040a6:

	nop	word ptr cs:[rax + rax]
