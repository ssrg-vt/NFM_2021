	.section	.text
	.align	32
	#Procedure 0x401549
	.globl sub_401549
	.type sub_401549, @function
sub_401549:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40154a
	.globl sub_40154a
	.type sub_40154a, @function
sub_40154a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401582
	.globl sub_401582
	.type sub_401582, @function
sub_401582:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015ca
	.globl sub_4015ca
	.type sub_4015ca, @function
sub_4015ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015ec
	.globl sub_4015ec
	.type sub_4015ec, @function
sub_4015ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015fd
	.globl sub_4015fd
	.type sub_4015fd, @function
sub_4015fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401616
	.globl sub_401616
	.type sub_401616, @function
sub_401616:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401620
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
	#Procedure 0x40162d
	.globl sub_40162d
	.type sub_40162d, @function
sub_40162d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401630
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40163a
	.globl sub_40163a
	.type sub_40163a, @function
sub_40163a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401640

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_9
	ret	
.label_9:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x401653
	.globl sub_401653
	.type sub_401653, @function
sub_401653:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401660
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
	#Procedure 0x40166d
	.globl sub_40166d
	.type sub_40166d, @function
sub_40166d:

	nop	dword ptr [rax]
.label_11:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_10
	test	cl, cl
	jne	.label_10
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_10:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40169b
	.globl sub_40169b
	.type sub_40169b, @function
sub_40169b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016a5

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
	je	.label_11
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_10
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_10
	.section	.text
	.align	32
	#Procedure 0x4016e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016e8
	.globl sub_4016e8
	.type sub_4016e8, @function
sub_4016e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016f0

	.globl walk_tree
	.type walk_tree, @function
walk_tree:
	mov	rdi, qword ptr [rdi + 0x10]
	test	rdi, rdi
	je	.label_12
	jmp	recurse_tree
.label_12:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016ff
	.globl sub_4016ff
	.type sub_4016ff, @function
sub_4016ff:

	nop	
.label_15:
	xor	eax, eax
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x401704
	.globl sub_401704
	.type sub_401704, @function
sub_401704:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40170e
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_15
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_14]]
.label_13:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401720

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x401727
	.globl sub_401727
	.type sub_401727, @function
sub_401727:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401730
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x40173a
	.globl sub_40173a
	.type sub_40173a, @function
sub_40173a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401740
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401748
	.globl sub_401748
	.type sub_401748, @function
sub_401748:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401750

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
	#Procedure 0x401767
	.globl sub_401767
	.type sub_401767, @function
sub_401767:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401770

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
	mov	esi, OFFSET FLAT:label_16
	call	setlocale
	mov	edi, OFFSET FLAT:label_18
	mov	esi, OFFSET FLAT:label_19
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_18
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_22
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, ebp
	sub	ecx, eax
	cmp	ecx, 2
	jge	.label_17
	mov	edi, OFFSET FLAT:label_24
	cmp	eax, ebp
	je	.label_25
	mov	rdi, qword ptr [rbx + rax*8]
.label_25:
	call	tsort
	movzx	eax, al
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40185b
	.globl sub_40185b
	.type sub_40185b, @function
sub_40185b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401860

	.globl get_nth_bit
	.type get_nth_bit, @function
get_nth_bit:
	mov	rax, rdi
	shr	rax, 6
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rdi
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401873
	.globl sub_401873
	.type sub_401873, @function
sub_401873:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401880

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40188a
	.globl sub_40188a
	.type sub_40188a, @function
sub_40188a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401890
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40189d
	.globl sub_40189d
	.type sub_40189d, @function
sub_40189d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018a0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_28:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_26
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_26:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018e4
	.globl sub_4018e4
	.type sub_4018e4, @function
sub_4018e4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4018e6

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
	jne	.label_27
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_27
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_28
.label_27:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x401920

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
	#Procedure 0x401943
	.globl sub_401943
	.type sub_401943, @function
sub_401943:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401950

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
	#Procedure 0x40196a
	.globl sub_40196a
	.type sub_40196a, @function
sub_40196a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401970

	.globl record_relation
	.type record_relation, @function
record_relation:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	mov	rsi, qword ptr [rbx]
	call	strcmp
	test	eax, eax
	je	.label_32
	inc	qword ptr [rbx + 0x20]
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r14 + 0x30], rax
.label_32:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019ae
	.globl sub_4019ae
	.type sub_4019ae, @function
sub_4019ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4019b0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019ba
	.globl sub_4019ba
	.type sub_4019ba, @function
sub_4019ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4019ce
	.globl sub_4019ce
	.type sub_4019ce, @function
sub_4019ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4019d0

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
	js	.label_36
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_39
	cmp	r12d, 0x7fffffff
	je	.label_34
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
	jne	.label_37
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_37:
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
.label_39:
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
	jbe	.label_35
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_38
.label_35:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_33
	mov	rdi, r14
	call	free
.label_33:
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
.label_38:
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
.label_36:
	call	abort
.label_34:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b8d
	.globl sub_401b8d
	.type sub_401b8d, @function
sub_401b8d:

	nop	dword ptr [rax]
.label_42:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_40
.label_41:
	mov	eax, 1
	test	bpl, bpl
	je	.label_40
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
.label_40:
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
	#Procedure 0x401bd8
	.globl sub_401bd8
	.type sub_401bd8, @function
sub_401bd8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bdb

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
	je	.label_42
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_41
	jmp	.label_40
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_43
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_45
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_44
.label_46:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c42
	.globl sub_401c42
	.type sub_401c42, @function
sub_401c42:

	nop	dword ptr [rax]
.label_45:
	call	xalloc_die
.label_43:
	test	rcx, rcx
	jne	.label_47
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_47:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_46
.label_44:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_48:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c93
	.globl sub_401c93
	.type sub_401c93, @function
sub_401c93:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c95
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_48
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cb0

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
	jne	.label_53
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
	je	.label_49
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_56
	mov	eax, OFFSET FLAT:label_57
	jmp	.label_52
