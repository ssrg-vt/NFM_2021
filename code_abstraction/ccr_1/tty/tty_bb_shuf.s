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
.label_9:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401425
	.globl sub_401425
	.type sub_401425, @function
sub_401425:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40142f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_9
	call	rpl_calloc
	test	rax, rax
	je	.label_9
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401450
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_10
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_12:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_12
.label_10:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_13
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_14]], OFFSET FLAT:slot0
.label_13:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_11
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_11:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4014e1
	.globl sub_4014e1
	.type sub_4014e1, @function
sub_4014e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_15
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_15:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401513
	.globl sub_401513
	.type sub_401513, @function
sub_401513:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401520

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_16
	test	rax, rax
	je	.label_17
.label_16:
	pop	rbx
	ret	
.label_17:
	call	xalloc_die
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

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_18
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_19
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_18
.label_19:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_18
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_20
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_20:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_18:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4015b7
	.globl sub_4015b7
	.type sub_4015b7, @function
sub_4015b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015c0
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
	#Procedure 0x4015cd
	.globl sub_4015cd
	.type sub_4015cd, @function
sub_4015cd:

	nop	dword ptr [rax]
.label_21:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015d3
	.globl sub_4015d3
	.type sub_4015d3, @function
sub_4015d3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015db
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_21
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015f0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4015f9
	.globl sub_4015f9
	.type sub_4015f9, @function
sub_4015f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401600

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
	mov	rax,  qword ptr [word ptr [rip + label_22]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_23]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_24]]
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
	#Procedure 0x401668
	.globl sub_401668
	.type sub_401668, @function
sub_401668:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401670

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_25
	test	rsi, rsi
	mov	ecx, 1
	je	.label_26
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_26
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_25:
	mov	ecx, 1
.label_26:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4016bb
	.globl sub_4016bb
	.type sub_4016bb, @function
sub_4016bb:

	nop	dword ptr [rax + rax]
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_31
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401705

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_34
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_33
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_33
.label_34:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_32
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_32:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_31:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_39:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	#Procedure 0x4017b8
	.globl sub_4017b8
	.type sub_4017b8, @function
sub_4017b8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017bc

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_39
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401860

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_40
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_40
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_40:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401886
	.globl sub_401886
	.type sub_401886, @function
sub_401886:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401890
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
	#Procedure 0x4018c3
	.globl sub_4018c3
	.type sub_4018c3, @function
sub_4018c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018da
	.globl sub_4018da
	.type sub_4018da, @function
sub_4018da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018e0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x4018e5
	.globl sub_4018e5
	.type sub_4018e5, @function
sub_4018e5:

	nop	word ptr cs:[rax + rax]
.label_41:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x4018fc
	.globl sub_4018fc
	.type sub_4018fc, @function
sub_4018fc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401909

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_41
	ret	
	.section	.text
	.align	32
	#Procedure 0x401910
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
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
	#Procedure 0x40192f
	.globl sub_40192f
	.type sub_40192f, @function
sub_40192f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401930

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_43:
	cmp	edi, 0x7f
	je	.label_44
	xor	eax, eax
	jmp	.label_44
	.section	.text
	.align	32
	#Procedure 0x401969
	.globl sub_401969
	.type sub_401969, @function
sub_401969:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401978
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_43
.label_44:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401980

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
	jne	.label_52
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
	je	.label_51
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_53
	mov	eax, OFFSET FLAT:label_54
	jmp	.label_49
.label_51:
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
	je	.label_50
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_47
	mov	eax, OFFSET FLAT:label_48
	jmp	.label_49
.label_50:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_45
	mov	eax, OFFSET FLAT:label_46
.label_49:
	cmove	rax, rcx
.label_52:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a3d
	.globl sub_401a3d
	.type sub_401a3d, @function
sub_401a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_55
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_55:
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
	#Procedure 0x401ac3
	.globl sub_401ac3
	.type sub_401ac3, @function
