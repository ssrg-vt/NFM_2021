	.section	.text
	.align	16
	#Procedure 0x401559
	.globl sub_401559
	.type sub_401559, @function
sub_401559:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40155a
	.globl sub_40155a
	.type sub_40155a, @function
sub_40155a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401592
	.globl sub_401592
	.type sub_401592, @function
sub_401592:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015da
	.globl sub_4015da
	.type sub_4015da, @function
sub_4015da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015fc
	.globl sub_4015fc
	.type sub_4015fc, @function
sub_4015fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40160d
	.globl sub_40160d
	.type sub_40160d, @function
sub_40160d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401626
	.globl sub_401626
	.type sub_401626, @function
sub_401626:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401630

	.globl set_file_list
	.type set_file_list, @function
set_file_list:
	mov	byte ptr [rip + have_read_stdin],  0
	test	rdi, rdi
	mov	eax, OFFSET FLAT:stdin_argv
	cmovne	rax, rdi
	mov	qword ptr [rip + file_list],  rax
	ret	
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
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401658
	.globl sub_401658
	.type sub_401658, @function
sub_401658:

	nop	dword ptr [rax + rax]
.label_13:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_9
	mov	qword ptr [rsi], rbx
.label_11:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_9
.label_10:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401688
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_13
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_12
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_11
	call	free
	xor	eax, eax
	jmp	.label_10
.label_9:
	call	xalloc_die
.label_12:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016c4
	.globl sub_4016c4
	.type sub_4016c4, @function
sub_4016c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_14:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_14
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4016f1
	.globl sub_4016f1
	.type sub_4016f1, @function
sub_4016f1:

	nop	word ptr cs:[rax + rax]
.label_18:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401705
	.globl sub_401705
	.type sub_401705, @function
sub_401705:

	nop	word ptr [rax + rax]
.label_20:
	test	rcx, rcx
	jne	.label_19
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_19:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_18
.label_21:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_15
	test	rbx, rbx
	jne	.label_15
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_16:
	call	xalloc_die
.label_15:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_17
	test	rax, rax
	je	.label_16
.label_17:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401773
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_20
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_16
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_21
.label_23:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_22
	call	__errno_location
	mov	dword ptr [rax], 0
.label_22:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017bb

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
	jne	.label_23
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_22
	test	cl, cl
	jne	.label_22
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_22
	.section	.text
	.align	16
	#Procedure 0x401800
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401874
	.globl sub_401874
	.type sub_401874, @function
sub_401874:

	nop	word ptr cs:[rax + rax]
.label_30:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401882
	.globl sub_401882
	.type sub_401882, @function
sub_401882:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401885

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_30
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4018a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4018aa
	.globl sub_4018aa
	.type sub_4018aa, @function
sub_4018aa:

	nop	word ptr [rax + rax]
.label_32:
	mov	ecx, 1
.label_31:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4018c0
	.globl sub_4018c0
	.type sub_4018c0, @function
sub_4018c0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018c5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_32
	test	rsi, rsi
	mov	ecx, 1
	je	.label_31
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_31
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_33:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401905
	.globl sub_401905
	.type sub_401905, @function
sub_401905:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40190b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_34
	test	rax, rax
	je	.label_33
.label_34:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401920
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
	#Procedure 0x401933
	.globl sub_401933
	.type sub_401933, @function
sub_401933:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401940

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
	jne	.label_36
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_43
	cmp	ecx, 0x55
	jne	.label_35
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_35
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_35
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_35
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_35
	cmp	byte ptr [rax + 5], 0
	jne	.label_35
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_40
	mov	eax, OFFSET FLAT:label_41
	jmp	.label_42
.label_43:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_35
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_35
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_35
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_35
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_35
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_35
	cmp	byte ptr [rax + 7], 0
	je	.label_37
.label_35:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_38
	mov	eax, OFFSET FLAT:label_39
.label_42:
	cmove	rax, rcx
.label_36:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_37:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_44
	mov	eax, OFFSET FLAT:label_45
	jmp	.label_42
	.section	.text
	.align	16
	#Procedure 0x401a05
	.globl sub_401a05
	.type sub_401a05, @function
sub_401a05:

	nop	word ptr cs:[rax + rax]
.label_48:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a15

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_47
	test	rbx, rbx
	jne	.label_47
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_47:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_46
	test	rax, rax
	je	.label_48
.label_46:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a40
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401a4a
	.globl sub_401a4a
	.type sub_401a4a, @function
sub_401a4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a50

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_49
	pop	rcx
	ret	
.label_49:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a62
	.globl sub_401a62
	.type sub_401a62, @function
sub_401a62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70

	.globl add_tab_stop
	.type add_tab_stop, @function
add_tab_stop:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rcx, qword ptr [rip + first_free_tab]
	xor	eax, eax
	test	rcx, rcx
	je	.label_54
	mov	rax, qword ptr [rip + tab_list]
	mov	rax, qword ptr [rax + rcx*8 - 8]
.label_54:
	xor	ebx, ebx
	mov	rdx, r14
	sub	rdx, rax
	cmovae	rbx, rdx
	cmp	rcx, qword ptr [rip + n_tabs_allocated]
	jne	.label_55
	mov	rdi, qword ptr [rip + tab_list]
	test	rdi, rdi
	je	.label_51
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	jae	.label_56
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_52
.label_55:
	mov	rax, qword ptr [rip + tab_list]
	jmp	.label_53
.label_50:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401adc
	.globl sub_401adc
	.type sub_401adc, @function
sub_401adc:

	nop	dword ptr [rax + rax]