.label_49:
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
	je	.label_58
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_50
	mov	eax, OFFSET FLAT:label_51
	jmp	.label_52
.label_58:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_54
	mov	eax, OFFSET FLAT:label_55
.label_52:
	cmove	rax, rcx
.label_53:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d6d
	.globl sub_401d6d
	.type sub_401d6d, @function
sub_401d6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d70

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_60:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_59
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_61
	.section	.text
	.align	32
	#Procedure 0x401d99
	.globl sub_401d99
	.type sub_401d99, @function
sub_401d99:

	nop	dword ptr [rax]
.label_59:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_61:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_62
	inc	r9
	cmp	r9, 0xa
	jb	.label_60
.label_62:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dcf
	.globl sub_401dcf
	.type sub_401dcf, @function
sub_401dcf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401dd0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401df2
	.globl sub_401df2
	.type sub_401df2, @function
sub_401df2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e00

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
	#Procedure 0x401e2d
	.globl sub_401e2d
	.type sub_401e2d, @function
sub_401e2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e30

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
	#Procedure 0x401e43
	.globl sub_401e43
	.type sub_401e43, @function
sub_401e43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e50

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_64
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_65
	test	ecx, ecx
	js	.label_66
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_66:
	xor	eax, eax
.label_65:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e83
	.globl sub_401e83
	.type sub_401e83, @function
sub_401e83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e90

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x401e99
	.globl sub_401e99
	.type sub_401e99, @function
sub_401e99:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

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
	mov	rax,  qword ptr [word ptr [rip + label_67]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_68]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_69]]
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
	#Procedure 0x401f08
	.globl sub_401f08
	.type sub_401f08, @function
sub_401f08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_70
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_72
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_72
.label_70:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_71
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_73
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_71:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_73:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fd0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_78
	cmp	byte ptr [rax], 0x43
	jne	.label_80
	cmp	byte ptr [rax + 1], 0
	je	.label_77
.label_80:
	mov	esi, OFFSET FLAT:label_79
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_78
.label_77:
	xor	ebx, ebx
.label_78:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402001
	.globl sub_402001
	.type sub_402001, @function
sub_402001:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402010

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
	je	.label_85
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_85:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_16
	mov	edx, OFFSET FLAT:label_81
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_84
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_86
	cmp	eax, 0x76
	je	.label_83
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_82
.label_86:
	xor	edi, edi
.label_82:
	call	rcx
.label_84:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_83:
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
	#Procedure 0x40210c
	.globl sub_40210c
	.type sub_40210c, @function
sub_40210c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402110

	.globl readtoken
	.type readtoken, @function
readtoken:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rbp, rbp
	je	.label_93
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_91:
	movzx	edi, byte ptr [rbx]
	mov	rsi, r15
	call	set_nth_bit
	inc	rbx
	dec	rbp
	jne	.label_91
.label_93:
	mov	rdi, r12
	call	getc_unlocked
	mov	ebp, eax
	test	ebp, ebp
	js	.label_94
	lea	rbx, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_90:
	movsxd	rdi, ebp
	mov	rsi, rbx
	call	get_nth_bit
	test	al, al
	je	.label_89
	mov	rdi, r12
	call	getc_unlocked
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_90
.label_94:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp], rax
	mov	rax, -1
	jmp	.label_92
.label_89:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [rsp], rax
	xor	r14d, r14d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_88:
	mov	rbx, r13
	cmp	rbx, qword ptr [rsp]
	jne	.label_95
	mov	edx, 1
	mov	rdi, r15
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r15, rax
.label_95:
	test	r14b, 1
	jne	.label_87
	movsxd	rdi, ebp
	lea	rsi, [rsp + 0x10]
	call	get_nth_bit
	test	al, al
	jne	.label_87
	lea	r13, [rbx + 1]
	mov	byte ptr [r15 + rbx], bpl
	mov	rdi, r12
	call	getc_unlocked
	mov	ebp, eax
	mov	r14d, ebp
	shr	r14d, 0x1f
	test	ebp, ebp
	jns	.label_88
	mov	rax, -1
	cmp	rbx, -1
	jne	.label_88
	jmp	.label_92
.label_87:
	mov	byte ptr [r15 + rbx], 0
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	mov	rax, rbx
.label_92:
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
	#Procedure 0x402257
	.globl sub_402257
	.type sub_402257, @function
sub_402257:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402260
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40226a
	.globl sub_40226a
	.type sub_40226a, @function
sub_40226a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402270

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40227a
	.globl sub_40227a
	.type sub_40227a, @function
sub_40227a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402280
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
	#Procedure 0x402290

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x402299
	.globl sub_402299
	.type sub_402299, @function
sub_402299:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022a0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x4022aa
	.globl sub_4022aa
	.type sub_4022aa, @function
sub_4022aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022b0

	.globl detect_loop
	.type detect_loop, @function
detect_loop:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_98
	cmp	qword ptr [word ptr [rip + loop]],  0
	je	.label_97
	mov	rcx, qword ptr [r14 + 0x30]
	test	rcx, rcx
	je	.label_98
	lea	rbx, [r14 + 0x30]
	mov	rax,  qword ptr [word ptr [rip + loop]]
	nop	dword ptr [rax]
.label_104:
	cmp	qword ptr [rcx], rax
	je	.label_103
	mov	rbx, rcx
	add	rbx, 8
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	jne	.label_104
	jmp	.label_98
.label_103:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_99
	test	rax, rax
	je	.label_101
	nop	word ptr cs:[rax + rax]
.label_100:
	mov	rax,  qword ptr [word ptr [rip + loop]]
	mov	rcx, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x28]
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	call	error
	mov	rax,  qword ptr [word ptr [rip + loop]]
	cmp	rax, r14
	je	.label_106
	mov	qword ptr [rax + 0x28], 0
	mov	qword ptr [word ptr [rip + loop]],  r15
	test	r15, r15
	jne	.label_100
	jmp	.label_105
.label_99:
	mov	qword ptr [r14 + 0x28], rax
.label_97:
	mov	qword ptr [word ptr [rip + loop]],  r14