sub_401ac3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ad0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ada
	.globl sub_401ada
	.type sub_401ada, @function
sub_401ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ae0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401aea
	.globl sub_401aea
	.type sub_401aea, @function
sub_401aea:

	nop	word ptr [rax + rax]
.label_57:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_56
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401afb
	.globl sub_401afb
	.type sub_401afb, @function
sub_401afb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b05
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_57
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_57
.label_56:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b20

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
	#Procedure 0x401b57
	.globl sub_401b57
	.type sub_401b57, @function
sub_401b57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b60

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401b6a
	.globl sub_401b6a
	.type sub_401b6a, @function
sub_401b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b70
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
	#Procedure 0x401b80

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401b89
	.globl sub_401b89
	.type sub_401b89, @function
sub_401b89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b90

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x401b9a
	.globl sub_401b9a
	.type sub_401b9a, @function
sub_401b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_58
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_59
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bc5
	.globl sub_401bc5
	.type sub_401bc5, @function
sub_401bc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bd0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_68
	nop	
.label_67:
	mov	edi, OFFSET FLAT:label_60
	call	strcmp
	test	eax, eax
	je	.label_65
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_67
.label_65:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_60
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_61
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_61
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_60
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_64
	mov	ecx, OFFSET FLAT:label_60
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_72
	mov	ecx, OFFSET FLAT:label_58
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
	#Procedure 0x401cea
	.globl sub_401cea
	.type sub_401cea, @function
sub_401cea:

	nop	word ptr [rax + rax]
.label_75:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_73
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_73:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d24
	.globl sub_401d24
	.type sub_401d24, @function
sub_401d24:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401d26

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
	jne	.label_74
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_74
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_75
.label_74:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_76:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d63
	.globl sub_401d63
	.type sub_401d63, @function
sub_401d63:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401d65
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_76
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
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
	#Procedure 0x401daf
	.globl sub_401daf
	.type sub_401daf, @function
sub_401daf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401db0

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
	#Procedure 0x401dd9
	.globl sub_401dd9
	.type sub_401dd9, @function
sub_401dd9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401de0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_81
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_83
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_83
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_86
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_86:
	mov	rbx, r14
.label_83:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_81:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_82
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401e81
	.globl sub_401e81
	.type sub_401e81, @function
sub_401e81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e90

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
	#Procedure 0x401ec9
	.globl sub_401ec9
	.type sub_401ec9, @function
sub_401ec9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ed0
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
	#Procedure 0x401ee1
	.globl sub_401ee1
	.type sub_401ee1, @function
sub_401ee1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ef0
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
	#Procedure 0x401f04
	.globl sub_401f04
	.type sub_401f04, @function
sub_401f04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

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
	je	.label_89
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_87
	jmp	.label_88
.label_89:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_88
.label_87:
	mov	eax, 1
	test	bpl, bpl
	je	.label_88
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
.label_88:
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
	#Procedure 0x401f98
	.globl sub_401f98
	.type sub_401f98, @function
sub_401f98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fa0

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
	je	.label_90
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_92
	jmp	.label_91
.label_90:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_91
.label_92:
	mov	eax, 1
	test	bpl, bpl
	je	.label_91
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
.label_91:
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
	#Procedure 0x402019
	.globl sub_402019
	.type sub_402019, @function
sub_402019:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402020

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
	je	.label_95
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_94
	jmp	.label_93
.label_95:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_93
.label_94:
	mov	eax, 1
	test	bpl, bpl
	je	.label_93
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
.label_93:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402083
	.globl sub_402083
	.type sub_402083, @function
sub_402083:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402090

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
	je	.label_98
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_96
	jmp	.label_97
.label_98:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_97
.label_96:
	mov	eax, 1
	test	bpl, bpl
	je	.label_97
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_97:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020ef
	.globl sub_4020ef
	.type sub_4020ef, @function
sub_4020ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4020f0

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
	je	.label_99
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_101
	jmp	.label_100
