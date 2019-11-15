	.section	.text
	.align	16
	#Procedure 0x4014f9
	.globl sub_4014f9
	.type sub_4014f9, @function
sub_4014f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4014fa
	.globl sub_4014fa
	.type sub_4014fa, @function
sub_4014fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401532
	.globl sub_401532
	.type sub_401532, @function
sub_401532:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40157a
	.globl sub_40157a
	.type sub_40157a, @function
sub_40157a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40159c
	.globl sub_40159c
	.type sub_40159c, @function
sub_40159c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015ad
	.globl sub_4015ad
	.type sub_4015ad, @function
sub_4015ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015c6
	.globl sub_4015c6
	.type sub_4015c6, @function
sub_4015c6:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4015d5
	.globl sub_4015d5
	.type sub_4015d5, @function
sub_4015d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015db

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_9
.label_10:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_11
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_12
	test	rbx, rbx
	jne	.label_12
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_11:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401624
	.globl sub_401624
	.type sub_401624, @function
sub_401624:

	nop	dword ptr [rax + rax]
.label_12:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_13
	test	rax, rax
	je	.label_11
.label_13:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401640
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x401645
	.globl sub_401645
	.type sub_401645, @function
sub_401645:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
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
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_14
	call	rpl_calloc
	test	rax, rax
	je	.label_14
	pop	rcx
	ret	
.label_14:
	call	xalloc_die
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
	#Procedure 0x401751
	.globl sub_401751
	.type sub_401751, @function
sub_401751:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401760

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_16
	cmp	byte ptr [rax], 0x43
	jne	.label_18
	cmp	byte ptr [rax + 1], 0
	je	.label_15
.label_18:
	mov	esi, OFFSET FLAT:label_17
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_16
.label_15:
	xor	ebx, ebx
.label_16:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401791
	.globl sub_401791
	.type sub_401791, @function
sub_401791:

	nop	word ptr cs:[rax + rax]
.label_35:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	#Procedure 0x4017d8
	.globl sub_4017d8
	.type sub_4017d8, @function
sub_4017d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_35
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_33
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_33
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_44:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_45
	test	rax, rax
	je	.label_46
.label_45:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a84

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_44
	test	rbx, rbx
	jne	.label_44
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_46:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401aa0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_47
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_48
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ac5
	.globl sub_401ac5
	.type sub_401ac5, @function
sub_401ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ad0

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
	#Procedure 0x401ae9
	.globl sub_401ae9
	.type sub_401ae9, @function
sub_401ae9:

	nop	dword ptr [rax]
.label_49:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401af5
	.globl sub_401af5
	.type sub_401af5, @function
sub_401af5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401afd

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
	je	.label_49
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
	#Procedure 0x401b60
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_50]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_52]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_53
	test	rsi, rsi
	je	.label_53
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
.label_53:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401bcc
	.globl sub_401bcc
	.type sub_401bcc, @function
sub_401bcc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401bd0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_50]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_52]
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
	#Procedure 0x401c3f
	.globl sub_401c3f
	.type sub_401c3f, @function
sub_401c3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
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
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_56
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_68
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_57
	test	esi, esi
	jne	.label_56
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_71
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_72
.label_56:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_54
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_57
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_60
.label_68:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_63
.label_57:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_64
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_65
.label_64:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_65:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_66:
	call	fcntl
.label_63:
	mov	ebp, eax
.label_59:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_60:
	cmp	eax, 6
	jne	.label_54
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_74
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_55
.label_54:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_58
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_62
.label_71:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_72:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_66
.label_74:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_55:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_69
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_73
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_73
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_59
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_61
.label_73:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_59
.label_58:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_62:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_63
.label_69:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_61:
	test	al, al
	je	.label_59
	test	ebp, ebp
	js	.label_59
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_70
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_59
.label_70:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_59
	.section	.text
	.align	16
	#Procedure 0x401ed1
	.globl sub_401ed1
	.type sub_401ed1, @function
sub_401ed1:

	nop	word ptr cs:[rax + rax]
.label_76:
	call	xalloc_die
.label_78:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401eea
	.globl sub_401eea
	.type sub_401eea, @function
sub_401eea:

	nop	word ptr cs:[rax + rax]
.label_79:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_76
	mov	qword ptr [rsi], rbx
.label_77:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_75
	test	rax, rax
	je	.label_76
.label_75:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f1e

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_79
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_78
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_77
	call	free
	xor	eax, eax
	jmp	.label_75
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f5f
	.globl sub_401f5f
	.type sub_401f5f, @function
sub_401f5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401f6a
	.globl sub_401f6a
	.type sub_401f6a, @function
sub_401f6a:

	nop	word ptr [rax + rax]
.label_80:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401f75
	.globl sub_401f75
	.type sub_401f75, @function
sub_401f75:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f7b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_50]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_52]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_80
	test	rdx, rdx
	je	.label_80
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
	#Procedure 0x401fe0

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
	je	.label_81
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_85
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_82
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_84
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_81
.label_84:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_83
.label_85:
	mov	rax, rbx
	jmp	.label_81
.label_82:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_83:
	xor	eax, eax
.label_81:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402066
	.globl sub_402066
	.type sub_402066, @function
sub_402066:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402070

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
	#Procedure 0x402087
	.globl sub_402087
	.type sub_402087, @function
sub_402087:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402090
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_86
	test	rdx, rdx
	je	.label_86
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_86:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4020bb
	.globl sub_4020bb
	.type sub_4020bb, @function
sub_4020bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_87
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_90
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_88
.label_93:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4020f2
	.globl sub_4020f2
	.type sub_4020f2, @function
sub_4020f2:

	nop	word ptr [rax + rax]
.label_89:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_92
	test	rax, rax
	je	.label_90
.label_92:
	pop	rbx
	ret	