.label_51:
	test	rcx, rcx
	mov	esi, 0x10
	cmovne	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_50
.label_52:
	mov	qword ptr [rip + n_tabs_allocated],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + tab_list],  rax
	mov	rcx, qword ptr [rip + first_free_tab]
.label_53:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rip + first_free_tab],  rdx
	mov	qword ptr [rax + rcx*8], r14
	cmp	qword ptr [rip + max_column_width],  rbx
	jae	.label_57
	mov	qword ptr [rip + max_column_width],  rbx
.label_57:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_56:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b40

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
	je	.label_58
	test	r15, r15
	je	.label_59
.label_58:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_59:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b7c
	.globl sub_401b7c
	.type sub_401b7c, @function
sub_401b7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_60
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_60:
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
	#Procedure 0x401c03
	.globl sub_401c03
	.type sub_401c03, @function
sub_401c03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c10

	.globl next_file
	.type next_file, @function
next_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	test	r14, r14
	je	.label_61
	mov	rbx, qword ptr [rip + next_file.prev_file]
	test	rbx, rbx
	je	.label_68
	test	byte ptr [r14], 0x20
	je	.label_74
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [rip + exit_status],  1
	mov	rbx, qword ptr [rip + next_file.prev_file]
.label_74:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_75
	cmp	byte ptr [rbx + 1], 0
	je	.label_64
.label_75:
	mov	rdi, r14
	call	rpl_fclose
	test	eax, eax
	je	.label_61
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + next_file.prev_file]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	dword ptr [rip + exit_status],  1
	jmp	.label_61
.label_64:
	mov	rdi, r14
	call	clearerr_unlocked
.label_61:
	mov	rax, qword ptr [rip + file_list]
	lea	rcx, [rax + 8]
	mov	qword ptr [rip + file_list],  rcx
	mov	rbx, qword ptr [rax]
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_62
	xor	r14d, r14d
	jmp	.label_72
	.section	.text
	.align	16
	#Procedure 0x401cf1
	.globl sub_401cf1
	.type sub_401cf1, @function
sub_401cf1:

	nop	word ptr cs:[rax + rax]
.label_76:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [rip + exit_status],  1
	mov	rax, qword ptr [rip + file_list]
	lea	rcx, [rax + 8]
	mov	qword ptr [rip + file_list],  rcx
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_72
	jmp	.label_62
.label_66:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	r15, qword ptr [rip + stdin]
	jmp	.label_65
	.section	.text
	.align	16
	#Procedure 0x401d5f
	.globl sub_401d5f
	.type sub_401d5f, @function
sub_401d5f:

	nop	
.label_72:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_67
	cmp	byte ptr [rbx + 1], 0
	je	.label_66
.label_67:
	mov	esi, OFFSET FLAT:label_73
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
.label_65:
	test	r15, r15
	je	.label_76
	mov	qword ptr [rip + next_file.prev_file],  rbx
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	r14, r15
.label_62:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_68:
	mov	edi, OFFSET FLAT:label_69
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 0x155
	mov	ecx, OFFSET FLAT:label_71
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401dbe
	.globl sub_401dbe
	.type sub_401dbe, @function
sub_401dbe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401dc0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_77
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_78
	test	rbx, rbx
	jne	.label_78
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_78:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_79
	test	rax, rax
	je	.label_77
.label_79:
	pop	rbx
	ret	
.label_77:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e08
	.globl sub_401e08
	.type sub_401e08, @function
sub_401e08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e10
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
	je	.label_81
	test	r15, r15
	je	.label_80
.label_81:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_80:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e52
	.globl sub_401e52
	.type sub_401e52, @function
sub_401e52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e60
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
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
	#Procedure 0x401ece
	.globl sub_401ece
	.type sub_401ece, @function
sub_401ece:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ed0

	.globl parse_tab_stops
	.type parse_tab_stops, @function
parse_tab_stops:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdi
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	r12d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0xc], 0
	xor	r14d, r14d
	xor	ebp, ebp
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x401f04
	.globl sub_401f04
	.type sub_401f04, @function
sub_401f04:

	nop	word ptr cs:[rax + rax]
.label_85:
	inc	r13
	mov	bpl, r15b
.label_107:
	movzx	ebx, byte ptr [r13]
	cmp	rbx, 0x2c
	je	.label_90
	test	bl, bl
	je	.label_94
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2], 1
	jne	.label_90
	cmp	bl, 0x2b
	je	.label_106
	cmp	bl, 0x2f
	jne	.label_102
	mov	r14b, 1
	test	bpl, 1
	je	.label_101
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rbx, r12
	mov	r12, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	r12, rbx
	call	error
.label_101:
	mov	dword ptr [rsp + 0xc], 0
	mov	r15b, bpl
	jmp	.label_85
	.section	.text
	.align	16
	#Procedure 0x401f9c
	.globl sub_401f9c
	.type sub_401f9c, @function
sub_401f9c:

	nop	dword ptr [rax]
.label_90:
	test	bpl, 1
	je	.label_93
	test	r14b, 1
	jne	.label_95
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_97
	mov	rdi, r12
	call	add_tab_stop
	jmp	.label_93
.label_95:
	cmp	qword ptr [rip + extend_size],  0
	jne	.label_112
	mov	qword ptr [rip + extend_size],  r12
	jmp	.label_93
.label_97:
	cmp	qword ptr [rip + increment_size],  0
	jne	.label_109
	mov	qword ptr [rip + increment_size],  r12
	nop	word ptr [rax + rax]