.label_99:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_100
.label_101:
	mov	eax, 1
	test	bpl, bpl
	je	.label_100
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_100:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402139
	.globl sub_402139
	.type sub_402139, @function
sub_402139:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402140

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
	je	.label_104
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_103
	jmp	.label_102
.label_104:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_102
.label_103:
	mov	eax, 1
	test	bpl, bpl
	je	.label_102
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_102:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
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

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_106
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_107
	jmp	.label_105
.label_106:
	mov	eax, 1
	test	cl, cl
	je	.label_105
.label_107:
	xor	eax, eax
.label_105:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021bf
	.globl sub_4021bf
	.type sub_4021bf, @function
sub_4021bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4021c0
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
	#Procedure 0x4021d3
	.globl sub_4021d3
	.type sub_4021d3, @function
sub_4021d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021e0

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
.label_139:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_172
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_149]]
.label_404:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_155
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_46
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_405:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_168
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_168
	xor	r14d, r14d
.label_180:
	cmp	r14, r11
	jae	.label_177
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_177:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_180
.label_168:
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
	jmp	.label_136
.label_397:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_136
.label_400:
	mov	al, 1
.label_398:
	mov	r12b, 1
.label_401:
	test	r12b, 1
	mov	cl, 1
	je	.label_195
	mov	ecx, eax
.label_195:
	mov	al, cl
.label_399:
	test	r12b, 1
	jne	.label_198
	test	r11, r11
	je	.label_186
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_186:
	mov	r14d, 1
	jmp	.label_204
.label_198:
	xor	r14d, r14d
.label_204:
	mov	ecx, OFFSET FLAT:label_46
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_136
.label_402:
	test	r12b, 1
	jne	.label_211
	test	r11, r11
	je	.label_159
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_159:
	mov	r14d, 1
	jmp	.label_214
.label_403:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_45
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_136
.label_211:
	xor	r14d, r14d
.label_214:
	mov	eax, OFFSET FLAT:label_45
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_136:
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
	jmp	.label_122
	.section	.text
	.align	32
	#Procedure 0x4024bc
	.globl sub_4024bc
	.type sub_4024bc, @function
sub_4024bc:

	nop	dword ptr [rax]
.label_142:
	inc	rsi
.label_122:
	cmp	rbp, -1
	je	.label_160
	cmp	rsi, rbp
	jne	.label_157
	jmp	.label_164
	.section	.text
	.align	32
	#Procedure 0x4024d3
	.globl sub_4024d3
	.type sub_4024d3, @function
sub_4024d3:

	nop	word ptr cs:[rax + rax]
.label_160:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_164
.label_157:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_171
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_174
	cmp	rbp, -1
	jne	.label_174
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
.label_174:
	cmp	rbx, rbp
	jbe	.label_183
.label_171:
	xor	r8d, r8d
.label_205:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_184
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_189]]
.label_378:
	test	rsi, rsi
	jne	.label_150
	jmp	.label_110
	.section	.text
	.align	32
	#Procedure 0x40256e
	.globl sub_40256e
	.type sub_40256e, @function
sub_40256e:

	nop	
.label_183:
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
	jne	.label_202
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_205
	jmp	.label_121
.label_202:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_205
.label_382:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_217
	test	rsi, rsi
	jne	.label_218
	cmp	rbp, 1
	je	.label_110
	xor	r13d, r13d
	jmp	.label_111
.label_371:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_114
	cmp	byte ptr [rsp + 7], 0
	jne	.label_118
	cmp	r12d, 2
	jne	.label_119
	mov	eax, r9d
	and	al, 1
	jne	.label_119
	cmp	r14, r11
	jae	.label_188
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_188:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_128
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_128:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_132
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_132:
	add	r14, 3
	mov	r9b, 1
.label_119:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_153
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_153:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_144
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_144
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_144
	cmp	r14, r11
	jae	.label_156
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_156:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_209
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_209:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_111
.label_372:
	mov	bl, 0x62
	jmp	.label_166
