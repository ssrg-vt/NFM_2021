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
.label_11:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_9
	test	rax, rax
	je	.label_10
.label_9:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401624
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_10
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_11
	test	rbx, rbx
	jne	.label_11
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_10:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401658
	.globl sub_401658
	.type sub_401658, @function
sub_401658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401660
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4016d4
	.globl sub_4016d4
	.type sub_4016d4, @function
sub_4016d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_18]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_20]
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
	#Procedure 0x401734
	.globl sub_401734
	.type sub_401734, @function
sub_401734:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401740

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_21
	test	rax, rax
	je	.label_22
.label_21:
	pop	rbx
	ret	
.label_22:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40175a
	.globl sub_40175a
	.type sub_40175a, @function
sub_40175a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401760

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_33
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_35
.label_33:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_35:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_32
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_34
.label_32:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_34:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_30
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_31
.label_30:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_31:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_28
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_29
.label_28:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_29:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_26
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_27
.label_26:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_27:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_24
	cmp	r10d, 0x29
	jae	.label_23
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_25
.label_23:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_25:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_24
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_24
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_24
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_24
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_24:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401942
	.globl sub_401942
	.type sub_401942, @function
sub_401942:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401950
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_18]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_36
	test	rsi, rsi
	je	.label_36
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_36:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4019c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019c8
	.globl sub_4019c8
	.type sub_4019c8, @function
sub_4019c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019d0

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
	je	.label_42
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_42:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_37
	mov	edx, OFFSET FLAT:label_38
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_41
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_43
	cmp	eax, 0x76
	je	.label_40
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_39
.label_43:
	xor	edi, edi
.label_39:
	call	rcx
.label_41:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_40:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401acc
	.globl sub_401acc
	.type sub_401acc, @function
sub_401acc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ad0

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
	je	.label_44
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
.label_44:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401b38
	.globl sub_401b38
	.type sub_401b38, @function
sub_401b38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b40

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
.label_165:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_160
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_159]
.label_426:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_51
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_56
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_427:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_67
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_67
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_83:
	cmp	r14, r11
	jae	.label_162
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_162:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_83
.label_67:
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
	jmp	.label_46
.label_419:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_46
.label_422:
	mov	al, 1
.label_420:
	mov	r12b, 1
.label_423:
	test	r12b, 1
	mov	cl, 1
	je	.label_100
	mov	ecx, eax
.label_100:
	mov	al, cl
.label_421:
	test	r12b, 1
	jne	.label_103
	test	r11, r11
	je	.label_151
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_151:
	mov	r14d, 1
	jmp	.label_106
.label_103:
	xor	r14d, r14d
.label_106:
	mov	ecx, OFFSET FLAT:label_56
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_46
.label_424:
	test	r12b, 1
	jne	.label_122
	test	r11, r11
	je	.label_124
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_124:
	mov	r14d, 1
	jmp	.label_125
.label_425:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_127
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_46
.label_122:
	xor	r14d, r14d
.label_125:
	mov	eax, OFFSET FLAT:label_127
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_46:
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
	jmp	.label_143
	.section	.text
	.align	16
	#Procedure 0x401e2d
	.globl sub_401e2d
	.type sub_401e2d, @function
sub_401e2d:

	nop	dword ptr [rax]
.label_84:
	inc	rsi
.label_143:
	cmp	rbp, -1
	je	.label_58
	cmp	rsi, rbp
	jne	.label_60
	jmp	.label_61
	.section	.text
	.align	16
	#Procedure 0x401e43
	.globl sub_401e43
	.type sub_401e43, @function
sub_401e43:

	nop	word ptr cs:[rax + rax]
.label_58:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_68
.label_60:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_69
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_76
	cmp	rbp, -1
	jne	.label_76
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
.label_76:
	cmp	rbx, rbp
	jbe	.label_90
.label_69:
	xor	r8d, r8d
