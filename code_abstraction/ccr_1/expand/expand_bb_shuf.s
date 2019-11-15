	.section	.text
	.align	32
	#Procedure 0x401569
	.globl sub_401569
	.type sub_401569, @function
sub_401569:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40156a
	.globl sub_40156a
	.type sub_40156a, @function
sub_40156a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015a2
	.globl sub_4015a2
	.type sub_4015a2, @function
sub_4015a2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015ea
	.globl sub_4015ea
	.type sub_4015ea, @function
sub_4015ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40160c
	.globl sub_40160c
	.type sub_40160c, @function
sub_40160c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40161d
	.globl sub_40161d
	.type sub_40161d, @function
sub_40161d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401636
	.globl sub_401636
	.type sub_401636, @function
sub_401636:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401640

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40164e
	.globl sub_40164e
	.type sub_40164e, @function
sub_40164e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401650

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
	js	.label_12
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_15
	cmp	r12d, 0x7fffffff
	je	.label_10
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
	jne	.label_13
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_13:
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
.label_15:
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
	jbe	.label_11
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_14
.label_11:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_9
	mov	rdi, r14
	call	free
.label_9:
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
.label_14:
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
.label_12:
	call	abort
.label_10:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40180d
	.globl sub_40180d
	.type sub_40180d, @function
sub_40180d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401810

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
	#Procedure 0x401847
	.globl sub_401847
	.type sub_401847, @function
sub_401847:

	nop	word ptr [rax + rax]
.label_17:
	mov	qword ptr [word ptr [rip + tab_size]],  0
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40185d
	.globl sub_40185d
	.type sub_40185d, @function
sub_40185d:

	nop	word ptr cs:[rax + rax]
.label_18:
	mov	rax,  qword ptr [word ptr [rip + extend_size]]
	test	rax, rax
	jne	.label_16
	mov	rcx,  qword ptr [word ptr [rip + increment_size]]
	test	rcx, rcx
	mov	eax, 8
	cmovne	rax, rcx
.label_16:
	mov	qword ptr [word ptr [rip + max_column_width]],  rax
	mov	qword ptr [word ptr [rip + tab_size]],  rax
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401897

	.globl finalize_tab_stops
	.type finalize_tab_stops, @function
finalize_tab_stops:
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + tab_list]]
	mov	rsi,  qword ptr [word ptr [rip + first_free_tab]]
	call	validate_tab_stops
	mov	rax,  qword ptr [word ptr [rip + first_free_tab]]
	test	rax, rax
	je	.label_18
	cmp	rax, 1
	jne	.label_17
	mov	rax,  qword ptr [word ptr [rip + increment_size]]
	or	rax,  qword ptr [word ptr [rip + extend_size]]
	jne	.label_17
	mov	rax,  qword ptr [word ptr [rip + tab_list]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [word ptr [rip + tab_size]],  rax
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_19
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_19:
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
	#Procedure 0x401963
	.globl sub_401963
	.type sub_401963, @function
sub_401963:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401970

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_20
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_24
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_21
.label_22:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019a2
	.globl sub_4019a2
	.type sub_4019a2, @function
sub_4019a2:

	nop	dword ptr [rax]
.label_20:
	test	rcx, rcx
	jne	.label_23
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_23:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_22
.label_21:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_24:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_25
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_25:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a16
	.globl sub_401a16
	.type sub_401a16, @function
sub_401a16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a20

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_26
	test	rbx, rbx
	jne	.label_26
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_26:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_28
	test	rax, rax
	je	.label_27
.label_28:
	pop	rbx
	ret	
.label_27:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a50
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
	#Procedure 0x401a69
	.globl sub_401a69
	.type sub_401a69, @function
sub_401a69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a70

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_29
	ret	
.label_29:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x401a83
	.globl sub_401a83
	.type sub_401a83, @function
sub_401a83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a90

	.globl set_extend_size
	.type set_extend_size, @function
set_extend_size:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	qword ptr [word ptr [rip + extend_size]],  0
	je	.label_30
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_30:
	mov	qword ptr [word ptr [rip + extend_size]],  r14
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ad8
	.globl sub_401ad8
	.type sub_401ad8, @function
sub_401ad8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ae0
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
	#Procedure 0x401b13
	.globl sub_401b13
	.type sub_401b13, @function
sub_401b13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b20
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
	#Procedure 0x401b33
	.globl sub_401b33
	.type sub_401b33, @function
sub_401b33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b48
	.globl sub_401b48
	.type sub_401b48, @function
sub_401b48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b50

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
	jne	.label_32
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_32
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_33
.label_32:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_33:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_34
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_34:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bbe
	.globl sub_401bbe
	.type sub_401bbe, @function
sub_401bbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401bc0
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
	#Procedure 0x401bcf
	.globl sub_401bcf
	.type sub_401bcf, @function
sub_401bcf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401bd0
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
	#Procedure 0x401bdd
	.globl sub_401bdd
	.type sub_401bdd, @function
sub_401bdd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401be0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_35
	call	rpl_calloc
	test	rax, rax
	je	.label_35
	pop	rcx
	ret	
.label_35:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c06
	.globl sub_401c06
	.type sub_401c06, @function
sub_401c06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl validate_tab_stops
	.type validate_tab_stops, @function
validate_tab_stops:
	push	rax
	test	rsi, rsi
	je	.label_43
	xor	eax, eax
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_42:
	mov	rcx, qword ptr [rdi + rax*8]
	test	rcx, rcx
	je	.label_36
	cmp	rcx, rdx
	jbe	.label_41
	inc	rax
	cmp	rax, rsi
	mov	rdx, rcx
	jb	.label_42
.label_43:
	cmp	qword ptr [word ptr [rip + increment_size]],  0
	je	.label_45
	mov	rax,  qword ptr [word ptr [rip + extend_size]]
	test	rax, rax
	jne	.label_37
.label_45:
	pop	rax
	ret	
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
.label_39:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	jmp	.label_39
	.section	.text
	.align	32
	#Procedure 0x401c7f
	.globl sub_401c7f
	.type sub_401c7f, @function
sub_401c7f:

	nop	dword ptr [rax + rax]
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	jmp	.label_39
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_48
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401cd5

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_52
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_47
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_47
.label_52:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_46
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_48:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_50
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_46:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401d50
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d5a
	.globl sub_401d5a
	.type sub_401d5a, @function
sub_401d5a:

	nop	word ptr [rax + rax]
.label_55:
	xor	eax, eax
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x401d64
	.globl sub_401d64
	.type sub_401d64, @function
sub_401d64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d6e
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_55
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_54]]
.label_53:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d80
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x401d8a
	.globl sub_401d8a
	.type sub_401d8a, @function