.label_93:
	xor	r15d, r15d
	jmp	.label_85
.label_106:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	test	bpl, 1
	je	.label_113
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbx, r12
	mov	r12, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	r12, rbx
	call	error
.label_113:
	xor	r14d, r14d
	mov	r15b, bpl
	jmp	.label_85
.label_102:
	movsx	eax, bl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_105
	mov	eax, ebp
	and	al, 1
	mov	ecx, 0
	cmove	r12, rcx
	mov	r15b, 1
	je	.label_88
	mov	r15b, bpl
.label_88:
	test	al, al
	mov	rax, qword ptr [rsp + 0x18]
	cmove	rax, r13
	mov	qword ptr [rsp + 0x18], rax
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_110
	lea	rax, [r12 + r12*4]
	movsx	rcx, bl
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	jae	.label_111
.label_110:
	mov	esi, OFFSET FLAT:label_92
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	call	strspn
	mov	qword ptr [rsp + 0x20], r12
	mov	r12, rax
	mov	rdi, rbp
	mov	rsi, r12
	call	xstrndup
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	call	error
	mov	rdi, rbx
	call	free
	lea	r13, [rbp + r12 - 1]
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_85
.label_111:
	mov	r12, rax
	jmp	.label_85
.label_94:
	mov	rbx, qword ptr [rsp + 0x10]
	and	bpl, bl
	test	bpl, 1
	je	.label_91
	test	r14b, 1
	jne	.label_96
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_99
	mov	rdi, r12
	call	add_tab_stop
	jmp	.label_91
.label_96:
	mov	bl, 1
	cmp	qword ptr [rip + extend_size],  0
	je	.label_103
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_103:
	mov	qword ptr [rip + extend_size],  r12
	jmp	.label_91
.label_99:
	mov	bl, 1
	cmp	qword ptr [rip + increment_size],  0
	je	.label_114
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_114:
	mov	qword ptr [rip + increment_size],  r12
.label_91:
	test	bl, 1
	je	.label_100
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	qword ptr [rip + extend_size],  r12
.label_100:
	mov	edi, 1
	call	exit
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	qword ptr [rip + increment_size],  r12
	mov	edi, 1
	call	exit
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402264
	.globl sub_402264
	.type sub_402264, @function
sub_402264:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402270

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_125
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_127
.label_125:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_127:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_115
	cmp	r10d, 0x29
	jae	.label_124
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_126
.label_124:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_126:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_115
	cmp	r10d, 0x29
	jae	.label_122
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_123
.label_122:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_123:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_115
	cmp	r10d, 0x29
	jae	.label_120
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_121
.label_120:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_121:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_115
	cmp	r10d, 0x29
	jae	.label_118
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_119
.label_118:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_119:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_115
	cmp	r10d, 0x29
	jae	.label_116
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_117
.label_116:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_117:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_115
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_115
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_115
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_115
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_115:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x402452
	.globl sub_402452
	.type sub_402452, @function
sub_402452:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_128
	test	rsi, rsi
	je	.label_128
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
.label_128:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4024cc
	.globl sub_4024cc
	.type sub_4024cc, @function
sub_4024cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_129
	test	rax, rax
	je	.label_130
.label_129:
	pop	rbx
	ret	
.label_130:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4024ea
	.globl sub_4024ea
	.type sub_4024ea, @function
sub_4024ea:

	nop	word ptr [rax + rax]
.label_131:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4024f5
	.globl sub_4024f5
	.type sub_4024f5, @function
sub_4024f5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024fd
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
	je	.label_131
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
	#Procedure 0x402560

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
	mov	r13, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_162
	call	setlocale
	mov	edi, OFFSET FLAT:label_165
	mov	esi, OFFSET FLAT:label_166
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_165
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	movabs	r12, 0x1999999999999999
	xor	ecx, ecx
	xor	ebx, ebx
.label_170:
	mov	r15b, cl
	jmp	.label_152
.label_154:
	mov	rdi, rbp
	call	add_tab_stop
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_152:
	mov	ecx, ebx
.label_146:
	mov	bl, cl
	jmp	.label_141
.label_140:
	mov	byte ptr [rip + convert_entire_line],  1
	mov	rdi, qword ptr [rip + optarg]
	call	parse_tab_stops
	nop	dword ptr [rax]
.label_141:
	mov	edx, OFFSET FLAT:label_183
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_135
	cmp	eax, 0x61
	je	.label_138
	cmp	eax, 0x74
	jne	.label_139
	jmp	.label_140
.label_138:
	mov	byte ptr [rip + convert_entire_line],  1
	jmp	.label_141
	.section	.text
	.align	16
	#Procedure 0x402622
	.globl sub_402622
	.type sub_402622, @function
sub_402622:

	nop	word ptr cs:[rax + rax]
.label_139:
	mov	cl, 1
	cmp	eax, 0x80
	je	.label_146
	jmp	.label_148
	.section	.text
	.align	16
	#Procedure 0x40263b
	.globl sub_40263b
	.type sub_40263b, @function
sub_40263b:

	nop	dword ptr [rax + rax]
.label_135:
	cmp	eax, 0x2b
	jle	.label_163
	cmp	eax, 0x2c
	jne	.label_151
	test	r15b, 1
	mov	r15d, 0
	je	.label_152
	jmp	.label_154
	.section	.text
	.align	16
	#Procedure 0x40265f
	.globl sub_40265f
	.type sub_40265f, @function
sub_40265f:

	nop	