.label_87:
	test	rcx, rcx
	jne	.label_91
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_91:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_93
.label_88:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_89
	test	rbx, rbx
	jne	.label_89
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_90:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402160

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1b8
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_47
	call	setlocale
	mov	edi, OFFSET FLAT:label_145
	mov	esi, OFFSET FLAT:label_146
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_145
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + only_file_1],  1
	mov	byte ptr [rip + only_file_2],  1
	mov	byte ptr [rip + both],  1
	mov	byte ptr [rip + seen_unpairable],  0
	mov	byte ptr [rip + label_147],  0
	mov	byte ptr [rip + issued_disorder_warning],  0
	mov	dword ptr [rip + check_input_order],  0
	mov	byte ptr [rip + total_option],  0
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x4021fe
	.globl sub_4021fe
	.type sub_4021fe, @function
sub_4021fe:

	nop	
.label_158:
	mov	byte ptr [rip + only_file_1],  0
.label_102:
	mov	edx, OFFSET FLAT:label_97
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x31
	jle	.label_105
	lea	ecx, [rax - 0x7a]
	cmp	ecx, 9
	ja	.label_169
	jmp	qword ptr [(rcx * 8) + label_110]
.label_527:
	mov	byte ptr [rip + delim],  1
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x40223c
	.globl sub_40223c
	.type sub_40223c, @function
sub_40223c:

	nop	dword ptr [rax]
.label_105:
	cmp	eax, 0x30
	jle	.label_120
	jmp	.label_158
.label_169:
	cmp	eax, 0x32
	je	.label_123
	cmp	eax, 0x33
	jne	.label_126
	mov	byte ptr [rip + both],  0
	jmp	.label_102
.label_528:
	mov	dword ptr [rip + check_input_order],  1
	jmp	.label_102
.label_529:
	mov	dword ptr [rip + check_input_order],  2
	jmp	.label_102
.label_530:
	cmp	qword ptr [rip + col_sep_len],  0
	je	.label_136
	mov	rdi, qword ptr [rip + col_sep]
	mov	rbx, qword ptr [rip + optarg]
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_150
	jmp	.label_151
.label_531:
	mov	byte ptr [rip + total_option],  1
	jmp	.label_102
.label_123:
	mov	byte ptr [rip + only_file_2],  0
	jmp	.label_102
.label_136:
	mov	rbx, qword ptr [rip + optarg]
.label_150:
	mov	qword ptr [rip + col_sep],  rbx
	cmp	byte ptr [rbx], 0
	mov	eax, 1
	je	.label_144
	mov	rdi, rbx
	call	strlen
.label_144:
	mov	qword ptr [rip + col_sep_len],  rax
	jmp	.label_102
.label_120:
	cmp	eax, -1
	jne	.label_172
	cmp	qword ptr [rip + col_sep_len],  0
	jne	.label_174
	mov	qword ptr [rip + col_sep_len],  1
.label_174:
	movsxd	r12, dword ptr [rip + optind]
	mov	eax, r14d
	sub	eax, r12d
	cmp	eax, 1
	jle	.label_96
	cmp	eax, 2
	jne	.label_103
	lea	rbx, [rsp + 0xf0]
	mov	rdi, rbx
	call	initbuffer
	mov	qword ptr [rsp + 0x50], rbx
	lea	rbx, [rsp + 0x108]
	mov	rdi, rbx
	call	initbuffer
	mov	qword ptr [rsp + 0x58], rbx
	lea	rbx, [rsp + 0x120]
	mov	rdi, rbx
	call	initbuffer
	mov	qword ptr [rsp + 0x60], rbx
	lea	rbx, [rsp + 0x138]
	mov	rdi, rbx
	call	initbuffer
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, qword ptr [r15 + r12*8]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_133
	cmp	byte ptr [rdi + 1], 0
	je	.label_140
.label_133:
	mov	esi, OFFSET FLAT:label_143
	call	fopen_safer
	mov	r13, rax
.label_107:
	lea	r14, [r15 + r12*8]
	test	r13, r13
	je	.label_149
	mov	esi, 2
	mov	rdi, r13
	call	fadvise
	mov	al, byte ptr [rip + delim]
	test	al, al
	jne	.label_157
	mov	al, 0xa
	jmp	.label_159
.label_157:
	xor	eax, eax
.label_159:
	movzx	edx, al
	lea	rdi, [rsp + 0xf0]
	mov	rsi, r13
	call	readlinebuffer_delim
	mov	rbx, rax
	test	byte ptr [r13], 0x20
	jne	.label_167
	lea	r15, [rsp + 0x150]
	mov	rdi, r15
	call	initbuffer
	mov	qword ptr [rsp + 0x70], r15
	lea	rbp, [rsp + 0x168]
	mov	rdi, rbp
	call	initbuffer
	mov	qword ptr [rsp + 0x78], rbp
	lea	rbp, [rsp + 0x180]
	mov	rdi, rbp
	call	initbuffer
	mov	qword ptr [rsp + 0x80], rbp
	lea	rbp, [rsp + 0x198]
	mov	rdi, rbp
	call	initbuffer
	mov	qword ptr [rsp + 0x88], rbp
	mov	rdi, qword ptr [r14 + 8]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_114
	cmp	byte ptr [rdi + 1], 0
	je	.label_122
.label_114:
	mov	esi, OFFSET FLAT:label_143
	call	fopen_safer
	mov	rbp, rax
.label_111:
	lea	r12, [r14 + 8]
	test	rbp, rbp
	je	.label_129
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	al, byte ptr [rip + delim]
	test	al, al
	mov	qword ptr [rsp + 0x40], r13
	jne	.label_135
	mov	al, 0xa
	jmp	.label_141
.label_135:
	xor	eax, eax
