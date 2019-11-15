	.section	.text
	.align	16
	#Procedure 0x4015f9
	.globl sub_4015f9
	.type sub_4015f9, @function
sub_4015f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4015fa
	.globl sub_4015fa
	.type sub_4015fa, @function
sub_4015fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401632
	.globl sub_401632
	.type sub_401632, @function
sub_401632:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40167a
	.globl sub_40167a
	.type sub_40167a, @function
sub_40167a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40169c
	.globl sub_40169c
	.type sub_40169c, @function
sub_40169c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016ad
	.globl sub_4016ad
	.type sub_4016ad, @function
sub_4016ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016c6
	.globl sub_4016c6
	.type sub_4016c6, @function
sub_4016c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016d0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016da
	.globl sub_4016da
	.type sub_4016da, @function
sub_4016da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016e0
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
	#Procedure 0x401752
	.globl sub_401752
	.type sub_401752, @function
sub_401752:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401760

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_9
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_9
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_9:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401786
	.globl sub_401786
	.type sub_401786, @function
sub_401786:

	nop	word ptr cs:[rax + rax]
.label_10:
	call	fmt_paragraph
	mov	rdi,  qword ptr [word ptr [rip + word_limit]]
	call	put_paragraph
.label_11:
	mov	rdi, rbx
	call	get_paragraph
	test	al, al
	jne	.label_10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017af
	.globl sub_4017af
	.type sub_4017af, @function
sub_4017af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4017b0

	.globl fmt
	.type fmt, @function
fmt:
	push	rbx
	mov	rbx, rdi
	mov	esi, 2
	call	fadvise
	mov	byte ptr [byte ptr [rip + tabs]],  0
	mov	dword ptr [dword ptr [rip + other_indent]],  0
	mov	rdi, rbx
	call	get_prefix
	mov	dword ptr [dword ptr [rip + next_char]],  eax
	jmp	.label_11
	.section	.text
	.align	16
	#Procedure 0x4017df
	.globl sub_4017df
	.type sub_4017df, @function
sub_4017df:

	nop	
.label_12:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4017ec
	.globl sub_4017ec
	.type sub_4017ec, @function
sub_4017ec:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017f9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_12
	ret	
	.section	.text
	.align	16
	#Procedure 0x401800

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x401805
	.globl sub_401805
	.type sub_401805, @function
sub_401805:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401810

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_13
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_13:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40182a
	.globl sub_40182a
	.type sub_40182a, @function
sub_40182a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401830

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	qword ptr [rax + 0x18], 0
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rsp + 4], ecx
	mov	ecx,  dword ptr [dword ptr [rip + max_width]]
	mov	dword ptr [rax + 8], ecx
	mov	r12,  qword ptr [word ptr [rip + word_limit]]
	lea	r14, [r12 - 0x28]
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	r14, rax
	jb	.label_15
	mov	r13d, OFFSET FLAT:unused_word_type
	nop	word ptr [rax + rax]
.label_18:
	cmp	r14, r13
	mov	eax, OFFSET FLAT:other_indent
	mov	ecx, OFFSET FLAT:first_indent
	cmove	rax, rcx
	mov	ebp, dword ptr [rax]
	add	ebp, dword ptr [r12 - 0x20]
	mov	rbx, r12
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_19:
	mov	rdi, rbx
	mov	esi, ebp
	call	line_cost
	add	rax, qword ptr [rbx + 0x18]
	cmp	r14, r13
	jne	.label_16
	mov	ecx,  dword ptr [dword ptr [rip + last_line_length]]
	test	ecx, ecx
	jle	.label_16
	mov	edx, ebp
	sub	edx, ecx
	add	edx, edx
	lea	ecx, [rdx + rdx*4]
	movsxd	rcx, ecx
	imul	rcx, rcx
	shr	rcx, 1
	add	rax, rcx
.label_16:
	cmp	rax, r15
	jge	.label_14
	mov	qword ptr [r12 - 8], rbx
	mov	dword ptr [r12 - 0x14], ebp
	mov	r15, rax
.label_14:
	cmp	rbx,  qword ptr [word ptr [rip + word_limit]]
	je	.label_17
	add	ebp, dword ptr [rbx - 0x1c]
	add	ebp, dword ptr [rbx + 8]
	add	rbx, 0x28
	cmp	ebp,  dword ptr [dword ptr [rip + max_width]]
	jl	.label_19
.label_17:
	mov	rdi, r14
	call	base_cost
	add	rax, r15
	mov	qword ptr [r12 - 0x10], rax
	add	r12, -0x28
	add	r14, -0x28
	cmp	r14, r13
	jae	.label_18
.label_15:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rax + 8], ecx
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
	#Procedure 0x40194e
	.globl sub_40194e
	.type sub_40194e, @function
sub_40194e:

	nop	
.label_23:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_20
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401970
	.globl sub_401970
	.type sub_401970, @function
sub_401970:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40197f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_23
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_22
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_22
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_21
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_21:
	mov	rbx, r14
.label_22:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_26:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401a05
	.globl sub_401a05
	.type sub_401a05, @function
sub_401a05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a13

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
	je	.label_26
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
	#Procedure 0x401a60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a68
	.globl sub_401a68
	.type sub_401a68, @function
sub_401a68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_27
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_29:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_29
.label_27:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_30
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_31]], OFFSET FLAT:slot0
.label_30:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_28
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_28:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b01
	.globl sub_401b01
	.type sub_401b01, @function
sub_401b01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b10

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_33
	cmp	byte ptr [rax], 0x43
	jne	.label_35
	cmp	byte ptr [rax + 1], 0
	je	.label_32
.label_35:
	mov	esi, OFFSET FLAT:label_34
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_33
.label_32:
	xor	ebx, ebx
.label_33:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b41
	.globl sub_401b41
	.type sub_401b41, @function
sub_401b41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	mov	ecx, OFFSET FLAT:label_41
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401bc4
	.globl sub_401bc4
	.type sub_401bc4, @function
sub_401bc4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
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
	.align	16
	#Procedure 0x401bdd
	.globl sub_401bdd
	.type sub_401bdd, @function
sub_401bdd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401be0

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	dword ptr [dword ptr [rip + in_column]],  0
	call	getc_unlocked
	mov	rdi, r14
	mov	esi, eax
	call	get_space
	cmp	dword ptr [dword ptr [rip + prefix_length]],  0
	je	.label_42
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  ecx
	mov	rbx,  qword ptr [word ptr [rip + prefix]]
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	.label_43
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_45:
	movzx	ecx, cl
	cmp	eax, ecx
	jne	.label_44
	inc	dword ptr [dword ptr [rip + in_column]]
	mov	rdi, r14
	call	getc_unlocked
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	jne	.label_45
.label_43:
	mov	rdi, r14
	mov	esi, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	get_space
.label_42:
	mov	ecx,  dword ptr [dword ptr [rip + prefix_lead_space]]
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	cmp	ecx, edx
	cmovle	edx, ecx
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  edx
.label_44:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c7f
	.globl sub_401c7f
	.type sub_401c7f, @function
sub_401c7f:

	nop	