sub_401d8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d90

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
	je	.label_56
	mov	qword ptr [rax], rbx
.label_56:
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
	#Procedure 0x401e7c
	.globl sub_401e7c
	.type sub_401e7c, @function
sub_401e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e88
	.globl sub_401e88
	.type sub_401e88, @function
sub_401e88:

	nop	dword ptr [rax + rax]
.label_58:
	cmp	edi, 0x7f
	je	.label_57
	xor	eax, eax
	jmp	.label_57
	.section	.text
	.align	32
	#Procedure 0x401e99
	.globl sub_401e99
	.type sub_401e99, @function
sub_401e99:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ea8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_58
.label_57:
	ret	
.label_59:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401ebe
	.globl sub_401ebe
	.type sub_401ebe, @function
sub_401ebe:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ec7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_59
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_60
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_59
.label_60:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_59
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_61
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_61:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f30

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_62
	test	rsi, rsi
	mov	ecx, 1
	je	.label_63
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_63
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_62:
	mov	ecx, 1
.label_63:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401f7b
	.globl sub_401f7b
	.type sub_401f7b, @function
sub_401f7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x401f85
	.globl sub_401f85
	.type sub_401f85, @function
sub_401f85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f90

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401f9a
	.globl sub_401f9a
	.type sub_401f9a, @function
sub_401f9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fa0
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
	#Procedure 0x401fb0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401fb9
	.globl sub_401fb9
	.type sub_401fb9, @function
sub_401fb9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401fc0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x401fca
	.globl sub_401fca
	.type sub_401fca, @function
sub_401fca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fd0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fda
	.globl sub_401fda
	.type sub_401fda, @function
sub_401fda:

	nop	word ptr [rax + rax]
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
	jmp	.label_65
.label_387:
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
.label_385:
	add	rsp, 8
	jmp	.label_65
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
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
	jmp	.label_65
.label_394:
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
	jmp	.label_65
.label_393:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
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
.label_65:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40214e
	.globl sub_40214e
	.type sub_40214e, @function
sub_40214e:

	nop	dword ptr [rax + rax]
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
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
	jmp	.label_65
	.section	.text
	.align	32
	#Procedure 0x4021a0

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
	je	.label_74
	mov	edx, OFFSET FLAT:label_68
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_71
.label_74:
	mov	edx, OFFSET FLAT:label_72
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
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
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_79
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_82]]
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
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
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
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
	jmp	.label_65
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
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
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
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
	jmp	.label_65
.label_84:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_83
	test	cl, cl
	jne	.label_83
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_83:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40236b
	.globl sub_40236b
	.type sub_40236b, @function
sub_40236b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402375

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
	je	.label_84
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_83
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_83
.label_85:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4023b5
	.globl sub_4023b5
	.type sub_4023b5, @function
sub_4023b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023c3

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_85
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023d0

	.globl emit_tab_list_info
	.type emit_tab_list_info, @function
emit_tab_list_info:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402412
	.globl sub_402412
	.type sub_402412, @function
sub_402412:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402420
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_88
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_88:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40243e
	.globl sub_40243e
	.type sub_40243e, @function
sub_40243e:

	nop	
.label_90:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_89
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402460
	.globl sub_402460
	.type sub_402460, @function
sub_402460:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40246f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_90
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_91
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_91
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_93
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_93:
	mov	rbx, r14
.label_91:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_99
	mov	ecx, OFFSET FLAT:label_100
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402564
	.globl sub_402564
	.type sub_402564, @function
sub_402564:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402570

	.globl expand
	.type expand, @function
expand:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	xor	edi, edi
	call	next_file
	mov	r13, rax
	test	r13, r13
	je	.label_101
	lea	r15, [rsp + 0xf]
.label_110:
	mov	qword ptr [rsp + 0x10], 0
	mov	r14b, 1
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	rbx, r13
	nop	word ptr cs:[rax + rax]
.label_112:
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_103
	mov	rdi, rbx
	call	next_file
	mov	rbx, rax
	test	rbx, rbx
	mov	r13d, 0
	jne	.label_112
	jmp	.label_109
	.section	.text
	.align	32
	#Procedure 0x4025e6
	.globl sub_4025e6
	.type sub_4025e6, @function
sub_4025e6:

	nop	word ptr cs:[rax + rax]