.label_163:
	cmp	eax, -1
	je	.label_160
	cmp	eax, 0xffffff7d
	je	.label_155
	cmp	eax, 0xffffff7e
	jne	.label_148
	jmp	.label_177
.label_151:
	cmp	eax, 0x3f
	je	.label_161
.label_148:
	mov	ecx, r15d
	and	cl, 1
	mov	edx, 0
	cmove	rbp, rdx
	cmp	rbp, r12
	ja	.label_164
	test	cl, cl
	mov	cl, 1
	je	.label_168
	mov	cl, r15b
.label_168:
	lea	rdx, [rbp + rbp*4]
	cdqe	
	lea	rax, [rax + rdx*2 - 0x30]
	cmp	rax, rbp
	mov	rbp, rax
	jae	.label_170
.label_164:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	jmp	.label_174
.label_160:
	test	bl, bl
	je	.label_176
	mov	byte ptr [rip + convert_entire_line],  0
.label_176:
	test	r15b, 1
	je	.label_179
	mov	rdi, rbp
	call	add_tab_stop
.label_179:
	call	finalize_tab_stops
	movsxd	rax, dword ptr [rip + optind]
	xor	ecx, ecx
	cmp	eax, r14d
	lea	rdi, [r13 + rax*8]
	cmovge	rdi, rcx
	call	set_file_list
	xor	edi, edi
	call	next_file
	mov	rbx, rax
	test	rbx, rbx
	je	.label_133
	mov	rdi, qword ptr [rip + max_column_width]
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
.label_143:
	mov	qword ptr [rsp + 0x10], 0
	mov	r12b, 1
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 2], 1
	xor	r13d, r13d
.label_184:
	mov	r15, rbx
.label_156:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_150
	mov	rdi, r15
	call	__uflow
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_153
	mov	rdi, r15
	call	next_file
	mov	r15, rax
	test	r15, r15
	mov	ebx, 0
	jne	.label_156
	jmp	.label_158
	.section	.text
	.align	16
	#Procedure 0x402774
	.globl sub_402774
	.type sub_402774, @function
sub_402774:

	nop	word ptr cs:[rax + rax]
.label_150:
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_153:
	mov	rbx, r15
.label_158:
	test	r12b, 1
	je	.label_167
	mov	r15, rbx
	movsxd	rbx, r14d
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	ebx, word ptr [rax + rbx*2]
	and	bx, 1
	je	.label_172
	mov	rdi, rbp
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 3]
	call	get_next_tab_column
	cmp	byte ptr [rsp + 3], 0
	je	.label_175
	xor	r12d, r12d
.label_175:
	test	r12b, 1
	je	.label_134
	cmp	rax, rbp
	jb	.label_137
	cmp	r14d, 9
	jne	.label_171
	test	r13, r13
	je	.label_178
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 9
	jmp	.label_178
	.section	.text
	.align	16
	#Procedure 0x4027f5
	.globl sub_4027f5
	.type sub_4027f5, @function
sub_4027f5:

	nop	word ptr cs:[rax + rax]
.label_172:
	cmp	r14d, 8
	jne	.label_132
	cmp	rbp, 1
	adc	rbp, -1
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rax, 1
	adc	rax, -1
	mov	qword ptr [rsp + 0x10], rax
	mov	r14d, 8
	jmp	.label_134
.label_132:
	inc	rbp
	jne	.label_134
	jmp	.label_137
.label_171:
	inc	rbp
	test	byte ptr [rsp + 2], 1
	je	.label_147
	cmp	rbp, rax
	jne	.label_147
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 9
	mov	rax, rbp
.label_178:
	mov	ecx, dword ptr [rsp + 4]
	and	cl, 1
	movzx	r13d, cl
	mov	r14d, 9
	mov	rbp, rax
	nop	dword ptr [rax + rax]
.label_134:
	test	r13, r13
	je	.label_157
	cmp	r13, 1
	je	.label_159
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	je	.label_159
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 9
.label_159:
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, r13
	call	fwrite_unlocked
	cmp	rax, r13
	jne	.label_169
	mov	dword ptr [rsp + 4], 0
.label_157:
	test	bx, bx
	setne	al
	cmp	byte ptr [rip + convert_entire_line],  0
	setne	cl
	or	cl, al
	and	r12b, cl
	mov	eax, ebx
	mov	byte ptr [rsp + 2], al
	xor	r13d, r13d
	mov	rbx, r15
.label_167:
	test	r14d, r14d
	js	.label_182
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_180
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_142:
	cmp	r14d, 0xa
	jne	.label_184
	jmp	.label_143
.label_147:
	cmp	rbp, rax
	mov	byte ptr [rsp + 2], 1
	mov	al, 1
	je	.label_136
	mov	eax, dword ptr [rsp + 4]
.label_136:
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r13], r14b
	inc	r13
	mov	dword ptr [rsp + 4], eax
	mov	rbx, r15
	jmp	.label_142
.label_180:
	movzx	esi, r14b
	call	__overflow
	test	eax, eax
	jns	.label_142
.label_169:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_182:
	mov	rdi, qword ptr [rsp + 8]
	call	free
.label_133:
	call	cleanup_file_list_stdin
	mov	eax, dword ptr [rip + exit_status]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_137:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
.label_174:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_155:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_144
	mov	edx, OFFSET FLAT:label_28
	mov	r8d, OFFSET FLAT:label_145
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_177:
	xor	edi, edi
	call	usage
.label_161:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4029f1
	.globl sub_4029f1
	.type sub_4029f1, @function
sub_4029f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00
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
	#Procedure 0x402ac1
	.globl sub_402ac1
	.type sub_402ac1, @function