.label_98:
	xor	eax, eax
.label_102:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_106:
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax]
	dec	qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbx], rax
.label_101:
	mov	r15,  qword ptr [word ptr [rip + loop]]
.label_105:
	mov	al, 1
	test	r15, r15
	je	.label_102
	nop	word ptr cs:[rax + rax]
.label_96:
	mov	rcx, r15
	mov	r15, qword ptr [rcx + 0x28]
	mov	qword ptr [rcx + 0x28], 0
	test	r15, r15
	jne	.label_96
	mov	qword ptr [word ptr [rip + loop]],  r15
	jmp	.label_102
	.section	.text
	.align	32
	#Procedure 0x4023bd
	.globl sub_4023bd
	.type sub_4023bd, @function
sub_4023bd:

	nop	dword ptr [rax]
.label_107:
	mov	qword ptr [word ptr [rip + head]],  rdi
.label_109:
	mov	qword ptr [word ptr [rip + zeros]],  rdi
.label_108:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023d1
	.globl sub_4023d1
	.type sub_4023d1, @function
sub_4023d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023dc

	.globl scan_zeros
	.type scan_zeros, @function
scan_zeros:
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_108
	cmp	qword ptr [rdi], 0
	je	.label_108
	cmp	qword ptr [word ptr [rip + head]],  0
	je	.label_107
	mov	rax,  qword ptr [word ptr [rip + zeros]]
	mov	qword ptr [rax + 0x28], rdi
	jmp	.label_109
	.section	.text
	.align	32
	#Procedure 0x402400

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40240a
	.globl sub_40240a
	.type sub_40240a, @function
sub_40240a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402410

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
	mov	rcx,  qword ptr [word ptr [rip + label_67]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_68]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_69]]
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
	#Procedure 0x40247d
	.globl sub_40247d
	.type sub_40247d, @function
sub_40247d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402480

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40248d
	.globl sub_40248d
	.type sub_40248d, @function
sub_40248d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402490

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x402497
	.globl sub_402497
	.type sub_402497, @function
sub_402497:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0
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
	#Procedure 0x4024b6
	.globl sub_4024b6
	.type sub_4024b6, @function
sub_4024b6:

	nop	word ptr cs:[rax + rax]
.label_113:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_110
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4024e0
	.globl sub_4024e0
	.type sub_4024e0, @function
sub_4024e0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024ef

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_113
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_112
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_112
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_111
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_111:
	mov	rbx, r14
.label_112:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402570
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
	#Procedure 0x40257f
	.globl sub_40257f
	.type sub_40257f, @function
sub_40257f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402580

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
	je	.label_124
	cmp	eax, 1
	je	.label_125
	cmp	eax, 2
	je	.label_126
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_126:
	mov	bpl, r14b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_122
.label_124:
	xor	ebp, ebp
	xor	r15d, r15d
	jmp	.label_119
.label_125:
	xor	ebp, ebp
.label_122:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_128
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_117
.label_128:
	test	r14b, r14b
	je	.label_118
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_123
.label_118:
	test	bpl, bpl
	je	.label_119
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_117
.label_119:
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
	jmp	.label_117
.label_123:
	mov	r14b, 1
.label_117:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	test	bpl, bpl
	je	.label_121
	mov	edi, 2
	call	close
.label_121:
	test	r14b, r14b
	je	.label_127
	mov	edi, 1
	call	close
.label_127:
	test	r15b, r15b
	je	.label_120
	xor	edi, edi
	call	close
.label_120:
	test	r13, r13
	jne	.label_116
	mov	dword ptr [rbx], r12d
.label_116:
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
	#Procedure 0x40269e
	.globl sub_40269e
	.type sub_40269e, @function
sub_40269e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl count_items
	.type count_items, @function
count_items:
	inc	qword ptr [word ptr [rip + n_strings]]
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026aa
	.globl sub_4026aa
	.type sub_4026aa, @function
sub_4026aa:

	nop	word ptr [rax + rax]
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
	.section	.text
	.align	32
	#Procedure 0x4026c0

	.globl set_nth_bit
	.type set_nth_bit, @function
set_nth_bit:
	mov	eax, 1
	mov	ecx, edi
	shl	rax, cl
	shr	rdi, 6
	or	qword ptr [rsi + rdi*8], rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026d3
	.globl sub_4026d3
	.type sub_4026d3, @function
sub_4026d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026e0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026ea
	.globl sub_4026ea
	.type sub_4026ea, @function
sub_4026ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4026fa
	.globl sub_4026fa
	.type sub_4026fa, @function
sub_4026fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402700
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
	#Procedure 0x402733
	.globl sub_402733
	.type sub_402733, @function
sub_402733:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402740

	.globl search_item
	.type search_item, @function
search_item:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rsi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_145
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	je	.label_152
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rsp]
	call	strcmp
	mov	r12d, eax
	test	r12d, r12d
	je	.label_153
	mov	r13, rbx
	nop	dword ptr [rax + rax]
.label_143:
	lea	r15, [rbx + 8]
	lea	r14, [rbx + 0x10]
	test	r12d, r12d
	mov	rax, r14
	cmovs	rax, r15
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_129
	cmp	dword ptr [rax + 0x18], 0
	cmovne	rbp, rbx
	cmovne	r13, rax
	mov	rbx, rax
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rsp]
	call	strcmp
	mov	rsi, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_143
	jmp	.label_137
.label_152:
	mov	rdi, qword ptr [rsp]
	call	new_item
	mov	rsi, rax
	mov	qword ptr [rbp + 0x10], rsi
	jmp	.label_137
.label_153:
	mov	rsi, rbx
	jmp	.label_137
.label_129:
	mov	rdi, qword ptr [rsp]
	call	new_item
	test	r12d, r12d
	mov	r12, rax
	js	.label_155
	mov	qword ptr [r14], rax
	jmp	.label_157
.label_155:
	mov	qword ptr [r15], rax