.label_46:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401c8e
	.globl sub_401c8e
	.type sub_401c8e, @function
sub_401c8e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c97

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_46
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_48
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_46
.label_48:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_46
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_47
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_47:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d00
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_49
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_49:
	xor	eax, eax
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

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_53
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_50
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_50
.label_53:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_54
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_52
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_54:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_52:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_55
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401de0

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
	je	.label_69
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_66
.label_69:
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
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
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_72
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_73]]
.label_479:
	add	rsp, 8
	jmp	.label_59
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
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
	jmp	.label_59
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
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
.label_481:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
.label_482:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
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
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
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
	jmp	.label_59
.label_484:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
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
	jmp	.label_59
.label_485:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
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
	jmp	.label_59
.label_486:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
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
	jmp	.label_59
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
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
	jmp	.label_59
.label_487:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
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
.label_59:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402138
	.globl sub_402138
	.type sub_402138, @function
sub_402138:

	nop	dword ptr [rax + rax]
.label_78:
	test	rcx, rcx
	jne	.label_76
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_76:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_77
.label_79:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_80:
	call	xalloc_die
.label_77:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40218c
	.globl sub_40218c
	.type sub_40218c, @function
sub_40218c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402193

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_78
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_80
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_79
	.section	.text
	.align	16
	#Procedure 0x4021c0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021e3
	.globl sub_4021e3
	.type sub_4021e3, @function
sub_4021e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl set_other_indent
	.type set_other_indent, @function
set_other_indent:
	cmp	byte ptr [byte ptr [rip + split]],  1
	je	.label_81
	cmp	byte ptr [byte ptr [rip + crown]],  1
	jne	.label_85
	mov	eax, OFFSET FLAT:in_column
	mov	ecx, OFFSET FLAT:first_indent
	test	dil, dil
	cmovne	rcx, rax
	mov	eax, dword ptr [rcx]
	jmp	.label_83
.label_81:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
.label_83:
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_84:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402224
	.globl sub_402224
	.type sub_402224, @function
sub_402224:

	nop	word ptr [rax + rax]
.label_85:
	cmp	byte ptr [byte ptr [rip + tagged]],  1
	jne	.label_81
	test	dil, dil
	je	.label_82
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	jne	.label_83
.label_82:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	cmp	dword ptr [dword ptr [rip + other_indent]],  eax
	jne	.label_84
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx*2]
	jmp	.label_83
	.section	.text
	.align	16
	#Procedure 0x402260

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402282
	.globl sub_402282
	.type sub_402282, @function
sub_402282:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402290
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
	#Procedure 0x4022c3
	.globl sub_4022c3
	.type sub_4022c3, @function
sub_4022c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

	.globl put_word
	.type put_word, @function
put_word:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	ebp, dword ptr [r14 + 8]
	test	ebp, ebp
	je	.label_87
	mov	rbx, qword ptr [r14]
	nop	word ptr cs:[rax + rax]
.label_88:
	movsx	edi, byte ptr [rbx]
	inc	rbx
	call	putchar_unlocked
	dec	ebp
	jne	.label_88
.label_87:
	mov	eax, dword ptr [r14 + 8]
	add	dword ptr [dword ptr [rip + out_column]],  eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40230e
	.globl sub_40230e
	.type sub_40230e, @function
sub_40230e:

	nop	
.label_90:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_89
	test	cl, cl
	jne	.label_89
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_89:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40233b
	.globl sub_40233b
	.type sub_40233b, @function
sub_40233b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402345

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
	je	.label_90
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_89
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_89
	.section	.text
	.align	16
	#Procedure 0x402380

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
	#Procedure 0x4023b6
	.globl sub_4023b6
	.type sub_4023b6, @function
sub_4023b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4023ca
	.globl sub_4023ca
	.type sub_4023ca, @function
sub_4023ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023d0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4023f2
	.globl sub_4023f2
	.type sub_4023f2, @function
sub_4023f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40240a
	.globl sub_40240a
	.type sub_40240a, @function
sub_40240a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402410
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40241d
	.globl sub_40241d
	.type sub_40241d, @function
sub_40241d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402420
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_92:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402436
	.globl sub_402436
	.type sub_402436, @function
sub_402436:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40243b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_92
	test	rdx, rdx
	je	.label_92
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_95:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_93
.label_94:
	mov	eax, 1
	test	bpl, bpl
	je	.label_93
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
.label_93:
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
	#Procedure 0x4024a8
	.globl sub_4024a8
	.type sub_4024a8, @function
sub_4024a8:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024ab

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
	je	.label_95
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_94
	jmp	.label_93
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40250d
	.globl sub_40250d
	.type sub_40250d, @function
sub_40250d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402510
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
	#Procedure 0x40251f
	.globl sub_40251f
	.type sub_40251f, @function
sub_40251f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402520
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
	#Procedure 0x402547
	.globl sub_402547
	.type sub_402547, @function
sub_402547:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550

	.globl copy_rest
	.type copy_rest, @function
copy_rest:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + out_column]],  0
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	jg	.label_101
	cmp	r14d, -1
	je	.label_103
	cmp	r14d, 0xa
	jne	.label_101
	mov	ebp, r14d
	jmp	.label_98
.label_101:
	mov	edi,  dword ptr [dword ptr [rip + next_prefix_indent]]
	call	put_space
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	cmp	eax,  dword ptr [dword ptr [rip + in_column]]
	je	.label_102
	mov	rbp,  qword ptr [word ptr [rip + prefix]]
	nop	word ptr [rax + rax]
.label_96:
	movsx	edi, byte ptr [rbp]
	test	edi, edi
	je	.label_102
	inc	rbp
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax,  dword ptr [dword ptr [rip + in_column]]
	jne	.label_96
.label_102:
	cmp	r14d, -1
	je	.label_99
	mov	ebp, 0xa
	cmp	r14d, 0xa
	je	.label_98
	mov	edi,  dword ptr [dword ptr [rip + in_column]]
	sub	edi,  dword ptr [dword ptr [rip + out_column]]
	call	put_space
	mov	ebp, r14d
	jmp	.label_98
.label_99:
	mov	eax,  dword ptr [dword ptr [rip + prefix_length]]
	add	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	ebp, 0xffffffff
	cmp	dword ptr [dword ptr [rip + in_column]],  eax
	jl	.label_98
	mov	edi, 0xa
	call	putchar_unlocked
	jmp	.label_98
.label_103:
	mov	ebp, r14d
	jmp	.label_98
	.section	.text
	.align	16
	#Procedure 0x402627
	.globl sub_402627
	.type sub_402627, @function
sub_402627:

	nop	word ptr [rax + rax]
.label_100:
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	call	getc_unlocked
	mov	ebp, eax
.label_98:
	cmp	ebp, -1
	je	.label_97
	cmp	ebp, 0xa
	jne	.label_100
.label_97:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402652
	.globl sub_402652
	.type sub_402652, @function
sub_402652:

	nop	word ptr cs:[rax + rax]
.label_104:
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_106:
	cmp	rbx, r14
	jne	.label_104
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40267f
	.globl sub_40267f
	.type sub_40267f, @function