.label_114:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_62
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_94]
.label_439:
	test	rsi, rsi
	jne	.label_85
	jmp	.label_98
	.section	.text
	.align	16
	#Procedure 0x401ee5
	.globl sub_401ee5
	.type sub_401ee5, @function
sub_401ee5:

	nop	word ptr cs:[rax + rax]
.label_90:
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
	jne	.label_111
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_114
	jmp	.label_55
.label_111:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_114
.label_443:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_134
	test	rsi, rsi
	jne	.label_136
	cmp	rbp, 1
	je	.label_98
	xor	r13d, r13d
	jmp	.label_64
.label_432:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_142
	cmp	byte ptr [rsp + 6], 0
	jne	.label_102
	cmp	r12d, 2
	jne	.label_147
	mov	eax, r9d
	and	al, 1
	jne	.label_147
	cmp	r14, r11
	jae	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_149:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_154
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_154:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_109
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_109:
	add	r14, 3
	mov	r9b, 1
.label_147:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_166:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_45
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_45
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_45
	cmp	r14, r11
	jae	.label_116
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_116:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_91
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_91:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_64
.label_433:
	mov	bl, 0x62
	jmp	.label_72
.label_434:
	mov	cl, 0x74
	jmp	.label_78
.label_435:
	mov	bl, 0x76
	jmp	.label_72
.label_436:
	mov	bl, 0x66
	jmp	.label_72
.label_437:
	mov	cl, 0x72
	jmp	.label_78
.label_440:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_82
	cmp	byte ptr [rsp + 6], 0
	jne	.label_47
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
	jae	.label_88
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_88:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_96
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_96:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_101
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_101:
	add	r14, 3
	xor	r9d, r9d
.label_82:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_64
.label_441:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_108
	cmp	r12d, 2
	jne	.label_85
	cmp	byte ptr [rsp + 6], 0
	je	.label_85
	jmp	.label_47
.label_442:
	cmp	r12d, 2
	jne	.label_123
	cmp	byte ptr [rsp + 6], 0
	jne	.label_47
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_74
.label_62:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_130
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
.label_80:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_145
	test	r8b, r8b
	je	.label_145
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_64
.label_134:
	test	rsi, rsi
	jne	.label_144
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_144
.label_98:
	mov	dl, 1
.label_438:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_47
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_64:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_54
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_146
	jmp	.label_57
	.section	.text
	.align	16
	#Procedure 0x402234
	.globl sub_402234
	.type sub_402234, @function
sub_402234:

	nop	word ptr cs:[rax + rax]
.label_54:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_57
.label_146:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_65
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_74
	jmp	.label_79
	.section	.text
	.align	16
	#Procedure 0x40227d
	.globl sub_40227d
	.type sub_40227d, @function
sub_40227d:

	nop	dword ptr [rax]
.label_57:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_79
	jmp	.label_74
.label_65:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_79
.label_142:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_84
	xor	r15d, r15d
	jmp	.label_85
.label_123:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_78
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_74
.label_78:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_47
.label_72:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_64
	nop	word ptr cs:[rax + rax]
.label_79:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_102
	cmp	r12d, 2
	jne	.label_105
	mov	eax, r9d
	and	al, 1
	jne	.label_105
	cmp	r14, r11
	jae	.label_50
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_50:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_112
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_112:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_164
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_164:
	add	r14, 3
	mov	r9b, 1
.label_105:
	cmp	r14, r11
	jae	.label_140
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_140:
	inc	r14
	jmp	.label_128
.label_130:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_131
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_131:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_70:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_152
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_156
	cmp	rbp, -2
	je	.label_121
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_59
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_135:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_99
	bt	rsi, rdx
	jb	.label_107
.label_99:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_135
.label_59:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_157
	xor	r13d, r13d
.label_157:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_70
	jmp	.label_80
.label_45:
	xor	r13d, r13d
	jmp	.label_64
.label_144:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_64
.label_108:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_85
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_85
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_85
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_93
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_97
	cmp	byte ptr [rsp + 6], 0
	jne	.label_132
	cmp	r14, r11
	jae	.label_115
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_115:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_120
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_120:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_110
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_110:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_133
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_133:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_64
.label_85:
	xor	eax, eax