.label_141:
	mov	qword ptr [rsp + 0x48], r14
	movzx	edx, al
	mov	rdi, r15
	mov	rsi, rbp
	call	readlinebuffer_delim
	mov	r15, rax
	mov	qword ptr [rsp + 0x38], rbp
	test	byte ptr [rbp], 0x20
	jne	.label_152
	xor	r14d, r14d
	mov	rax, rbx
	or	rax, r15
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	je	.label_173
	mov	dword ptr [rsp + 0x10], 0
	mov	ebp, 0
	mov	dword ptr [rsp + 0xc], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_113
.label_160:
	mov	eax, ebp
	mov	dword ptr [rsp + 0xc], eax
	mov	ebp, r14d
	mov	eax, dword ptr [rsp + 0x10]
	mov	r14d, eax
	jmp	.label_98
.label_134:
	mov	al, cl
	jmp	.label_95
	.section	.text
	.align	16
	#Procedure 0x402523
	.globl sub_402523
	.type sub_402523, @function
sub_402523:

	nop	word ptr cs:[rax + rax]
.label_113:
	test	rbx, rbx
	je	.label_164
	test	r15, r15
	je	.label_116
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_121
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	dec	rsi
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	dec	rcx
	call	xmemcoll
.label_95:
	test	eax, eax
	jne	.label_137
	mov	rax, qword ptr [rsp + 0x18]
	inc	rax
	mov	bl, 1
	cmp	byte ptr [rip + both],  1
	mov	qword ptr [rsp + 0x18], rax
	jne	.label_165
	mov	r12, qword ptr [rip + stdout]
	cmp	byte ptr [rip + only_file_1],  1
	jne	.label_115
	mov	rdi, qword ptr [rip + col_sep]
	mov	rdx, qword ptr [rip + col_sep_len]
	mov	esi, 1
	mov	rcx, r12
	call	fwrite_unlocked
.label_115:
	cmp	byte ptr [rip + only_file_2],  1
	jne	.label_128
	mov	rdi, qword ptr [rip + col_sep]
	mov	rdx, qword ptr [rip + col_sep_len]
	mov	esi, 1
	mov	rcx, r12
	call	fwrite_unlocked
.label_128:
	mov	rdx, qword ptr [r15 + 8]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	rcx, r12
	call	fwrite_unlocked
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x4025f7
	.globl sub_4025f7
	.type sub_4025f7, @function
sub_4025f7:

	nop	word ptr [rax + rax]
.label_164:
	mov	byte ptr [rip + seen_unpairable],  1
	jmp	.label_94
.label_121:
	mov	r12, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r13, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	cmp	r12, r13
	mov	rdx, r13
	cmovb	rdx, r12
	dec	rdx
	call	memcmp
	test	eax, eax
	je	.label_109
.label_137:
	mov	byte ptr [rip + seen_unpairable],  1
	test	eax, eax
	jle	.label_161
.label_94:
	mov	qword ptr [rsp + 0x20], rbx
	inc	qword ptr [rsp + 0x30]
	cmp	byte ptr [rip + only_file_2],  1
	jne	.label_117
	mov	r13, qword ptr [rip + stdout]
	cmp	byte ptr [rip + only_file_1],  1
	jne	.label_124
	mov	rdi, qword ptr [rip + col_sep]
	mov	rdx, qword ptr [rip + col_sep_len]
	mov	esi, 1
	mov	rcx, r13
	call	fwrite_unlocked
.label_124:
	mov	rdx, qword ptr [r15 + 8]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	rcx, r13
	call	fwrite_unlocked
.label_117:
	mov	r12d, ebp
	jmp	.label_162
.label_109:
	xor	eax, eax
	cmp	r12, r13
	setne	cl
	jae	.label_134
	nop	word ptr cs:[rax + rax]
.label_116:
	mov	byte ptr [rip + seen_unpairable],  1
.label_161:
	inc	qword ptr [rsp + 0x28]
	cmp	byte ptr [rip + only_file_1],  1
	jne	.label_156
	mov	rcx, qword ptr [rip + stdout]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	esi, 1
	call	fwrite_unlocked
.label_156:
	xor	ebx, ebx
.label_165:
	lea	r12d, [rbp + 1]
	and	r12d, 3
	mov	rdi, qword ptr [rsp + r12*8 + 0x50]
	movzx	eax, byte ptr [rip + delim]
	test	al, al
	jne	.label_170
	mov	al, 0xa
	jmp	.label_177
	.section	.text
	.align	16
	#Procedure 0x4026fc
	.globl sub_4026fc
	.type sub_4026fc, @function
sub_4026fc:

	nop	dword ptr [rax]
.label_170:
	xor	eax, eax
.label_177:
	movzx	edx, al
	mov	rsi, qword ptr [rsp + 0x40]
	call	readlinebuffer_delim
	test	rax, rax
	mov	qword ptr [rsp + 0x20], rax
	je	.label_99
	movsxd	rcx, ebp
	mov	rdi, qword ptr [rsp + rcx*8 + 0x50]
	mov	edx, 1
	mov	rsi, rax
	jmp	.label_101
.label_99:
	movsxd	rax, dword ptr [rsp + 0xc]
	mov	rdi, qword ptr [rsp + rax*8 + 0x50]
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_166
	movsxd	rax, ebp
	mov	rsi, qword ptr [rsp + rax*8 + 0x50]
	mov	edx, 1
.label_101:
	call	check_order
.label_166:
	mov	rax, qword ptr [rsp + 0x40]
	test	byte ptr [rax], 0x20
	mov	r13d, 0
	jne	.label_125
	test	bl, bl
	mov	eax, ebp
	mov	dword ptr [rsp + 0xc], eax
	je	.label_160
.label_162:
	lea	ebp, [r14 + 1]
	and	ebp, 3
	mov	rdi, qword ptr [rsp + rbp*8 + 0x70]
	movzx	eax, byte ptr [rip + delim]
	test	al, al
	jne	.label_132
	mov	al, 0xa
	jmp	.label_100
	.section	.text
	.align	16
	#Procedure 0x40278b
	.globl sub_40278b
	.type sub_40278b, @function
