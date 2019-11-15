	.section	.text
	.align	32
	#Procedure 0x4013a9
	.globl sub_4013a9
	.type sub_4013a9, @function
sub_4013a9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4013aa
	.globl sub_4013aa
	.type sub_4013aa, @function
sub_4013aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013e2
	.globl sub_4013e2
	.type sub_4013e2, @function
sub_4013e2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40142a
	.globl sub_40142a
	.type sub_40142a, @function
sub_40142a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40144c
	.globl sub_40144c
	.type sub_40144c, @function
sub_40144c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40145d
	.globl sub_40145d
	.type sub_40145d, @function
sub_40145d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401476
	.globl sub_401476
	.type sub_401476, @function
sub_401476:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401480

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
	#Procedure 0x4014ad
	.globl sub_4014ad
	.type sub_4014ad, @function
sub_4014ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4014b0
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
	#Procedure 0x4014c3
	.globl sub_4014c3
	.type sub_4014c3, @function
sub_4014c3:

	nop	word ptr cs:[rax + rax]
.label_9:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4014d3
	.globl sub_4014d3
	.type sub_4014d3, @function
sub_4014d3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4014d5
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_9
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4014f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_12
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_11
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_11
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_15
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_15:
	mov	rbx, r14
.label_11:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_12:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_13
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401591
	.globl sub_401591
	.type sub_401591, @function
sub_401591:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015a0

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
	#Procedure 0x4015e9
	.globl sub_4015e9
	.type sub_4015e9, @function
sub_4015e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015f0
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
	#Procedure 0x4015ff
	.globl sub_4015ff
	.type sub_4015ff, @function
sub_4015ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401600

	.globl rpl_mbrlen
	.type rpl_mbrlen, @function
rpl_mbrlen:
	mov	rax, rsi
	mov	rsi, rdi
	test	rdx, rdx
	mov	ecx, OFFSET FLAT:internal_state
	cmovne	rcx, rdx
	xor	edi, edi
	mov	rdx, rax
	jmp	rpl_mbrtowc
	.section	.text
	.align	32
	#Procedure 0x40161c
	.globl sub_40161c
	.type sub_40161c, @function
sub_40161c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401620
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_16
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_16:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401638
	.globl sub_401638
	.type sub_401638, @function
sub_401638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401640

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
	jne	.label_26
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
	je	.label_23
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_19
	mov	eax, OFFSET FLAT:label_20
	jmp	.label_21
.label_23:
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
	je	.label_22
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_24
	mov	eax, OFFSET FLAT:label_25
	jmp	.label_21
.label_22:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_17
	mov	eax, OFFSET FLAT:label_18
.label_21:
	cmove	rax, rcx
.label_26:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016fd
	.globl sub_4016fd
	.type sub_4016fd, @function
sub_4016fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401700
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401708
	.globl sub_401708
	.type sub_401708, @function
sub_401708:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401710

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
	je	.label_27
	cmp	r15, -2
	jb	.label_27
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_27
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_27:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401766
	.globl sub_401766
	.type sub_401766, @function
sub_401766:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401770

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40177a
	.globl sub_40177a
	.type sub_40177a, @function
sub_40177a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401780
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
	#Procedure 0x401790

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401799
	.globl sub_401799
	.type sub_401799, @function
sub_401799:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017a0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x4017aa
	.globl sub_4017aa
	.type sub_4017aa, @function
sub_4017aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_28]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_29]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_30]]
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
	#Procedure 0x40181d
	.globl sub_40181d
	.type sub_40181d, @function
sub_40181d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401820

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40182d
	.globl sub_40182d
	.type sub_40182d, @function
sub_40182d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401830

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x401837
	.globl sub_401837
	.type sub_401837, @function
sub_401837:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401840

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_35
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_31
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_31
.label_35:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_36
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_36:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_32:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_31:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_32
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401900
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_38
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_40:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_40
.label_38:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_41
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_42]], OFFSET FLAT:slot0
.label_41:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_39
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_39:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401991
	.globl sub_401991
	.type sub_401991, @function
sub_401991:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019a0

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
	#Procedure 0x4019d9
	.globl sub_4019d9
	.type sub_4019d9, @function
sub_4019d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4019e0

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
	#Procedure 0x4019f1
	.globl sub_4019f1
	.type sub_4019f1, @function
sub_4019f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a00
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
	#Procedure 0x401a14
	.globl sub_401a14
	.type sub_401a14, @function