.label_157:
	mov	rsi, qword ptr [r13]
	mov	rdi, qword ptr [rsp]
	call	strcmp
	mov	r15d, eax
	test	r15d, r15d
	mov	r14, rbp
	je	.label_134
	lea	rax, [r13 + 0x10]
	lea	rcx, [r13 + 8]
	test	r15d, r15d
	cmovs	rax, rcx
	mov	rbp, qword ptr [rax]
	mov	rsi, r12
	cmp	rbp, rsi
	je	.label_136
	mov	rbx, rbp
	nop	word ptr cs:[rax + rax]
.label_158:
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rsp]
	call	strcmp
	test	eax, eax
	je	.label_148
	js	.label_150
	mov	dword ptr [rbx + 0x18], 1
	add	rbx, 0x10
	jmp	.label_151
	.section	.text
	.align	32
	#Procedure 0x402863
	.globl sub_402863
	.type sub_402863, @function
sub_402863:

	nop	word ptr cs:[rax + rax]
.label_150:
	mov	dword ptr [rbx + 0x18], 0xffffffff
	add	rbx, 8
.label_151:
	mov	rsi, r12
	mov	rbx, qword ptr [rbx]
	cmp	rbx, rsi
	jne	.label_158
.label_136:
	sar	r15d, 0x1f
	or	r15d, 1
	mov	eax, dword ptr [r13 + 0x18]
	test	eax, eax
	je	.label_130
	mov	ecx, r15d
	neg	ecx
	cmp	eax, ecx
	jne	.label_135
.label_130:
	add	dword ptr [r13 + 0x18], r15d
	jmp	.label_137
.label_135:
	cmp	dword ptr [rbp + 0x18], r15d
	jne	.label_140
	test	r15d, r15d
	js	.label_141
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [r13 + 0x10], rax
	mov	qword ptr [rbp + 8], r13
	jmp	.label_142
.label_140:
	test	r15d, r15d
	js	.label_154
	mov	rax, qword ptr [rbp + 8]
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp + 8], rdx
	mov	qword ptr [rax + 0x10], rbp
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x10], rdx
	mov	qword ptr [rax + 8], r13
	jmp	.label_147
.label_141:
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r13 + 8], rax
	mov	qword ptr [rbp + 0x10], r13
.label_142:
	mov	dword ptr [rbp + 0x18], 0
	mov	dword ptr [r13 + 0x18], 0
	mov	rax, rbp
	jmp	.label_139
.label_154:
	mov	rax, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x10], rdx
	mov	qword ptr [rax + 8], rbp
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [r13 + 8], rdx
	mov	qword ptr [rax + 0x10], r13
.label_147:
	mov	dword ptr [r13 + 0x18], 0
	mov	dword ptr [rbp + 0x18], 0
	mov	edx, dword ptr [rax + 0x18]
	cmp	edx, r15d
	jne	.label_138
	mov	dword ptr [r13 + 0x18], ecx
	jmp	.label_144
.label_138:
	cmp	edx, ecx
	jne	.label_144
	mov	dword ptr [rbp + 0x18], r15d
.label_144:
	mov	dword ptr [rax + 0x18], 0
.label_139:
	cmp	r13, qword ptr [r14 + 0x10]
	je	.label_149
	mov	qword ptr [r14 + 8], rax
	jmp	.label_137
.label_149:
	mov	qword ptr [r14 + 0x10], rax
.label_137:
	mov	rax, rsi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_148:
	mov	edi, OFFSET FLAT:label_156
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 0xb6
	mov	ecx, OFFSET FLAT:label_133
	call	__assert_fail
.label_145:
	mov	edi, OFFSET FLAT:label_131
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 0x84
	mov	ecx, OFFSET FLAT:label_133
	call	__assert_fail
.label_134:
	mov	edi, OFFSET FLAT:label_146
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 0xa8
	mov	ecx, OFFSET FLAT:label_133
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4029b9
	.globl sub_4029b9
	.type sub_4029b9, @function
sub_4029b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029c0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_159
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_159:
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
	#Procedure 0x402a43
	.globl sub_402a43
	.type sub_402a43, @function
sub_402a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50
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
	#Procedure 0x402a5f
	.globl sub_402a5f
	.type sub_402a5f, @function
sub_402a5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a60

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
	je	.label_162
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_160
	jmp	.label_161
.label_162:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_161
.label_160:
	mov	eax, 1
	test	bpl, bpl
	je	.label_161
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
.label_161:
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
	#Procedure 0x402ae8
	.globl sub_402ae8
	.type sub_402ae8, @function
sub_402ae8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402af0

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
	je	.label_163
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_165
	jmp	.label_164
.label_163:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_164
.label_165:
	mov	eax, 1
	test	bpl, bpl
	je	.label_164
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
.label_164:
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
	#Procedure 0x402b69
	.globl sub_402b69
	.type sub_402b69, @function
sub_402b69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b70

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
	je	.label_168
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_167
	jmp	.label_166
.label_168:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_166
.label_167:
	mov	eax, 1
	test	bpl, bpl
	je	.label_166
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
.label_166:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bd3
	.globl sub_402bd3
	.type sub_402bd3, @function
sub_402bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402be0

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
	je	.label_171
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_169
	jmp	.label_170
.label_171:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_170
.label_169:
	mov	eax, 1
	test	bpl, bpl
	je	.label_170
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_170:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c3f
	.globl sub_402c3f
	.type sub_402c3f, @function
sub_402c3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402c40

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
	je	.label_172
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_174
	jmp	.label_173
.label_172:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_173
.label_174:
	mov	eax, 1
	test	bpl, bpl
	je	.label_173
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_173:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c89
	.globl sub_402c89
	.type sub_402c89, @function
sub_402c89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c90

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
	je	.label_177
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_176
	jmp	.label_175
.label_177:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_175
.label_176:
	mov	eax, 1
	test	bpl, bpl
	je	.label_175
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_175:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cd5
	.globl sub_402cd5
	.type sub_402cd5, @function
sub_402cd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_180
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_179
	jmp	.label_178
.label_180:
	mov	eax, 1
	test	cl, cl
	je	.label_178