.label_136:
	xor	r13d, r13d
	jmp	.label_64
.label_145:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_129
	.section	.text
	.align	16
	#Procedure 0x402562
	.globl sub_402562
	.type sub_402562, @function
sub_402562:

	nop	word ptr cs:[rax + rax]
.label_86:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_129:
	test	r8b, r8b
	je	.label_137
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_138
	cmp	r14, r11
	jae	.label_150
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_150:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x4025ac
	.globl sub_4025ac
	.type sub_4025ac, @function
sub_4025ac:

	nop	dword ptr [rax]
.label_137:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_55
	cmp	r12d, 2
	jne	.label_73
	mov	eax, r9d
	and	al, 1
	jne	.label_73
	cmp	r14, r11
	jae	.label_155
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_155:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_158
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_158:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_161
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_161:
	add	r14, 3
	mov	r9b, 1
.label_73:
	cmp	r14, r11
	jae	.label_49
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_49:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_52
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_52:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_63
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_63:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_138:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_74
	test	r9b, 1
	je	.label_75
	mov	ebx, eax
	and	bl, 1
	jne	.label_75
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_77
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_77:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_119
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_119:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_75:
	cmp	r14, r11
	jae	.label_86
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_86
	.section	.text
	.align	16
	#Procedure 0x4026b3
	.globl sub_4026b3
	.type sub_4026b3, @function
sub_4026b3:

	nop	word ptr cs:[rax + rax]
.label_74:
	test	r9b, 1
	je	.label_81
	and	al, 1
	jne	.label_81
	cmp	r14, r11
	jae	.label_95
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_95:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_89
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_89:
	add	r14, 2
	xor	r9d, r9d
.label_81:
	mov	ebx, r15d
.label_128:
	cmp	r14, r11
	jae	.label_153
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_153:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_84
.label_156:
	xor	r13d, r13d
.label_152:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_80
.label_121:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_118
	mov	rsi, qword ptr [rsp + 0x58]
.label_126:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_87
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_126
	xor	r13d, r13d
	jmp	.label_80
.label_118:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_80
.label_87:
	xor	r13d, r13d
	jmp	.label_80
.label_93:
	xor	r13d, r13d
	jmp	.label_64
.label_97:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_64
	.section	.text
	.align	16
	#Procedure 0x402788
	.globl sub_402788
	.type sub_402788, @function
sub_402788:

	nop	dword ptr [rax + rax]
.label_61:
	mov	rcx, rsi
.label_68:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_141
	or	al, dl
	je	.label_163
.label_141:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_148
	or	al, dl
	jne	.label_148
	test	r10b, 1
	jne	.label_117
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_148
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_165
.label_148:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_48
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_53
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_53
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_66:
	cmp	r14, r11
	jae	.label_139
	mov	byte ptr [rcx + r14], al
.label_139:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_66
	jmp	.label_53
.label_102:
	mov	qword ptr [rsp + 0x20], rbp
.label_55:
	mov	rdx, rdi
	jmp	.label_71
.label_47:
	mov	qword ptr [rsp + 0x20], rbp
.label_107:
	mov	rdx, rdi
	mov	eax, 2
.label_92:
	mov	qword ptr [rsp + 0x38], rax
.label_71:
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
.label_113:
	mov	r14, rax
.label_104:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_163:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_71
.label_117:
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
	jmp	.label_113
.label_48:
	mov	rcx, qword ptr [rsp + 8]
.label_53:
	cmp	r14, r11
	jae	.label_104
	mov	byte ptr [rcx + r14], 0
	jmp	.label_104
.label_132:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_92
.label_160:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402947
	.globl sub_402947
	.type sub_402947, @function
sub_402947:

	nop	word ptr [rax + rax]
.label_167:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402955
	.globl sub_402955
	.type sub_402955, @function