sub_401a14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a20

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x401a29
	.globl sub_401a29
	.type sub_401a29, @function
sub_401a29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a30

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
	mov	rax,  qword ptr [word ptr [rip + label_28]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_29]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_30]]
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
	#Procedure 0x401a98
	.globl sub_401a98
	.type sub_401a98, @function
sub_401a98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401aa0
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
	#Procedure 0x401ac7
	.globl sub_401ac7
	.type sub_401ac7, @function
sub_401ac7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ad0
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
	#Procedure 0x401b42
	.globl sub_401b42
	.type sub_401b42, @function
sub_401b42:

	nop	word ptr cs:[rax + rax]
.label_45:
	xor	eax, eax
	jmp	.label_43
	.section	.text
	.align	32
	#Procedure 0x401b54
	.globl sub_401b54
	.type sub_401b54, @function
sub_401b54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b5e
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_45
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_44]]
.label_43:
	ret	
.label_48:
	inc	rax
.label_46:
	movzx	ecx, byte ptr [rdi + rax]
	test	cl, cl
	je	.label_47
	cmp	cl, 0x2f
	jne	.label_48
.label_47:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b81
	.globl sub_401b81
	.type sub_401b81, @function
sub_401b81:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b90

	.globl component_len
	.type component_len, @function
component_len:
	mov	eax, 1
	jmp	.label_46
	.section	.text
	.align	32
	#Procedure 0x401b97
	.globl sub_401b97
	.type sub_401b97, @function
sub_401b97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0
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
	#Procedure 0x401bb3
	.globl sub_401bb3
	.type sub_401bb3, @function
sub_401bb3:

	nop	word ptr cs:[rax + rax]
.label_49:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_51:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_52
	inc	r9
	cmp	r9, 0xa
	jb	.label_50
.label_52:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bef
	.globl sub_401bef
	.type sub_401bef, @function
sub_401bef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401bf0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_50:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_49
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_51
	.section	.text
	.align	32
	#Procedure 0x401c19
	.globl sub_401c19
	.type sub_401c19, @function
sub_401c19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c20

	.globl validate_file_name
	.type validate_file_name, @function
validate_file_name:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	ebx, edx
	mov	r15d, esi
	mov	r12, rdi
	call	strlen
	mov	rbp, rax
	test	bl, bl
	je	.label_65
	mov	rdi, r12
	call	no_leading_hyphen
	test	al, al
	je	.label_68
.label_65:
	test	r15b, r15b
	je	.label_70
	test	rbp, rbp
	je	.label_71
	mov	rdi, r12
	mov	rsi, rbp
	call	portable_chars_only
	mov	ebx, 0x100
	test	al, al
	jne	.label_62
	xor	r13d, r13d
	jmp	.label_59
.label_70:
	test	rbp, rbp
	jne	.label_53
	test	bl, bl
	je	.label_53
.label_71:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_59
.label_68:
	xor	r13d, r13d
	jmp	.label_59
.label_53:
	lea	rsi, [rsp + 0x18]
	mov	rdi, r12
	call	lstat
	test	eax, eax
	je	.label_66
	call	__errno_location
	test	rbp, rbp
	mov	ebx, dword ptr [rax]
	je	.label_69
	cmp	ebx, 2
	jne	.label_69
	cmp	rbp, 0x100
	jb	.label_75
	cmp	byte ptr [r12], 0x2f
	mov	eax, OFFSET FLAT:label_78
	mov	r13d, OFFSET FLAT:label_76
	cmove	r13, rax
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	mov	esi, 4
	mov	rdi, r13
	call	pathconf
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_62
	mov	r14d, dword ptr [r14]
	test	r14d, r14d
	je	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, r13
	xor	r13d, r13d
	call	error
	jmp	.label_59
.label_62:
	cmp	rbx, rbp
	jbe	.label_73
	test	r15b, r15b
	mov	bpl, r15b
	mov	ecx, r15d
	je	.label_72
	jmp	.label_56
.label_73:
	dec	rbx
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	r9, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	jmp	.label_59
.label_69:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_59
.label_75:
	xor	ebp, ebp
.label_72:
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_55:
	mov	rdi, rbx
	call	component_start
	mov	rbx, rax
	cmp	byte ptr [rbx], 0
	je	.label_80
	mov	rdi, rbx
	call	component_len
	add	rbx, rax
	mov	cl, 1
	cmp	rax, 0xf
	jb	.label_55
	jmp	.label_56
.label_80:
	mov	ecx, ebp