.label_179:
	xor	eax, eax
.label_178:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d0f
	.globl sub_402d0f
	.type sub_402d0f, @function
sub_402d0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402d10

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
	je	.label_181
	cmp	r15, -2
	jb	.label_181
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_181
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_181:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d66
	.globl sub_402d66
	.type sub_402d66, @function
sub_402d66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402da0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_183
	test	rdx, rdx
	je	.label_183
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_183:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402dcb
	.globl sub_402dcb
	.type sub_402dcb, @function
sub_402dcb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_184
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_186
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_184
.label_186:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_184
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_185
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_185:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_184:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402e47
	.globl sub_402e47
	.type sub_402e47, @function
sub_402e47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50

	.globl new_item
	.type new_item, @function
new_item:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x38
	call	xmalloc
	mov	rbx, rax
	xor	eax, eax
	test	r14, r14
	je	.label_187
	mov	rdi, r14
	call	xstrdup
.label_187:
	mov	qword ptr [rbx], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	mov	dword ptr [rbx + 0x18], 0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x30], 0
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e9b
	.globl sub_402e9b
	.type sub_402e9b, @function
sub_402e9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0

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
	#Procedure 0x402ed7
	.globl sub_402ed7
	.type sub_402ed7, @function
sub_402ed7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x402ee5
	.globl sub_402ee5
	.type sub_402ee5, @function
sub_402ee5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ef0

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_188
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_188:
	push	rax
	call	xalloc_die
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

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_189
	test	rbx, rbx
	jne	.label_189
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_189:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_191
	test	rax, rax
	je	.label_190
.label_191:
	pop	rbx
	ret	
.label_190:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402f50
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x20], rdi
	test	rsi, rsi
	lea	rax, [rsi + 1]
	mov	ebp, 0x40
	cmovne	rbp, rax
	mov	qword ptr [rsp + 8], rbp
	mov	esi, 8
	mov	rdi, rbp
	call	xnmalloc
	mov	r15, rax
	mov	esi, 8
	mov	rdi, rbp
	call	xnmalloc
	mov	r14, rax
	lea	rdi, [rsp + 0x38]
	call	init_tokenbuffer
	xor	ebp, ebp
	jmp	.label_195
	.section	.text
	.align	32
	#Procedure 0x402fba
	.globl sub_402fba
	.type sub_402fba, @function
sub_402fba:

	nop	word ptr [rax + rax]
.label_196:
	mov	r13, r12
	inc	r13
	mov	esi, 1
	mov	rdi, r13
	call	xnmalloc
	mov	rbx, rax
	mov	qword ptr [r14 + rbp*8], r12
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	rdx, r13
	call	memcpy
	mov	qword ptr [r15 + rbp*8], rbx
	inc	rbp
.label_195:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rcx, [rsp + 0x38]
	call	readtoken
	mov	r12, rax
	cmp	rbp, qword ptr [rsp + 8]
	jb	.label_194
	mov	edx, 8
	mov	rdi, r15
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	r15, rax
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, 8
	mov	rdi, r14
	call	xnrealloc
	mov	r14, rax
.label_194:
	cmp	r12, -1
	jne	.label_196
	mov	qword ptr [r15 + rbp*8], 0
	mov	qword ptr [r14 + rbp*8], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_193
	mov	qword ptr [rax], r14
	jmp	.label_192
.label_193:
	mov	rdi, r14
	call	free
.label_192:
	mov	rax, rbp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403093
	.globl sub_403093
	.type sub_403093, @function
sub_403093:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030a0

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
	je	.label_209
	mov	edx, OFFSET FLAT:label_200
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_206
.label_209:
	mov	edx, OFFSET FLAT:label_207
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_206:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
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
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_212
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_213]]
.label_509:
	add	rsp, 8
	jmp	.label_199
.label_212:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
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
	jmp	.label_199
.label_510:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
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
.label_511:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
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
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
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
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
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
	jmp	.label_199
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
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
	jmp	.label_199
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
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
	jmp	.label_199
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
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
	jmp	.label_199
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
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
	jmp	.label_199
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
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
.label_199:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033f8
	.globl sub_4033f8
	.type sub_4033f8, @function
sub_4033f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403400

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
.label_252:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_255
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_260]]
.label_454:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_266
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_55
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_455:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_279
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_279
	xor	r14d, r14d
.label_289:
	cmp	r14, r11
	jae	.label_285
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_285:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_289
.label_279:
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
.label_447:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_250
.label_450:
	mov	al, 1
.label_448:
	mov	r12b, 1
.label_451:
	test	r12b, 1
	mov	cl, 1
	je	.label_303
	mov	ecx, eax
.label_303:
	mov	al, cl
.label_449:
	test	r12b, 1
	jne	.label_306
	test	r11, r11
	je	.label_309
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_309:
	mov	r14d, 1
	jmp	.label_314
.label_306:
	xor	r14d, r14d
.label_314:
	mov	ecx, OFFSET FLAT:label_55
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_250
.label_452:
	test	r12b, 1
	jne	.label_323
	test	r11, r11
	je	.label_311
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_311:
	mov	r14d, 1
	jmp	.label_326
.label_453:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_54
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_250
.label_323:
	xor	r14d, r14d
.label_326:
	mov	eax, OFFSET FLAT:label_54
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
	jmp	.label_235
	.section	.text
	.align	32
	#Procedure 0x4036dc
	.globl sub_4036dc
	.type sub_4036dc, @function
sub_4036dc:

	nop	dword ptr [rax]
.label_286:
	inc	rsi
.label_235:
	cmp	rbp, -1
	je	.label_271
	cmp	rsi, rbp
	jne	.label_297
	jmp	.label_275
	.section	.text
	.align	32
	#Procedure 0x4036f3
	.globl sub_4036f3
	.type sub_4036f3, @function
sub_4036f3:

	nop	word ptr cs:[rax + rax]
.label_271:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_275
.label_297:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_281
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_283
	cmp	rbp, -1
	jne	.label_283
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
.label_283:
	cmp	rbx, rbp
	jbe	.label_292