sub_402ac1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ad0

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
	#Procedure 0x402ae7
	.globl sub_402ae7
	.type sub_402ae7, @function
sub_402ae7:

	nop	word ptr [rax + rax]
.label_185:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402af5
	.globl sub_402af5
	.type sub_402af5, @function
sub_402af5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402aff
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
	je	.label_186
	test	r14, r14
	je	.label_185
.label_186:
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
	#Procedure 0x402b30

	.globl emit_tab_list_info
	.type emit_tab_list_info, @function
emit_tab_list_info:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402b72
	.globl sub_402b72
	.type sub_402b72, @function
sub_402b72:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80

	.globl get_next_tab_column
	.type get_next_tab_column, @function
get_next_tab_column:
	mov	byte ptr [rdx], 0
	mov	rcx, qword ptr [rip + tab_size]
	test	rcx, rcx
	jne	.label_189
	mov	rax, qword ptr [rsi]
	mov	r8, qword ptr [rip + first_free_tab]
	cmp	rax, r8
	jae	.label_194
	mov	r9, qword ptr [rip + tab_list]
	nop	word ptr cs:[rax + rax]
.label_195:
	mov	rcx, qword ptr [r9 + rax*8]
	cmp	rcx, rdi
	ja	.label_190
	inc	rax
	mov	qword ptr [rsi], rax
	cmp	rax, r8
	jb	.label_195
.label_194:
	mov	rcx, qword ptr [rip + extend_size]
	test	rcx, rcx
	je	.label_192
.label_189:
	xor	edx, edx
	mov	rax, rdi
.label_193:
	div	rcx
	add	rcx, rdi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
.label_192:
	mov	rcx, qword ptr [rip + increment_size]
	test	rcx, rcx
	je	.label_191
	mov	rdx, qword ptr [rip + tab_list]
	mov	rax, rdi
	sub	rax, qword ptr [rdx + r8*8 - 8]
	xor	edx, edx
	jmp	.label_193
.label_191:
	mov	byte ptr [rdx], 1
	xor	ecx, ecx
.label_190:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c0a
	.globl sub_402c0a
	.type sub_402c0a, @function
sub_402c0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c10
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
	#Procedure 0x402c28
	.globl sub_402c28
	.type sub_402c28, @function
sub_402c28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402c41
	.globl sub_402c41
	.type sub_402c41, @function
sub_402c41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c50
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
	#Procedure 0x402c5f
	.globl sub_402c5f
	.type sub_402c5f, @function
sub_402c5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402c60

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_244
	.section	.text
	.align	16
	#Procedure 0x402d0f
	.globl sub_402d0f
	.type sub_402d0f, @function
sub_402d0f:

	nop	
.label_288:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_245
	or	al, dl
	jne	.label_245
	test	dil, 1
	jne	.label_287
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_245
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_244
	jmp	.label_245
.label_433:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_294
	test	rbp, rbp
	je	.label_275
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_275:
	mov	r14d, 1
	jmp	.label_300
.label_434:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_38
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_237
.label_294:
	xor	r14d, r14d
.label_300:
	mov	eax, OFFSET FLAT:label_38
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_235
	.section	.text
	.align	16
	#Procedure 0x402ddf
	.globl sub_402ddf
	.type sub_402ddf, @function
sub_402ddf:

	nop	
.label_244:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_313
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_318]
.label_435:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_198
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_39
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_436:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_211
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_211
	xor	r14d, r14d
	nop	
.label_229:
	cmp	r14, rbp
	jae	.label_226
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_226:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_229
.label_211:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_237
.label_428:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_237
.label_431:
	mov	al, 1
.label_429:
	mov	r12b, 1
.label_432:
	test	r12b, 1
	mov	cl, 1
	je	.label_255
	mov	ecx, eax
.label_255:
	mov	al, cl
.label_430:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_257
	test	rbp, rbp
	je	.label_265
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_265:
	mov	r14d, 1
	jmp	.label_268
.label_257:
	xor	r14d, r14d
.label_268:
	mov	ecx, OFFSET FLAT:label_39
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_235:
	mov	sil, r12b
.label_237:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_278
	.section	.text
	.align	16
	#Procedure 0x402fa1
	.globl sub_402fa1
	.type sub_402fa1, @function
sub_402fa1:

	nop	word ptr cs:[rax + rax]
.label_297:
	inc	r12
.label_278:
	cmp	r11, -1
	je	.label_303
	cmp	r12, r11
	jne	.label_304
	jmp	.label_306
	.section	.text
	.align	16
	#Procedure 0x402fc3
	.globl sub_402fc3
	.type sub_402fc3, @function
sub_402fc3:

	nop	word ptr cs:[rax + rax]
.label_303:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_259
.label_304:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_314
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_317
	cmp	r11, -1
	jne	.label_317
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_317:
	cmp	rbx, r11
	jbe	.label_203
.label_314:
	xor	esi, esi
.label_240:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_205
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_208]
.label_460:
	test	r12, r12
	jne	.label_213
	jmp	.label_215
	.section	.text
	.align	16
	#Procedure 0x403056
	.globl sub_403056
	.type sub_403056, @function
sub_403056:

	nop	word ptr cs:[rax + rax]
.label_203:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_228
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_240
	jmp	.label_204
.label_228:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_240
.label_464:
	xor	eax, eax
	cmp	r11, -1
	je	.label_247
	test	r12, r12
	jne	.label_252
	cmp	r11, 1
	je	.label_215
	xor	r13d, r13d
	jmp	.label_200