.label_56:
	mov	r13b, 1
	test	cl, cl
	je	.label_59
	xor	eax, eax
	test	r15b, r15b
	mov	r13d, 0xe
	cmovne	rax, r13
	mov	qword ptr [rsp + 8], rax
	mov	rdi, r12
.label_60:
	call	component_start
	mov	r14b, byte ptr [rax]
	test	r14b, r14b
	je	.label_66
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_64:
	cmp	qword ptr [rsp + 8], 0
	jne	.label_74
	cmp	rbx, r12
	mov	rbp, r12
	mov	eax, OFFSET FLAT:label_76
	cmove	rbp, rax
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	byte ptr [rbx], 0
	mov	esi, 3
	mov	rdi, rbp
	call	pathconf
	mov	byte ptr [rbx], r14b
	test	rax, rax
	jns	.label_58
	mov	eax, dword ptr [r15]
	test	eax, eax
	jne	.label_61
	mov	rdi, rbx
	call	component_len
	add	rbx, rax
	mov	rdi, rbx
	call	component_start
	mov	rbx, rax
	movzx	r14d, byte ptr [rbx]
	mov	r13, -1
	test	r14b, r14b
	jne	.label_64
	jmp	.label_66
.label_74:
	mov	r13, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_67
.label_58:
	mov	r14, rbx
	xor	ecx, ecx
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rax
	jmp	.label_67
.label_61:
	cmp	eax, 2
	jne	.label_77
	mov	r14, rbx
	mov	qword ptr [rsp + 8], r13
.label_67:
	mov	rdi, r14
	call	component_len
	mov	rbx, rax
	lea	rdi, [r14 + rbx]
	cmp	r13, rbx
	jae	.label_60
	mov	r12b, byte ptr [r14 + rbx]
	mov	byte ptr [r14 + rbx], 0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, r14
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r13
	xor	r13d, r13d
	mov	r8, rbx
	mov	r9, rbp
	call	error
	mov	byte ptr [r14 + rbx], r12b
	jmp	.label_59
.label_66:
	mov	r13b, 1
.label_59:
	mov	eax, r13d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_77:
	mov	byte ptr [rbx], 0
	mov	r15d, dword ptr [r15]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	esi, r15d
	call	error
	mov	byte ptr [rbx], r14b
	jmp	.label_59
	.section	.text
	.align	32
	#Procedure 0x401fa5
	.globl sub_401fa5
	.type sub_401fa5, @function
sub_401fa5:

	nop	word ptr cs:[rax + rax]
.label_82:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_81
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_81:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fe4
	.globl sub_401fe4
	.type sub_401fe4, @function
sub_401fe4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401fe6

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
	jne	.label_83
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_83
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_82
.label_83:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x402020
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_84:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_84
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402041
	.globl sub_402041
	.type sub_402041, @function
sub_402041:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402050

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_96
	call	setlocale
	mov	edi, OFFSET FLAT:label_85
	mov	esi, OFFSET FLAT:label_101
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_85
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebp, ebp
	xor	ecx, ecx
	jmp	.label_88
.label_90:
	mov	bpl, 1
	mov	cl, r12b
	nop	word ptr cs:[rax + rax]
.label_88:
	mov	r12d, ecx
	mov	edx, OFFSET FLAT:label_100
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x4f
	jle	.label_87
	mov	cl, 1
	cmp	eax, 0x50
	je	.label_88
	cmp	eax, 0x80
	mov	bpl, 1
	je	.label_88
	cmp	eax, 0x70
	je	.label_90
	jmp	.label_86
.label_87:
	cmp	eax, -1
	jne	.label_97
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	je	.label_99
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	cmp	eax, r15d
	jge	.label_103
	mov	bl, 1
	nop	dword ptr [rax]
.label_98:
	xor	edx, edx
	test	r12b, r12b
	setne	dl
	xor	esi, esi
	test	bpl, bpl
	setne	sil
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	call	validate_file_name
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_98
.label_103:
	movzx	eax, bl
	xor	eax, 1
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_97:
	cmp	eax, 0xffffff7d
	je	.label_102
	cmp	eax, 0xffffff7e
	jne	.label_86
	xor	edi, edi
	call	usage
.label_102:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_91
	mov	edx, OFFSET FLAT:label_92
	mov	r8d, OFFSET FLAT:label_93
	mov	r9d, OFFSET FLAT:label_94
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_95
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_99:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
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
.label_86:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4021db
	.globl sub_4021db
	.type sub_4021db, @function