.label_281:
	xor	r8d, r8d
.label_241:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_293
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_296]]
.label_424:
	test	rsi, rsi
	jne	.label_291
	jmp	.label_226
	.section	.text
	.align	32
	#Procedure 0x40378e
	.globl sub_40378e
	.type sub_40378e, @function
sub_40378e:

	nop	
.label_292:
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
	jne	.label_312
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_241
	jmp	.label_234
.label_312:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_241
.label_428:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_219
	test	rsi, rsi
	jne	.label_223
	cmp	rbp, 1
	je	.label_226
	xor	r13d, r13d
	jmp	.label_222
.label_417:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_229
	cmp	byte ptr [rsp + 7], 0
	jne	.label_230
	cmp	r12d, 2
	jne	.label_232
	mov	eax, r9d
	and	al, 1
	jne	.label_232
	cmp	r14, r11
	jae	.label_328
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_328:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_239:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_244
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_244:
	add	r14, 3
	mov	r9b, 1
.label_232:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_251
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_251:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_249
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_249
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_249
	cmp	r14, r11
	jae	.label_257
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_257:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_221
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_221:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_222
.label_418:
	mov	bl, 0x62
	jmp	.label_277
.label_419:
	mov	cl, 0x74
	jmp	.label_280
.label_420:
	mov	bl, 0x76
	jmp	.label_277
.label_421:
	mov	bl, 0x66
	jmp	.label_277
.label_422:
	mov	cl, 0x72
	jmp	.label_280
.label_425:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_284
	cmp	byte ptr [rsp + 7], 0
	jne	.label_230
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
	jae	.label_290
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_290:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_298
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_298:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_300
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_300:
	add	r14, 3
	xor	r9d, r9d
.label_284:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_222
.label_426:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_310
	cmp	r12d, 2
	jne	.label_291
	cmp	byte ptr [rsp + 7], 0
	je	.label_291
	jmp	.label_230
.label_427:
	cmp	r12d, 2
	jne	.label_320
	cmp	byte ptr [rsp + 7], 0
	jne	.label_230
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_267
.label_293:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_318
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
.label_217:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_245
	test	r8b, r8b
	je	.label_245
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_222
.label_219:
	test	rsi, rsi
	jne	.label_253
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_253
.label_226:
	mov	dl, 1
.label_423:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_230
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_222:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_261
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_264
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x403ad4
	.globl sub_403ad4
	.type sub_403ad4, @function
sub_403ad4:

	nop	word ptr cs:[rax + rax]
.label_261:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_268
.label_264:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_272
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_267
	jmp	.label_262
	.section	.text
	.align	32
	#Procedure 0x403b1d
	.globl sub_403b1d
	.type sub_403b1d, @function
sub_403b1d:

	nop	dword ptr [rax]
.label_268:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_262
	jmp	.label_267
.label_272:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_262
.label_229:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_286
	xor	r15d, r15d
	jmp	.label_291
.label_320:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_280
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_267
.label_280:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_230
.label_277:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_222
	nop	word ptr cs:[rax + rax]
.label_262:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_230
	cmp	r12d, 2
	jne	.label_304
	mov	eax, r9d
	and	al, 1
	jne	.label_304
	cmp	r14, r11
	jae	.label_308
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_308:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_233
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_233:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_317
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_317:
	add	r14, 3
	mov	r9b, 1
.label_304:
	cmp	r14, r11
	jae	.label_322
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_322:
	inc	r14
	jmp	.label_324
.label_318:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_327
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_327:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_220:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_238
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_243
	cmp	rbp, -2
	je	.label_276
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_247
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_278:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_242
	bt	rsi, rdx
	jb	.label_234
.label_242:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_278
.label_247:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_274
	xor	r13d, r13d
.label_274:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_220
	jmp	.label_217
.label_249:
	xor	r13d, r13d
	jmp	.label_222
.label_253:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_222
.label_310:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_291
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_291
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_291
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_294
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_254
	cmp	byte ptr [rsp + 7], 0
	jne	.label_230
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_301
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_301:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_321
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_321:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_313
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_313:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_316
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_316:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_222
.label_291:
	xor	eax, eax
.label_223:
	xor	r13d, r13d
	jmp	.label_222
.label_245:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_325
	.section	.text
	.align	32
	#Procedure 0x403e03
	.globl sub_403e03
	.type sub_403e03, @function
sub_403e03:

	nop	word ptr cs:[rax + rax]
.label_288:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_325:
	test	r8b, r8b
	je	.label_224
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_225
	cmp	r14, r11
	jae	.label_227
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_227:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_225
	.section	.text
	.align	32
	#Procedure 0x403e4c
	.globl sub_403e4c
	.type sub_403e4c, @function
sub_403e4c:

	nop	dword ptr [rax]
.label_224:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_234
	cmp	r12d, 2
	jne	.label_237
	mov	eax, r9d
	and	al, 1
	jne	.label_237
	cmp	r14, r11
	jae	.label_240
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_240:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_307
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_307:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_248
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_248:
	add	r14, 3
	mov	r9b, 1
.label_237:
	cmp	r14, r11
	jae	.label_319
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_319:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_258
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_258:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_265
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_265:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_225:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_267
	test	r9b, 1
	je	.label_218
	mov	ebx, eax
	and	bl, 1
	jne	.label_218
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_282
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_282:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_315
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_315:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_218:
	cmp	r14, r11
	jae	.label_288
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_288
	.section	.text
	.align	32
	#Procedure 0x403f53
	.globl sub_403f53
	.type sub_403f53, @function
sub_403f53:

	nop	word ptr cs:[rax + rax]
.label_267:
	test	r9b, 1
	je	.label_231
	and	al, 1
	jne	.label_231
	cmp	r14, r11
	jae	.label_295
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_295:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_269
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	add	r14, 2
	xor	r9d, r9d
.label_231:
	mov	ebx, r15d
.label_324:
	cmp	r14, r11
	jae	.label_302
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_302:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_286
.label_243:
	xor	r13d, r13d