.label_103:
	mov	r13, rbx
.label_109:
	test	r14b, 1
	je	.label_104
	cmp	ebp, 8
	je	.label_114
	cmp	ebp, 9
	jne	.label_102
	mov	rdi, r12
	lea	rsi, [rsp + 0x10]
	mov	rdx, r15
	call	get_next_tab_column
	mov	rbp, rax
	lea	rax, [r12 + 1]
	cmp	byte ptr [rsp + 0xf], 0
	cmovne	rbp, rax
	cmp	rbp, r12
	mov	r12, rax
	jb	.label_107
	nop	word ptr cs:[rax + rax]
.label_106:
	cmp	r12, rbp
	jae	.label_113
	mov	edi, 0x20
	call	putchar_unlocked
	inc	r12
	test	eax, eax
	jns	.label_106
	jmp	.label_105
.label_114:
	cmp	r12, 1
	adc	r12, -1
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rax, 1
	adc	rax, -1
	mov	qword ptr [rsp + 0x10], rax
	mov	ebp, 8
	jmp	.label_108
.label_102:
	inc	r12
	jne	.label_108
	jmp	.label_107
.label_113:
	mov	ebp, 0x20
.label_108:
	mov	r14b, 1
	cmp	byte ptr [byte ptr [rip + convert_entire_line]],  0
	jne	.label_104
	movsxd	rbx, ebp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	r14b, byte ptr [rax + rbx*2]
	and	r14b, 1
	nop	word ptr [rax + rax]
.label_104:
	test	ebp, ebp
	js	.label_101
	mov	edi, ebp
	call	putchar_unlocked
	test	eax, eax
	js	.label_105
	cmp	ebp, 0xa
	jne	.label_115
	jmp	.label_110
.label_101:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_105:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
.label_116:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402735
	.globl sub_402735
	.type sub_402735, @function
sub_402735:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402743

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
	je	.label_116
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
	#Procedure 0x402790

	.globl set_increment_size
	.type set_increment_size, @function
set_increment_size:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	qword ptr [word ptr [rip + increment_size]],  0
	je	.label_117
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_117:
	mov	qword ptr [word ptr [rip + increment_size]],  r14
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027d8
	.globl sub_4027d8
	.type sub_4027d8, @function
sub_4027d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027e0

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
	#Procedure 0x402819
	.globl sub_402819
	.type sub_402819, @function
sub_402819:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402820
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
	#Procedure 0x402831
	.globl sub_402831
	.type sub_402831, @function
sub_402831:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402840
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
	#Procedure 0x402854
	.globl sub_402854
	.type sub_402854, @function
sub_402854:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860

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
	je	.label_121
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_119
	jmp	.label_120
.label_121:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_120
.label_119:
	mov	eax, 1
	test	bpl, bpl
	je	.label_120
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
.label_120:
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
	#Procedure 0x4028e8
	.globl sub_4028e8
	.type sub_4028e8, @function
sub_4028e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028f0

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
	je	.label_122
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_124
	jmp	.label_123
.label_122:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_123
.label_124:
	mov	eax, 1
	test	bpl, bpl
	je	.label_123
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
.label_123:
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
	#Procedure 0x402969
	.globl sub_402969
	.type sub_402969, @function
sub_402969:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402970

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
	je	.label_127
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_126
	jmp	.label_125
.label_127:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_125
.label_126:
	mov	eax, 1
	test	bpl, bpl
	je	.label_125
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
.label_125:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029d3
	.globl sub_4029d3
	.type sub_4029d3, @function
sub_4029d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0

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
	je	.label_130
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_128
	jmp	.label_129
.label_130:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_129
.label_128:
	mov	eax, 1
	test	bpl, bpl
	je	.label_129
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_129:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a3f
	.globl sub_402a3f
	.type sub_402a3f, @function
sub_402a3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a40

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
	je	.label_131
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_133
	jmp	.label_132
.label_131:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_132
.label_133:
	mov	eax, 1
	test	bpl, bpl
	je	.label_132
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_132:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a89
	.globl sub_402a89
	.type sub_402a89, @function
sub_402a89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a90

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
	je	.label_136
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_135
	jmp	.label_134
.label_136:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_134
.label_135:
	mov	eax, 1
	test	bpl, bpl
	je	.label_134
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_134:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ad5
	.globl sub_402ad5
	.type sub_402ad5, @function
sub_402ad5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ae0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_139
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_138
	jmp	.label_137
.label_139:
	mov	eax, 1
	test	cl, cl
	je	.label_137
.label_138:
	xor	eax, eax
.label_137:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b0f
	.globl sub_402b0f
	.type sub_402b0f, @function
sub_402b0f:

	nop	
.label_140:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b13
	.globl sub_402b13
	.type sub_402b13, @function
sub_402b13:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b1b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_140
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402b3a
	.globl sub_402b3a
	.type sub_402b3a, @function
sub_402b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b40
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x402b4d
	.globl sub_402b4d
	.type sub_402b4d, @function
sub_402b4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b50
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
	#Procedure 0x402b60
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
	#Procedure 0x402bd2
	.globl sub_402bd2
	.type sub_402bd2, @function
sub_402bd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402be0

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
	#Procedure 0x402c29
	.globl sub_402c29
	.type sub_402c29, @function
sub_402c29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_144:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_141
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_142
	.section	.text
	.align	32
	#Procedure 0x402c59
	.globl sub_402c59
	.type sub_402c59, @function
sub_402c59:

	nop	dword ptr [rax]