.label_373:
	mov	cl, 0x74
	jmp	.label_170
.label_374:
	mov	bl, 0x76
	jmp	.label_166
.label_375:
	mov	bl, 0x66
	jmp	.label_166
.label_376:
	mov	cl, 0x72
	jmp	.label_170
.label_379:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_176
	cmp	byte ptr [rsp + 7], 0
	jne	.label_118
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
	jae	.label_182
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_182:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_190
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_190:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_191
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	add	r14, 3
	xor	r9d, r9d
.label_176:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_111
.label_380:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_201
	cmp	r12d, 2
	jne	.label_150
	cmp	byte ptr [rsp + 7], 0
	je	.label_150
	jmp	.label_118
.label_381:
	cmp	r12d, 2
	jne	.label_208
	cmp	byte ptr [rsp + 7], 0
	jne	.label_118
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_167
.label_184:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_140
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
.label_175:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_133
	test	r8b, r8b
	je	.label_133
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_111
.label_217:
	test	rsi, rsi
	jne	.label_138
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_138
.label_110:
	mov	dl, 1
.label_377:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_118
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_111:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_151
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_165
	jmp	.label_143
	.section	.text
	.align	32
	#Procedure 0x4028b4
	.globl sub_4028b4
	.type sub_4028b4, @function
sub_4028b4:

	nop	word ptr cs:[rax + rax]
.label_151:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_143
.label_165:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_161
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_167
	jmp	.label_109
	.section	.text
	.align	32
	#Procedure 0x4028fd
	.globl sub_4028fd
	.type sub_4028fd, @function
sub_4028fd:

	nop	dword ptr [rax]
.label_143:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_109
	jmp	.label_167
.label_161:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_109
.label_114:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_142
	xor	r15d, r15d
	jmp	.label_150
.label_208:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_170
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_167
.label_170:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_118
.label_166:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_111
	nop	word ptr cs:[rax + rax]
.label_109:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_118
	cmp	r12d, 2
	jne	.label_196
	mov	eax, r9d
	and	al, 1
	jne	.label_196
	cmp	r14, r11
	jae	.label_199
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_199:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_181
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_181:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_158
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_158:
	add	r14, 3
	mov	r9b, 1
.label_196:
	cmp	r14, r11
	jae	.label_210
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_210:
	inc	r14
	jmp	.label_212
.label_140:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_215
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_215:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_115:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_125
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_130
	cmp	rbp, -2
	je	.label_134
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_120
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_127:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_117
	bt	rsi, rdx
	jb	.label_121
.label_117:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_127
.label_120:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_163
	xor	r13d, r13d
.label_163:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_115
	jmp	.label_175
.label_144:
	xor	r13d, r13d
	jmp	.label_111
.label_138:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_111
.label_201:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_150
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_150
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_150
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_148
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_216
	cmp	byte ptr [rsp + 7], 0
	jne	.label_118
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_193
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_193:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_178
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_178:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_203
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_203:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_206
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_206:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_111
.label_150:
	xor	eax, eax
.label_218:
	xor	r13d, r13d
	jmp	.label_111
.label_133:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_213
	.section	.text
	.align	32
	#Procedure 0x402be3
	.globl sub_402be3
	.type sub_402be3, @function
sub_402be3:

	nop	word ptr cs:[rax + rax]
.label_179:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_213:
	test	r8b, r8b
	je	.label_219
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_108
	cmp	r14, r11
	jae	.label_112
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_112:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_108
	.section	.text
	.align	32
	#Procedure 0x402c2c
	.globl sub_402c2c
	.type sub_402c2c, @function
sub_402c2c:

	nop	dword ptr [rax]
.label_219:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_121
	cmp	r12d, 2
	jne	.label_124
	mov	eax, r9d
	and	al, 1
	jne	.label_124
	cmp	r14, r11
	jae	.label_129
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_129:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_131
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_131:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_137
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_137:
	add	r14, 3
	mov	r9b, 1