sub_40267f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402680

	.globl put_paragraph
	.type put_paragraph, @function
put_paragraph:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbx,  qword ptr [word ptr [rip + label_105]]
	jmp	.label_106
	.section	.text
	.align	16
	#Procedure 0x4026a0
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
	#Procedure 0x4026ad
	.globl sub_4026ad
	.type sub_4026ad, @function
sub_4026ad:

	nop	dword ptr [rax]
.label_108:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x4026bd

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_108
	cmp	eax, 1
	je	.label_110
	test	eax, eax
	jne	.label_107
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_111
	cmp	rbx, r15
	jbe	.label_112
.label_111:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_109
	mov	dword ptr [rax], 0x4b
	jmp	.label_107
.label_110:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_107
.label_109:
	mov	dword ptr [rax], 0x22
.label_107:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_55
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_112:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x402776
	.globl sub_402776
	.type sub_402776, @function
sub_402776:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402780
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40278a
	.globl sub_40278a
	.type sub_40278a, @function
sub_40278a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402790

	.globl check_punctuation
	.type check_punctuation, @function
check_punctuation:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	movsxd	rbx, dword ptr [r14 + 8]
	movsx	esi, byte ptr [r15]
	movzx	r12d, byte ptr [r15 + rbx - 1]
	mov	edi, OFFSET FLAT:label_113
	mov	edx, 6
	call	memchr
	test	rax, rax
	setne	al
	mov	bpl, byte ptr [r14 + 0x10]
	and	bpl, 0xfe
	or	bpl, al
	mov	byte ptr [r14 + 0x10], bpl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r12*2]
	and	al, 4
	and	bpl, 0xfb
	or	bpl, al
	cmp	rbx, 2
	lea	rbx, [r15 + rbx - 1]
	mov	byte ptr [r14 + 0x10], bpl
	jl	.label_115
	nop	word ptr cs:[rax + rax]
.label_116:
	movsx	esi, byte ptr [rbx]
	mov	edi, OFFSET FLAT:label_114
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_115
	dec	rbx
	cmp	r15, rbx
	jb	.label_116
.label_115:
	movsx	rax, byte ptr [rbx]
	mov	eax, eax
	cmp	rax, 0x40
	sbb	cl, cl
	movabs	rdx, 0x8000400200000001
	bt	rdx, rax
	sbb	al, al
	and	al, cl
	and	al, 1
	mov	cl, byte ptr [r14 + 0x10]
	add	al, al
	and	cl, 0xfd
	or	cl, al
	mov	byte ptr [r14 + 0x10], cl
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402857
	.globl sub_402857
	.type sub_402857, @function
sub_402857:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40286a
	.globl sub_40286a
	.type sub_40286a, @function
sub_40286a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402870
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
	#Procedure 0x402883
	.globl sub_402883
	.type sub_402883, @function
sub_402883:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402890

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
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
	.align	16
	#Procedure 0x4028c0

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
	#Procedure 0x4028d7
	.globl sub_4028d7
	.type sub_4028d7, @function
sub_4028d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_119:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_118
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_120
	.section	.text
	.align	16
	#Procedure 0x402909
	.globl sub_402909
	.type sub_402909, @function
sub_402909:

	nop	dword ptr [rax]
.label_118:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_120:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_121
	inc	r9
	cmp	r9, 0xa
	jb	.label_119
.label_121:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40293f
	.globl sub_40293f
	.type sub_40293f, @function
sub_40293f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402940
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_122
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_122:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402963
	.globl sub_402963
	.type sub_402963, @function
sub_402963:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402970

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_123
	test	rax, rax
	je	.label_124
.label_123:
	pop	rbx
	ret	
.label_124:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40298a
	.globl sub_40298a
	.type sub_40298a, @function
sub_40298a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_132
	call	setlocale
	mov	edi, OFFSET FLAT:label_141
	mov	esi, OFFSET FLAT:label_143
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_141
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + uniform]],  0
	mov	byte ptr [byte ptr [rip + split]],  0
	mov	byte ptr [byte ptr [rip + tagged]],  0
	mov	byte ptr [byte ptr [rip + crown]],  0
	mov	dword ptr [dword ptr [rip + max_width]],  0x4b
	mov	qword ptr [word ptr [rip + prefix]], OFFSET FLAT:label_132
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  0
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	mov	dword ptr [dword ptr [rip + prefix_length]],  0
	xor	r14d, r14d
	cmp	r13d, 2
	jl	.label_139
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	cmp	byte ptr [rax], 0x2d
	jne	.label_139
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_139
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	r12, [r12 + 8]
	dec	r13d
	mov	r14, rax
.label_139:
	xor	r15d, r15d
	jmp	.label_137
.label_537:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	set_prefix
	nop	dword ptr [rax + rax]
.label_137:
	mov	edx, OFFSET FLAT:label_125
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_130
	lea	eax, [rbx - 0x63]
	cmp	eax, 0x14
	ja	.label_131
	jmp	qword ptr [word ptr [+ (rax * 8) + label_133]]
.label_535:
	mov	byte ptr [byte ptr [rip + crown]],  1
	jmp	.label_137
.label_536:
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_137
.label_538:
	mov	byte ptr [byte ptr [rip + split]],  1
	jmp	.label_137
.label_539:
	mov	byte ptr [byte ptr [rip + tagged]],  1
	jmp	.label_137
.label_540:
	mov	byte ptr [byte ptr [rip + uniform]],  1
	jmp	.label_137
.label_541:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_137
.label_130:
	cmp	ebx, -1
	jne	.label_150
	test	r14, r14
	je	.label_151
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x9c4
	mov	ecx, OFFSET FLAT:label_132
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + max_width]],  eax
.label_151:
	test	r15, r15
	movsxd	rbx,  dword ptr [dword ptr [rip + max_width]]
	je	.label_153
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_132
	xor	r9d, r9d
	mov	rdi, r15
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
	test	r14, r14
	jne	.label_147
	add	eax, 0xa
	mov	dword ptr [dword ptr [rip + max_width]],  eax
	jmp	.label_147
.label_153:
	imul	eax, ebx, 0xbb
	cdqe	
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x26
	add	eax, ecx
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
.label_147:
	cmp	dword ptr [dword ptr [rip + optind]],  r13d
	jne	.label_129
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	mov	r15b, 1
	jmp	.label_134
.label_129:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	r15b, 1
	cmp	eax, r13d
	jge	.label_134
	mov	r15b, 1
	nop	dword ptr [rax]
.label_142:
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_148
	cmp	byte ptr [rbx + 1], 0
	je	.label_146
.label_148:
	mov	esi, OFFSET FLAT:label_149
	mov	rdi, rbx
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_152
	mov	rdi, rbp
	call	fmt
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_135
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_51
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_136
	.section	.text
	.align	16
	#Procedure 0x402c3c
	.globl sub_402c3c
	.type sub_402c3c, @function
sub_402c3c:

	nop	dword ptr [rax]
.label_152:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_136:
	call	error
	jmp	.label_135
.label_146:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	nop	dword ptr [rax]
.label_135:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r13d
	jl	.label_142