.label_141:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_142:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_143
	inc	r9
	cmp	r9, 0xa
	jb	.label_144
.label_143:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c8f
	.globl sub_402c8f
	.type sub_402c8f, @function
sub_402c8f:

	nop	
.label_148:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
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
	#Procedure 0x402cc8
	.globl sub_402cc8
	.type sub_402cc8, @function
sub_402cc8:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cce

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_148
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_tab_list_info
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_152:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402da3
	.globl sub_402da3
	.type sub_402da3, @function
sub_402da3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402da5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_152
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dc0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x402dca
	.globl sub_402dca
	.type sub_402dca, @function
sub_402dca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0

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
	#Procedure 0x402dfd
	.globl sub_402dfd
	.type sub_402dfd, @function
sub_402dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e00
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
	#Procedure 0x402e13
	.globl sub_402e13
	.type sub_402e13, @function
sub_402e13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e20

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402e42
	.globl sub_402e42
	.type sub_402e42, @function
sub_402e42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50
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
	#Procedure 0x402e66
	.globl sub_402e66
	.type sub_402e66, @function
sub_402e66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e70
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
	#Procedure 0x402e97
	.globl sub_402e97
	.type sub_402e97, @function
sub_402e97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_154:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_154
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402ec1
	.globl sub_402ec1
	.type sub_402ec1, @function
sub_402ec1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ed0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x402eda
	.globl sub_402eda
	.type sub_402eda, @function
sub_402eda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
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

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_155
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_155:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f0a
	.globl sub_402f0a
	.type sub_402f0a, @function
sub_402f0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402f32
	.globl sub_402f32
	.type sub_402f32, @function
sub_402f32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f40

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_157
	test	rdx, rdx
	je	.label_157
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_157:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f6b
	.globl sub_402f6b
	.type sub_402f6b, @function
sub_402f6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402fa0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_159
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_159:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402fc3
	.globl sub_402fc3
	.type sub_402fc3, @function
sub_402fc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_160
	test	rax, rax
	je	.label_161
.label_160:
	pop	rbx
	ret	
.label_161:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402fea
	.globl sub_402fea
	.type sub_402fea, @function
sub_402fea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ff0

	.globl parse_tab_stops
	.type parse_tab_stops, @function
parse_tab_stops:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdi
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	r12d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp], 0
	mov	dword ptr [rsp + 4], 0
	xor	r15d, r15d
	jmp	.label_183
	.section	.text
	.align	32
	#Procedure 0x403029
	.globl sub_403029
	.type sub_403029, @function
sub_403029:

	nop	dword ptr [rax]
.label_163:
	inc	r13
	mov	r15b, r14b
.label_183:
	movsx	ebx, byte ptr [r13]
	cmp	ebx, 0x2c
	je	.label_174
	test	bl, bl
	je	.label_173
	mov	edi, ebx
	call	to_uchar
	movzx	ebp, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 1
	jne	.label_174
	cmp	bl, 0x2b
	je	.label_179
	cmp	bl, 0x2f
	jne	.label_182
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	test	r15b, 1
	je	.label_185
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_185:
	mov	dword ptr [rsp], 0
	mov	r14b, r15b
	jmp	.label_163
	.section	.text
	.align	32
	#Procedure 0x4030c5
	.globl sub_4030c5
	.type sub_4030c5, @function
sub_4030c5:

	nop	word ptr cs:[rax + rax]
.label_174:
	test	r15b, 1
	je	.label_165
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	jne	.label_176
	mov	eax, dword ptr [rsp]
	mov	rdi, r12
	test	al, 1
	jne	.label_178
	call	add_tab_stop
	jmp	.label_165
.label_176:
	mov	rdi, r12
	call	set_extend_size
	jmp	.label_186
.label_178:
	call	set_increment_size
.label_186:
	test	al, al
	je	.label_184
.label_165:
	xor	r14d, r14d
	jmp	.label_163
.label_179:
	mov	al, 1
	mov	dword ptr [rsp], eax
	test	r15b, 1
	je	.label_164
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_164:
	mov	dword ptr [rsp + 4], 0
	mov	r14b, r15b
	jmp	.label_163
.label_182:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_177
	mov	eax, r15d
	and	al, 1
	mov	ecx, 0
	cmove	r12, rcx
	mov	r14b, 1
	je	.label_181
	mov	r14b, r15b
.label_181:
	test	al, al
	mov	rbp, qword ptr [rsp + 0x10]
	cmove	rbp, r13
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	mov	qword ptr [rsp + 0x10], rbp
	ja	.label_187
	lea	rax, [r12 + r12*4]
	movsxd	rcx, ebx
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	jae	.label_168
.label_187:
	mov	esi, OFFSET FLAT:label_171
	mov	rdi, rbp
	call	strspn
	mov	r13, rax
	mov	rdi, rbp
	mov	rsi, r13
	call	xstrndup
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	mov	rdi, rbx
	call	free
	lea	r13, [rbp + r13 - 1]
	jmp	.label_163
.label_168:
	mov	r12, rax
	jmp	.label_163
.label_173:
	mov	rbx, qword ptr [rsp + 8]
	and	r15b, bl
	test	r15b, 1
	je	.label_167
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	jne	.label_170
	mov	eax, dword ptr [rsp]
	mov	rdi, r12
	test	al, 1
	jne	.label_169
	call	add_tab_stop
	jmp	.label_167
.label_170:
	mov	rdi, r12
	call	set_extend_size
	jmp	.label_175
.label_169:
	call	set_increment_size