sub_4021db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_104
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_104:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402206
	.globl sub_402206
	.type sub_402206, @function
sub_402206:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402210

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_105
	test	rbx, rbx
	jne	.label_105
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_105:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_107
	test	rax, rax
	je	.label_106
.label_107:
	pop	rbx
	ret	
.label_106:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402240

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40224e
	.globl sub_40224e
	.type sub_40224e, @function
sub_40224e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402250

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
	js	.label_111
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_114
	cmp	r12d, 0x7fffffff
	je	.label_109
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
	jne	.label_112
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_112:
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
.label_114:
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
	jbe	.label_110
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_113
.label_110:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_108
	mov	rdi, r14
	call	free
.label_108:
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
.label_113:
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
.label_111:
	call	abort
.label_109:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40240d
	.globl sub_40240d
	.type sub_40240d, @function
sub_40240d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402410

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_116
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
.label_116:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
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
	#Procedure 0x4024ec
	.globl sub_4024ec
	.type sub_4024ec, @function
sub_4024ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4024f0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024fa
	.globl sub_4024fa
	.type sub_4024fa, @function
sub_4024fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402500
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40250a
	.globl sub_40250a
	.type sub_40250a, @function
sub_40250a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402510
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
	#Procedure 0x40251d
	.globl sub_40251d
	.type sub_40251d, @function
sub_40251d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402520
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40252a
	.globl sub_40252a
	.type sub_40252a, @function
sub_40252a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402530

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
	je	.label_121
	mov	qword ptr [rax], rbx
.label_121:
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
	#Procedure 0x40261c
	.globl sub_40261c
	.type sub_40261c, @function
sub_40261c:

	nop	dword ptr [rax]
.label_124:
	test	rcx, rcx
	jne	.label_122
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_122:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_123
.label_125:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x402662

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_124
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_126
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_125
.label_126:
	call	xalloc_die
.label_123:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402699
	.globl sub_402699
	.type sub_402699, @function
sub_402699:

	nop	dword ptr [rax]
.label_128:
	mov	ecx, 1
.label_127:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4026b0
	.globl sub_4026b0
	.type sub_4026b0, @function
sub_4026b0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026b5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_128
	test	rsi, rsi
	mov	ecx, 1
	je	.label_127
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_127
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_129:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4026f5
	.globl sub_4026f5
	.type sub_4026f5, @function
sub_4026f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026ff
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_129
	call	rpl_calloc
	test	rax, rax
	je	.label_129
	pop	rcx
	ret	
.label_131:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_130
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40272b
	.globl sub_40272b
	.type sub_40272b, @function
sub_40272b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402735
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_131
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_131
.label_130:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402750
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40275a
	.globl sub_40275a
	.type sub_40275a, @function
sub_40275a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402760

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
	#Procedure 0x402797
	.globl sub_402797
	.type sub_402797, @function
sub_402797:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_132
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_132:
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
	#Procedure 0x402823
	.globl sub_402823
	.type sub_402823, @function
sub_402823:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402830
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
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
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
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

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x402855
	.globl sub_402855
	.type sub_402855, @function
sub_402855:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_133
.label_134:
	ret	
.label_133:
	cmp	edi, 0x7f
	je	.label_134
	xor	eax, eax
	jmp	.label_134
	.section	.text
	.align	32
	#Procedure 0x402871
	.globl sub_402871
	.type sub_402871, @function
sub_402871:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_135
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_135
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_135:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4028a6
	.globl sub_4028a6
	.type sub_4028a6, @function
sub_4028a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4028ba
	.globl sub_4028ba
	.type sub_4028ba, @function
sub_4028ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028c0

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
	je	.label_136
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_137
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_137
.label_136:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_137
	test	cl, cl
	jne	.label_137
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_137:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402926
	.globl sub_402926
	.type sub_402926, @function
sub_402926:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402930
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
	#Procedure 0x402946
	.globl sub_402946
	.type sub_402946, @function
sub_402946:

	nop	word ptr cs:[rax + rax]
.label_140:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_138
.label_139:
	mov	eax, 1
	test	bpl, bpl
	je	.label_138
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
.label_138:
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
	#Procedure 0x402998
	.globl sub_402998
	.type sub_402998, @function
sub_402998:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40299b

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
	je	.label_140
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_139
	jmp	.label_138
	.section	.text
	.align	32
	#Procedure 0x4029d0

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
	#Procedure 0x402a06
	.globl sub_402a06
	.type sub_402a06, @function