.label_124:
	cmp	r14, r11
	jae	.label_152
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_152:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_146
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_146:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_154
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_154:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_108:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_167
	test	r9b, 1
	je	.label_169
	mov	ebx, eax
	and	bl, 1
	jne	.label_169
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_173
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_173:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_192
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_192:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_169:
	cmp	r14, r11
	jae	.label_179
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x402d33
	.globl sub_402d33
	.type sub_402d33, @function
sub_402d33:

	nop	word ptr cs:[rax + rax]
.label_167:
	test	r9b, 1
	je	.label_185
	and	al, 1
	jne	.label_185
	cmp	r14, r11
	jae	.label_187
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_187:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_116
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_116:
	add	r14, 2
	xor	r9d, r9d
.label_185:
	mov	ebx, r15d
.label_212:
	cmp	r14, r11
	jae	.label_194
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_194:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_142
.label_130:
	xor	r13d, r13d
.label_125:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_175
.label_134:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_207
	mov	rsi, qword ptr [rsp + 0x50]
.label_126:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_141
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_126
	xor	r13d, r13d
	jmp	.label_175
.label_207:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_175
.label_141:
	xor	r13d, r13d
	jmp	.label_175
.label_148:
	xor	r13d, r13d
	jmp	.label_111
.label_216:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_111
	.section	.text
	.align	32
	#Procedure 0x402e08
	.globl sub_402e08
	.type sub_402e08, @function
sub_402e08:

	nop	dword ptr [rax + rax]
.label_164:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_113
	or	dl, al
	je	.label_121
.label_113:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_123
	or	dl, al
	jne	.label_123
	test	r10b, 1
	jne	.label_135
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_123
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_139
.label_123:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_145
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_147
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_147
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_162:
	cmp	r14, r11
	jae	.label_220
	mov	byte ptr [rcx + r14], al
.label_220:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_162
	jmp	.label_147
.label_118:
	mov	qword ptr [rsp + 0x20], rbp
.label_121:
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
.label_197:
	mov	r14, rax
.label_200:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_135:
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
	jmp	.label_197
.label_145:
	mov	rcx, qword ptr [rsp + 8]
.label_147:
	cmp	r14, r11
	jae	.label_200
	mov	byte ptr [rcx + r14], 0
	jmp	.label_200
.label_172:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f9c
	.globl sub_402f9c
	.type sub_402f9c, @function
sub_402f9c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402fa0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_221
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_223]]
.label_221:
	xor	eax, eax
	jmp	.label_222
	.section	.text
	.align	32
	#Procedure 0x402fb5
	.globl sub_402fb5
	.type sub_402fb5, @function
sub_402fb5:

	nop	word ptr cs:[rax + rax]
.label_222:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fc0
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
	#Procedure 0x402fcf
	.globl sub_402fcf
	.type sub_402fcf, @function
sub_402fcf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402fd0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_224
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_224:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fee
	.globl sub_402fee
	.type sub_402fee, @function
sub_402fee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402ff0
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
	#Procedure 0x402fff
	.globl sub_402fff
	.type sub_402fff, @function
sub_402fff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403000

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
	je	.label_225
	mov	edx, OFFSET FLAT:label_235
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_241
.label_225:
	mov	edx, OFFSET FLAT:label_242
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_241:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
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
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_230
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_231]]
.label_320:
	add	rsp, 8
	jmp	.label_228
.label_230:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
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
	jmp	.label_228
.label_321:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
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
.label_322:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
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
.label_323:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
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
.label_324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
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
	jmp	.label_228
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
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
	jmp	.label_228
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
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
	jmp	.label_228
.label_327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
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
	jmp	.label_228
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
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
	jmp	.label_228
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
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
.label_228:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403358
	.globl sub_403358
	.type sub_403358, @function
sub_403358:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403360
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
	#Procedure 0x403379
	.globl sub_403379
	.type sub_403379, @function