sub_40278b:

	nop	dword ptr [rax + rax]
.label_132:
	xor	eax, eax
.label_100:
	mov	rbx, qword ptr [rsp + 0x38]
	movzx	edx, al
	mov	rsi, rbx
	call	readlinebuffer_delim
	mov	r15, rax
	test	r15, r15
	je	.label_153
	movsxd	rax, r14d
	mov	rdi, qword ptr [rsp + rax*8 + 0x70]
	mov	edx, 2
	mov	rsi, r15
	jmp	.label_155
	.section	.text
	.align	16
	#Procedure 0x4027bc
	.globl sub_4027bc
	.type sub_4027bc, @function
sub_4027bc:

	nop	dword ptr [rax]
.label_153:
	movsxd	rax, dword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + rax*8 + 0x70]
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_168
	movsxd	rax, r14d
	mov	rsi, qword ptr [rsp + rax*8 + 0x70]
	mov	edx, 2
.label_155:
	call	check_order
.label_168:
	test	byte ptr [rbx], 0x20
	mov	r13d, 1
	jne	.label_125
.label_98:
	mov	eax, r14d
	mov	dword ptr [rsp + 0x10], eax
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rax, rbx
	or	rax, r15
	mov	r14d, ebp
	mov	ebp, r12d
	jne	.label_113
.label_173:
	mov	rdi, qword ptr [rsp + 0x40]
	call	rpl_fclose
	xor	ebp, ebp
	test	eax, eax
	jne	.label_112
	mov	rdi, qword ptr [rsp + 0x38]
	call	rpl_fclose
	mov	ebp, 1
	test	eax, eax
	jne	.label_112
	mov	al, byte ptr [rip + total_option]
	test	al, al
	je	.label_118
	lea	rsi, [rsp + 0xd0]
	mov	rdi, qword ptr [rsp + 0x28]
	call	umaxtostr
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rip + col_sep]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x30]
	call	umaxtostr
	mov	r12, rax
	mov	r13, qword ptr [rip + col_sep]
	lea	rsi, [rsp + 0x90]
	mov	rdi, qword ptr [rsp + 0x18]
	call	umaxtostr
	mov	r15, rax
	mov	r14, qword ptr [rip + col_sep]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	al, byte ptr [rip + delim]
	test	al, al
	mov	ebx, 0xa
	mov	eax, 0
	cmovne	ebx, eax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_119
	mov	eax, 0
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r13
	push	rbx
	push	rbp
	push	r14
	push	r15
	call	__printf_chk
	add	rsp, 0x20
.label_118:
	mov	al, byte ptr [rip + label_147]
	or	al, byte ptr [rip + issued_disorder_warning]
	jne	.label_148
	xor	eax, eax
	add	rsp, 0x1b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_140:
	mov	r13, qword ptr [rip + stdin]
	jmp	.label_107
.label_122:
	mov	rbp, qword ptr [rip + stdin]
	jmp	.label_111
.label_125:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rax + r13*8]
.label_142:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_127
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_172:
	cmp	eax, 0xffffff7d
	je	.label_131
	cmp	eax, 0xffffff7e
	jne	.label_126
	xor	edi, edi
	call	usage
.label_131:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_27
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_138
	mov	r9d, OFFSET FLAT:label_139
	xor	eax, eax
	push	0
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_112:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rax + rbp*8]
	jmp	.label_142
.label_126:
	mov	edi, 1
	call	usage
.label_96:
	xor	edi, edi
	cmp	r12d, r14d
	jge	.label_108
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r14d
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_149:
	mov	rbp, r14
	jmp	.label_130
.label_167:
	mov	r12, r14
.label_152:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [r12]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_127
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_129:
	mov	rbp, r12
.label_130:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rbp]
	jmp	.label_142
.label_148:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
.label_176:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_108:
	mov	esi, OFFSET FLAT:label_163
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
.label_151:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	jmp	.label_176
	.section	.text
	.align	16
	#Procedure 0x402b00
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x402b09
	.globl sub_402b09
	.type sub_402b09, @function
sub_402b09:

	nop	dword ptr [rax]
.label_181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_179
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_127
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_182:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402b5c

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_183
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_181
	cmp	dword ptr [rbp], 0x20
	jne	.label_181
.label_183:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_182
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_179:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_180
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
	#Procedure 0x402bd0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_50]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_52]
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
	#Procedure 0x402c3e
	.globl sub_402c3e
	.type sub_402c3e, @function
sub_402c3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_184
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_186
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_186
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_189
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_189:
	mov	rbx, r14
.label_186:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_184:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_185
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402ce1
	.globl sub_402ce1
	.type sub_402ce1, @function
sub_402ce1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cf8
	.globl sub_402cf8
	.type sub_402cf8, @function
sub_402cf8:

	nop	dword ptr [rax + rax]
.label_190:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402d05
	.globl sub_402d05
	.type sub_402d05, @function
sub_402d05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_190
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_191
	test	rax, rax
	je	.label_190
.label_191:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d40

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	r15, r14
	jne	.label_192
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_194
.label_192:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_196:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_193
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_195
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_196
	jmp	.label_193
.label_194:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_193:
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
	#Procedure 0x402de6
	.globl sub_402de6
	.type sub_402de6, @function
sub_402de6:

	nop	dword ptr [rax]
.label_195:
	neg	r14
	sbb	eax, eax
	jmp	.label_193
	.section	.text
	.align	16
	#Procedure 0x402df0
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
	je	.label_198
	test	r15, r15
	je	.label_197
.label_198:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_197:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402e32
	.globl sub_402e32
	.type sub_402e32, @function
sub_402e32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_50]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_52]
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
	#Procedure 0x402e94
	.globl sub_402e94
	.type sub_402e94, @function
sub_402e94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_199
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402eeb
	.globl sub_402eeb
	.type sub_402eeb, @function