.label_134:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_150:
	cmp	ebx, 0xffffff7d
	je	.label_127
	cmp	ebx, 0xffffff7e
	jne	.label_131
	xor	edi, edi
	call	usage
.label_127:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_144
	mov	edx, OFFSET FLAT:label_40
	mov	r8d, OFFSET FLAT:label_145
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_131:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_126
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_126:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x402d3d
	.globl sub_402d3d
	.type sub_402d3d, @function
sub_402d3d:

	nop	dword ptr [rax]
.label_155:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_154
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d4b
	.globl sub_402d4b
	.type sub_402d4b, @function
sub_402d4b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d55
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_155
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_155
.label_154:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d70

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
	je	.label_156
	cmp	r15, -2
	jb	.label_156
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_156
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_156:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dc6
	.globl sub_402dc6
	.type sub_402dc6, @function
sub_402dc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dd0

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	r12, rdi
	mov	r14d, OFFSET FLAT:wptr
	mov	r15d, OFFSET FLAT:label_159
	nop	dword ptr [rax]
.label_169:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	qword ptr [rcx], rax
	nop	word ptr cs:[rax + rax]
.label_160:
	cmp	qword ptr [word ptr [rip + wptr]],  r14
	jne	.label_163
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_163:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + wptr]],  rcx
	mov	byte ptr [rax], bpl
	mov	rdi, r12
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_158
	movsxd	rbx, ebp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_160
.label_158:
	mov	ebx,  dword ptr [dword ptr [rip + wptr]]
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	sub	ebx, dword ptr [rax]
	mov	dword ptr [rax + 8], ebx
	add	ebx,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + in_column]],  ebx
	mov	rdi,  qword ptr [word ptr [rip + word_limit]]
	call	check_punctuation
	mov	rdi, r12
	mov	esi, ebp
	call	get_space
	mov	ebp, eax
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	sub	eax, ebx
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	dword ptr [rcx + 0xc], eax
	cmp	ebp, -1
	je	.label_165
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	test	byte ptr [rax + 0x10], 2
	jne	.label_164
	xor	eax, eax
	jmp	.label_168
	.section	.text
	.align	16
	#Procedure 0x402ebc
	.globl sub_402ebc
	.type sub_402ebc, @function
sub_402ebc:

	nop	dword ptr [rax]
.label_164:
	cmp	ebp, 0xa
	jne	.label_157
.label_165:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	or	byte ptr [rax + 0x10], 8
	jmp	.label_162
.label_157:
	cmp	dword ptr [rax + 0xc], 1
	setg	al
.label_168:
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	mov	dl, byte ptr [rcx + 0x10]
	shl	al, 3
	and	dl, 0xf7
	or	dl, al
	mov	byte ptr [rcx + 0x10], dl
	cmp	ebp, 0xa
	je	.label_162
	cmp	byte ptr [byte ptr [rip + uniform]],  1
	jne	.label_167
	nop	dword ptr [rax]
.label_162:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	movzx	ecx, byte ptr [rax + 0x10]
	and	ecx, 8
	shr	ecx, 3
	inc	ecx
	mov	dword ptr [rax + 0xc], ecx
.label_167:
	cmp	qword ptr [word ptr [rip + word_limit]],  r15
	jne	.label_161
	mov	edi, 1
	call	set_other_indent
	call	flush_paragraph
.label_161:
	add	qword ptr [word ptr [rip + word_limit]],  0x28
	cmp	ebp, 0xa
	je	.label_166
	cmp	ebp, -1
	jne	.label_169
.label_166:
	mov	rdi, r12
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	get_prefix
	.section	.text
	.align	16
	#Procedure 0x402f54
	.globl sub_402f54
	.type sub_402f54, @function
sub_402f54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f60

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
	jne	.label_170
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_170
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_171
.label_170:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_171:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_172
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_172:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fce
	.globl sub_402fce
	.type sub_402fce, @function
sub_402fce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + out_column]],  0
	mov	edi,  dword ptr [dword ptr [rip + prefix_indent]]
	call	put_space
	mov	rdi,  qword ptr [word ptr [rip + prefix]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	add	eax,  dword ptr [dword ptr [rip + prefix_length]]
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	sub	ebp, eax
	mov	edi, ebp
	call	put_space
	mov	rbp, qword ptr [rbx + 0x20]
	lea	r14, [rbp - 0x28]
	mov	rdi, rbx
	call	put_word
	cmp	r14, rbx
	je	.label_173
	add	rbx, 0x28
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	edi, dword ptr [rbx - 0x1c]
	call	put_space
	mov	rdi, rbx
	call	put_word
	add	rbx, 0x28
	cmp	rbp, rbx
	jne	.label_174
.label_173:
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	dword ptr [dword ptr [rip + last_line_length]],  eax
	mov	edi, 0xa
	pop	rbx
	pop	r14
	pop	rbp
	jmp	putchar_unlocked
	.section	.text
	.align	16
	#Procedure 0x403073
	.globl sub_403073
	.type sub_403073, @function
sub_403073:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40308a
	.globl sub_40308a
	.type sub_40308a, @function
sub_40308a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090
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
	#Procedure 0x4030a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4030a9
	.globl sub_4030a9
	.type sub_4030a9, @function
sub_4030a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030b0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4030ba
	.globl sub_4030ba
	.type sub_4030ba, @function
sub_4030ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r14
	push	rbx
	push	rax
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	qword ptr [word ptr [rip + word_limit]],  rax
	je	.label_175
	call	fmt_paragraph
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	mov	rsi,  qword ptr [word ptr [rip + label_105]]
	cmp	rsi, rbx
	je	.label_179
	movabs	r8, 0x7ffffffffffffff7
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	lea	rdx, [r8 + 8]
	nop	word ptr cs:[rax + rax]
.label_177:
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rax, qword ptr [rsi + 0x20]
	sub	rdi, qword ptr [rax + 0x18]
	cmp	rdi, rdx
	cmovl	rbx, rsi
	cmovg	rdi, rdx
	lea	rdx, [rdi + 9]
	cmp	rdi, r8
	cmovge	rdx, rdi
	cmp	rax, rcx
	mov	rsi, rax
	jne	.label_177
.label_179:
	mov	rdi, rbx
	call	put_paragraph
	mov	rsi, qword ptr [rbx]
	mov	rdx,  qword ptr [word ptr [rip + wptr]]
	sub	rdx, rsi
	mov	r14d, OFFSET FLAT:parabuf
	mov	edi, OFFSET FLAT:parabuf
	call	memmove
	mov	eax, dword ptr [rbx]
	sub	eax, r14d
	cdqe	
	sub	qword ptr [word ptr [rip + wptr]],  rax
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	cmp	rbx, rcx
	ja	.label_180
	neg	rax
	mov	rdx, rbx
	nop	
.label_176:
	add	qword ptr [rdx], rax
	add	rdx, 0x28
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	cmp	rdx, rcx
	jbe	.label_176
.label_180:
	mov	edx, 0x28
	sub	rdx, rbx
	add	rdx, rcx
	mov	r14d, OFFSET FLAT:unused_word_type
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsi, rbx
	call	memmove
	sub	rbx, r14
	movabs	rcx, 0x9999999999999999
	mov	rax, rbx
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 4
	add	rdx, rax
	lea	rax, [rdx + rdx*4]
	shl	rax, 3
	add	qword ptr [word ptr [rip + word_limit]],  rax
	jmp	.label_178
.label_175:
	mov	rdx,  qword ptr [word ptr [rip + wptr]]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
.label_178:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40321b
	.globl sub_40321b
	.type sub_40321b, @function
sub_40321b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403220

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
	je	.label_183
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_181
	jmp	.label_182
.label_183:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_182
.label_181:
	mov	eax, 1
	test	bpl, bpl
	je	.label_182
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
.label_182:
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
	#Procedure 0x4032a8
	.globl sub_4032a8
	.type sub_4032a8, @function
sub_4032a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032b0

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
	je	.label_184
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_186
	jmp	.label_185
.label_184:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_185
.label_186:
	mov	eax, 1
	test	bpl, bpl
	je	.label_185
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
.label_185:
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
	#Procedure 0x403329
	.globl sub_403329
	.type sub_403329, @function
sub_403329:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403330

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
	je	.label_189
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_188
	jmp	.label_187
.label_189:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_187
.label_188:
	mov	eax, 1
	test	bpl, bpl
	je	.label_187
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
.label_187:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403393
	.globl sub_403393
	.type sub_403393, @function
sub_403393:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

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
	je	.label_192
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_190
	jmp	.label_191
.label_192:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_191
.label_190:
	mov	eax, 1
	test	bpl, bpl
	je	.label_191
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_191:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033ff
	.globl sub_4033ff
	.type sub_4033ff, @function
sub_4033ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403400

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
	je	.label_193
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_195
	jmp	.label_194
.label_193:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_194
.label_195:
	mov	eax, 1
	test	bpl, bpl
	je	.label_194
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_194:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403449
	.globl sub_403449
	.type sub_403449, @function
sub_403449:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403450

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
	je	.label_198
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_197
	jmp	.label_196
.label_198:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_196
.label_197:
	mov	eax, 1
	test	bpl, bpl
	je	.label_196
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_196:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403495
	.globl sub_403495
	.type sub_403495, @function
sub_403495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034a0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_201
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_200
	jmp	.label_199
.label_201:
	mov	eax, 1
	test	cl, cl
	je	.label_199
.label_200:
	xor	eax, eax
.label_199:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034cf
	.globl sub_4034cf
	.type sub_4034cf, @function
sub_4034cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4034d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_202
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_202:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4034f6
	.globl sub_4034f6
	.type sub_4034f6, @function
sub_4034f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_203
	test	rbx, rbx
	jne	.label_203
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_203:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_205
	test	rax, rax
	je	.label_204
.label_205:
	pop	rbx
	ret	
.label_204:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403530
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40353a
	.globl sub_40353a
	.type sub_40353a, @function
sub_40353a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403540

	.globl same_para
	.type same_para, @function
same_para:
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [rip + prefix_indent]]
	jne	.label_206
	add	eax,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	dword ptr [dword ptr [rip + in_column]],  eax
	setge	cl
	cmp	edi, 0xa
	setne	dl
	cmp	edi, -1
	setne	al
	and	al, dl
	and	al, cl
	ret	