sub_402955:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402959

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
	je	.label_168
	test	r15, r15
	je	.label_167
.label_168:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402990
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
	je	.label_170
	test	r15, r15
	je	.label_169
.label_170:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_169:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4029d2
	.globl sub_4029d2
	.type sub_4029d2, @function
sub_4029d2:

	nop	word ptr cs:[rax + rax]
.label_174:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_171
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402a00
	.globl sub_402a00
	.type sub_402a00, @function
sub_402a00:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a0f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_174
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_173
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_173
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_172
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_172:
	mov	rbx, r14
.label_173:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a90
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
	#Procedure 0x402a9f
	.globl sub_402a9f
	.type sub_402a9f, @function
sub_402a9f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402aa0
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
	#Procedure 0x402b61
	.globl sub_402b61
	.type sub_402b61, @function
sub_402b61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b70
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
	#Procedure 0x402ba6
	.globl sub_402ba6
	.type sub_402ba6, @function
sub_402ba6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_177:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_177
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402bd1
	.globl sub_402bd1
	.type sub_402bd1, @function
sub_402bd1:

	nop	word ptr cs:[rax + rax]
.label_182:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_178
	mov	eax, OFFSET FLAT:label_179
	jmp	.label_180
	.section	.text
	.align	16
	#Procedure 0x402bef
	.globl sub_402bef
	.type sub_402bef, @function
sub_402bef:

	nop	word ptr cs:[rax + rax]
.label_185:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_181
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_181
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_181
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_181
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_181
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_181
	cmp	byte ptr [rax + 7], 0
	je	.label_182
.label_181:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_127
	mov	eax, OFFSET FLAT:label_56
.label_180:
	cmove	rax, rcx
.label_186:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c42

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
	jne	.label_186
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_185
	cmp	ecx, 0x55
	jne	.label_181
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_181
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_181
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_181
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_181
	cmp	byte ptr [rax + 5], 0
	jne	.label_181
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_183
	mov	eax, OFFSET FLAT:label_184
	jmp	.label_180
	.section	.text
	.align	16
	#Procedure 0x402cb0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_187
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_188
	test	rax, rax
	je	.label_187
.label_188:
	pop	rbx
	ret	
.label_187:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ce5
	.globl sub_402ce5
	.type sub_402ce5, @function
sub_402ce5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_189
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_189
	test	byte ptr [rbx + 1], 1
	je	.label_189
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_189:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402d23
	.globl sub_402d23
	.type sub_402d23, @function
sub_402d23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d30

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_202
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_190
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_195
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_195
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_190
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_190
	mov	ecx, OFFSET FLAT:label_191
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_202:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
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
	#Procedure 0x402f20
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_18]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_206
	test	rdx, rdx
	je	.label_206
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_206:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402f8a
	.globl sub_402f8a
	.type sub_402f8a, @function
sub_402f8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f90
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
	je	.label_207
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
.label_207:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402ff1
	.globl sub_402ff1
	.type sub_402ff1, @function
sub_402ff1:

	nop	word ptr cs:[rax + rax]
.label_208:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403005
	.globl sub_403005
	.type sub_403005, @function
sub_403005:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403009
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_18]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_208
	test	rsi, rsi
	je	.label_208
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
	.section	.text
	.align	16
	#Procedure 0x403070
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_209
	test	rax, rax
	je	.label_210
.label_209:
	pop	rbx
	ret	
.label_210:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40308a
	.globl sub_40308a
	.type sub_40308a, @function
sub_40308a:

	nop	word ptr [rax + rax]
.label_212:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403095
	.globl sub_403095
	.type sub_403095, @function
sub_403095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40309f
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
	je	.label_211
	test	r14, r14
	je	.label_212
.label_211:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030d0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_213:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_213
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_217
	.section	.text
	.align	16
	#Procedure 0x4030f3
	.globl sub_4030f3
	.type sub_4030f3, @function
sub_4030f3:

	nop	word ptr cs:[rax + rax]