sub_402a06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a10

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_142
	cmp	byte ptr [rax], 0x43
	jne	.label_144
	cmp	byte ptr [rax + 1], 0
	je	.label_141
.label_144:
	mov	esi, OFFSET FLAT:label_143
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_142
.label_141:
	xor	ebx, ebx
.label_142:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a41
	.globl sub_402a41
	.type sub_402a41, @function
sub_402a41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50
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
	#Procedure 0x402a83
	.globl sub_402a83
	.type sub_402a83, @function
sub_402a83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402a9a
	.globl sub_402a9a
	.type sub_402a9a, @function
sub_402a9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x402aad
	.globl sub_402aad
	.type sub_402aad, @function
sub_402aad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ab0
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
	#Procedure 0x402ac0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402af0
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
	#Procedure 0x402b09
	.globl sub_402b09
	.type sub_402b09, @function
sub_402b09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b10
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
	#Procedure 0x402b1f
	.globl sub_402b1f
	.type sub_402b1f, @function
sub_402b1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402b20

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_146
	nop	
.label_156:
	mov	edi, OFFSET FLAT:label_91
	call	strcmp
	test	eax, eax
	je	.label_154
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_156
.label_154:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_91
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_92
	mov	ecx, OFFSET FLAT:label_149
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_148
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_148
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_148:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_91
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_149
	mov	ecx, OFFSET FLAT:label_91
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_152
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
	.align	32
	#Procedure 0x402c3a
	.globl sub_402c3a
	.type sub_402c3a, @function
sub_402c3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c48
	.globl sub_402c48
	.type sub_402c48, @function
sub_402c48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c50

	.globl portable_chars_only
	.type portable_chars_only, @function