.label_206:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403571
	.globl sub_403571
	.type sub_403571, @function
sub_403571:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403580

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
.label_215:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_218
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_224]]
.label_499:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_232
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_237
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_500:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_248
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_248
	xor	r14d, r14d
.label_260:
	cmp	r14, r11
	jae	.label_258
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_258:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_260
.label_248:
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
	jmp	.label_275
.label_492:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_275
.label_495:
	mov	al, 1
.label_493:
	mov	r12b, 1
.label_496:
	test	r12b, 1
	mov	cl, 1
	je	.label_279
	mov	ecx, eax
.label_279:
	mov	al, cl
.label_494:
	test	r12b, 1
	jne	.label_281
	test	r11, r11
	je	.label_283
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_283:
	mov	r14d, 1
	jmp	.label_287
.label_281:
	xor	r14d, r14d
.label_287:
	mov	ecx, OFFSET FLAT:label_237
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_275
.label_497:
	test	r12b, 1
	jne	.label_293
	test	r11, r11
	je	.label_244
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_244:
	mov	r14d, 1
	jmp	.label_263
.label_498:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_300
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_275
.label_293:
	xor	r14d, r14d
.label_263:
	mov	eax, OFFSET FLAT:label_300
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_275:
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
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x40385c
	.globl sub_40385c
	.type sub_40385c, @function
sub_40385c:

	nop	dword ptr [rax]
.label_259:
	inc	rsi
.label_270:
	cmp	rbp, -1
	je	.label_236
	cmp	rsi, rbp
	jne	.label_239
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x403873
	.globl sub_403873
	.type sub_403873, @function
sub_403873:

	nop	word ptr cs:[rax + rax]
.label_236:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_242
.label_239:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_251
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_253
	cmp	rbp, -1
	jne	.label_253
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
.label_253:
	cmp	rbx, rbp
	jbe	.label_266
.label_251:
	xor	r8d, r8d
.label_226:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_268
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_273]]
.label_510:
	test	rsi, rsi
	jne	.label_254
	jmp	.label_276
	.section	.text
	.align	16
	#Procedure 0x40390e
	.globl sub_40390e
	.type sub_40390e, @function
sub_40390e:

	nop	
.label_266:
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
	jne	.label_285
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_226
	jmp	.label_231
.label_285:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_226
.label_514:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_302
	test	rsi, rsi
	jne	.label_303
	cmp	rbp, 1
	je	.label_276
	xor	r13d, r13d
	jmp	.label_208
.label_503:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_308
	cmp	byte ptr [rsp + 7], 0
	jne	.label_235
	cmp	r12d, 2
	jne	.label_221
	mov	eax, r9d
	and	al, 1
	jne	.label_221
	cmp	r14, r11
	jae	.label_310
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_310:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_313
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_318
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_318:
	add	r14, 3
	mov	r9b, 1
.label_221:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_238
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_238:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_217
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_217
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_217
	cmp	r14, r11
	jae	.label_233
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_233:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_301
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_301:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_208
.label_504:
	mov	bl, 0x62
	jmp	.label_245
.label_505:
	mov	cl, 0x74
	jmp	.label_250
.label_506:
	mov	bl, 0x76
	jmp	.label_245
.label_507:
	mov	bl, 0x66
	jmp	.label_245
.label_508:
	mov	cl, 0x72
	jmp	.label_250
.label_511:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_257
	cmp	byte ptr [rsp + 7], 0
	jne	.label_235
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
	jae	.label_261
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_261:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_274
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_274:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_277
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	add	r14, 3
	xor	r9d, r9d
.label_257:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_208
.label_512:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_284
	cmp	r12d, 2
	jne	.label_254
	cmp	byte ptr [rsp + 7], 0
	je	.label_254
	jmp	.label_235