.label_214:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_217:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_214
	test	dl, dl
	je	.label_216
	mov	ecx, esi
	and	cl, 1
	je	.label_215
	xor	esi, esi
.label_215:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_214
.label_216:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40312c
	.globl sub_40312c
	.type sub_40312c, @function
sub_40312c:

	nop	dword ptr [rax]
.label_219:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40313c
	.globl sub_40313c
	.type sub_40313c, @function
sub_40313c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403148

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_219
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_218
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_219
.label_218:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_219
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_220
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_220:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_18]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_20]
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
	#Procedure 0x403205
	.globl sub_403205
	.type sub_403205, @function
sub_403205:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403210

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_227
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_224
	cmp	dword ptr [rbp], 0x20
	jne	.label_224
.label_227:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_223
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_223:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_225
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_225:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_222
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0

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
	je	.label_238
	mov	edx, OFFSET FLAT:label_243
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_230
.label_238:
	mov	edx, OFFSET FLAT:label_232
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_230:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
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
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_239
	jmp	qword ptr [(r12 * 8) + label_240]
.label_461:
	add	rsp, 8
	jmp	.label_231
.label_239:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
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
	jmp	.label_231
.label_462:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
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
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
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
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
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
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
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
	jmp	.label_231
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
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
	jmp	.label_231
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
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
	jmp	.label_231
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
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
	jmp	.label_231
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
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
	jmp	.label_231
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
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
.label_231:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403628
	.globl sub_403628
	.type sub_403628, @function
sub_403628:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403630

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
	jne	.label_248
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_247
	test	cl, cl
	jne	.label_247
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_247
.label_248:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_247
	call	__errno_location
	mov	dword ptr [rax], 0
.label_247:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403690
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
	#Procedure 0x4036a9
	.globl sub_4036a9
	.type sub_4036a9, @function
sub_4036a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_249
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_252:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_252
.label_249:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_253
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_250], OFFSET FLAT:slot0
.label_253:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_251
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_251:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403741
	.globl sub_403741
	.type sub_403741, @function
sub_403741:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_254
	test	rsi, rsi
	mov	ecx, 1
	je	.label_255
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_255
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_254:
	mov	ecx, 1
.label_255:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40379b
	.globl sub_40379b
	.type sub_40379b, @function
sub_40379b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0
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
	je	.label_256
	mov	qword ptr [rax], rbx
.label_256:
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
	#Procedure 0x40388c
	.globl sub_40388c
	.type sub_40388c, @function
sub_40388c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403890
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
	#Procedure 0x4038a8
	.globl sub_4038a8
	.type sub_4038a8, @function
sub_4038a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0
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
	je	.label_257
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
.label_257:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403918
	.globl sub_403918
	.type sub_403918, @function
sub_403918:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403920

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_258:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_259
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_258
.label_259:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403946
	.globl sub_403946
	.type sub_403946, @function
sub_403946:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403950
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40395e
	.globl sub_40395e
	.type sub_40395e, @function
sub_40395e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403960

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
	js	.label_260
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_263
	cmp	r12d, 0x7fffffff
	je	.label_265
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
	jne	.label_261
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_261:
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
.label_263:
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
	jbe	.label_266
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_262
.label_266:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_264
	mov	rdi, r14
	call	free
.label_264:
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
.label_262:
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
.label_260:
	call	abort
.label_265:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403b1d
	.globl sub_403b1d
	.type sub_403b1d, @function
sub_403b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b20
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
	je	.label_267
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_267:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_269
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_268
	cmp	eax, 0x76
	jne	.label_269
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_268:
	xor	edi, edi
	call	rbx
.label_269:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c16
	.globl sub_403c16
	.type sub_403c16, @function
sub_403c16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c20
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
	#Procedure 0x403c95
	.globl sub_403c95
	.type sub_403c95, @function
sub_403c95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_18]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_20]
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
	#Procedure 0x403d0f
	.globl sub_403d0f
	.type sub_403d0f, @function