.label_175:
	mov	bl, al
.label_167:
	test	bl, 1
	je	.label_184
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_184:
	mov	edi, 1
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40329e
	.globl sub_40329e
	.type sub_40329e, @function
sub_40329e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4032a0

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
	mov	rcx,  qword ptr [word ptr [rip + label_188]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_189]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_190]]
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
	#Procedure 0x40330d
	.globl sub_40330d
	.type sub_40330d, @function
sub_40330d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403310

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40331d
	.globl sub_40331d
	.type sub_40331d, @function
sub_40331d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403320

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x403327
	.globl sub_403327
	.type sub_403327, @function
sub_403327:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl next_file
	.type next_file, @function
next_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_203
	cmp	qword ptr [word ptr [rip + next_file.prev_file]],  0
	je	.label_192
	mov	rdi, rbx
	call	ferror_unlocked
	test	eax, eax
	je	.label_198
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + next_file.prev_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [dword ptr [rip + exit_status]],  1
.label_198:
	mov	rax,  qword ptr [word ptr [rip + next_file.prev_file]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_205
	cmp	byte ptr [rax + 1], 0
	je	.label_201
.label_205:
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_203
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + next_file.prev_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	dword ptr [dword ptr [rip + exit_status]],  1
	jmp	.label_203
.label_201:
	mov	rdi, rbx
	call	clearerr_unlocked
.label_203:
	mov	rax,  qword ptr [word ptr [rip + file_list]]
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + file_list]],  rcx
	mov	rbx, qword ptr [rax]
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_202
	xor	r14d, r14d
	jmp	.label_196
	.section	.text
	.align	32
	#Procedure 0x403419
	.globl sub_403419
	.type sub_403419, @function
sub_403419:

	nop	dword ptr [rax]
.label_199:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [dword ptr [rip + exit_status]],  1
	mov	rax,  qword ptr [word ptr [rip + file_list]]
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + file_list]],  rcx
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_196
	jmp	.label_202
.label_200:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	r15,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_204
	.section	.text
	.align	32
	#Procedure 0x40347f
	.globl sub_40347f
	.type sub_40347f, @function
sub_40347f:

	nop	
.label_196:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_191
	cmp	byte ptr [rbx + 1], 0
	je	.label_200
.label_191:
	mov	esi, OFFSET FLAT:label_197
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
.label_204:
	test	r15, r15
	je	.label_199
	mov	qword ptr [word ptr [rip + next_file.prev_file]],  rbx
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	r14, r15
.label_202:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_192:
	mov	edi, OFFSET FLAT:label_193
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 0x155
	mov	ecx, OFFSET FLAT:label_195
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4034de
	.globl sub_4034de
	.type sub_4034de, @function
sub_4034de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4034e0

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
	jne	.label_213
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
	je	.label_209
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_214
	mov	eax, OFFSET FLAT:label_215
	jmp	.label_212
.label_209:
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
	je	.label_208
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_210
	mov	eax, OFFSET FLAT:label_211
	jmp	.label_212
.label_208:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_206
	mov	eax, OFFSET FLAT:label_207
.label_212:
	cmove	rax, rcx
.label_213:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40359d
	.globl sub_40359d
	.type sub_40359d, @function
sub_40359d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035a0

	.globl add_tab_stop
	.type add_tab_stop, @function
add_tab_stop:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rcx,  qword ptr [word ptr [rip + first_free_tab]]
	xor	eax, eax
	test	rcx, rcx
	je	.label_216
	mov	rax,  qword ptr [word ptr [rip + tab_list]]
	mov	rax, qword ptr [rax + rcx*8 - 8]
.label_216:
	xor	ebx, ebx
	mov	rcx, r14
	sub	rcx, rax
	cmovae	rbx, rcx
	mov	rax,  qword ptr [word ptr [rip + first_free_tab]]
	cmp	rax,  qword ptr [word ptr [rip + n_tabs_allocated]]
	jne	.label_217
	mov	rdi,  qword ptr [word ptr [rip + tab_list]]
	mov	esi, OFFSET FLAT:n_tabs_allocated
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + tab_list]],  rax
.label_217:
	mov	rax,  qword ptr [word ptr [rip + first_free_tab]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + first_free_tab]],  rcx
	mov	rcx,  qword ptr [word ptr [rip + tab_list]]
	mov	qword ptr [rcx + rax*8], r14
	cmp	qword ptr [word ptr [rip + max_column_width]],  rbx
	jae	.label_218
	mov	qword ptr [word ptr [rip + max_column_width]],  rbx
.label_218:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40362f
	.globl sub_40362f
	.type sub_40362f, @function
sub_40362f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403630

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_219
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_219
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_219:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403656
	.globl sub_403656
	.type sub_403656, @function
sub_403656:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403660
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
	#Procedure 0x40366f
	.globl sub_40366f
	.type sub_40366f, @function
sub_40366f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403670
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
	#Procedure 0x40367d
	.globl sub_40367d
	.type sub_40367d, @function
sub_40367d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403680
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40368a
	.globl sub_40368a
	.type sub_40368a, @function
sub_40368a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403690

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403693
	.globl sub_403693
	.type sub_403693, @function
sub_403693:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036aa
	.globl sub_4036aa
	.type sub_4036aa, @function
sub_4036aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036b0

	.globl set_file_list
	.type set_file_list, @function
set_file_list:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	test	rdi, rdi
	mov	eax, OFFSET FLAT:stdin_argv
	cmovne	rax, rdi
	mov	qword ptr [word ptr [rip + file_list]],  rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036cb
	.globl sub_4036cb
	.type sub_4036cb, @function