portable_chars_only:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	r15, rdi
	mov	esi, OFFSET FLAT:label_157
	call	strspn
	mov	r14b, 1
	cmp	byte ptr [r15 + rax], 0
	je	.label_159
	lea	r12, [r15 + rax]
	mov	qword ptr [rsp + 8], 0
	sub	rbx, rax
	lea	rdx, [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	call	rpl_mbrlen
	mov	rbx, rax
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	cmp	rbx, 0x11
	mov	ecx, 1
	cmovb	rcx, rbx
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r12
	call	quotearg_n_style_mem
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, r12
	mov	r8, rbx
	call	error
.label_159:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d0e
	.globl sub_402d0e
	.type sub_402d0e, @function
sub_402d0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402d10
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d1a
	.globl sub_402d1a
	.type sub_402d1a, @function
sub_402d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d20
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
	#Procedure 0x402d2f
	.globl sub_402d2f
	.type sub_402d2f, @function
sub_402d2f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402d30
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_161
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_92
	mov	ecx, OFFSET FLAT:label_149
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402da4
	.globl sub_402da4
	.type sub_402da4, @function
sub_402da4:

	nop	word ptr cs:[rax + rax]
.label_164:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402dbe
	.globl sub_402dbe
	.type sub_402dbe, @function
sub_402dbe:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dc7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_164
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_166
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_164
.label_166:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_164
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_165
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_165:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e30

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
	je	.label_167
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
.label_167:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402e82
	.globl sub_402e82
	.type sub_402e82, @function
sub_402e82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e90
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_168
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_168:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402eb3
	.globl sub_402eb3
	.type sub_402eb3, @function
sub_402eb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_169
	test	rax, rax
	je	.label_170
.label_169:
	pop	rbx
	ret	
.label_170:
	call	xalloc_die
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

	.globl no_leading_hyphen
	.type no_leading_hyphen, @function
no_leading_hyphen:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x2d
	call	strchr
	mov	r14b, 1
	jmp	.label_172
	.section	.text
	.align	32
	#Procedure 0x402ef7
	.globl sub_402ef7
	.type sub_402ef7, @function
sub_402ef7:

	nop	word ptr [rax + rax]
.label_174:
	inc	rax
	mov	esi, 0x2d
	mov	rdi, rax
	call	strchr
.label_172:
	test	rax, rax
	je	.label_171
	cmp	rax, rbx
	je	.label_175
	cmp	byte ptr [rax - 1], 0x2f
	jne	.label_174
.label_175:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
.label_171:
	mov	eax, r14d
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f5e
	.globl sub_402f5e
	.type sub_402f5e, @function
sub_402f5e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f60

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
	#Procedure 0x402f77
	.globl sub_402f77
	.type sub_402f77, @function
sub_402f77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

	.globl component_start
	.type component_start, @function
component_start:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_176:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_176
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f9e
	.globl sub_402f9e
	.type sub_402f9e, @function
sub_402f9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402fa0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_177
	test	rdx, rdx
	je	.label_177
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_177:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402fcb
	.globl sub_402fcb
	.type sub_402fcb, @function
sub_402fcb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fd0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_178
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_178:
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
	je	.label_181
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_179
	jmp	.label_180
.label_181:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_180
.label_179:
	mov	eax, 1
	test	bpl, bpl
	je	.label_180
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
.label_180:
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
	#Procedure 0x403078
	.globl sub_403078
	.type sub_403078, @function
sub_403078:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403080

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
	je	.label_182
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_184
	jmp	.label_183
.label_182:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_183
.label_184:
	mov	eax, 1
	test	bpl, bpl
	je	.label_183
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
.label_183:
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
	#Procedure 0x4030f9
	.globl sub_4030f9
	.type sub_4030f9, @function
sub_4030f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403100

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
	je	.label_187
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_186
	jmp	.label_185
.label_187:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_185
.label_186:
	mov	eax, 1
	test	bpl, bpl
	je	.label_185
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
.label_185:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403163
	.globl sub_403163
	.type sub_403163, @function
sub_403163:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403170

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
	je	.label_190
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_188
	jmp	.label_189
.label_190:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_189
.label_188:
	mov	eax, 1
	test	bpl, bpl
	je	.label_189
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_189:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031cf
	.globl sub_4031cf
	.type sub_4031cf, @function
sub_4031cf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4031d0

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
	je	.label_191
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_193
	jmp	.label_192
.label_191:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_192
.label_193:
	mov	eax, 1
	test	bpl, bpl
	je	.label_192
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_192:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403219
	.globl sub_403219
	.type sub_403219, @function
sub_403219:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403220

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
	je	.label_196
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_195
	jmp	.label_194
.label_196:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_194
.label_195:
	mov	eax, 1
	test	bpl, bpl
	je	.label_194
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_194:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403265
	.globl sub_403265
	.type sub_403265, @function
sub_403265:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403270

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_198
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_199
	jmp	.label_197
.label_198:
	mov	eax, 1
	test	cl, cl
	je	.label_197
.label_199:
	xor	eax, eax
.label_197:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40329f
	.globl sub_40329f
	.type sub_40329f, @function
sub_40329f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4032a0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032aa
	.globl sub_4032aa
	.type sub_4032aa, @function
sub_4032aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032b0

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
	je	.label_211
	mov	edx, OFFSET FLAT:label_207
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_213
.label_211:
	mov	edx, OFFSET FLAT:label_214
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
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
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_202
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_203]]
.label_352:
	add	rsp, 8
	jmp	.label_201
.label_202:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
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
	jmp	.label_201
.label_353:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
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
.label_354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
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
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
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
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
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
	jmp	.label_201
.label_357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
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
	jmp	.label_201
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
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
	jmp	.label_201
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
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
	jmp	.label_201
.label_361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
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
	jmp	.label_201
.label_360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
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
.label_201:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403608
	.globl sub_403608
	.type sub_403608, @function
sub_403608:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403610

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
.label_264:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_239
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_270]]
.label_408:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_274
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_18
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_409:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_289
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_289
	xor	r14d, r14d
.label_302:
	cmp	r14, r11
	jae	.label_299
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_299:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_302
.label_289:
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
	jmp	.label_226
.label_401:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_226
.label_404:
	mov	al, 1
.label_402:
	mov	r12b, 1
.label_405:
	test	r12b, 1
	mov	cl, 1
	je	.label_317
	mov	ecx, eax
.label_317:
	mov	al, cl
.label_403:
	test	r12b, 1
	jne	.label_321
	test	r11, r11
	je	.label_247
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_247:
	mov	r14d, 1
	jmp	.label_326
.label_321:
	xor	r14d, r14d
.label_326:
	mov	ecx, OFFSET FLAT:label_18
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_226
.label_406:
	test	r12b, 1
	jne	.label_331
	test	r11, r11
	je	.label_306
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_306:
	mov	r14d, 1
	jmp	.label_222
.label_407:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_17
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_226
.label_331:
	xor	r14d, r14d
.label_222:
	mov	eax, OFFSET FLAT:label_17
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_226:
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
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x4038ec
	.globl sub_4038ec
	.type sub_4038ec, @function