sub_403d0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403d10
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403d1a
	.globl sub_403d1a
	.type sub_403d1a, @function
sub_403d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d20
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_18]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_20]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_270
	test	rdx, rdx
	je	.label_270
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_270:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d8e
	.globl sub_403d8e
	.type sub_403d8e, @function
sub_403d8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403d90

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_275
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_274
	cmp	byte ptr [r15], 0x2f
	je	.label_274
	mov	r12b, 0x2f
	jmp	.label_271
.label_275:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_271
.label_274:
	xor	r12d, r12d
.label_271:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_273
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_272
	mov	qword ptr [rax], rbp
.label_272:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_273:
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
	#Procedure 0x403e68
	.globl sub_403e68
	.type sub_403e68, @function
sub_403e68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e70

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
	je	.label_277
	test	ebx, ebx
	js	.label_277
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
	jmp	.label_276
.label_277:
	mov	eax, ebx
.label_276:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ec6
	.globl sub_403ec6
	.type sub_403ec6, @function
sub_403ec6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f00
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_279
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_279:
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
	#Procedure 0x403f83
	.globl sub_403f83
	.type sub_403f83, @function
sub_403f83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f90
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_280
	test	rdx, rdx
	je	.label_280
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_280:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403fbb
	.globl sub_403fbb
	.type sub_403fbb, @function
sub_403fbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fc0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_281
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_282
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_285
	call	free
	xor	eax, eax
	jmp	.label_283
.label_284:
	call	xalloc_die
.label_281:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_284
	mov	qword ptr [rsi], rbx
.label_285:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_283
	test	rax, rax
	je	.label_284
.label_283:
	pop	rbx
	ret	
.label_282:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404024
	.globl sub_404024
	.type sub_404024, @function
sub_404024:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404030
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
	#Procedure 0x404049
	.globl sub_404049
	.type sub_404049, @function
sub_404049:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404050

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
	#Procedure 0x404067
	.globl sub_404067
	.type sub_404067, @function
sub_404067:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_37
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_286
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404095
	.globl sub_404095
	.type sub_404095, @function
sub_404095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0
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
	#Procedure 0x4040d3
	.globl sub_4040d3
	.type sub_4040d3, @function
sub_4040d3:

	nop	word ptr cs:[rax + rax]
.label_287:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4040e5
	.globl sub_4040e5
	.type sub_4040e5, @function
sub_4040e5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040e9
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
	je	.label_287
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
.label_288:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404155
	.globl sub_404155
	.type sub_404155, @function
sub_404155:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40415f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_288
	call	rpl_calloc
	test	rax, rax
	je	.label_288
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404180

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
	je	.label_289
	cmp	r15, -2
	jb	.label_289
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_289
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_289:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041d6
	.globl sub_4041d6
	.type sub_4041d6, @function
sub_4041d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4041ea
	.globl sub_4041ea
	.type sub_4041ea, @function
sub_4041ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_291
	cmp	byte ptr [rax], 0x43
	jne	.label_293
	cmp	byte ptr [rax + 1], 0
	je	.label_290
.label_293:
	mov	esi, OFFSET FLAT:label_292
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_291
.label_290:
	xor	ebx, ebx
.label_291:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404221
	.globl sub_404221
	.type sub_404221, @function
sub_404221:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404230
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_18]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_20]
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
	#Procedure 0x40429e
	.globl sub_40429e
	.type sub_40429e, @function
sub_40429e:

	nop	
.label_295:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_294
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_294:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042d4
	.globl sub_4042d4
	.type sub_4042d4, @function
sub_4042d4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4042d6

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
	jne	.label_296
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_296
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_295
.label_296:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x404310
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
	je	.label_297
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
.label_297:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4043a5
	.globl sub_4043a5
	.type sub_4043a5, @function
sub_4043a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0
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
	#Procedure 0x4043c3
	.globl sub_4043c3
	.type sub_4043c3, @function
sub_4043c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0
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
	#Procedure 0x4043e8
	.globl sub_4043e8
	.type sub_4043e8, @function