.label_513:
	cmp	r12d, 2
	jne	.label_291
	cmp	byte ptr [rsp + 7], 0
	jne	.label_235
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_247
.label_268:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_297
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
.label_216:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_309
	test	r8b, r8b
	je	.label_309
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_208
.label_302:
	test	rsi, rsi
	jne	.label_214
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_214
.label_276:
	mov	dl, 1
.label_509:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_235
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_208:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_227
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_229
	jmp	.label_234
	.section	.text
	.align	16
	#Procedure 0x403c54
	.globl sub_403c54
	.type sub_403c54, @function
sub_403c54:

	nop	word ptr cs:[rax + rax]
.label_227:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_234
.label_229:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_241
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_247
	jmp	.label_255
	.section	.text
	.align	16
	#Procedure 0x403c9d
	.globl sub_403c9d
	.type sub_403c9d, @function
sub_403c9d:

	nop	dword ptr [rax]
.label_234:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_255
	jmp	.label_247
.label_241:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_255
.label_308:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_259
	xor	r15d, r15d
	jmp	.label_254
.label_291:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_250
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_247
.label_250:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_235
.label_245:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_208
	nop	word ptr cs:[rax + rax]
.label_255:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_235
	cmp	r12d, 2
	jne	.label_262
	mov	eax, r9d
	and	al, 1
	jne	.label_262
	cmp	r14, r11
	jae	.label_282
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_282:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_316
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_316:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_289
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_289:
	add	r14, 3
	mov	r9b, 1
.label_262:
	cmp	r14, r11
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_292:
	inc	r14
	jmp	.label_294
.label_297:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_299
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_299:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_295:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_312
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_315
	cmp	rbp, -2
	je	.label_320
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_210
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_209:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_298
	bt	rsi, rdx
	jb	.label_231
.label_298:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_209
.label_210:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_240
	xor	r13d, r13d
.label_240:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_295
	jmp	.label_216
.label_217:
	xor	r13d, r13d
	jmp	.label_208
.label_214:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_208
.label_284:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_254
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_254
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_254
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_269
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_321
	cmp	byte ptr [rsp + 7], 0
	jne	.label_235
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_319
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_319:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_267
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_267:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_286
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_286:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_288
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_288:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_208
.label_254:
	xor	eax, eax
.label_303:
	xor	r13d, r13d
	jmp	.label_208
.label_309:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_296
	.section	.text
	.align	16
	#Procedure 0x403f83
	.globl sub_403f83
	.type sub_403f83, @function
sub_403f83:

	nop	word ptr cs:[rax + rax]
.label_256:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_296:
	test	r8b, r8b
	je	.label_304
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_305
	cmp	r14, r11
	jae	.label_306
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_306:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x403fcc
	.globl sub_403fcc
	.type sub_403fcc, @function
sub_403fcc:

	nop	dword ptr [rax]
.label_304:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_231
	cmp	r12d, 2
	jne	.label_311
	mov	eax, r9d
	and	al, 1
	jne	.label_311
	cmp	r14, r11
	jae	.label_314
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_314:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_317
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_317:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_212
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_212:
	add	r14, 3
	mov	r9b, 1
.label_311:
	cmp	r14, r11
	jae	.label_265
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_265:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_220
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_220:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_230
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_230:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_305:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_247
	test	r9b, 1
	je	.label_249
	mov	ebx, eax
	and	bl, 1
	jne	.label_249
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_252
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_252:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_211
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_211:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_249:
	cmp	r14, r11
	jae	.label_256
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_256
	.section	.text
	.align	16
	#Procedure 0x4040d3
	.globl sub_4040d3
	.type sub_4040d3, @function
sub_4040d3:

	nop	word ptr cs:[rax + rax]
.label_247:
	test	r9b, 1
	je	.label_271
	and	al, 1
	jne	.label_271
	cmp	r14, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_272:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_223
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_223:
	add	r14, 2
	xor	r9d, r9d
.label_271:
	mov	ebx, r15d
.label_294:
	cmp	r14, r11
	jae	.label_278
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_278:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_259
.label_315:
	xor	r13d, r13d
.label_312:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_216
.label_320:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_290
	mov	rsi, qword ptr [rsp + 0x50]
.label_246:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_225
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_246
	xor	r13d, r13d
	jmp	.label_216
.label_290:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_216
.label_225:
	xor	r13d, r13d
	jmp	.label_216
.label_269:
	xor	r13d, r13d
	jmp	.label_208
.label_321:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_208
	.section	.text
	.align	16
	#Procedure 0x4041a8
	.globl sub_4041a8
	.type sub_4041a8, @function
sub_4041a8:

	nop	dword ptr [rax + rax]
.label_242:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_307
	or	dl, al
	je	.label_231
.label_307:
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
	jne	.label_207
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_213
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_215
.label_213:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_219
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_222
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_222
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_243:
	cmp	r14, r11
	jae	.label_228
	mov	byte ptr [rcx + r14], al
.label_228:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_243
	jmp	.label_222
.label_235:
	mov	qword ptr [rsp + 0x20], rbp
.label_231:
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
.label_280:
	mov	r14, rax
.label_264:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_207:
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
	jmp	.label_280
.label_219:
	mov	rcx, qword ptr [rsp + 8]
.label_222:
	cmp	r14, r11
	jae	.label_264
	mov	byte ptr [rcx + r14], 0
	jmp	.label_264
.label_218:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40433c
	.globl sub_40433c
	.type sub_40433c, @function
sub_40433c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404340

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
	#Procedure 0x404377
	.globl sub_404377
	.type sub_404377, @function
sub_404377:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

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
	jne	.label_329
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
	je	.label_323
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_324
	mov	eax, OFFSET FLAT:label_325
	jmp	.label_326
.label_323:
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
	je	.label_322
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_327
	mov	eax, OFFSET FLAT:label_328
	jmp	.label_326
.label_322:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_300
	mov	eax, OFFSET FLAT:label_237
.label_326:
	cmove	rax, rcx
.label_329:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40443d
	.globl sub_40443d
	.type sub_40443d, @function
sub_40443d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404440

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40444e
	.globl sub_40444e
	.type sub_40444e, @function
sub_40444e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404450

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
	js	.label_333
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_336
	cmp	r12d, 0x7fffffff
	je	.label_331
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
	jne	.label_334
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_334:
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
.label_336:
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
	jbe	.label_332
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_335
.label_332:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_330
	mov	rdi, r14
	call	free
.label_330:
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
.label_335:
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
.label_333:
	call	abort
.label_331:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40460d
	.globl sub_40460d
	.type sub_40460d, @function
sub_40460d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404610

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_343
	nop	
.label_342:
	mov	edi, OFFSET FLAT:label_144
	call	strcmp
	test	eax, eax
	je	.label_340
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_342
.label_340:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_144
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	mov	ecx, OFFSET FLAT:label_41
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_337
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_337
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_337:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_144
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_41
	mov	ecx, OFFSET FLAT:label_144
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_346
	mov	ecx, OFFSET FLAT:label_132
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
	#Procedure 0x40472a
	.globl sub_40472a
	.type sub_40472a, @function
sub_40472a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404730
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40473a
	.globl sub_40473a
	.type sub_40473a, @function
sub_40473a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404740
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40474a
	.globl sub_40474a
	.type sub_40474a, @function