.label_453:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_260
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_204
	cmp	r8d, 2
	jne	.label_271
	mov	eax, r9d
	and	al, 1
	jne	.label_271
	cmp	r14, rbp
	jae	.label_272
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_272:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_276
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_281
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_281:
	add	r14, 3
	mov	r9b, 1
.label_271:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_286
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_286:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_266
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_266
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_266
	cmp	r14, rbp
	jae	.label_273
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_273:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_291
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_291:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_200
.label_454:
	mov	bl, 0x62
	jmp	.label_253
.label_455:
	mov	cl, 0x74
	jmp	.label_262
.label_456:
	mov	bl, 0x76
	jmp	.label_253
.label_457:
	mov	bl, 0x66
	jmp	.label_253
.label_458:
	mov	cl, 0x72
	jmp	.label_262
.label_461:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_311
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_221
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_319
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_319:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_206
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_206:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_210
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_210:
	add	r14, 3
	xor	r9d, r9d
.label_311:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_200
.label_462:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_222
	cmp	r8d, 2
	jne	.label_213
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_213
	jmp	.label_221
.label_463:
	cmp	r8d, 2
	jne	.label_232
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_221
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_239
.label_205:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_242
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_283
.label_247:
	test	r12, r12
	jne	.label_269
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_269
.label_215:
	mov	dl, 1
.label_459:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_221
	xor	eax, eax
	mov	r13b, dl
.label_200:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_279
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_282
	jmp	.label_284
	.section	.text
	.align	16
	#Procedure 0x403334
	.globl sub_403334
	.type sub_403334, @function
sub_403334:

	nop	word ptr cs:[rax + rax]
.label_279:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_284
.label_282:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_302
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_290
	.section	.text
	.align	16
	#Procedure 0x40336d
	.globl sub_40336d
	.type sub_40336d, @function
sub_40336d:

	nop	dword ptr [rax]
.label_284:
	test	sil, sil
.label_290:
	mov	ebx, r15d
	je	.label_218
	jmp	.label_296
.label_302:
	mov	ebx, r15d
	jmp	.label_296
.label_260:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_297
	xor	r15d, r15d
	jmp	.label_213
.label_232:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_262
	xor	eax, eax
	mov	r15b, 0x5c
.label_239:
	xor	r13d, r13d
	jmp	.label_218
.label_262:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_221
.label_253:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_200
	nop	
.label_296:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_204
	cmp	r8d, 2
	jne	.label_312
	mov	eax, r9d
	and	al, 1
	jne	.label_312
	cmp	r14, rbp
	jae	.label_316
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_316:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_320
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_320:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_197
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_197:
	add	r14, 3
	mov	r9b, 1
.label_312:
	cmp	r14, rbp
	jae	.label_254
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_254:
	inc	r14
	jmp	.label_292
.label_242:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_209
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_209:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_217
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_243:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_233
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_249
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_270
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_263
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_248:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_299
	bt	rsi, rdx
	jb	.label_221
.label_299:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_248
.label_263:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_285
	xor	r13d, r13d
.label_285:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_243
	jmp	.label_219
.label_266:
	xor	r13d, r13d
	jmp	.label_200
.label_269:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_200
.label_222:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_213
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_213
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_213
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_301
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_216
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_308
	cmp	r14, rbp
	jae	.label_309
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_309:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_315
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_315:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_241
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_241:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_251
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_251:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_216:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_200
.label_213:
	xor	eax, eax
.label_252:
	xor	r13d, r13d
	jmp	.label_200
.label_217:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_246:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_267
	cmp	rbp, -1
	je	.label_231
	cmp	rbp, -2
	je	.label_233
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_238
	xor	r13d, r13d
.label_238:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_246
	jmp	.label_219
.label_233:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_261
	lea	rax, [r10 + r12]
.label_212:
	cmp	byte ptr [rax + rsi], 0
	je	.label_261
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_212
.label_261:
	mov	qword ptr [rsp + 0x40], rsi
.label_249:
	xor	r13d, r13d
	jmp	.label_270
.label_231:
	xor	r13d, r13d
.label_267:
	mov	r10, qword ptr [rsp + 0x28]
.label_270:
	mov	r12, qword ptr [rsp + 0x40]
.label_219:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_283:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_201
	test	al, al
	je	.label_201
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_200
.label_201:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_289
	.section	.text
	.align	16
	#Procedure 0x403767
	.globl sub_403767
	.type sub_403767, @function
sub_403767:

	nop	word ptr [rax + rax]
.label_250:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_289:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_295
	test	sil, 1
	je	.label_274
	cmp	r14, rbp
	jae	.label_298
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_298:
	inc	r14
	xor	esi, esi
	jmp	.label_274
	.section	.text
	.align	16
	#Procedure 0x4037a5
	.globl sub_4037a5
	.type sub_4037a5, @function
sub_4037a5:

	nop	word ptr cs:[rax + rax]
.label_295:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_204
	cmp	r8d, 2
	jne	.label_305
	mov	eax, r9d
	and	al, 1
	jne	.label_305
	cmp	r14, rbp
	jae	.label_307
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_307:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_256
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_256:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_293
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_293:
	add	r14, 3
	mov	r9b, 1
.label_305:
	cmp	r14, rbp
	jae	.label_196
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_196:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_223
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_223:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_207
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_207:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_274:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_218
	test	r9b, 1
	je	.label_224
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_236
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_227
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_227:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_234
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_234:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_224
	.section	.text
	.align	16
	#Procedure 0x4038b6
	.globl sub_4038b6
	.type sub_4038b6, @function