sub_4043e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404401
	.globl sub_404401
	.type sub_404401, @function
sub_404401:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404410
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x404418
	.globl sub_404418
	.type sub_404418, @function
sub_404418:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404420

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_298
	pop	rcx
	ret	
.label_298:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404432
	.globl sub_404432
	.type sub_404432, @function
sub_404432:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440
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
	#Procedure 0x40444f
	.globl sub_40444f
	.type sub_40444f, @function
sub_40444f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_314
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_314:
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
	ja	.label_304
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_315
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_305
	test	esi, esi
	jne	.label_304
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_317
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_319
.label_304:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_299
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_305
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_307
.label_315:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_310
.label_305:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_311
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_312
.label_311:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_312:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_313:
	call	fcntl
.label_310:
	mov	ebp, eax
.label_300:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_307:
	cmp	eax, 6
	jne	.label_299
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_302
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_303
.label_299:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_306
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_309
.label_317:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_319:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_313
.label_302:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_303:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_316
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_301
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_301
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_300
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_308
.label_301:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_300
.label_306:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_309:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_310
.label_316:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_308:
	test	al, al
	je	.label_300
	test	ebp, ebp
	js	.label_300
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_318
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_300
.label_318:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_300
	.section	.text
	.align	16
	#Procedure 0x4046e1
	.globl sub_4046e1
	.type sub_4046e1, @function
sub_4046e1:

	nop	word ptr cs:[rax + rax]
.label_323:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4046f5
	.globl sub_4046f5
	.type sub_4046f5, @function
sub_4046f5:

	nop	word ptr [rax + rax]
.label_324:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_320
	test	rax, rax
	je	.label_321
.label_320:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
.label_322:
	test	rcx, rcx
	jne	.label_325
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_325:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_323
.label_326:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_324
	test	rbx, rbx
	jne	.label_324
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404763
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_322
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_321
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_326
	.section	.text
	.align	16
	#Procedure 0x404790

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_327
	test	rbx, rbx
	jne	.label_327
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_327:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_329
	test	rax, rax
	je	.label_328
.label_329:
	pop	rbx
	ret	
.label_328:
	call	xalloc_die
.label_342:
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
	mov	edi, r12d
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4047ea
	.globl sub_4047ea
	.type sub_4047ea, @function
sub_4047ea:

	nop
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047f8

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
	mov	r13, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_37
	call	setlocale
	mov	edi, OFFSET FLAT:label_344
	mov	esi, OFFSET FLAT:label_345
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_344
	call	textdomain
	mov	edi, OFFSET FLAT:label_352
	call	getenv
	xor	ecx, ecx
	test	rax, rax
	setne	cl
	lea	r12d, [rcx + rcx + 0x7d]
	mov	dword ptr [rip + exit_failure],  r12d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8, qword ptr [rip + Version]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_190
	mov	ecx, OFFSET FLAT:label_16
	mov	r9d, 0
	mov	eax, 0
	mov	edi, ebx
	mov	rsi, r13
	push	0
	push	OFFSET FLAT:label_341
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	cmp	dword ptr [rip + optind],  ebx
	jge	.label_342
	xor	r14d, r14d
	xor	edi, edi
	call	isatty
	mov	ebx, eax
	mov	edi, 1
	call	isatty
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_331
	call	__errno_location
	cmp	dword ptr [rax], 9
	sete	r14b
.label_331:
	mov	edi, 2
	call	isatty
	mov	ebp, eax
	test	ebx, ebx
	mov	dword ptr [rsp + 0x10], ebp
	je	.label_347
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 1
	xor	ecx, ecx
	call	fd_reopen
	test	eax, eax
	jns	.label_362
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r12d
	mov	esi, ebp
	mov	ebp, dword ptr [rsp + 0x10]
	mov	rdx, rcx
	call	error