sub_40474a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404750

	.globl line_cost
	.type line_cost, @function
line_cost:
	mov	rcx,  qword ptr [word ptr [rip + word_limit]]
	xor	eax, eax
	cmp	rcx, rdi
	je	.label_347
	movsxd	rax,  dword ptr [dword ptr [rip + goal_width]]
	movsxd	rdx, esi
	sub	rax, rdx
	add	rax, rax
	lea	rax, [rax + rax*4]
	imul	rax, rax
	cmp	qword ptr [rdi + 0x20], rcx
	je	.label_347
	movsxd	rcx, dword ptr [rdi + 0x14]
	sub	rdx, rcx
	add	rdx, rdx
	lea	rcx, [rdx + rdx*4]
	imul	rcx, rcx
	shr	rcx, 1
	add	rax, rcx
.label_347:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404795
	.globl sub_404795
	.type sub_404795, @function
sub_404795:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0

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
	#Procedure 0x4047e9
	.globl sub_4047e9
	.type sub_4047e9, @function
sub_4047e9:

	nop	dword ptr [rax]
.label_349:
	mov	ecx, 1
.label_348:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x404800
	.globl sub_404800
	.type sub_404800, @function
sub_404800:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404805

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_349
	test	rsi, rsi
	mov	ecx, 1
	je	.label_348
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_348
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404840

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_350
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_351:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_351
.label_350:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40487e
	.globl sub_40487e
	.type sub_40487e, @function
sub_40487e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404880
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_352
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_354]]
.label_352:
	xor	eax, eax
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x404895
	.globl sub_404895
	.type sub_404895, @function
sub_404895:

	nop	word ptr cs:[rax + rax]
.label_353:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048a0

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
	#Procedure 0x4048cd
	.globl sub_4048cd
	.type sub_4048cd, @function
sub_4048cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048d0
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
	#Procedure 0x4048e3
	.globl sub_4048e3
	.type sub_4048e3, @function
sub_4048e3:

	nop	word ptr cs:[rax + rax]
.label_355:
	add	rcx, -0x640
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048fb
	.globl sub_4048fb
	.type sub_4048fb, @function
sub_4048fb:

	nop	word ptr cs:[rax + rax]
.label_359:
	test	al, 8
	mov	eax, 0x59164
	mov	ecx, 0x960
	cmove	rcx, rax
.label_358:
	mov	al, byte ptr [rdi + 0x10]
	test	al, 1
	jne	.label_355
	test	al, 8
	je	.label_356
	movsxd	rsi, dword ptr [rdi + 8]
	add	rsi, 2
	mov	eax, 0x57e4
	xor	edx, edx
	idiv	rsi
	add	rcx, rax
.label_356:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404939

	.globl base_cost
	.type base_cost, @function
base_cost:
	mov	eax, OFFSET FLAT:unused_word_type
	mov	ecx, 0x1324
	cmp	rdi, rax
	jbe	.label_358
	mov	al, byte ptr [rdi - 0x18]
	test	al, 2
	jne	.label_359
	mov	ecx, 0xce4
	test	al, 4
	jne	.label_358
	mov	ecx, 0x1324
	mov	eax, OFFSET FLAT:label_357
	cmp	rdi, rax
	jbe	.label_358
	mov	ecx, 0x1324
	test	byte ptr [rdi - 0x40], 8
	je	.label_358
	movsxd	rcx, dword ptr [rdi - 0x20]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	idiv	rcx
	mov	rcx, rax
	add	rcx, 0x1324
	jmp	.label_358
	.section	.text
	.align	16
	#Procedure 0x404990

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
	#Procedure 0x4049c9
	.globl sub_4049c9
	.type sub_4049c9, @function
sub_4049c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0

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
	#Procedure 0x4049e1
	.globl sub_4049e1
	.type sub_4049e1, @function
sub_4049e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0
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
	#Procedure 0x404a04
	.globl sub_404a04
	.type sub_404a04, @function
sub_404a04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a10
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
	#Procedure 0x404a1f
	.globl sub_404a1f
	.type sub_404a1f, @function
sub_404a1f:

	nop	
.label_360:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404a25
	.globl sub_404a25
	.type sub_404a25, @function
sub_404a25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a2f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_360
	call	rpl_calloc
	test	rax, rax
	je	.label_360
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a50

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_132
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_361
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a75
	.globl sub_404a75
	.type sub_404a75, @function
sub_404a75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a80

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x404a85
	.globl sub_404a85
	.type sub_404a85, @function
sub_404a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a90
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_362
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_362:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404aa8
	.globl sub_404aa8
	.type sub_404aa8, @function
sub_404aa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x404aba
	.globl sub_404aba
	.type sub_404aba, @function
sub_404aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ac0

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
	je	.label_363
	mov	qword ptr [rax], rbx
.label_363:
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
	#Procedure 0x404bac
	.globl sub_404bac
	.type sub_404bac, @function
sub_404bac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_368
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_368:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
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
	#Procedure 0x404cd5
	.globl sub_404cd5
	.type sub_404cd5, @function
sub_404cd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_372:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_372
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404d01
	.globl sub_404d01
	.type sub_404d01, @function
sub_404d01:

	nop	word ptr cs:[rax + rax]
.label_373:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d13
	.globl sub_404d13
	.type sub_404d13, @function
sub_404d13:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404d15
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_373
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d30

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_374
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_374:
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
	#Procedure 0x404db3
	.globl sub_404db3
	.type sub_404db3, @function
sub_404db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_383
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_378:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_378
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_377
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_384
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_389
	cmp	eax, 0x22
	jne	.label_377
	mov	r12d, 1
.label_389:
	test	rbp, rbp
	jne	.label_392
	jmp	.label_380
.label_384:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_377
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_377
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_377
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_392:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_380
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_382
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_388
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_388
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_375
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_379
	cmp	ecx, 0x44
	je	.label_379
	cmp	ecx, 0x69
	jne	.label_375
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_375
.label_379:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_375
.label_388:
	mov	rsi, r14
.label_375:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_382
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_390]]
.label_468:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_376
.label_382:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_391
.label_469:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_376
.label_470:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_376
.label_472:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_376
.label_466:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_381
.label_467:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_376
.label_471:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_376
.label_473:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_376
.label_474:
	lea	rdi, [rsp]
	mov	edx, 7
.label_376:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_381:
	mov	rsi, r14
.label_476:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_380:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_391:
	mov	r15d, r12d
.label_377:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_475:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_381
.label_477:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_381
.label_383:
	mov	edi, OFFSET FLAT:label_385
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_387
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405062
	.globl sub_405062
	.type sub_405062, @function
sub_405062:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070

	.globl get_space
	.type get_space, @function
get_space:
	push	rbx
	mov	eax, esi
	mov	rbx, rdi
	jmp	.label_393
	.section	.text
	.align	16
	#Procedure 0x405078
	.globl sub_405078
	.type sub_405078, @function
sub_405078:

	nop	dword ptr [rax + rax]
.label_394:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rdi, rbx
	call	getc_unlocked