sub_4036cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036d0

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
	je	.label_220
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_222
	jmp	.label_221
.label_220:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_221
.label_222:
	mov	eax, 1
	test	bpl, bpl
	je	.label_221
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
.label_221:
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
	#Procedure 0x40374d
	.globl sub_40374d
	.type sub_40374d, @function
sub_40374d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403750

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_223
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_224
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403775
	.globl sub_403775
	.type sub_403775, @function
sub_403775:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403780
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40378a
	.globl sub_40378a
	.type sub_40378a, @function
sub_40378a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403790

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
	je	.label_225
	cmp	r15, -2
	jb	.label_225
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_225
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_225:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037e6
	.globl sub_4037e6
	.type sub_4037e6, @function
sub_4037e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_223
	call	setlocale
	mov	edi, OFFSET FLAT:label_229
	mov	esi, OFFSET FLAT:label_230
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_229
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + convert_entire_line]],  1
	lea	r14, [rsp + 0xe]
	jmp	.label_228
	.section	.text
	.align	32
	#Procedure 0x403845
	.globl sub_403845
	.type sub_403845, @function
sub_403845:

	nop	word ptr cs:[rax + rax]
.label_235:
	dec	rdi
	call	parse_tab_stops
.label_228:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x75
	ja	.label_232
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_234]]
.label_429:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	jne	.label_235
	mov	byte ptr [rsp + 0xe], al
	mov	byte ptr [rsp + 0xf], 0
	mov	rdi, r14
	call	parse_tab_stops
	jmp	.label_228
.label_430:
	mov	byte ptr [byte ptr [rip + convert_entire_line]],  0
	jmp	.label_228
.label_431:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	parse_tab_stops
	jmp	.label_228
.label_428:
	call	finalize_tab_stops
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	xor	edi, edi
	cmp	eax, ebp
	lea	rax, [rbx + rax*8]
	cmovl	rdi, rax
	call	set_file_list
	call	expand
	call	cleanup_file_list_stdin
	mov	eax,  dword ptr [dword ptr [rip + exit_status]]
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_232:
	cmp	eax, 0xffffff7d
	je	.label_231
	cmp	eax, 0xffffff7e
	jne	.label_233
	xor	edi, edi
	call	usage
.label_233:
	mov	edi, 1
	call	usage
.label_231:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_226
	mov	edx, OFFSET FLAT:label_99
	mov	r8d, OFFSET FLAT:label_227
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x403938
	.globl sub_403938
	.type sub_403938, @function
sub_403938:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403940
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_236
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_236
.label_237:
	ret	
.label_236:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_237
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403966
	.globl sub_403966
	.type sub_403966, @function
sub_403966:

	nop	word ptr cs:[rax + rax]
.label_239:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_238
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403994

	.globl cleanup_file_list_stdin
	.type cleanup_file_list_stdin, @function
cleanup_file_list_stdin:
	push	rax
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_240
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	jne	.label_239
.label_240:
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039b0

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
	#Procedure 0x4039e6
	.globl sub_4039e6
	.type sub_4039e6, @function
sub_4039e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0

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
	#Procedure 0x403a07
	.globl sub_403a07
	.type sub_403a07, @function
sub_403a07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a10

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x403a19
	.globl sub_403a19
	.type sub_403a19, @function
sub_403a19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a20

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
	mov	rax,  qword ptr [word ptr [rip + label_188]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_189]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_190]]
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
	#Procedure 0x403a88
	.globl sub_403a88
	.type sub_403a88, @function
sub_403a88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a90

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a9a
	.globl sub_403a9a
	.type sub_403a9a, @function
sub_403a9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403aa0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_241
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_243:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_243
.label_241:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_245
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_244]], OFFSET FLAT:slot0
.label_245:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_242
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_242:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b31
	.globl sub_403b31
	.type sub_403b31, @function
sub_403b31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b40

	.globl get_next_tab_column
	.type get_next_tab_column, @function
get_next_tab_column:
	mov	byte ptr [rdx], 0
	mov	rcx,  qword ptr [word ptr [rip + tab_size]]
	test	rcx, rcx
	jne	.label_246
	mov	rax, qword ptr [rsi]
	mov	r8,  qword ptr [word ptr [rip + first_free_tab]]
	cmp	rax, r8
	jae	.label_251
	mov	r9,  qword ptr [word ptr [rip + tab_list]]
	mov	r8,  qword ptr [word ptr [rip + first_free_tab]]
	nop	dword ptr [rax]
.label_252:
	mov	rcx, qword ptr [r9 + rax*8]
	cmp	rcx, rdi
	ja	.label_247
	inc	rax
	mov	qword ptr [rsi], rax
	cmp	rax, r8
	jb	.label_252
.label_251:
	mov	rcx,  qword ptr [word ptr [rip + extend_size]]
	test	rcx, rcx
	je	.label_249
.label_246:
	xor	edx, edx
	mov	rax, rdi
.label_250:
	div	rcx
	add	rcx, rdi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
.label_249:
	mov	rcx,  qword ptr [word ptr [rip + increment_size]]
	test	rcx, rcx
	je	.label_248
	mov	rdx,  qword ptr [word ptr [rip + tab_list]]
	mov	rax, rdi
	sub	rax, qword ptr [rdx + r8*8 - 8]
	xor	edx, edx
	jmp	.label_250
.label_248:
	mov	byte ptr [rdx], 1
	xor	ecx, ecx