.label_362:
	mov	eax, ebp
	or	eax, r15d
	jne	.label_347
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_347:
	mov	dword ptr [rsp + 0xc], ebx
	mov	qword ptr [rsp + 0x20], r13
	test	r15d, r15d
	je	.label_355
	mov	dword ptr [rsp + 8], r14d
	mov	ebx, r12d
	mov	edi, 0xfffffe7f
	call	umask
	mov	ebp, eax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 0x441
	mov	ecx, 0x180
	call	fd_reopen
	jmp	.label_337
.label_355:
	test	ebp, ebp
	setne	al
	mov	r13d, 1
	test	r14b, al
	je	.label_338
	mov	dword ptr [rsp + 8], r14d
	mov	ebx, r12d
	mov	edi, 0xfffffe7f
	call	umask
	mov	ebp, eax
	mov	edi, OFFSET FLAT:label_336
	mov	esi, 0x441
	mov	edx, 0x180
	xor	eax, eax
	call	open
.label_337:
	mov	r13d, eax
	mov	r14d, OFFSET FLAT:label_336
	xor	r12d, r12d
	test	r13d, r13d
	jns	.label_358
	call	__errno_location
	mov	qword ptr [rsp + 0x18], rax
	mov	r13d, dword ptr [rax]
	mov	edi, OFFSET FLAT:label_356
	call	getenv
	xor	r14d, r14d
	test	rax, rax
	mov	dword ptr [rsp + 0x14], r13d
	mov	r12d, ebx
	je	.label_363
	mov	esi, OFFSET FLAT:label_336
	xor	edx, edx
	mov	rdi, rax
	call	file_name_concat
	mov	r14, rax
	test	r15d, r15d
	je	.label_343
	mov	edi, 1
	mov	edx, 0x441
	mov	ecx, 0x180
	mov	rsi, r14
	call	fd_reopen
	jmp	.label_348
.label_343:
	mov	esi, 0x441
	mov	edx, 0x180
	xor	eax, eax
	mov	rdi, r14
	call	open
.label_348:
	mov	r13d, eax
	test	r13d, r13d
	js	.label_354
	mov	ebx, r12d
	mov	r12, r14
.label_358:
	mov	edi, ebp
	call	umask
	cmp	dword ptr [rsp + 0xc], 0
	mov	eax, OFFSET FLAT:label_339
	mov	esi, OFFSET FLAT:label_340
	cmovne	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rdi, r12
	call	free
	mov	r12d, ebx
	mov	r14d, dword ptr [rsp + 8]
.label_338:
	mov	ebx, 2
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_335
	mov	edi, 2
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ebx, eax
	test	r15d, r15d
	jne	.label_357
	cmp	dword ptr [rsp + 0xc], 0
	mov	eax, OFFSET FLAT:label_332
	mov	esi, OFFSET FLAT:label_333
	cmovne	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_357:
	mov	esi, 2
	mov	edi, r13d
	call	dup2
	test	eax, eax
	jns	.label_346
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r12d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_346:
	test	r14b, r14b
	je	.label_335
	mov	edi, r13d
	call	close
.label_335:
	mov	rax, qword ptr [rip + stderr]
	test	byte ptr [rax], 0x20
	jne	.label_351
	mov	edi, 1
	mov	esi, 1
	call	signal
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rbp, [rcx + rax*8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, rbp
	call	execvp
	call	__errno_location
	mov	edi, ebx
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	cmp	ebx, 2
	sete	r12b
	or	r12d, 0x7e
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	jne	.label_351
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	jmp	.label_361
.label_354:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r13d, dword ptr [rax]
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_336
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, rbp
	call	error
	test	r14, r14
	je	.label_351
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
.label_361:
	call	error
.label_351:
	mov	eax, r12d
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
	#Procedure 0x404ce5
	.globl sub_404ce5
	.type sub_404ce5, @function
sub_404ce5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf2
	.globl sub_404cf2
	.type sub_404cf2, @function
sub_404cf2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d16
	.globl sub_404d16
	.type sub_404d16, @function
sub_404d16:

	nop	word ptr cs:[rax + rax]