sub_4038ec:

	nop	dword ptr [rax]
.label_286:
	inc	rsi
.label_285:
	cmp	rbp, -1
	je	.label_279
	cmp	rsi, rbp
	jne	.label_327
	jmp	.label_246
	.section	.text
	.align	32
	#Procedure 0x403903
	.globl sub_403903
	.type sub_403903, @function
sub_403903:

	nop	word ptr cs:[rax + rax]
.label_279:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_246
.label_327:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_292
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_294
	cmp	rbp, -1
	jne	.label_294
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
.label_294:
	cmp	rbx, rbp
	jbe	.label_307
.label_292:
	xor	r8d, r8d
.label_269:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_308
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_311]]
.label_431:
	test	rsi, rsi
	jne	.label_305
	jmp	.label_233
	.section	.text
	.align	32
	#Procedure 0x40399e
	.globl sub_40399e
	.type sub_40399e, @function
sub_40399e:

	nop	
.label_307:
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
	jne	.label_324
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_269
	jmp	.label_237
.label_324:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_269
.label_435:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_228
	test	rsi, rsi
	jne	.label_230
	cmp	rbp, 1
	je	.label_233
	xor	r13d, r13d
	jmp	.label_229
.label_424:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_238
	cmp	byte ptr [rsp + 7], 0
	jne	.label_240
	cmp	r12d, 2
	jne	.label_244
	mov	eax, r9d
	and	al, 1
	jne	.label_244
	cmp	r14, r11
	jae	.label_249
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_249:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_253
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_253:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_258
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_258:
	add	r14, 3
	mov	r9b, 1
.label_244:
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
	je	.label_262
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_262
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_262
	cmp	r14, r11
	jae	.label_275
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_275:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_219
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_219:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_229
.label_425:
	mov	bl, 0x62
	jmp	.label_287
.label_426:
	mov	cl, 0x74
	jmp	.label_291
.label_427:
	mov	bl, 0x76
	jmp	.label_287
.label_428:
	mov	bl, 0x66
	jmp	.label_287
.label_429:
	mov	cl, 0x72
	jmp	.label_291
.label_432:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_297
	cmp	byte ptr [rsp + 7], 0
	jne	.label_240
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
	jae	.label_304
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_304:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_312
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_312:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_314
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_314:
	add	r14, 3
	xor	r9d, r9d
.label_297:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_229
.label_433:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_323
	cmp	r12d, 2
	jne	.label_305
	cmp	byte ptr [rsp + 7], 0
	je	.label_305
	jmp	.label_240
.label_434:
	cmp	r12d, 2
	jne	.label_329
	cmp	byte ptr [rsp + 7], 0
	jne	.label_240
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_288
.label_308:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_231
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
.label_223:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_243
	test	r8b, r8b
	je	.label_243
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_229
.label_228:
	test	rsi, rsi
	jne	.label_265
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_265
.label_233:
	mov	dl, 1
.label_430:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_240
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_229:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_271
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_272
	jmp	.label_276
	.section	.text
	.align	32
	#Procedure 0x403ce4
	.globl sub_403ce4
	.type sub_403ce4, @function
sub_403ce4:

	nop	word ptr cs:[rax + rax]
.label_271:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_276
.label_272:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_280
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_288
	jmp	.label_296
	.section	.text
	.align	32
	#Procedure 0x403d2d
	.globl sub_403d2d
	.type sub_403d2d, @function
sub_403d2d:

	nop	dword ptr [rax]
.label_276:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_296
	jmp	.label_288
.label_280:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_296
.label_238:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_286
	xor	r15d, r15d
	jmp	.label_305
.label_329:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_291
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_288
.label_291:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_240
.label_287:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_229
	nop	word ptr cs:[rax + rax]
.label_296:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_240
	cmp	r12d, 2
	jne	.label_318
	mov	eax, r9d
	and	al, 1
	jne	.label_318
	cmp	r14, r11
	jae	.label_322
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_322:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_300
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_300:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_290
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_290:
	add	r14, 3
	mov	r9b, 1
.label_318:
	cmp	r14, r11
	jae	.label_330
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_330:
	inc	r14
	jmp	.label_220
.label_231:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_224
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_224:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_241:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_250
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_255
	cmp	rbp, -2
	je	.label_303
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_260
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_278:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_245
	bt	rsi, rdx
	jb	.label_237
.label_245:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_278
.label_260:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_282
	xor	r13d, r13d
.label_282:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_241
	jmp	.label_223