sub_4038b6:

	nop	word ptr cs:[rax + rax]
.label_236:
	mov	rbx, rcx
.label_224:
	cmp	r14, rbp
	jae	.label_250
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_250
	.section	.text
	.align	16
	#Procedure 0x4038de
	.globl sub_4038de
	.type sub_4038de, @function
sub_4038de:

	nop	
.label_218:
	test	r9b, 1
	je	.label_258
	and	al, 1
	jne	.label_258
	cmp	r14, rbp
	jae	.label_264
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_264:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_310
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	add	r14, 2
	xor	r9d, r9d
.label_258:
	mov	ebx, r15d
.label_292:
	cmp	r14, rbp
	jae	.label_277
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_277:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_297
.label_301:
	xor	r13d, r13d
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x403941
	.globl sub_403941
	.type sub_403941, @function
sub_403941:

	nop	word ptr cs:[rax + rax]
.label_306:
	mov	rcx, r12
.label_259:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_288
	or	al, dl
	jne	.label_288
	mov	r11, rcx
	jmp	.label_204
.label_221:
	mov	eax, 2
.label_230:
	mov	qword ptr [rsp + 0x38], rax
.label_204:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_220:
	mov	r14, rax
.label_225:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_245:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_280
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_214
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_214
	inc	rdx
	nop	dword ptr [rax + rax]
.label_202:
	cmp	r14, rbp
	jae	.label_199
	mov	byte ptr [rcx + r14], al
.label_199:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_202
	jmp	.label_214
.label_287:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_220
.label_280:
	mov	rcx, qword ptr [rsp + 0x10]
.label_214:
	cmp	r14, rbp
	jae	.label_225
	mov	byte ptr [rcx + r14], 0
	jmp	.label_225
.label_308:
	mov	eax, 5
	jmp	.label_230
.label_313:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a90
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
	#Procedure 0x403aa9
	.globl sub_403aa9
	.type sub_403aa9, @function
sub_403aa9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_321
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_322
	test	rax, rax
	je	.label_321
.label_322:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ae5
	.globl sub_403ae5
	.type sub_403ae5, @function
sub_403ae5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0
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
	#Procedure 0x403b65
	.globl sub_403b65
	.type sub_403b65, @function
sub_403b65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70
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
	je	.label_323
	mov	qword ptr [rax], rbx
.label_323:
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
	#Procedure 0x403c5c
	.globl sub_403c5c
	.type sub_403c5c, @function
sub_403c5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c60

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
	#Procedure 0x403c79
	.globl sub_403c79
	.type sub_403c79, @function
sub_403c79:

	nop	dword ptr [rax]
.label_324:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403c8c
	.globl sub_403c8c
	.type sub_403c8c, @function
sub_403c8c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c98

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_324
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_326
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_324
.label_326:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_324
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_325
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_325:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d00
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
	je	.label_327
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
.label_327:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d61
	.globl sub_403d61
	.type sub_403d61, @function
sub_403d61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d70
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_328
	call	rpl_calloc
	test	rax, rax
	je	.label_328
	pop	rcx
	ret	
.label_328:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403d96
	.globl sub_403d96
	.type sub_403d96, @function
sub_403d96:

	nop	word ptr cs:[rax + rax]
.label_329:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403da5
	.globl sub_403da5
	.type sub_403da5, @function
sub_403da5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dab
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_329
	test	rdx, rdx
	je	.label_329
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
	#Procedure 0x403e10

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_334
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_tab_list_info
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_330
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_330
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_330:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_144
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_144
	mov	ecx, OFFSET FLAT:label_339
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_334:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
.label_348:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_346
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_346:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404044
	.globl sub_404044
	.type sub_404044, @function
sub_404044:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404046

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
	jne	.label_347
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_347
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_348
.label_347:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x404080
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
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

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_353
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_351
	cmp	dword ptr [rbp], 0x20
	jne	.label_351
.label_353:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_350
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_349:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_352
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_350:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_349
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_354:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404155
	.globl sub_404155
	.type sub_404155, @function
sub_404155:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404159
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
	je	.label_354
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
	.section	.text
	.align	16
	#Procedure 0x4041c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_355
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_357
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_357
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_360
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_360:
	mov	rbx, r14
.label_357:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_355:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_356
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404261
	.globl sub_404261
	.type sub_404261, @function
sub_404261:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_362
	cmp	byte ptr [rax], 0x43
	jne	.label_364
	cmp	byte ptr [rax + 1], 0
	je	.label_361
.label_364:
	mov	esi, OFFSET FLAT:label_363
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_362
.label_361:
	xor	ebx, ebx
.label_362:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042a1
	.globl sub_4042a1
	.type sub_4042a1, @function
sub_4042a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0

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
	je	.label_376
	mov	edx, OFFSET FLAT:label_371
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_378
.label_376:
	mov	edx, OFFSET FLAT:label_379
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
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
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_367
	jmp	qword ptr [(r12 * 8) + label_368]
.label_521:
	add	rsp, 8
	jmp	.label_366
.label_367:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
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
	jmp	.label_366
.label_522:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
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
.label_523:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
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
.label_524:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
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
.label_525:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
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
	jmp	.label_366
.label_526:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
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
	jmp	.label_366
.label_527:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
	jmp	.label_366
.label_528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
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
	jmp	.label_366
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
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
	jmp	.label_366
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
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
.label_366:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404608
	.globl sub_404608
	.type sub_404608, @function