.label_393:
	cmp	eax, 9
	je	.label_396
	cmp	eax, 0x20
	jne	.label_395
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	jmp	.label_394
	.section	.text
	.align	16
	#Procedure 0x4050a2
	.globl sub_4050a2
	.type sub_4050a2, @function
sub_4050a2:

	nop	word ptr cs:[rax + rax]
.label_396:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	jmp	.label_394
.label_395:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050d1
	.globl sub_4050d1
	.type sub_4050d1, @function
sub_4050d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0

	.globl put_space
	.type put_space, @function
put_space:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	add	ebx, eax
	cmp	byte ptr [byte ptr [rip + tabs]],  1
	jne	.label_397
	mov	ebp, ebx
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, ebx
	and	ebp, 0xfffffff8
	lea	ecx, [rax + 1]
	cmp	ecx, ebp
	jge	.label_397
	cmp	eax, ebp
	jge	.label_397
	nop	
.label_399:
	mov	edi, 9
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	add	ecx, 8
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
	cmp	ecx, ebp
	jl	.label_399
.label_397:
	cmp	dword ptr [dword ptr [rip + out_column]],  ebx
	jge	.label_400
	nop	word ptr cs:[rax + rax]
.label_398:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, ebx
	jl	.label_398
.label_400:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405173
	.globl sub_405173
	.type sub_405173, @function
sub_405173:

	nop	word ptr cs:[rax + rax]
.label_402:
	cmp	edi, 0x7f
	je	.label_401
	xor	eax, eax
	jmp	.label_401
	.section	.text
	.align	16
	#Procedure 0x405189
	.globl sub_405189
	.type sub_405189, @function
sub_405189:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405198
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_402
.label_401:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051a0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051aa
	.globl sub_4051aa
	.type sub_4051aa, @function
sub_4051aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051b0
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
	#Procedure 0x4051c6
	.globl sub_4051c6
	.type sub_4051c6, @function
sub_4051c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0
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
	#Procedure 0x4051df
	.globl sub_4051df
	.type sub_4051df, @function
sub_4051df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4051e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051e8
	.globl sub_4051e8
	.type sub_4051e8, @function
sub_4051e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0

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
	mov	rcx,  qword ptr [word ptr [rip + label_403]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_405]]
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
	#Procedure 0x40525d
	.globl sub_40525d
	.type sub_40525d, @function
sub_40525d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405260

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40526d
	.globl sub_40526d
	.type sub_40526d, @function
sub_40526d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405270

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x405277
	.globl sub_405277
	.type sub_405277, @function
sub_405277:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405280

	.globl get_paragraph
	.type get_paragraph, @function
get_paragraph:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + last_line_length]],  0
	mov	esi,  dword ptr [dword ptr [rip + next_char]]
	jmp	.label_406
	.section	.text
	.align	16
	#Procedure 0x405299
	.globl sub_405299
	.type sub_405299, @function
sub_405299:

	nop	dword ptr [rax]
.label_415:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi, rbx
	call	get_prefix
	mov	esi, eax
.label_406:
	cmp	esi, -1
	je	.label_408
	cmp	esi, 0xa
	je	.label_408
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	jl	.label_408
	mov	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	add	ecx, eax
	cmp	dword ptr [dword ptr [rip + in_column]],  ecx
	jge	.label_409
	nop	dword ptr [rax]
.label_408:
	mov	rdi, rbx
	call	copy_rest
	cmp	eax, -1
	jne	.label_415
	mov	ebp, 0xffffffff
	xor	eax, eax
.label_414:
	mov	dword ptr [dword ptr [rip + next_char]],  ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_409:
	mov	dword ptr [dword ptr [rip + prefix_indent]],  eax
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + first_indent]],  eax
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
	mov	qword ptr [word ptr [rip + word_limit]], OFFSET FLAT:unused_word_type
	mov	rdi, rbx
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
	movzx	edi, al
	call	set_other_indent
	mov	al,  byte ptr [byte ptr [rip + split]]
	test	al, al
	jne	.label_407
	cmp	byte ptr [byte ptr [rip + crown]],  1
	jne	.label_412
	mov	edi, ebp
	call	same_para
	test	al, al
	je	.label_407
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	rdi, rbx
	mov	esi, ebp
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
	test	al, al
	je	.label_407
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_410
	jmp	.label_407
.label_412:
	mov	r14b,  byte ptr [byte ptr [rip + tagged]]
	mov	edi, ebp
	call	same_para
	test	r14b, r14b
	je	.label_420
	test	al, al
	je	.label_407
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	je	.label_407
.label_413:
	mov	rdi, rbx
	mov	esi, ebp
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
	test	al, al
	je	.label_407
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_413
	jmp	.label_407
.label_419:
	mov	rdi, rbx
	mov	esi, ebp
	call	get_line
	mov	ebp, eax
	mov	edi, ebp
	call	same_para
.label_420:
	test	al, al
	je	.label_407
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_419
.label_407:
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	jbe	.label_411
	or	byte ptr [rax - 0x18], 8
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	or	byte ptr [rax - 0x18], 2
	mov	al, 1
	jmp	.label_414
.label_411:
	mov	edi, OFFSET FLAT:label_416
	mov	esi, OFFSET FLAT:label_417
	mov	edx, 0x25e
	mov	ecx, OFFSET FLAT:label_418
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40544c
	.globl sub_40544c
	.type sub_40544c, @function
sub_40544c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405450

	.globl set_prefix
	.type set_prefix, @function
set_prefix:
	push	rbx
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	cmp	byte ptr [rbx], 0x20
	jne	.label_421
	mov	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	nop	dword ptr [rax]
.label_422:
	inc	eax
	cmp	byte ptr [rbx + 1], 0x20
	lea	rbx, [rbx + 1]
	je	.label_422
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  eax
.label_421:
	mov	qword ptr [word ptr [rip + prefix]],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  eax
	movsxd	rcx, eax
	add	rcx, rbx
	nop	dword ptr [rax]
.label_423:
	mov	rax, rcx
	cmp	rax, rbx
	jbe	.label_424
	lea	rcx, [rax - 1]
	cmp	byte ptr [rax - 1], 0x20
	je	.label_423
.label_424:
	mov	byte ptr [rax], 0
	sub	eax, ebx
	mov	dword ptr [dword ptr [rip + prefix_length]],  eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054bf
	.globl sub_4054bf
	.type sub_4054bf, @function
sub_4054bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4054c0
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
	#Procedure 0x4054d9
	.globl sub_4054d9
	.type sub_4054d9, @function
sub_4054d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4054e0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x4054e9
	.globl sub_4054e9
	.type sub_4054e9, @function
sub_4054e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0

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
	mov	rax,  qword ptr [word ptr [rip + label_403]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_405]]
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
	#Procedure 0x405558
	.globl sub_405558
	.type sub_405558, @function
sub_405558:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c5
	.globl sub_4055c5
	.type sub_4055c5, @function
sub_4055c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055d2
	.globl sub_4055d2
	.type sub_4055d2, @function
sub_4055d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f6
	.globl sub_4055f6
	.type sub_4055f6, @function
sub_4055f6:

	nop	word ptr cs:[rax + rax]