.label_238:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_217
.label_276:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_263
	mov	rsi, qword ptr [rsp + 0x50]
.label_299:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_287
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_299
	xor	r13d, r13d
	jmp	.label_217
.label_263:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_217
.label_287:
	xor	r13d, r13d
	jmp	.label_217
.label_294:
	xor	r13d, r13d
	jmp	.label_222
.label_254:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_222
	.section	.text
	.align	32
	#Procedure 0x404028
	.globl sub_404028
	.type sub_404028, @function
sub_404028:

	nop	dword ptr [rax + rax]
.label_275:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_228
	or	dl, al
	je	.label_234
.label_228:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_236
	or	dl, al
	jne	.label_236
	test	r10b, 1
	jne	.label_246
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_236
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_252
.label_236:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_256
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_259
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_259
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_273:
	cmp	r14, r11
	jae	.label_270
	mov	byte ptr [rcx + r14], al
.label_270:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_273
	jmp	.label_259
.label_230:
	mov	qword ptr [rsp + 0x20], rbp
.label_234:
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
.label_305:
	mov	r14, rax
.label_216:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_246:
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
	jmp	.label_305
.label_256:
	mov	rcx, qword ptr [rsp + 8]
.label_259:
	cmp	r14, r11
	jae	.label_216
	mov	byte ptr [rcx + r14], 0
	jmp	.label_216
.label_255:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4041bc
	.globl sub_4041bc
	.type sub_4041bc, @function
sub_4041bc:

	nop	dword ptr [rax]
.label_330:
	mov	ecx, 1
.label_329:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4041d0
	.globl sub_4041d0
	.type sub_4041d0, @function
sub_4041d0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041d5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_330
	test	rsi, rsi
	mov	ecx, 1
	je	.label_329
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_329
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_331:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404215
	.globl sub_404215
	.type sub_404215, @function
sub_404215:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40421f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_331
	call	rpl_calloc
	test	rax, rax
	je	.label_331
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404240

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x404245
	.globl sub_404245
	.type sub_404245, @function
sub_404245:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404250

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_332
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_332:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40426a
	.globl sub_40426a
	.type sub_40426a, @function
sub_40426a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404270
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_334
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_337
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4042e4
	.globl sub_4042e4
	.type sub_4042e4, @function
sub_4042e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042f0

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
	#Procedure 0x404326
	.globl sub_404326
	.type sub_404326, @function
sub_404326:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330
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
	#Procedure 0x404349
	.globl sub_404349
	.type sub_404349, @function
sub_404349:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404350
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_338:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_338
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404371
	.globl sub_404371
	.type sub_404371, @function
sub_404371:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404380
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_339
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_339:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404398
	.globl sub_404398
	.type sub_404398, @function
sub_404398:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0

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
	#Procedure 0x4043e9
	.globl sub_4043e9
	.type sub_4043e9, @function
sub_4043e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043f0

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
	je	.label_341
	test	rbx, rbx
	je	.label_341
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_341
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_341
	mov	edi, OFFSET FLAT:label_64
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_340
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_341
.label_340:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_341:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404481
	.globl sub_404481
	.type sub_404481, @function
sub_404481:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404490

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	.section	.text
	.align	32
	#Procedure 0x404495
	.globl sub_404495
	.type sub_404495, @function
sub_404495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0
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
	#Procedure 0x404512
	.globl sub_404512
	.type sub_404512, @function
sub_404512:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404520
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
	#Procedure 0x40452f
	.globl sub_40452f
	.type sub_40452f, @function
sub_40452f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404530

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_342
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_342
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_342:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x404556
	.globl sub_404556
	.type sub_404556, @function
sub_404556:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404560
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40456a
	.globl sub_40456a
	.type sub_40456a, @function
sub_40456a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404570

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
	je	.label_343
	mov	qword ptr [rax], rbx
.label_343:
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
	#Procedure 0x40465c
	.globl sub_40465c
	.type sub_40465c, @function
sub_40465c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404660
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
	je	.label_344
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_344:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_345
	mov	edx, OFFSET FLAT:label_81
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_346
	cmp	eax, 0x76
	jne	.label_345
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
.label_346:
	xor	edi, edi
	call	rbx
.label_345:
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
	#Procedure 0x404751
	.globl sub_404751
	.type sub_404751, @function
sub_404751:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404760
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_347
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_347
.label_348:
	ret	
.label_347:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_348
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404786
	.globl sub_404786
	.type sub_404786, @function
sub_404786:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_349
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_351:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_351
.label_349:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_353
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_352]], OFFSET FLAT:slot0
.label_353:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_350
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_350:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404821
	.globl sub_404821
	.type sub_404821, @function
sub_404821:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404830

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_358
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
.label_358:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
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
	#Procedure 0x404911
	.globl sub_404911
	.type sub_404911, @function
sub_404911:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404920
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
	#Procedure 0x404933
	.globl sub_404933
	.type sub_404933, @function
sub_404933:

	nop	word ptr cs:[rax + rax]
.label_361:
	cmp	edi, 0x7f
	je	.label_360
	xor	eax, eax
	jmp	.label_360
	.section	.text
	.align	32
	#Procedure 0x404949
	.globl sub_404949
	.type sub_404949, @function
sub_404949:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404958
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_361
.label_360:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404960
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_362
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_362:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40497e
	.globl sub_40497e
	.type sub_40497e, @function
sub_40497e:

	nop	
.label_363:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404985
	.globl sub_404985
	.type sub_404985, @function
sub_404985:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404993

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
	je	.label_363
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
	#Procedure 0x4049e0

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
	#Procedure 0x404a19
	.globl sub_404a19
	.type sub_404a19, @function
sub_404a19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a20
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
	#Procedure 0x404a31
	.globl sub_404a31
	.type sub_404a31, @function
sub_404a31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a40
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
	#Procedure 0x404a54
	.globl sub_404a54
	.type sub_404a54, @function
sub_404a54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a60

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_16
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_364
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a85
	.globl sub_404a85
	.type sub_404a85, @function