sub_402eeb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	memcoll0
	mov	r13d, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_203
	dec	rbp
	dec	r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rbx, r15
	mov	r15d, r13d
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbp
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	r13d, r15d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_203:
	mov	eax, r13d
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
	#Procedure 0x402fe4
	.globl sub_402fe4
	.type sub_402fe4, @function
sub_402fe4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_127
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403020
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
	#Procedure 0x403095
	.globl sub_403095
	.type sub_403095, @function
sub_403095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0
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
	#Procedure 0x4030b3
	.globl sub_4030b3
	.type sub_4030b3, @function
sub_4030b3:

	nop	word ptr cs:[rax + rax]
.label_206:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_205
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_205:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030f4
	.globl sub_4030f4
	.type sub_4030f4, @function
sub_4030f4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4030f6

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
	jne	.label_207
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_207
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_206
.label_207:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403130
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
	#Procedure 0x403148
	.globl sub_403148
	.type sub_403148, @function
sub_403148:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_208
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_208:
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
	#Procedure 0x4031d3
	.globl sub_4031d3
	.type sub_4031d3, @function
sub_4031d3:

	nop	word ptr cs:[rax + rax]
.label_209:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4031e5
	.globl sub_4031e5
	.type sub_4031e5, @function
sub_4031e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031f0

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
	je	.label_209
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
	.section	.text
	.align	16
	#Procedure 0x403280
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
	#Procedure 0x40328f
	.globl sub_40328f
	.type sub_40328f, @function
sub_40328f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403290
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
	#Procedure 0x40329f
	.globl sub_40329f
	.type sub_40329f, @function
sub_40329f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4032a0
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
	#Procedure 0x4032d6
	.globl sub_4032d6
	.type sub_4032d6, @function
sub_4032d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_50]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_52]
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
	#Procedure 0x403335
	.globl sub_403335
	.type sub_403335, @function
sub_403335:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403340
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4033b4
	.globl sub_4033b4
	.type sub_4033b4, @function
sub_4033b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x4033ce
	.globl sub_4033ce
	.type sub_4033ce, @function
sub_4033ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4033d0

	.globl check_order
	.type check_order, @function
check_order:
	push	rbp
	push	rbx
	push	rax
	mov	eax, dword ptr [rip + check_input_order]
	cmp	eax, 1
	je	.label_216
	cmp	eax, 2
	je	.label_214
	cmp	byte ptr [rip + seen_unpairable],  1
	jne	.label_214
.label_216:
	movsxd	rbx, edx
	cmp	byte ptr [rbx + seen_unpairable],  0
	jne	.label_214
	mov	rax, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rdi + 0x10]
	dec	rax
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	dec	rcx
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_218
	mov	rsi, rax
	call	xmemcoll
	jmp	.label_215
.label_218:
	mov	rsi, rax
	call	memcmp2
.label_215:
	test	eax, eax
	jle	.label_214
	xor	ebp, ebp
	cmp	dword ptr [rip + check_input_order],  1
	sete	bpl
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	mov	byte ptr [rbx + seen_unpairable],  1
.label_214:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_220:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_219
	call	__errno_location
	mov	dword ptr [rax], 0
.label_219:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40348b

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
	jne	.label_220
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_219
	test	cl, cl
	jne	.label_219
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_219
	.section	.text
	.align	16
	#Procedure 0x4034d0
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
	je	.label_221
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
.label_221:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40353c
	.globl sub_40353c
	.type sub_40353c, @function
sub_40353c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403540

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
	je	.label_222
	cmp	r15, -2
	jb	.label_222
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_222
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_222:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403596
	.globl sub_403596
	.type sub_403596, @function
sub_403596:

	nop	word ptr cs:[rax + rax]
.label_223:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4035ac
	.globl sub_4035ac
	.type sub_4035ac, @function
sub_4035ac:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035b8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_223
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_225
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_223
.label_225:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_223
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_224
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_224:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403620
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	r14, rdi
	xor	eax, eax
	test	byte ptr [r13], 0x10
	jne	.label_226
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_228:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_230
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_229:
	cmp	rbx, r12
	jne	.label_227
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_227:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, 0xa
	jne	.label_228
	jmp	.label_231
.label_230:
	mov	rdi, r13
	call	__uflow
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_229
	cmp	rbx, r15
	mov	eax, 0
	je	.label_226
	test	byte ptr [r13], 0x20
	jne	.label_226
	mov	ebp, 0xa
	cmp	byte ptr [rbx - 1], 0xa
	jne	.label_229
.label_231:
	sub	rbx, r15
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_226:
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
	#Procedure 0x4036d9
	.globl sub_4036d9
	.type sub_4036d9, @function
sub_4036d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_232:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_232
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403701
	.globl sub_403701
	.type sub_403701, @function
sub_403701:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403710
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
	#Procedure 0x403729
	.globl sub_403729
	.type sub_403729, @function
sub_403729:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403730

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_243
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_245
.label_243:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_245:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_233
	cmp	r10d, 0x29
	jae	.label_242
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_244
.label_242:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_244:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_233
	cmp	r10d, 0x29
	jae	.label_240
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_241
.label_240:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_241:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_233
	cmp	r10d, 0x29
	jae	.label_238
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_239
.label_238:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_239:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_233
	cmp	r10d, 0x29
	jae	.label_236
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_237
.label_236:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_237:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_233
	cmp	r10d, 0x29
	jae	.label_234
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_235
.label_234:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_235:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_233
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_233
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_233
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_233
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_233:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403912
	.globl sub_403912
	.type sub_403912, @function
sub_403912:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403920

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_246
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rbx, r13
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	r14, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbx
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	rcx, r14
	mov	r8, rbx
	call	error
.label_246:
	mov	eax, ebp
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
	#Procedure 0x403a06
	.globl sub_403a06
	.type sub_403a06, @function
sub_403a06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a10
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
	je	.label_248
	test	r14, r14
	je	.label_247