.label_247:
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bca
	.globl sub_403bca
	.type sub_403bca, @function
sub_403bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bd0

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
.label_280:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_360
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_285]]
.label_440:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_290
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_207
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_441:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_304
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_304
	xor	r14d, r14d
.label_317:
	cmp	r14, r11
	jae	.label_315
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_315:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_317
.label_304:
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
	jmp	.label_307
.label_433:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_307
.label_436:
	mov	al, 1
.label_434:
	mov	r12b, 1
.label_437:
	test	r12b, 1
	mov	cl, 1
	je	.label_332
	mov	ecx, eax
.label_332:
	mov	al, cl
.label_435:
	test	r12b, 1
	jne	.label_335
	test	r11, r11
	je	.label_310
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_310:
	mov	r14d, 1
	jmp	.label_342
.label_335:
	xor	r14d, r14d
.label_342:
	mov	ecx, OFFSET FLAT:label_207
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_307
.label_438:
	test	r12b, 1
	jne	.label_351
	test	r11, r11
	je	.label_352
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_352:
	mov	r14d, 1
	jmp	.label_355
.label_439:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_206
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_307
.label_351:
	xor	r14d, r14d
.label_355:
	mov	eax, OFFSET FLAT:label_206
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_307:
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
	jmp	.label_263
	.section	.text
	.align	32
	#Procedure 0x403eac
	.globl sub_403eac
	.type sub_403eac, @function
sub_403eac:

	nop	dword ptr [rax]
.label_261:
	inc	rsi
.label_263:
	cmp	rbp, -1
	je	.label_296
	cmp	rsi, rbp
	jne	.label_277
	jmp	.label_300
	.section	.text
	.align	32
	#Procedure 0x403ec3
	.globl sub_403ec3
	.type sub_403ec3, @function
sub_403ec3:

	nop	word ptr cs:[rax + rax]
.label_296:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_300
.label_277:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_306
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_309
	cmp	rbp, -1
	jne	.label_309
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
.label_309:
	cmp	rbx, rbp
	jbe	.label_319
.label_306:
	xor	r8d, r8d
.label_343:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_320
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_323]]
.label_469:
	test	rsi, rsi
	jne	.label_271
	jmp	.label_328
	.section	.text
	.align	32
	#Procedure 0x403f5e
	.globl sub_403f5e
	.type sub_403f5e, @function
sub_403f5e:

	nop	
.label_319:
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
	jne	.label_340
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_343
	jmp	.label_262
.label_340:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_343
.label_473:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_361
	test	rsi, rsi
	jne	.label_362
	cmp	rbp, 1
	je	.label_328
	xor	r13d, r13d
	jmp	.label_276
.label_462:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_254
	cmp	byte ptr [rsp + 7], 0
	jne	.label_257
	cmp	r12d, 2
	jne	.label_259
	mov	eax, r9d
	and	al, 1
	jne	.label_259
	cmp	r14, r11
	jae	.label_288
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_288:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_268
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_268:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_273
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_273:
	add	r14, 3
	mov	r9b, 1
.label_259:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_272:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_281
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_281
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_281
	cmp	r14, r11
	jae	.label_291
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_291:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_331
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_331:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_276
.label_463:
	mov	bl, 0x62
	jmp	.label_303
.label_464:
	mov	cl, 0x74
	jmp	.label_292
.label_465:
	mov	bl, 0x76
	jmp	.label_303
.label_466:
	mov	bl, 0x66
	jmp	.label_303
.label_467:
	mov	cl, 0x72
	jmp	.label_292
.label_470:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_312
	cmp	byte ptr [rsp + 7], 0
	jne	.label_257
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
	jae	.label_318
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_318:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_327
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_327:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_329
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_329:
	add	r14, 3
	xor	r9d, r9d
.label_312:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_276
.label_471:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_338
	cmp	r12d, 2
	jne	.label_271
	cmp	byte ptr [rsp + 7], 0
	je	.label_271
	jmp	.label_257
.label_472:
	cmp	r12d, 2
	jne	.label_349
	cmp	byte ptr [rsp + 7], 0
	jne	.label_257
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_278
.label_320:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_294
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
.label_293:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_274
	test	r8b, r8b
	je	.label_274
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_276
.label_361:
	test	rsi, rsi
	jne	.label_279
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_279
.label_328:
	mov	dl, 1
.label_468:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_257
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_276:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_286
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_287
	jmp	.label_264
	.section	.text
	.align	32
	#Procedure 0x4042a4
	.globl sub_4042a4
	.type sub_4042a4, @function
sub_4042a4:

	nop	word ptr cs:[rax + rax]
.label_286:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_264
.label_287:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_297
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_278
	jmp	.label_311
	.section	.text
	.align	32
	#Procedure 0x4042ed
	.globl sub_4042ed
	.type sub_4042ed, @function
sub_4042ed:

	nop	dword ptr [rax]
.label_264:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_311
	jmp	.label_278
.label_297:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_311
.label_254:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_261
	xor	r15d, r15d
	jmp	.label_271
.label_349:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_292
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_278
.label_292:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_257
.label_303:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_276
	nop	word ptr cs:[rax + rax]
.label_311:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_257
	cmp	r12d, 2
	jne	.label_333
	mov	eax, r9d
	and	al, 1
	jne	.label_333
	cmp	r14, r11
	jae	.label_336
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_336:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_364
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_364:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_346
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_346:
	add	r14, 3
	mov	r9b, 1