sub_403379:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403380

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
	je	.label_244
	cmp	r15, -2
	jb	.label_244
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_244
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_244:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033d6
	.globl sub_4033d6
	.type sub_4033d6, @function
sub_4033d6:

	nop	word ptr cs:[rax + rax]
.label_245:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4033e5
	.globl sub_4033e5
	.type sub_4033e5, @function
sub_4033e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033f3

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
	je	.label_245
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
	#Procedure 0x403440

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
	mov	rcx,  qword ptr [word ptr [rip + label_22]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_23]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_24]]
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
	#Procedure 0x4034ad
	.globl sub_4034ad
	.type sub_4034ad, @function
sub_4034ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4034b0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4034bd
	.globl sub_4034bd
	.type sub_4034bd, @function
sub_4034bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4034c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x4034c7
	.globl sub_4034c7
	.type sub_4034c7, @function
sub_4034c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4034da
	.globl sub_4034da
	.type sub_4034da, @function
sub_4034da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_247
	cmp	byte ptr [rax], 0x43
	jne	.label_249
	cmp	byte ptr [rax + 1], 0
	je	.label_246
.label_249:
	mov	esi, OFFSET FLAT:label_248
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_247
.label_246:
	xor	ebx, ebx
.label_247:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403511
	.globl sub_403511
	.type sub_403511, @function
sub_403511:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403520

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
	je	.label_251
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_252
	jmp	.label_250
.label_251:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_250
.label_252:
	mov	eax, 1
	test	bpl, bpl
	je	.label_250
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
.label_250:
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
	#Procedure 0x40359d
	.globl sub_40359d
	.type sub_40359d, @function
sub_40359d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035a0
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
	#Procedure 0x403612
	.globl sub_403612
	.type sub_403612, @function
sub_403612:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403620

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40362a
	.globl sub_40362a
	.type sub_40362a, @function
sub_40362a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403630
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40363d
	.globl sub_40363d
	.type sub_40363d, @function
sub_40363d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403640
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
	#Procedure 0x403650

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
	mov	esi, OFFSET FLAT:label_58
	call	setlocale
	mov	edi, OFFSET FLAT:label_261
	mov	esi, OFFSET FLAT:label_262
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_261
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ecx, ecx
.label_265:
	and	cl, 1
	mov	byte ptr [byte ptr [rip + silent]],  cl
	mov	edx, OFFSET FLAT:label_258
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x72
	jle	.label_267
	mov	cl, 1
	cmp	eax, 0x73
	je	.label_265
	jmp	.label_254
.label_267:
	cmp	eax, -1
	jne	.label_256
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jl	.label_257
	call	__errno_location
	mov	dword ptr [rax], 2
	cmp	byte ptr [byte ptr [rip + silent]],  1
	jne	.label_259
	xor	edi, edi
	call	isatty
	xor	ebx, ebx
	test	eax, eax
	sete	bl
	jmp	.label_264
.label_259:
	xor	ebx, ebx
	xor	edi, edi
	call	ttyname
	test	rax, rax
	jne	.label_266
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	call	dcgettext
	mov	ebx, 1
.label_266:
	mov	rdi, rax
	call	puts
.label_264:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_256:
	cmp	eax, 0xffffff7d
	je	.label_263
	cmp	eax, 0xffffff7e
	jne	.label_254
	xor	edi, edi
	call	usage
.label_257:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
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
	mov	edi, 2
	call	usage
.label_263:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_60
	mov	edx, OFFSET FLAT:label_63
	mov	r8d, OFFSET FLAT:label_253
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_254:
	mov	edi, 2
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4037bd
	.globl sub_4037bd
	.type sub_4037bd, @function
sub_4037bd:

	nop	dword ptr [rax]
.label_268:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4037c6
	.globl sub_4037c6
	.type sub_4037c6, @function
sub_4037c6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037cb

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_268
	test	rdx, rdx
	je	.label_268
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037f0

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
	#Procedure 0x403807
	.globl sub_403807
	.type sub_403807, @function