.label_248:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_247:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a46
	.globl sub_403a46
	.type sub_403a46, @function
sub_403a46:

	nop	word ptr cs:[rax + rax]
.label_253:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_249
	mov	eax, OFFSET FLAT:label_250
	jmp	.label_251
	.section	.text
	.align	16
	#Procedure 0x403a5f
	.globl sub_403a5f
	.type sub_403a5f, @function
sub_403a5f:

	nop	word ptr cs:[rax + rax]
.label_258:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_252
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_252
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_252
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_252
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_252
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_252
	cmp	byte ptr [rax + 7], 0
	je	.label_253
.label_252:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_254
	mov	eax, OFFSET FLAT:label_255
.label_251:
	cmove	rax, rcx
.label_259:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ab2

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
	jne	.label_259
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_258
	cmp	ecx, 0x55
	jne	.label_252
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_252
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_252
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_252
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_252
	cmp	byte ptr [rax + 5], 0
	jne	.label_252
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_256
	mov	eax, OFFSET FLAT:label_257
	jmp	.label_251
.label_260:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403b25
	.globl sub_403b25
	.type sub_403b25, @function
sub_403b25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b34
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
	je	.label_260
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
	.section	.text
	.align	16
	#Procedure 0x403b90
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403b9a
	.globl sub_403b9a
	.type sub_403b9a, @function
sub_403b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ba0
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
	je	.label_261
	mov	qword ptr [rax], rbx
.label_261:
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
	#Procedure 0x403c8c
	.globl sub_403c8c
	.type sub_403c8c, @function
sub_403c8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c90
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403c9e
	.globl sub_403c9e
	.type sub_403c9e, @function
sub_403c9e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403ca0

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
	js	.label_262
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_265
	cmp	r12d, 0x7fffffff
	je	.label_267
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
	jne	.label_263
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_263:
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
.label_265:
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
	jbe	.label_268
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_264
.label_268:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_266
	mov	rdi, r14
	call	free
.label_266:
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
.label_264:
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
.label_262:
	call	abort
.label_267:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e5d
	.globl sub_403e5d
	.type sub_403e5d, @function
sub_403e5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e60

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
	test	byte ptr [rbx + 1], 1
	je	.label_269
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_269:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403e93
	.globl sub_403e93
	.type sub_403e93, @function
sub_403e93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_50]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_52]
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
	#Procedure 0x403f0e
	.globl sub_403f0e
	.type sub_403f0e, @function
sub_403f0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403f10
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
	#Procedure 0x403f43
	.globl sub_403f43
	.type sub_403f43, @function
sub_403f43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50

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
	je	.label_271
	test	r15, r15
	je	.label_272
.label_271:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_272:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f8c
	.globl sub_403f8c
	.type sub_403f8c, @function
sub_403f8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f90

	.globl memcmp2
	.type memcmp2, @function
memcmp2:
	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rsi
	cmp	rbx, r14
	mov	rax, r14
	cmovbe	rax, rbx
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	jne	.label_273
	mov	eax, 0xffffffff
	cmp	rbx, r14
	jb	.label_273
	cmp	r14, rbx
	sbb	eax, eax
	and	eax, 1
.label_273:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fcd
	.globl sub_403fcd
	.type sub_403fcd, @function
sub_403fcd:

	nop	dword ptr [rax]
.label_275:
	mov	ecx, 1
.label_274:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403fe0
	.globl sub_403fe0
	.type sub_403fe0, @function
sub_403fe0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fe5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_275
	test	rsi, rsi
	mov	ecx, 1
	je	.label_274
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_274
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_276:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404025
	.globl sub_404025
	.type sub_404025, @function
sub_404025:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40402d
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
	je	.label_276
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
	#Procedure 0x404090
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4040a1
	.globl sub_4040a1
	.type sub_4040a1, @function
sub_4040a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_277
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_280:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_280
.label_277:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_281
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_279], OFFSET FLAT:slot0
.label_281:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_278
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_278:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404141
	.globl sub_404141
	.type sub_404141, @function
sub_404141:

	nop	word ptr cs:[rax + rax]
.label_282:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404155
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_50]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_52]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_282
	test	rsi, rsi
	je	.label_282
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
	#Procedure 0x4041c0

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
	jmp	.label_285
	.section	.text
	.align	16
	#Procedure 0x40426f
	.globl sub_40426f
	.type sub_40426f, @function
sub_40426f:

	nop	
.label_331:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_312
	or	al, dl
	jne	.label_312
	test	dil, 1
	jne	.label_329
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_312
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_285
	jmp	.label_312
.label_474:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_337
	test	rbp, rbp
	je	.label_389
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_389:
	mov	r14d, 1
	jmp	.label_342
.label_475:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_254
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_291
.label_337:
	xor	r14d, r14d
.label_342:
	mov	eax, OFFSET FLAT:label_254
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x40433f
	.globl sub_40433f
	.type sub_40433f, @function
sub_40433f:

	nop	
.label_285:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_362
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_396]
.label_476:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_374
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_255
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_477:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_328
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_328
	xor	r14d, r14d
	nop	
.label_357:
	cmp	r14, rbp
	jae	.label_340
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_340:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_357
.label_328:
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
	jmp	.label_291
.label_469:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_291
.label_472:
	mov	al, 1
.label_470:
	mov	r12b, 1
.label_473:
	test	r12b, 1
	mov	cl, 1
	je	.label_296
	mov	ecx, eax
.label_296:
	mov	al, cl
.label_471:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_299
	test	rbp, rbp
	je	.label_305
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_305:
	mov	r14d, 1
	jmp	.label_308
.label_299:
	xor	r14d, r14d
.label_308:
	mov	ecx, OFFSET FLAT:label_255
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_353:
	mov	sil, r12b
.label_291:
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
	jmp	.label_318
	.section	.text
	.align	16
	#Procedure 0x404501
	.globl sub_404501
	.type sub_404501, @function