.label_333:
	cmp	r14, r11
	jae	.label_350
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_350:
	inc	r14
	jmp	.label_353
.label_294:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_356
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_356:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_313:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_267
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_270
	cmp	rbp, -2
	je	.label_357
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_255
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_348:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_325
	bt	rsi, rdx
	jb	.label_262
.label_325:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_348
.label_255:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_299
	xor	r13d, r13d
.label_299:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_313
	jmp	.label_293
.label_281:
	xor	r13d, r13d
	jmp	.label_276
.label_279:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_276
.label_338:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_271
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_271
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_271
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_321
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_344
	cmp	byte ptr [rsp + 7], 0
	jne	.label_257
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_358
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_358:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_314
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_314:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_341
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_341:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_345
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_345:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_276
.label_271:
	xor	eax, eax
.label_362:
	xor	r13d, r13d
	jmp	.label_276
.label_274:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_354
	.section	.text
	.align	32
	#Procedure 0x4045d3
	.globl sub_4045d3
	.type sub_4045d3, @function
sub_4045d3:

	nop	word ptr cs:[rax + rax]
.label_316:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_354:
	test	r8b, r8b
	je	.label_363
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_256
	cmp	r14, r11
	jae	.label_365
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_365:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_256
	.section	.text
	.align	32
	#Procedure 0x40461c
	.globl sub_40461c
	.type sub_40461c, @function
sub_40461c:

	nop	dword ptr [rax]
.label_363:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_262
	cmp	r12d, 2
	jne	.label_266
	mov	eax, r9d
	and	al, 1
	jne	.label_266
	cmp	r14, r11
	jae	.label_269
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_269:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_301
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_301:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_258
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_258:
	add	r14, 3
	mov	r9b, 1
.label_266:
	cmp	r14, r11
	jae	.label_295
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_295:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_283
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_283:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_289
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_289:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_256:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_278
	test	r9b, 1
	je	.label_305
	mov	ebx, eax
	and	bl, 1
	jne	.label_305
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_308
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_308:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_339
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_339:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_305:
	cmp	r14, r11
	jae	.label_316
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_316
	.section	.text
	.align	32
	#Procedure 0x404723
	.globl sub_404723
	.type sub_404723, @function
sub_404723:

	nop	word ptr cs:[rax + rax]
.label_278:
	test	r9b, 1
	je	.label_326
	and	al, 1
	jne	.label_326
	cmp	r14, r11
	jae	.label_322
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_322:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_302
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_302:
	add	r14, 2
	xor	r9d, r9d
.label_326:
	mov	ebx, r15d
.label_353:
	cmp	r14, r11
	jae	.label_330
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_330:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_261
.label_270:
	xor	r13d, r13d
.label_267:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_293
.label_357:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_347
	mov	rsi, qword ptr [rsp + 0x50]
.label_324:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_260
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_324
	xor	r13d, r13d
	jmp	.label_293
.label_347:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_293
.label_260:
	xor	r13d, r13d
	jmp	.label_293
.label_321:
	xor	r13d, r13d
	jmp	.label_276
.label_344:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_276
	.section	.text
	.align	32
	#Procedure 0x4047f8
	.globl sub_4047f8
	.type sub_4047f8, @function
sub_4047f8:

	nop	dword ptr [rax + rax]
.label_300:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_253
	or	dl, al
	je	.label_262
.label_253:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_265
	or	dl, al
	jne	.label_265
	test	r10b, 1
	jne	.label_275
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_265
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_280
.label_265:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_282
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_284
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_284
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_298:
	cmp	r14, r11
	jae	.label_359
	mov	byte ptr [rcx + r14], al
.label_359:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_298
	jmp	.label_284
.label_257:
	mov	qword ptr [rsp + 0x20], rbp
.label_262:
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
.label_334:
	mov	r14, rax
.label_337:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_275:
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
	jmp	.label_334
.label_282:
	mov	rcx, qword ptr [rsp + 8]
.label_284:
	cmp	r14, r11
	jae	.label_337
	mov	byte ptr [rcx + r14], 0
	jmp	.label_337
.label_360:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40498c
	.globl sub_40498c
	.type sub_40498c, @function
sub_40498c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404990

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_367
	cmp	byte ptr [rax], 0x43
	jne	.label_369
	cmp	byte ptr [rax + 1], 0
	je	.label_366
.label_369:
	mov	esi, OFFSET FLAT:label_368
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_367
.label_366:
	xor	ebx, ebx
.label_367:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049c1
	.globl sub_4049c1
	.type sub_4049c1, @function
sub_4049c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0
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
	#Procedure 0x4049df
	.globl sub_4049df
	.type sub_4049df, @function
sub_4049df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_370
	nop	
.label_379:
	mov	edi, OFFSET FLAT:label_226
	call	strcmp
	test	eax, eax
	je	.label_377
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_379
.label_377:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_226
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_99
	mov	ecx, OFFSET FLAT:label_100
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_372
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_372
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_372:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_226
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_100
	mov	ecx, OFFSET FLAT:label_226
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_375
	mov	ecx, OFFSET FLAT:label_223
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
	#Procedure 0x404afa
	.globl sub_404afa
	.type sub_404afa, @function
sub_404afa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b65
	.globl sub_404b65
	.type sub_404b65, @function
sub_404b65:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b72
	.globl sub_404b72
	.type sub_404b72, @function
sub_404b72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b96
	.globl sub_404b96
	.type sub_404b96, @function
sub_404b96:

	nop	word ptr cs:[rax + rax]