.label_262:
	xor	r13d, r13d
	jmp	.label_229
.label_265:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_229
.label_323:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_305
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_305
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_305
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_309
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_283
	cmp	byte ptr [rsp + 7], 0
	jne	.label_240
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_234
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_234:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_325
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_325:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_328
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_328:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_229
.label_305:
	xor	eax, eax
.label_230:
	xor	r13d, r13d
	jmp	.label_229
.label_243:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_221
	.section	.text
	.align	32
	#Procedure 0x404013
	.globl sub_404013
	.type sub_404013, @function
sub_404013:

	nop	word ptr cs:[rax + rax]
.label_301:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_221:
	test	r8b, r8b
	je	.label_284
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_232
	cmp	r14, r11
	jae	.label_235
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_235:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_232
	.section	.text
	.align	32
	#Procedure 0x40405c
	.globl sub_40405c
	.type sub_40405c, @function
sub_40405c:

	nop	dword ptr [rax]
.label_284:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_237
	cmp	r12d, 2
	jne	.label_251
	mov	eax, r9d
	and	al, 1
	jne	.label_251
	cmp	r14, r11
	jae	.label_254
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_254:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_257
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_257:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_261
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_261:
	add	r14, 3
	mov	r9b, 1
.label_251:
	cmp	r14, r11
	jae	.label_277
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_277:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_267
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_267:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_273
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_273:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_232:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_288
	test	r9b, 1
	je	.label_225
	mov	ebx, eax
	and	bl, 1
	jne	.label_225
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_293
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_293:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_319
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_319:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_225:
	cmp	r14, r11
	jae	.label_301
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_301
	.section	.text
	.align	32
	#Procedure 0x404163
	.globl sub_404163
	.type sub_404163, @function
sub_404163:

	nop	word ptr cs:[rax + rax]
.label_288:
	test	r9b, 1
	je	.label_263
	and	al, 1
	jne	.label_263
	cmp	r14, r11
	jae	.label_310
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_310:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_298
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_298:
	add	r14, 2
	xor	r9d, r9d
.label_263:
	mov	ebx, r15d
.label_220:
	cmp	r14, r11
	jae	.label_316
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_316:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_286
.label_255:
	xor	r13d, r13d
.label_250:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_223
.label_303:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_295
	mov	rsi, qword ptr [rsp + 0x50]
.label_313:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_227
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_313
	xor	r13d, r13d
	jmp	.label_223
.label_295:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_223
.label_227:
	xor	r13d, r13d
	jmp	.label_223
.label_309:
	xor	r13d, r13d
	jmp	.label_229
.label_283:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_229
	.section	.text
	.align	32
	#Procedure 0x404238
	.globl sub_404238
	.type sub_404238, @function
sub_404238:

	nop	dword ptr [rax + rax]
.label_246:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_236
	or	dl, al
	je	.label_237
.label_236:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_248
	or	dl, al
	jne	.label_248
	test	r10b, 1
	jne	.label_259
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_248
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_264
.label_248:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_242
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_268
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_268
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_281:
	cmp	r14, r11
	jae	.label_315
	mov	byte ptr [rcx + r14], al
.label_315:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_281
	jmp	.label_268
.label_240:
	mov	qword ptr [rsp + 0x20], rbp
.label_237:
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
.label_320:
	mov	r14, rax
.label_256:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_259:
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
	jmp	.label_320
.label_242:
	mov	rcx, qword ptr [rsp + 8]
.label_268:
	cmp	r14, r11
	jae	.label_256
	mov	byte ptr [rcx + r14], 0
	jmp	.label_256
.label_239:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4043cc
	.globl sub_4043cc
	.type sub_4043cc, @function
sub_4043cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0

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
	mov	eax, OFFSET FLAT:label_332
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043f5
	.globl sub_4043f5
	.type sub_4043f5, @function
sub_4043f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_333
	ret	
.label_333:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x404413
	.globl sub_404413
	.type sub_404413, @function
sub_404413:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420
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
	#Procedure 0x40442d
	.globl sub_40442d
	.type sub_40442d, @function
sub_40442d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404495
	.globl sub_404495
	.type sub_404495, @function
sub_404495:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a2
	.globl sub_4044a2
	.type sub_4044a2, @function
sub_4044a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044c6
	.globl sub_4044c6
	.type sub_4044c6, @function
sub_4044c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044d9
	.globl sub_4044d9
	.type sub_4044d9, @function
sub_4044d9:

	nop	dword ptr [rax]