sub_404501:

	nop	word ptr cs:[rax + rax]
.label_320:
	inc	r12
.label_318:
	cmp	r11, -1
	je	.label_347
	cmp	r12, r11
	jne	.label_349
	jmp	.label_350
	.section	.text
	.align	16
	#Procedure 0x404523
	.globl sub_404523
	.type sub_404523, @function
sub_404523:

	nop	word ptr cs:[rax + rax]
.label_347:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_356
.label_349:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_363
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_370
	cmp	r11, -1
	jne	.label_370
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_370:
	cmp	rbx, r11
	jbe	.label_379
.label_363:
	xor	esi, esi
.label_283:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_381
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_385]
.label_489:
	test	r12, r12
	jne	.label_321
	jmp	.label_351
	.section	.text
	.align	16
	#Procedure 0x4045b6
	.globl sub_4045b6
	.type sub_4045b6, @function
sub_4045b6:

	nop	word ptr cs:[rax + rax]
.label_379:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_397
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_283
	jmp	.label_306
.label_397:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_283
.label_493:
	xor	eax, eax
	cmp	r11, -1
	je	.label_290
	test	r12, r12
	jne	.label_295
	cmp	r11, 1
	je	.label_351
	xor	r13d, r13d
	jmp	.label_307
.label_482:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_301
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_306
	cmp	r8d, 2
	jne	.label_287
	mov	eax, r9d
	and	al, 1
	jne	.label_287
	cmp	r14, rbp
	jae	.label_311
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_311:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_313
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_404
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_404:
	add	r14, 3
	mov	r9b, 1
.label_287:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_327
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_327:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_298
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_298
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_298
	cmp	r14, rbp
	jae	.label_326
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_326:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_388
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_388:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_307
.label_483:
	mov	bl, 0x62
	jmp	.label_348
.label_484:
	mov	cl, 0x74
	jmp	.label_330
.label_485:
	mov	bl, 0x76
	jmp	.label_348
.label_486:
	mov	bl, 0x66
	jmp	.label_348
.label_487:
	mov	cl, 0x72
	jmp	.label_330
.label_490:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_360
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_317
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
	jae	.label_368
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_368:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_383
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_383:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_387
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_387:
	add	r14, 3
	xor	r9d, r9d
.label_360:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_307
.label_491:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_392
	cmp	r8d, 2
	jne	.label_321
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_321
	jmp	.label_317
.label_492:
	cmp	r8d, 2
	jne	.label_401
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_317
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_406
.label_381:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_284
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_297
.label_290:
	test	r12, r12
	jne	.label_309
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_309
.label_351:
	mov	dl, 1
.label_488:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_317
	xor	eax, eax
	mov	r13b, dl
.label_307:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_319
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_322
	jmp	.label_324
	.section	.text
	.align	16
	#Procedure 0x404894
	.globl sub_404894
	.type sub_404894, @function
sub_404894:

	nop	word ptr cs:[rax + rax]
.label_319:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_324
.label_322:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_402
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_333
	.section	.text
	.align	16
	#Procedure 0x4048cd
	.globl sub_4048cd
	.type sub_4048cd, @function
sub_4048cd:

	nop	dword ptr [rax]
.label_324:
	test	sil, sil
.label_333:
	mov	ebx, r15d
	je	.label_335
	jmp	.label_339
.label_402:
	mov	ebx, r15d
	jmp	.label_339
.label_301:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_320
	xor	r15d, r15d
	jmp	.label_321
.label_401:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_330
	xor	eax, eax
	mov	r15b, 0x5c
.label_406:
	xor	r13d, r13d
	jmp	.label_335
.label_330:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_317
.label_348:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_307
	nop	
.label_339:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_306
	cmp	r8d, 2
	jne	.label_361
	mov	eax, r9d
	and	al, 1
	jne	.label_361
	cmp	r14, rbp
	jae	.label_365
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_365:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_369
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_369:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_315
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	add	r14, 3
	mov	r9b, 1
.label_361:
	cmp	r14, rbp
	jae	.label_380
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_380:
	inc	r14
	jmp	.label_372
.label_284:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_386
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_386:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_390
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_367:
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
	je	.label_288
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_292
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_310
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_303
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_286:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_405
	bt	rsi, rdx
	jb	.label_317
.label_405:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_286
.label_303:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_382
	xor	r13d, r13d
.label_382:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_367
	jmp	.label_294
.label_298:
	xor	r13d, r13d
	jmp	.label_307
.label_309:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_307
.label_392:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_321
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_321
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_321
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_346
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_325
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_373
	cmp	r14, rbp
	jae	.label_358
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_358:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_364
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_364:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_352
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_352:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_378
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_378:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_325:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_307
.label_321:
	xor	eax, eax
.label_295:
	xor	r13d, r13d
	jmp	.label_307
.label_390:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_323:
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
	je	.label_398
	cmp	rbp, -1
	je	.label_400
	cmp	rbp, -2
	je	.label_288
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_407
	xor	r13d, r13d
.label_407:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_323
	jmp	.label_294
.label_288:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_302
	lea	rax, [r10 + r12]
.label_343:
	cmp	byte ptr [rax + rsi], 0
	je	.label_302
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_343
.label_302:
	mov	qword ptr [rsp + 0x40], rsi
.label_292:
	xor	r13d, r13d
	jmp	.label_310
.label_400:
	xor	r13d, r13d
.label_398:
	mov	r10, qword ptr [rsp + 0x28]
.label_310:
	mov	r12, qword ptr [rsp + 0x40]
.label_294:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_297:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_316
	test	al, al
	je	.label_316
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_307
.label_316:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_332
	.section	.text
	.align	16
	#Procedure 0x404cc7
	.globl sub_404cc7
	.type sub_404cc7, @function
sub_404cc7:

	nop	word ptr [rax + rax]