sub_404608:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404610
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_384
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_386:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_386
.label_384:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_387
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_388], OFFSET FLAT:slot0
.label_387:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_385
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_385:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046a1
	.globl sub_4046a1
	.type sub_4046a1, @function
sub_4046a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_162
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_389
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046d5
	.globl sub_4046d5
	.type sub_4046d5, @function
sub_4046d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
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
	#Procedure 0x40474f
	.globl sub_40474f
	.type sub_40474f, @function
sub_40474f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404750

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
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
	.align	16
	#Procedure 0x404780
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
	#Procedure 0x4047b3
	.globl sub_4047b3
	.type sub_4047b3, @function
sub_4047b3:

	nop	word ptr cs:[rax + rax]
.label_391:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4047c5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_391
	test	rsi, rsi
	je	.label_391
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
	#Procedure 0x404830
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_392
	test	rdx, rdx
	je	.label_392
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_392:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40485b
	.globl sub_40485b
	.type sub_40485b, @function
sub_40485b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860

	.globl finalize_tab_stops
	.type finalize_tab_stops, @function
finalize_tab_stops:
	push	rax
	mov	rax, qword ptr [rip + tab_list]
	mov	rcx, qword ptr [rip + first_free_tab]
	test	rcx, rcx
	je	.label_393
	xor	edx, edx
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_401:
	mov	rsi, qword ptr [rax + rdx*8]
	test	rsi, rsi
	je	.label_394
	cmp	rsi, rdi
	jbe	.label_397
	inc	rdx
	cmp	rdx, rcx
	mov	rdi, rsi
	jb	.label_401
.label_393:
	mov	rsi, qword ptr [rip + increment_size]
	mov	rdx, qword ptr [rip + extend_size]
	test	rsi, rsi
	je	.label_404
	test	rdx, rdx
	jne	.label_399
.label_404:
	test	rcx, rcx
	je	.label_402
	or	rdx, rsi
	jne	.label_403
	cmp	rcx, 1
	jne	.label_403
	mov	rax, qword ptr [rax]
	mov	qword ptr [rip + tab_size],  rax
	pop	rax
	ret	
.label_394:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	jmp	.label_396
.label_399:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
	jmp	.label_396
	.section	.text
	.align	16
	#Procedure 0x4048df
	.globl sub_4048df
	.type sub_4048df, @function
sub_4048df:

	nop	word ptr cs:[rax + rax]
.label_397:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
.label_396:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_403:
	mov	qword ptr [rip + tab_size],  0
	pop	rax
	ret	
.label_402:
	test	rsi, rsi
	mov	eax, 8
	cmovne	rax, rsi
	test	rdx, rdx
	cmovne	rax, rdx
	mov	qword ptr [rip + max_column_width],  rax
	mov	qword ptr [rip + tab_size],  rax
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404940

	.globl cleanup_file_list_stdin
	.type cleanup_file_list_stdin, @function
cleanup_file_list_stdin:
	push	rax
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_405
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	jne	.label_407
.label_405:
	pop	rax
	ret	
.label_407:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_406
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980

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
	je	.label_408
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
.label_408:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a15
	.globl sub_404a15
	.type sub_404a15, @function
sub_404a15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a20
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
	#Procedure 0x404a56
	.globl sub_404a56
	.type sub_404a56, @function
sub_404a56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a60
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x404a65
	.globl sub_404a65
	.type sub_404a65, @function
sub_404a65:

	nop	word ptr cs:[rax + rax]
.label_409:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a75
	.globl sub_404a75
	.type sub_404a75, @function
sub_404a75:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a7d
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
	je	.label_409
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
	.section	.text
	.align	16
	#Procedure 0x404ae0
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
	#Procedure 0x404af8
	.globl sub_404af8
	.type sub_404af8, @function
sub_404af8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b00
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_410
	test	rdx, rdx
	je	.label_410
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_410:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b6e
	.globl sub_404b6e
	.type sub_404b6e, @function
sub_404b6e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b70
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404b7e
	.globl sub_404b7e
	.type sub_404b7e, @function
sub_404b7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b80

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
	js	.label_411
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_414
	cmp	r12d, 0x7fffffff
	je	.label_416
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
	jne	.label_412
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_412:
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
.label_414:
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
	jbe	.label_417
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_413
.label_417:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_415
	mov	rdi, r14
	call	free
.label_415:
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
.label_413:
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
.label_411:
	call	abort
.label_416:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404d3d
	.globl sub_404d3d
	.type sub_404d3d, @function
sub_404d3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
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
	#Procedure 0x404d94
	.globl sub_404d94
	.type sub_404d94, @function
sub_404d94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0
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
	#Procedure 0x404daf
	.globl sub_404daf
	.type sub_404daf, @function
sub_404daf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404db0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_418
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_418
	test	byte ptr [rbx + 1], 1
	je	.label_418
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_418:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404de3
	.globl sub_404de3
	.type sub_404de3, @function
sub_404de3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_82]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_83]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_84]
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
	#Procedure 0x404e45
	.globl sub_404e45
	.type sub_404e45, @function
sub_404e45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50

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
	je	.label_419
	cmp	r15, -2
	jb	.label_419
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_419
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_419:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ea6
	.globl sub_404ea6
	.type sub_404ea6, @function
sub_404ea6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f15
	.globl sub_404f15
	.type sub_404f15, @function
sub_404f15:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f22
	.globl sub_404f22
	.type sub_404f22, @function
sub_404f22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f46
	.globl sub_404f46
	.type sub_404f46, @function
sub_404f46:

	nop	word ptr cs:[rax + rax]