sub_403807:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810
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
	#Procedure 0x403837
	.globl sub_403837
	.type sub_403837, @function
sub_403837:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403840
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40384a
	.globl sub_40384a
	.type sub_40384a, @function
sub_40384a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403850
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
	#Procedure 0x403866
	.globl sub_403866
	.type sub_403866, @function
sub_403866:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403870

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
	#Procedure 0x4038a6
	.globl sub_4038a6
	.type sub_4038a6, @function
sub_4038a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038b0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038ba
	.globl sub_4038ba
	.type sub_4038ba, @function
sub_4038ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038c0
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
	#Procedure 0x4038cd
	.globl sub_4038cd
	.type sub_4038cd, @function
sub_4038cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_270
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403944
	.globl sub_403944
	.type sub_403944, @function
sub_403944:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403950

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40395e
	.globl sub_40395e
	.type sub_40395e, @function
sub_40395e:

	nop	
	.section	.text
	.align	32
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
	js	.label_273
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_276
	cmp	r12d, 0x7fffffff
	je	.label_278
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
	jne	.label_274
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_274:
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
.label_276:
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
	jbe	.label_279
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_275
.label_279:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_277
	mov	rdi, r14
	call	free
.label_277:
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
.label_275:
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
.label_273:
	call	abort
.label_278:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403b1d
	.globl sub_403b1d
	.type sub_403b1d, @function
sub_403b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b20
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b2a
	.globl sub_403b2a
	.type sub_403b2a, @function
sub_403b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x403b3a
	.globl sub_403b3a
	.type sub_403b3a, @function
sub_403b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b40

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
	je	.label_280
	mov	qword ptr [rax], rbx
.label_280:
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
	#Procedure 0x403c2c
	.globl sub_403c2c
	.type sub_403c2c, @function
sub_403c2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c30
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_281
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_281:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c56
	.globl sub_403c56
	.type sub_403c56, @function
sub_403c56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c60

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_282
	test	rbx, rbx
	jne	.label_282
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_282:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_284
	test	rax, rax
	je	.label_283
.label_284:
	pop	rbx
	ret	
.label_283:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c90

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
	je	.label_286
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_285
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_285
.label_286:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_285
	test	cl, cl
	jne	.label_285
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_285:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cf6
	.globl sub_403cf6
	.type sub_403cf6, @function
sub_403cf6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_287:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_287
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403d21
	.globl sub_403d21
	.type sub_403d21, @function
sub_403d21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d30

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
	#Procedure 0x403d5d
	.globl sub_403d5d
	.type sub_403d5d, @function
sub_403d5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d60
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
	#Procedure 0x403d73
	.globl sub_403d73
	.type sub_403d73, @function
sub_403d73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d80
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
	#Procedure 0x403dc9
	.globl sub_403dc9
	.type sub_403dc9, @function
sub_403dc9:

	nop	dword ptr [rax]
.label_291:
	test	rcx, rcx
	jne	.label_288
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_288:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_289
.label_290:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_292:
	call	xalloc_die
.label_289:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403e1c
	.globl sub_403e1c
	.type sub_403e1c, @function
sub_403e1c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e23

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_291
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_292
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_290
	.section	.text
	.align	32
	#Procedure 0x403e50
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x403e5a
	.globl sub_403e5a
	.type sub_403e5a, @function
sub_403e5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e60

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  3
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e6b
	.globl sub_403e6b
	.type sub_403e6b, @function
sub_403e6b:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e70
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e78
	.globl sub_403e78
	.type sub_403e78, @function
sub_403e78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ee5
	.globl sub_403ee5
	.type sub_403ee5, @function
sub_403ee5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ef2
	.globl sub_403ef2
	.type sub_403ef2, @function
sub_403ef2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f16
	.globl sub_403f16
	.type sub_403f16, @function
sub_403f16:

	nop	word ptr cs:[rax + rax]