sub_404a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a90

	.globl tsort
	.type tsort, @function
tsort:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_390
	mov	bpl, byte ptr [r14 + 1]
	xor	edi, edi
	call	new_item
	mov	rbx, rax
	cmp	bpl, 0
	mov	r13b, 1
	jne	.label_378
	jmp	.label_394
.label_390:
	xor	edi, edi
	call	new_item
	mov	rbx, rax
.label_378:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_385
	mov	rdi, r14
	call	freopen_safer
	test	rax, rax
	je	.label_389
	xor	r13d, r13d
.label_394:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	call	fadvise
	lea	r15, [rsp + 8]
	mov	rdi, r15
	call	init_tokenbuffer
	jmp	.label_365
	.section	.text
	.align	32
	#Procedure 0x404b0a
	.globl sub_404b0a
	.type sub_404b0a, @function
sub_404b0a:

	nop	word ptr [rax + rax]
.label_391:
	mov	rdi, r12
	mov	rsi, rax
	call	record_relation
.label_365:
	xor	eax, eax
.label_387:
	mov	r12, rax
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 3
	mov	rcx, r15
	call	readtoken
	cmp	rax, -1
	je	.label_379
	test	rax, rax
	je	.label_380
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, rbx
	call	search_item
	test	r12, r12
	je	.label_387
	jmp	.label_391
.label_379:
	test	r12, r12
	jne	.label_375
	mov	esi, OFFSET FLAT:count_items
	mov	rdi, rbx
	call	walk_tree
	mov	r15b, 1
	jmp	.label_392
	.section	.text
	.align	32
	#Procedure 0x404b77
	.globl sub_404b77
	.type sub_404b77, @function
sub_404b77:

	nop	word ptr [rax + rax]
.label_370:
	xor	r15d, r15d
.label_392:
	mov	rax,  qword ptr [word ptr [rip + n_strings]]
	nop	word ptr [rax + rax]
.label_372:
	test	rax, rax
	je	.label_368
	mov	esi, OFFSET FLAT:scan_zeros
	mov	rdi, rbx
	call	walk_tree
	mov	rax,  qword ptr [word ptr [rip + head]]
	jmp	.label_373
	.section	.text
	.align	32
	#Procedure 0x404baf
	.globl sub_404baf
	.type sub_404baf, @function
sub_404baf:

	nop	
.label_393:
	mov	rax,  qword ptr [word ptr [rip + head]]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [word ptr [rip + head]],  rax
.label_373:
	test	rax, rax
	je	.label_383
	mov	rdi, qword ptr [rax]
	mov	rbp, qword ptr [rax + 0x30]
	call	puts
	mov	rax,  qword ptr [word ptr [rip + head]]
	mov	qword ptr [rax], 0
	dec	qword ptr [word ptr [rip + n_strings]]
	jmp	.label_386
	.section	.text
	.align	32
	#Procedure 0x404bea
	.globl sub_404bea
	.type sub_404bea, @function
sub_404bea:

	nop	word ptr [rax + rax]
.label_366:
	mov	rbp, qword ptr [rbp + 8]
.label_386:
	test	rbp, rbp
	je	.label_393
	mov	rax, qword ptr [rbp]
	dec	qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_366
	mov	rcx,  qword ptr [word ptr [rip + zeros]]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp]
	mov	qword ptr [word ptr [rip + zeros]],  rax
	jmp	.label_366
	.section	.text
	.align	32
	#Procedure 0x404c24
	.globl sub_404c24
	.type sub_404c24, @function
sub_404c24:

	nop	word ptr cs:[rax + rax]
.label_383:
	cmp	qword ptr [word ptr [rip + n_strings]],  0
	mov	eax, 0
	je	.label_372
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	nop	word ptr [rax + rax]
.label_367:
	mov	esi, OFFSET FLAT:detect_loop
	mov	rdi, rbx
	call	walk_tree
	cmp	qword ptr [word ptr [rip + loop]],  0
	jne	.label_367
	jmp	.label_370
.label_368:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	jne	.label_374
	test	r15b, r15b
	setne	al
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_380:
	mov	edi, OFFSET FLAT:label_381
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 0x1cd
	mov	ecx, OFFSET FLAT:label_382
	call	__assert_fail
.label_375:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_374:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	r13b, r13b
	je	.label_369
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	jmp	.label_376
.label_389:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_369:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
.label_376:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d60

	.globl recurse_tree
	.type recurse_tree, @function
recurse_tree:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_395
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_397
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_398
.label_395:
	mov	rsi, r14
	call	recurse_tree
	mov	bpl, 1
	test	al, al
	jne	.label_396
.label_398:
	mov	rdi, rbx
	call	r14
	mov	bpl, 1
	test	al, al
	jne	.label_396
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	je	.label_399
	mov	rsi, r14
	call	recurse_tree
	test	al, al
	jne	.label_396
.label_399:
	xor	ebp, ebp
	jmp	.label_396
.label_397:
	mov	rdi, rbx
	call	r14
	mov	bpl, al
.label_396:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404dc8
	.globl sub_404dc8
	.type sub_404dc8, @function
sub_404dc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0
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
	#Procedure 0x404df7
	.globl sub_404df7
	.type sub_404df7, @function
sub_404df7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_400
	nop	
.label_409:
	mov	edi, OFFSET FLAT:label_20
	call	strcmp
	test	eax, eax
	je	.label_407
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_409
.label_407:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_20
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_337
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_402
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_402
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_20
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_337
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_405
	mov	ecx, OFFSET FLAT:label_16
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
	#Procedure 0x404f1a
	.globl sub_404f1a
	.type sub_404f1a, @function
sub_404f1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f85
	.globl sub_404f85
	.type sub_404f85, @function
sub_404f85:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f92
	.globl sub_404f92
	.type sub_404f92, @function
sub_404f92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fb6
	.globl sub_404fb6
	.type sub_404fb6, @function
sub_404fb6:

	nop	word ptr cs:[rax + rax]