.label_293:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_332:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_338
	test	sil, 1
	je	.label_344
	cmp	r14, rbp
	jae	.label_341
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_341:
	inc	r14
	xor	esi, esi
	jmp	.label_344
	.section	.text
	.align	16
	#Procedure 0x404d05
	.globl sub_404d05
	.type sub_404d05, @function
sub_404d05:

	nop	word ptr cs:[rax + rax]
.label_338:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_306
	cmp	r8d, 2
	jne	.label_334
	mov	eax, r9d
	and	al, 1
	jne	.label_334
	cmp	r14, rbp
	jae	.label_355
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_355:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_359
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_359:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_345
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_345:
	add	r14, 3
	mov	r9b, 1
.label_334:
	cmp	r14, rbp
	jae	.label_371
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_371:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_376
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_376:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_384
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_384:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_344:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_335
	test	r9b, 1
	je	.label_393
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_336
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_395
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_395:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_403
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_403:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_393
	.section	.text
	.align	16
	#Procedure 0x404e16
	.globl sub_404e16
	.type sub_404e16, @function
sub_404e16:

	nop	word ptr cs:[rax + rax]
.label_336:
	mov	rbx, rcx
.label_393:
	cmp	r14, rbp
	jae	.label_293
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_293
	.section	.text
	.align	16
	#Procedure 0x404e3e
	.globl sub_404e3e
	.type sub_404e3e, @function
sub_404e3e:

	nop	
.label_335:
	test	r9b, 1
	je	.label_300
	and	al, 1
	jne	.label_300
	cmp	r14, rbp
	jae	.label_304
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_304:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_289
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_289:
	add	r14, 2
	xor	r9d, r9d
.label_300:
	mov	ebx, r15d
.label_372:
	cmp	r14, rbp
	jae	.label_314
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_314:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_320
.label_346:
	xor	r13d, r13d
	jmp	.label_307
	.section	.text
	.align	16
	#Procedure 0x404ea1
	.globl sub_404ea1
	.type sub_404ea1, @function
sub_404ea1:

	nop	word ptr cs:[rax + rax]
.label_350:
	mov	rcx, r12
.label_356:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_331
	or	al, dl
	jne	.label_331
	mov	r11, rcx
	jmp	.label_306
.label_317:
	mov	eax, 2
.label_399:
	mov	qword ptr [rsp + 0x38], rax
.label_306:
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
.label_391:
	mov	r14, rax
.label_394:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_312:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_366
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_354
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_354
	inc	rdx
	nop	dword ptr [rax + rax]
.label_377:
	cmp	r14, rbp
	jae	.label_375
	mov	byte ptr [rcx + r14], al
.label_375:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_377
	jmp	.label_354
.label_329:
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
	jmp	.label_391
.label_366:
	mov	rcx, qword ptr [rsp + 0x10]
.label_354:
	cmp	r14, rbp
	jae	.label_394
	mov	byte ptr [rcx + r14], 0
	jmp	.label_394
.label_373:
	mov	eax, 5
	jmp	.label_399
.label_362:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ff0

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
	je	.label_417
	mov	edx, OFFSET FLAT:label_413
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_419
.label_417:
	mov	edx, OFFSET FLAT:label_420
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
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
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_409
	jmp	qword ptr [(r12 * 8) + label_410]
.label_535:
	add	rsp, 8
	jmp	.label_408
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
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
	jmp	.label_408
.label_536:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
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
.label_537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
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
.label_538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
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
.label_539:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
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
	jmp	.label_408
.label_540:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
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
	jmp	.label_408
.label_541:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
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
	jmp	.label_408
.label_542:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
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
	jmp	.label_408
.label_544:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
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
	jmp	.label_408
.label_543:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
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
.label_408:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405348
	.globl sub_405348
	.type sub_405348, @function
sub_405348:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405350

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r15, rdi
	xor	eax, eax
	test	byte ptr [rbp], 0x10
	jne	.label_430
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_431:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_428
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_427:
	cmp	r13, r14
	jne	.label_429
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	edx, dword ptr [rsp]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_429:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_431
	jmp	.label_432
.label_428:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_427
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_430
	test	byte ptr [rbp], 0x20
	jne	.label_430
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_427
.label_432:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_430:
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
	#Procedure 0x40541f
	.globl sub_40541f
	.type sub_40541f, @function
sub_40541f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405420

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, rbx
	jne	.label_433
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_437
.label_433:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	mov	qword ptr [rsp + 0x10], rbp
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x20], rbx
	lea	r15, [rbx + 1]
	call	__errno_location
	mov	rbx, rax
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, r14
	mov	qword ptr [rsp + 8], r12
	mov	r14, r12
	nop	dword ptr [rax]
.label_435:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_434
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r15, rax
	sub	r13, r12
	je	.label_436
	add	rbp, rax
	add	r14, r12
	mov	eax, 1
	test	r15, r15
	jne	.label_435
	jmp	.label_434
.label_436:
	neg	r15
	sbb	eax, eax
.label_434:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_438
.label_437:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_438:
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
	#Procedure 0x40552d
	.globl sub_40552d
	.type sub_40552d, @function
sub_40552d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405530
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
	#Procedure 0x405548
	.globl sub_405548
	.type sub_405548, @function
sub_405548:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_439
	test	rax, rax
	je	.label_440
.label_439:
	pop	rbx
	ret	
.label_440:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40556a
	.globl sub_40556a
	.type sub_40556a, @function
sub_40556a:

	nop	word ptr [rax + rax]
.label_441:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405572
	.globl sub_405572
	.type sub_405572, @function
sub_405572:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405575

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_441
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4055f5
	.globl sub_4055f5
	.type sub_4055f5, @function
sub_4055f5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405602
	.globl sub_405602
	.type sub_405602, @function
sub_405602:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405626
	.globl sub_405626
	.type sub_405626, @function
sub_405626:

	nop	word ptr cs:[rax + rax]
