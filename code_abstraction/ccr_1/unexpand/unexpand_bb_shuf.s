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

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40169a
	.globl sub_40169a
	.type sub_40169a, @function
sub_40169a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016a0
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
	#Procedure 0x4016b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4016b9
	.globl sub_4016b9
	.type sub_4016b9, @function
sub_4016b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016c0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4016ca
	.globl sub_4016ca
	.type sub_4016ca, @function
sub_4016ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016d0

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
	#Procedure 0x401707
	.globl sub_401707
	.type sub_401707, @function
sub_401707:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401710

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
	mov	r13, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_17
	call	setlocale
	mov	edi, OFFSET FLAT:label_22
	mov	esi, OFFSET FLAT:label_23
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_22
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	movabs	r12, 0x1999999999999999
	xor	ecx, ecx
	xor	ebx, ebx
.label_33:
	mov	r15b, cl
	jmp	.label_36
.label_11:
	mov	rdi, rbp
	call	add_tab_stop
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_36:
	mov	ecx, ebx
.label_28:
	mov	bl, cl
	jmp	.label_9
.label_27:
	mov	byte ptr [byte ptr [rip + convert_entire_line]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	parse_tab_stops
	nop	dword ptr [rax]
.label_9:
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_21
	cmp	eax, 0x61
	je	.label_24
	cmp	eax, 0x74
	jne	.label_26
	jmp	.label_27
.label_24:
	mov	byte ptr [byte ptr [rip + convert_entire_line]],  1
	jmp	.label_9
	.section	.text
	.align	16
	#Procedure 0x4017d2
	.globl sub_4017d2
	.type sub_4017d2, @function
sub_4017d2:

	nop	word ptr cs:[rax + rax]
.label_26:
	mov	cl, 1
	cmp	eax, 0x80
	je	.label_28
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x4017eb
	.globl sub_4017eb
	.type sub_4017eb, @function
sub_4017eb:

	nop	dword ptr [rax + rax]
.label_21:
	cmp	eax, 0x2b
	jle	.label_34
	cmp	eax, 0x2c
	jne	.label_35
	test	r15b, 1
	mov	r15d, 0
	je	.label_36
	jmp	.label_11
	.section	.text
	.align	16
	#Procedure 0x40180f
	.globl sub_40180f
	.type sub_40180f, @function
sub_40180f:

	nop	
.label_34:
	cmp	eax, -1
	je	.label_13
	cmp	eax, 0xffffff7d
	je	.label_14
	cmp	eax, 0xffffff7e
	jne	.label_10
	jmp	.label_16
.label_35:
	cmp	eax, 0x3f
	je	.label_18
.label_10:
	mov	ecx, r15d
	and	cl, 1
	mov	edx, 0
	cmove	rbp, rdx
	cmp	rbp, r12
	ja	.label_19
	test	cl, cl
	mov	cl, 1
	je	.label_20
	mov	cl, r15b
.label_20:
	lea	rdx, [rbp + rbp*4]
	cdqe	
	lea	rax, [rax + rdx*2 - 0x30]
	cmp	rax, rbp
	mov	rbp, rax
	jae	.label_33
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_13:
	test	bl, bl
	je	.label_12
	mov	byte ptr [byte ptr [rip + convert_entire_line]],  0
.label_12:
	test	r15b, 1
	je	.label_15
	mov	rdi, rbp
	call	add_tab_stop
.label_15:
	call	finalize_tab_stops
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	xor	edi, edi
	cmp	eax, r14d
	lea	rax, [r13 + rax*8]
	cmovl	rdi, rax
	call	set_file_list
	call	unexpand
	call	cleanup_file_list_stdin
	mov	eax,  dword ptr [dword ptr [rip + exit_status]]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_14:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_29
	mov	edx, OFFSET FLAT:label_30
	mov	r8d, OFFSET FLAT:label_31
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_16:
	xor	edi, edi
	call	usage
.label_18:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x401926
	.globl sub_401926
	.type sub_401926, @function
sub_401926:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_37:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_37
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401951
	.globl sub_401951
	.type sub_401951, @function
sub_401951:

	nop	word ptr cs:[rax + rax]
.label_38:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401963
	.globl sub_401963
	.type sub_401963, @function
sub_401963:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401965
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_38
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401980

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_39
	pop	rcx
	ret	
.label_39:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401992
	.globl sub_401992
	.type sub_401992, @function
sub_401992:

	nop	word ptr cs:[rax + rax]
.label_40:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_42:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_43
	inc	r9
	cmp	r9, 0xa
	jb	.label_41
.label_43:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
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

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_41:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_40
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_42
	.section	.text
	.align	16
	#Procedure 0x4019f9
	.globl sub_4019f9
	.type sub_4019f9, @function
sub_4019f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a00

	.globl set_extend_size
	.type set_extend_size, @function
set_extend_size:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	qword ptr [word ptr [rip + extend_size]],  0
	je	.label_44
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_44:
	mov	qword ptr [word ptr [rip + extend_size]],  r14
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a48
	.globl sub_401a48
	.type sub_401a48, @function
sub_401a48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a50

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
	#Procedure 0x401a7d
	.globl sub_401a7d
	.type sub_401a7d, @function
sub_401a7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a80
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
	#Procedure 0x401a93
	.globl sub_401a93
	.type sub_401a93, @function
sub_401a93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401aa0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aaa
	.globl sub_401aaa
	.type sub_401aaa, @function
sub_401aaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aba
	.globl sub_401aba
	.type sub_401aba, @function
sub_401aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ac0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_50
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_46
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_46
.label_50:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_51
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_51:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_47:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_47
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_55:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b85
	.globl sub_401b85
	.type sub_401b85, @function
sub_401b85:

	nop	dword ptr [rax]
.label_56:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b91

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_53
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_56
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_54
.label_53:
	test	rcx, rcx
	jne	.label_57
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_57:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_55
.label_54:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x401c00

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x401c05
	.globl sub_401c05
	.type sub_401c05, @function
sub_401c05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c10

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_58
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_58:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c2a
	.globl sub_401c2a
	.type sub_401c2a, @function
sub_401c2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30
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
	#Procedure 0x401c3d
	.globl sub_401c3d
	.type sub_401c3d, @function
sub_401c3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c40
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
	#Procedure 0x401cb2
	.globl sub_401cb2
	.type sub_401cb2, @function
sub_401cb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cc0

	.globl set_increment_size
	.type set_increment_size, @function
set_increment_size:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	qword ptr [word ptr [rip + increment_size]],  0
	je	.label_59
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_59:
	mov	qword ptr [word ptr [rip + increment_size]],  r14
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d08
	.globl sub_401d08
	.type sub_401d08, @function
sub_401d08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d10
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
	#Procedure 0x401d1f
	.globl sub_401d1f
	.type sub_401d1f, @function
sub_401d1f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_61
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_64:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_64
.label_61:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_65
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_63]], OFFSET FLAT:slot0
.label_65:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_62
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_62:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401db1
	.globl sub_401db1
	.type sub_401db1, @function
sub_401db1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0

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
	je	.label_66
	cmp	r15, -2
	jb	.label_66
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_66
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_66:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e16
	.globl sub_401e16
	.type sub_401e16, @function
sub_401e16:

	nop	word ptr cs:[rax + rax]
.label_67:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e26
	.globl sub_401e26
	.type sub_401e26, @function
sub_401e26:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e2b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_67
	test	rdx, rdx
	je	.label_67
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e50

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
	.align	16
	#Procedure 0x401e6b
	.globl sub_401e6b
	.type sub_401e6b, @function
sub_401e6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e70

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
	jne	.label_68
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_68
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_69
.label_68:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_69:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_70
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_70:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ede
	.globl sub_401ede
	.type sub_401ede, @function
sub_401ede:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ee0

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
	.align	16
	#Procedure 0x401f32
	.globl sub_401f32
	.type sub_401f32, @function
sub_401f32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f40

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_72
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_tab_list_info
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_72:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
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
	#Procedure 0x40204a
	.globl sub_40204a
	.type sub_40204a, @function
sub_40204a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402050

	.globl get_next_tab_column
	.type get_next_tab_column, @function
get_next_tab_column:
	mov	byte ptr [rdx], 0
	mov	rcx,  qword ptr [word ptr [rip + tab_size]]
	test	rcx, rcx
	jne	.label_83
	mov	rax, qword ptr [rsi]
	mov	r8,  qword ptr [word ptr [rip + first_free_tab]]
	cmp	rax, r8
	jae	.label_85
	mov	r9,  qword ptr [word ptr [rip + tab_list]]
	mov	r8,  qword ptr [word ptr [rip + first_free_tab]]
	nop	dword ptr [rax]
.label_80:
	mov	rcx, qword ptr [r9 + rax*8]
	cmp	rcx, rdi
	ja	.label_81
	inc	rax
	mov	qword ptr [rsi], rax
	cmp	rax, r8
	jb	.label_80
.label_85:
	mov	rcx,  qword ptr [word ptr [rip + extend_size]]
	test	rcx, rcx
	je	.label_84
.label_83:
	xor	edx, edx
	mov	rax, rdi
.label_82:
	div	rcx
	add	rcx, rdi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
.label_79:
	mov	byte ptr [rdx], 1
	xor	ecx, ecx
.label_81:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020bb
	.globl sub_4020bb
	.type sub_4020bb, @function
sub_4020bb:

	nop	word ptr [rax + rax]
.label_84:
	mov	rcx,  qword ptr [word ptr [rip + increment_size]]
	test	rcx, rcx
	je	.label_79
	mov	rdx,  qword ptr [word ptr [rip + tab_list]]
	mov	rax, rdi
	sub	rax, qword ptr [rdx + r8*8 - 8]
	xor	edx, edx
	jmp	.label_82
	.section	.text
	.align	16
	#Procedure 0x4020e0

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
	#Procedure 0x4020f7
	.globl sub_4020f7
	.type sub_4020f7, @function
sub_4020f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402100
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_86
	call	rpl_calloc
	test	rax, rax
	je	.label_86
	pop	rcx
	ret	
.label_86:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402126
	.globl sub_402126
	.type sub_402126, @function
sub_402126:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402130
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
	#Procedure 0x40213d
	.globl sub_40213d
	.type sub_40213d, @function
sub_40213d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402140
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
	#Procedure 0x40214f
	.globl sub_40214f
	.type sub_40214f, @function
sub_40214f:

	nop	
.label_88:
	mov	qword ptr [word ptr [rip + tab_size]],  0
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40215d
	.globl sub_40215d
	.type sub_40215d, @function
sub_40215d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402168

	.globl finalize_tab_stops
	.type finalize_tab_stops, @function
finalize_tab_stops:
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + tab_list]]
	mov	rsi,  qword ptr [word ptr [rip + first_free_tab]]
	call	validate_tab_stops
	mov	rax,  qword ptr [word ptr [rip + first_free_tab]]
	test	rax, rax
	je	.label_89
	cmp	rax, 1
	jne	.label_88
	mov	rax,  qword ptr [word ptr [rip + increment_size]]
	or	rax,  qword ptr [word ptr [rip + extend_size]]
	jne	.label_88
	mov	rax,  qword ptr [word ptr [rip + tab_list]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [word ptr [rip + tab_size]],  rax
	pop	rax
	ret	
.label_89:
	mov	rax,  qword ptr [word ptr [rip + extend_size]]
	test	rax, rax
	jne	.label_87
	mov	rcx,  qword ptr [word ptr [rip + increment_size]]
	test	rcx, rcx
	mov	eax, 8
	cmovne	rax, rcx
.label_87:
	mov	qword ptr [word ptr [rip + max_column_width]],  rax
	mov	qword ptr [word ptr [rip + tab_size]],  rax
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021e0

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
	#Procedure 0x402229
	.globl sub_402229
	.type sub_402229, @function
sub_402229:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402230

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40223a
	.globl sub_40223a
	.type sub_40223a, @function
sub_40223a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402240
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40224d
	.globl sub_40224d
	.type sub_40224d, @function
sub_40224d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402250
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
	#Procedure 0x402260

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
	#Procedure 0x402299
	.globl sub_402299
	.type sub_402299, @function
sub_402299:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0
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
	#Procedure 0x4022b1
	.globl sub_4022b1
	.type sub_4022b1, @function
sub_4022b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022c0
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
	#Procedure 0x4022d4
	.globl sub_4022d4
	.type sub_4022d4, @function
sub_4022d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022e0
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
	#Procedure 0x4022f6
	.globl sub_4022f6
	.type sub_4022f6, @function
sub_4022f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402300
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40230a
	.globl sub_40230a
	.type sub_40230a, @function
sub_40230a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402310

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
	je	.label_100
	mov	edx, OFFSET FLAT:label_105
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_92
.label_100:
	mov	edx, OFFSET FLAT:label_94
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
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
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_101
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_102]]
.label_500:
	add	rsp, 8
	jmp	.label_93
.label_101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
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
	jmp	.label_93
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
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
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
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
.label_503:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
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
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
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
	jmp	.label_93
.label_505:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
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
	jmp	.label_93
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
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
	jmp	.label_93
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
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
	jmp	.label_93
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
	jmp	.label_93
.label_508:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
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
.label_93:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402668
	.globl sub_402668
	.type sub_402668, @function
sub_402668:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_110
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_113
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4026e4
	.globl sub_4026e4
	.type sub_4026e4, @function
sub_4026e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
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

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_114
	nop	
.label_123:
	mov	edi, OFFSET FLAT:label_29
	call	strcmp
	test	eax, eax
	je	.label_121
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_123
.label_121:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_29
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_113
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_115
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_115
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_29
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_113
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_119
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
	.align	16
	#Procedure 0x40281a
	.globl sub_40281a
	.type sub_40281a, @function
sub_40281a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402820
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40282a
	.globl sub_40282a
	.type sub_40282a, @function
sub_40282a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402830
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
	#Procedure 0x402849
	.globl sub_402849
	.type sub_402849, @function
sub_402849:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402850

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x402859
	.globl sub_402859
	.type sub_402859, @function
sub_402859:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402860

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
	mov	rax,  qword ptr [word ptr [rip + label_124]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_125]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_126]]
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
	#Procedure 0x4028c8
	.globl sub_4028c8
	.type sub_4028c8, @function
sub_4028c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028d0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_127
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_127:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028e8
	.globl sub_4028e8
	.type sub_4028e8, @function
sub_4028e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028f3
	.globl sub_4028f3
	.type sub_4028f3, @function
sub_4028f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402900

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
.label_129:
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
	#Procedure 0x402988
	.globl sub_402988
	.type sub_402988, @function
sub_402988:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990

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
.label_132:
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
	#Procedure 0x402a09
	.globl sub_402a09
	.type sub_402a09, @function
sub_402a09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a10

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
.label_134:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a73
	.globl sub_402a73
	.type sub_402a73, @function
sub_402a73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80

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
	je	.label_139
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_137
	jmp	.label_138
.label_139:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_138
.label_137:
	mov	eax, 1
	test	bpl, bpl
	je	.label_138
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_138:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402adf
	.globl sub_402adf
	.type sub_402adf, @function
sub_402adf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402ae0

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
	je	.label_140
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_142
	jmp	.label_141
.label_140:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_141
.label_142:
	mov	eax, 1
	test	bpl, bpl
	je	.label_141
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_141:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b29
	.globl sub_402b29
	.type sub_402b29, @function
sub_402b29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b30

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
	je	.label_145
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_144
	jmp	.label_143
.label_145:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_143
.label_144:
	mov	eax, 1
	test	bpl, bpl
	je	.label_143
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_143:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b75
	.globl sub_402b75
	.type sub_402b75, @function
sub_402b75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_148
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_147
	jmp	.label_146
.label_148:
	mov	eax, 1
	test	cl, cl
	je	.label_146
.label_147:
	xor	eax, eax
.label_146:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402baf
	.globl sub_402baf
	.type sub_402baf, @function
sub_402baf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402bb0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_149
.label_150:
	ret	
.label_149:
	cmp	edi, 0x7f
	je	.label_150
	xor	eax, eax
	jmp	.label_150
	.section	.text
	.align	16
	#Procedure 0x402bc1
	.globl sub_402bc1
	.type sub_402bc1, @function
sub_402bc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

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
	mov	eax, OFFSET FLAT:label_151
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bf5
	.globl sub_402bf5
	.type sub_402bf5, @function
sub_402bf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c08
	.globl sub_402c08
	.type sub_402c08, @function
sub_402c08:

	nop	dword ptr [rax + rax]
.label_153:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_152
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c34

	.globl cleanup_file_list_stdin
	.type cleanup_file_list_stdin, @function
cleanup_file_list_stdin:
	push	rax
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_154
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	jne	.label_153
.label_154:
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c50

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
	je	.label_156
	cmp	qword ptr [word ptr [rip + next_file.prev_file]],  0
	je	.label_161
	mov	rdi, rbx
	call	ferror_unlocked
	test	eax, eax
	je	.label_169
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + next_file.prev_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [dword ptr [rip + exit_status]],  1
.label_169:
	mov	rax,  qword ptr [word ptr [rip + next_file.prev_file]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_167
	cmp	byte ptr [rax + 1], 0
	je	.label_155
.label_167:
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_156
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + next_file.prev_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	dword ptr [dword ptr [rip + exit_status]],  1
	jmp	.label_156
.label_155:
	mov	rdi, rbx
	call	clearerr_unlocked
.label_156:
	mov	rax,  qword ptr [word ptr [rip + file_list]]
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + file_list]],  rcx
	mov	rbx, qword ptr [rax]
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_157
	xor	r14d, r14d
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x402d39
	.globl sub_402d39
	.type sub_402d39, @function
sub_402d39:

	nop	dword ptr [rax]
.label_168:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [dword ptr [rip + exit_status]],  1
	mov	rax,  qword ptr [word ptr [rip + file_list]]
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + file_list]],  rcx
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_165
	jmp	.label_157
.label_159:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	r15,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_158
	.section	.text
	.align	16
	#Procedure 0x402d9f
	.globl sub_402d9f
	.type sub_402d9f, @function
sub_402d9f:

	nop	
.label_165:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_160
	cmp	byte ptr [rbx + 1], 0
	je	.label_159
.label_160:
	mov	esi, OFFSET FLAT:label_166
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
.label_158:
	test	r15, r15
	je	.label_168
	mov	qword ptr [word ptr [rip + next_file.prev_file]],  rbx
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	r14, r15
.label_157:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_161:
	mov	edi, OFFSET FLAT:label_162
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 0x155
	mov	ecx, OFFSET FLAT:label_164
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402dfe
	.globl sub_402dfe
	.type sub_402dfe, @function
sub_402dfe:

	nop	
.label_171:
	mov	ecx, 1
.label_170:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402e10
	.globl sub_402e10
	.type sub_402e10, @function
sub_402e10:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e15

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_171
	test	rsi, rsi
	mov	ecx, 1
	je	.label_170
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_170
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e50

	.globl emit_tab_list_info
	.type emit_tab_list_info, @function
emit_tab_list_info:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402e92
	.globl sub_402e92
	.type sub_402e92, @function
sub_402e92:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x402eaa
	.globl sub_402eaa
	.type sub_402eaa, @function
sub_402eaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402eb0

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
	je	.label_174
	mov	qword ptr [rax], rbx
.label_174:
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
	#Procedure 0x402f9c
	.globl sub_402f9c
	.type sub_402f9c, @function
sub_402f9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fa8
	.globl sub_402fa8
	.type sub_402fa8, @function
sub_402fa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_175
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_175:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fce
	.globl sub_402fce
	.type sub_402fce, @function
sub_402fce:

	nop	
.label_178:
	xor	eax, eax
	jmp	.label_176
	.section	.text
	.align	16
	#Procedure 0x402fd4
	.globl sub_402fd4
	.type sub_402fd4, @function
sub_402fd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fde
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_178
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_177]]
.label_176:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ff0

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
	#Procedure 0x403026
	.globl sub_403026
	.type sub_403026, @function
sub_403026:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40303e
	.globl sub_40303e
	.type sub_40303e, @function
sub_40303e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403040

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
	js	.label_179
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_182
	cmp	r12d, 0x7fffffff
	je	.label_184
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
	jne	.label_180
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_180:
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
.label_182:
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
	jbe	.label_185
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_181
.label_185:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_183
	mov	rdi, r14
	call	free
.label_183:
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
.label_181:
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
.label_179:
	call	abort
.label_184:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4031fd
	.globl sub_4031fd
	.type sub_4031fd, @function
sub_4031fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403200
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
	#Procedure 0x403227
	.globl sub_403227
	.type sub_403227, @function
sub_403227:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403230
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_186
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_186:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403256
	.globl sub_403256
	.type sub_403256, @function
sub_403256:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403260

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_187
	test	rbx, rbx
	jne	.label_187
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_187:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_189
	test	rax, rax
	je	.label_188
.label_189:
	pop	rbx
	ret	
.label_188:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403290
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
	#Procedure 0x40329f
	.globl sub_40329f
	.type sub_40329f, @function
sub_40329f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4032a0

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
	je	.label_190
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_191
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_191
.label_190:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_191
	test	cl, cl
	jne	.label_191
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_191:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403306
	.globl sub_403306
	.type sub_403306, @function
sub_403306:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403310

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x403315
	.globl sub_403315
	.type sub_403315, @function
sub_403315:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403320

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403350

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_193
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_193:
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
	#Procedure 0x4033d3
	.globl sub_4033d3
	.type sub_4033d3, @function
sub_4033d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033e0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_194
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_194
.label_195:
	ret	
.label_194:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_195
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403406
	.globl sub_403406
	.type sub_403406, @function
sub_403406:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403410

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x403432
	.globl sub_403432
	.type sub_403432, @function
sub_403432:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440
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
	#Procedure 0x403473
	.globl sub_403473
	.type sub_403473, @function
sub_403473:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403480

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
	jmp	.label_197
	.section	.text
	.align	16
	#Procedure 0x4034b9
	.globl sub_4034b9
	.type sub_4034b9, @function
sub_4034b9:

	nop	dword ptr [rax]
.label_204:
	inc	r13
	mov	r15b, r14b
.label_197:
	movsx	ebx, byte ptr [r13]
	cmp	ebx, 0x2c
	je	.label_207
	test	bl, bl
	je	.label_213
	mov	edi, ebx
	call	to_uchar
	movzx	ebp, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 1
	jne	.label_207
	cmp	bl, 0x2b
	je	.label_219
	cmp	bl, 0x2f
	jne	.label_222
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	test	r15b, 1
	je	.label_199
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
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
.label_199:
	mov	dword ptr [rsp], 0
	mov	r14b, r15b
	jmp	.label_204
	.section	.text
	.align	16
	#Procedure 0x403555
	.globl sub_403555
	.type sub_403555, @function
sub_403555:

	nop	word ptr cs:[rax + rax]
.label_207:
	test	r15b, 1
	je	.label_215
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	jne	.label_216
	mov	eax, dword ptr [rsp]
	mov	rdi, r12
	test	al, 1
	jne	.label_218
	call	add_tab_stop
	jmp	.label_215
.label_216:
	mov	rdi, r12
	call	set_extend_size
	jmp	.label_200
.label_218:
	call	set_increment_size
.label_200:
	test	al, al
	je	.label_201
.label_215:
	xor	r14d, r14d
	jmp	.label_204
.label_219:
	mov	al, 1
	mov	dword ptr [rsp], eax
	test	r15b, 1
	je	.label_206
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
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
.label_206:
	mov	dword ptr [rsp + 4], 0
	mov	r14b, r15b
	jmp	.label_204
.label_222:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_217
	mov	eax, r15d
	and	al, 1
	mov	ecx, 0
	cmove	r12, rcx
	mov	r14b, 1
	je	.label_221
	mov	r14b, r15b
.label_221:
	test	al, al
	mov	rbp, qword ptr [rsp + 0x10]
	cmove	rbp, r13
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	mov	qword ptr [rsp + 0x10], rbp
	ja	.label_202
	lea	rax, [r12 + r12*4]
	movsxd	rcx, ebx
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	jae	.label_209
.label_202:
	mov	esi, OFFSET FLAT:label_211
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
	mov	esi, OFFSET FLAT:label_205
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
	jmp	.label_204
.label_209:
	mov	r12, rax
	jmp	.label_204
.label_213:
	mov	rbx, qword ptr [rsp + 8]
	and	r15b, bl
	test	r15b, 1
	je	.label_208
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	jne	.label_210
	mov	eax, dword ptr [rsp]
	mov	rdi, r12
	test	al, 1
	jne	.label_212
	call	add_tab_stop
	jmp	.label_208
.label_210:
	mov	rdi, r12
	call	set_extend_size
	jmp	.label_214
.label_212:
	call	set_increment_size
.label_214:
	mov	bl, al
.label_208:
	test	bl, 1
	je	.label_201
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
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
.label_201:
	mov	edi, 1
	call	exit
	.section	.text
	.align	16
	#Procedure 0x40372e
	.globl sub_40372e
	.type sub_40372e, @function
sub_40372e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403730

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_224
	cmp	byte ptr [rax], 0x43
	jne	.label_226
	cmp	byte ptr [rax + 1], 0
	je	.label_223
.label_226:
	mov	esi, OFFSET FLAT:label_225
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_224
.label_223:
	xor	ebx, ebx
.label_224:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403761
	.globl sub_403761
	.type sub_403761, @function
sub_403761:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_227
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_229
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_227
.label_229:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_227
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_228
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_228:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_227:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4037e7
	.globl sub_4037e7
	.type sub_4037e7, @function
sub_4037e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037f0

	.globl validate_tab_stops
	.type validate_tab_stops, @function
validate_tab_stops:
	push	rax
	test	rsi, rsi
	je	.label_237
	xor	eax, eax
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_236:
	mov	rcx, qword ptr [rdi + rax*8]
	test	rcx, rcx
	je	.label_230
	cmp	rcx, rdx
	jbe	.label_234
	inc	rax
	cmp	rax, rsi
	mov	rdx, rcx
	jb	.label_236
.label_237:
	cmp	qword ptr [word ptr [rip + increment_size]],  0
	je	.label_239
	mov	rax,  qword ptr [word ptr [rip + extend_size]]
	test	rax, rax
	jne	.label_233
.label_239:
	pop	rax
	ret	
.label_233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	jmp	.label_232
	.section	.text
	.align	16
	#Procedure 0x40383a
	.globl sub_40383a
	.type sub_40383a, @function
sub_40383a:

	nop	dword ptr [rax + rax]
.label_230:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	jmp	.label_232
.label_234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
.label_232:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	.section	.text
	.align	16
	#Procedure 0x403870

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
	je	.label_240
	mov	rax,  qword ptr [word ptr [rip + tab_list]]
	mov	rax, qword ptr [rax + rcx*8 - 8]
.label_240:
	xor	ebx, ebx
	mov	rcx, r14
	sub	rcx, rax
	cmovae	rbx, rcx
	mov	rax,  qword ptr [word ptr [rip + first_free_tab]]
	cmp	rax,  qword ptr [word ptr [rip + n_tabs_allocated]]
	jne	.label_241
	mov	rdi,  qword ptr [word ptr [rip + tab_list]]
	mov	esi, OFFSET FLAT:n_tabs_allocated
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + tab_list]],  rax
.label_241:
	mov	rax,  qword ptr [word ptr [rip + first_free_tab]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + first_free_tab]],  rcx
	mov	rcx,  qword ptr [word ptr [rip + tab_list]]
	mov	qword ptr [rcx + rax*8], r14
	cmp	qword ptr [word ptr [rip + max_column_width]],  rbx
	jae	.label_242
	mov	qword ptr [word ptr [rip + max_column_width]],  rbx
.label_242:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038ff
	.globl sub_4038ff
	.type sub_4038ff, @function
sub_4038ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403900

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
	jne	.label_252
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
	je	.label_249
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_250
	mov	eax, OFFSET FLAT:label_251
	jmp	.label_245
.label_248:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_246
	mov	eax, OFFSET FLAT:label_247
.label_245:
	cmove	rax, rcx
.label_252:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40397f
	.globl sub_40397f
	.type sub_40397f, @function
sub_40397f:

	nop	dword ptr [rax]
.label_249:
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
	je	.label_248
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_243
	mov	eax, OFFSET FLAT:label_244
	jmp	.label_245
	.section	.text
	.align	16
	#Procedure 0x4039c0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4039e2
	.globl sub_4039e2
	.type sub_4039e2, @function
sub_4039e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4039fa
	.globl sub_4039fa
	.type sub_4039fa, @function
sub_4039fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a00

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
	mov	rcx,  qword ptr [word ptr [rip + label_124]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_125]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_126]]
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
	#Procedure 0x403a6d
	.globl sub_403a6d
	.type sub_403a6d, @function
sub_403a6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403a7d
	.globl sub_403a7d
	.type sub_403a7d, @function
sub_403a7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x403a87
	.globl sub_403a87
	.type sub_403a87, @function
sub_403a87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a90
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_254
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_254:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ab3
	.globl sub_403ab3
	.type sub_403ab3, @function
sub_403ab3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ac0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_255
	test	rax, rax
	je	.label_256
.label_255:
	pop	rbx
	ret	
.label_256:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ada
	.globl sub_403ada
	.type sub_403ada, @function
sub_403ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ae0

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
	je	.label_257
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_259
	jmp	.label_258
.label_257:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_258
.label_259:
	mov	eax, 1
	test	bpl, bpl
	je	.label_258
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
.label_258:
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
	#Procedure 0x403b5d
	.globl sub_403b5d
	.type sub_403b5d, @function
sub_403b5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b60
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b6a
	.globl sub_403b6a
	.type sub_403b6a, @function
sub_403b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70
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
	#Procedure 0x403b83
	.globl sub_403b83
	.type sub_403b83, @function
sub_403b83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90

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
.label_269:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_271
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_275]]
.label_435:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_283
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_247
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_436:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_298
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_298
	xor	r14d, r14d
.label_313:
	cmp	r14, r11
	jae	.label_309
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_309:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_313
.label_298:
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
	jmp	.label_320
.label_428:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_320
.label_431:
	mov	al, 1
.label_429:
	mov	r12b, 1
.label_432:
	test	r12b, 1
	mov	cl, 1
	je	.label_332
	mov	ecx, eax
.label_332:
	mov	al, cl
.label_430:
	test	r12b, 1
	jne	.label_335
	test	r11, r11
	je	.label_338
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_338:
	mov	r14d, 1
	jmp	.label_342
.label_335:
	xor	r14d, r14d
.label_342:
	mov	ecx, OFFSET FLAT:label_247
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_320
.label_433:
	test	r12b, 1
	jne	.label_349
	test	r11, r11
	je	.label_317
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_317:
	mov	r14d, 1
	jmp	.label_361
.label_434:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_246
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_320
.label_349:
	xor	r14d, r14d
.label_361:
	mov	eax, OFFSET FLAT:label_246
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_320:
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
	jmp	.label_372
	.section	.text
	.align	16
	#Procedure 0x403e6c
	.globl sub_403e6c
	.type sub_403e6c, @function
sub_403e6c:

	nop	dword ptr [rax]
.label_311:
	inc	rsi
.label_372:
	cmp	rbp, -1
	je	.label_290
	cmp	rsi, rbp
	jne	.label_292
	jmp	.label_294
	.section	.text
	.align	16
	#Procedure 0x403e83
	.globl sub_403e83
	.type sub_403e83, @function
sub_403e83:

	nop	word ptr cs:[rax + rax]
.label_290:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_294
.label_292:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_302
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_307
	cmp	rbp, -1
	jne	.label_307
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
.label_307:
	cmp	rbx, rbp
	jbe	.label_319
.label_302:
	xor	r8d, r8d
.label_276:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_321
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_325]]
.label_445:
	test	rsi, rsi
	jne	.label_315
	jmp	.label_328
	.section	.text
	.align	16
	#Procedure 0x403f1e
	.globl sub_403f1e
	.type sub_403f1e, @function
sub_403f1e:

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
	je	.label_276
	jmp	.label_282
.label_340:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_276
.label_449:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_355
	test	rsi, rsi
	jne	.label_356
	cmp	rbp, 1
	je	.label_328
	xor	r13d, r13d
	jmp	.label_264
.label_438:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_301
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
	cmp	r12d, 2
	jne	.label_362
	mov	eax, r9d
	and	al, 1
	jne	.label_362
	cmp	r14, r11
	jae	.label_365
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_365:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_368
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_368:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_261
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_261:
	add	r14, 3
	mov	r9b, 1
.label_362:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_364
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_364:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_270
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_270
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_270
	cmp	r14, r11
	jae	.label_284
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_284:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_363
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_363:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_264
.label_439:
	mov	bl, 0x62
	jmp	.label_296
.label_440:
	mov	cl, 0x74
	jmp	.label_300
.label_441:
	mov	bl, 0x76
	jmp	.label_296
.label_442:
	mov	bl, 0x66
	jmp	.label_296
.label_443:
	mov	cl, 0x72
	jmp	.label_300
.label_446:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_308
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
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
	jae	.label_314
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_314:
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
.label_308:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_264
.label_447:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_339
	cmp	r12d, 2
	jne	.label_315
	cmp	byte ptr [rsp + 7], 0
	je	.label_315
	jmp	.label_310
.label_448:
	cmp	r12d, 2
	jne	.label_347
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_297
.label_321:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_352
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
.label_306:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_262
	test	r8b, r8b
	je	.label_262
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_264
.label_355:
	test	rsi, rsi
	jne	.label_268
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_268
.label_328:
	mov	dl, 1
.label_444:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_310
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_264:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_278
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_279
	jmp	.label_285
	.section	.text
	.align	16
	#Procedure 0x404264
	.globl sub_404264
	.type sub_404264, @function
sub_404264:

	nop	word ptr cs:[rax + rax]
.label_278:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_285
.label_279:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_291
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_297
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x4042ad
	.globl sub_4042ad
	.type sub_4042ad, @function
sub_4042ad:

	nop	dword ptr [rax]
.label_285:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_305
	jmp	.label_297
.label_291:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_305
.label_301:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_311
	xor	r15d, r15d
	jmp	.label_315
.label_347:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_300
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_297
.label_300:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_310
.label_296:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_264
	nop	word ptr cs:[rax + rax]
.label_305:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
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
	jae	.label_289
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_289:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_344
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_344:
	add	r14, 3
	mov	r9b, 1
.label_333:
	cmp	r14, r11
	jae	.label_348
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_348:
	inc	r14
	jmp	.label_326
.label_352:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_354
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_354:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_350:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_367
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_370
	cmp	rbp, -2
	je	.label_277
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_266
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_286:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_353
	bt	rsi, rdx
	jb	.label_282
.label_353:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_286
.label_266:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_293
	xor	r13d, r13d
.label_293:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_350
	jmp	.label_306
.label_270:
	xor	r13d, r13d
	jmp	.label_264
.label_268:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_264
.label_339:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_315
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_315
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_315
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_322
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_371
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_330
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_330:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_337
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_337:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_341
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_341:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_343
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_343:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_264
.label_315:
	xor	eax, eax
.label_356:
	xor	r13d, r13d
	jmp	.label_264
.label_262:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_351
	.section	.text
	.align	16
	#Procedure 0x404593
	.globl sub_404593
	.type sub_404593, @function
sub_404593:

	nop	word ptr cs:[rax + rax]
.label_312:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_351:
	test	r8b, r8b
	je	.label_357
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_358
	cmp	r14, r11
	jae	.label_359
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_359:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_358
	.section	.text
	.align	16
	#Procedure 0x4045dc
	.globl sub_4045dc
	.type sub_4045dc, @function
sub_4045dc:

	nop	dword ptr [rax]
.label_357:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_282
	cmp	r12d, 2
	jne	.label_366
	mov	eax, r9d
	and	al, 1
	jne	.label_366
	cmp	r14, r11
	jae	.label_369
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_369:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_260
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_260:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_267
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_267:
	add	r14, 3
	mov	r9b, 1
.label_366:
	cmp	r14, r11
	jae	.label_288
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_288:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_273
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_273:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_281
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_281:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_358:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_297
	test	r9b, 1
	je	.label_299
	mov	ebx, eax
	and	bl, 1
	jne	.label_299
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_304
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_304:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_280
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_280:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_299:
	cmp	r14, r11
	jae	.label_312
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_312
	.section	.text
	.align	16
	#Procedure 0x4046e3
	.globl sub_4046e3
	.type sub_4046e3, @function
sub_4046e3:

	nop	word ptr cs:[rax + rax]
.label_297:
	test	r9b, 1
	je	.label_323
	and	al, 1
	jne	.label_323
	cmp	r14, r11
	jae	.label_324
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_324:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_295
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	add	r14, 2
	xor	r9d, r9d
.label_323:
	mov	ebx, r15d
.label_326:
	cmp	r14, r11
	jae	.label_331
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_331:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_311
.label_370:
	xor	r13d, r13d
.label_367:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_306
.label_277:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_345
	mov	rsi, qword ptr [rsp + 0x50]
.label_318:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_303
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_318
	xor	r13d, r13d
	jmp	.label_306
.label_345:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_306
.label_303:
	xor	r13d, r13d
	jmp	.label_306
.label_322:
	xor	r13d, r13d
	jmp	.label_264
.label_371:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_264
	.section	.text
	.align	16
	#Procedure 0x4047b8
	.globl sub_4047b8
	.type sub_4047b8, @function
sub_4047b8:

	nop	dword ptr [rax + rax]
.label_294:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_360
	or	dl, al
	je	.label_282
.label_360:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_263
	or	dl, al
	jne	.label_263
	test	r10b, 1
	jne	.label_265
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_263
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_269
.label_263:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_272
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_274
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_274
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_316:
	cmp	r14, r11
	jae	.label_287
	mov	byte ptr [rcx + r14], al
.label_287:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_316
	jmp	.label_274
.label_310:
	mov	qword ptr [rsp + 0x20], rbp
.label_282:
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
.label_346:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_265:
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
.label_272:
	mov	rcx, qword ptr [rsp + 8]
.label_274:
	cmp	r14, r11
	jae	.label_346
	mov	byte ptr [rcx + r14], 0
	jmp	.label_346
.label_271:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40494c
	.globl sub_40494c
	.type sub_40494c, @function
sub_40494c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404950

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_373
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_373
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_373:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404976
	.globl sub_404976
	.type sub_404976, @function
sub_404976:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_374
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_376
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_376
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_379
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_379:
	mov	rbx, r14
.label_376:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_374:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_375
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a21
	.globl sub_404a21
	.type sub_404a21, @function
sub_404a21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30

	.globl unexpand
	.type unexpand, @function
unexpand:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	xor	edi, edi
	call	next_file
	mov	rbx, rax
	test	rbx, rbx
	je	.label_393
	mov	rdi,  qword ptr [word ptr [rip + max_column_width]]
	call	xmalloc
	mov	qword ptr [rsp + 0x10], rax
.label_397:
	mov	qword ptr [rsp + 0x20], 0
	mov	r12b, 1
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0xc], 0
	mov	bpl, 1
	xor	r13d, r13d
	jmp	.label_395
.label_390:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x18], rdx
	cmp	rcx, rax
	mov	bpl, 1
	mov	al, 1
	je	.label_380
	mov	eax, dword ptr [rsp + 0xc]
.label_380:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + r13], r14b
	inc	r13
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_385
.label_395:
	mov	r15, rbx
	nop	word ptr cs:[rax + rax]
.label_396:
	mov	rdi, r15
	call	getc_unlocked
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_394
	mov	rdi, r15
	call	next_file
	mov	r15, rax
	test	r15, r15
	mov	ebx, 0
	jne	.label_396
	jmp	.label_400
	.section	.text
	.align	16
	#Procedure 0x404ae7
	.globl sub_404ae7
	.type sub_404ae7, @function
sub_404ae7:

	nop	word ptr [rax + rax]
.label_394:
	mov	rbx, r15
.label_400:
	test	r12b, 1
	je	.label_402
	mov	r15d, ebp
	movsxd	rbp, r14d
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	ebp, word ptr [rax + rbp*2]
	and	bp, 1
	je	.label_381
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0xb]
	call	get_next_tab_column
	cmp	byte ptr [rsp + 0xb], 0
	je	.label_389
	xor	r12d, r12d
.label_389:
	test	r12b, 1
	jne	.label_391
	mov	rcx, qword ptr [rsp + 0x18]
	jmp	.label_386
	.section	.text
	.align	16
	#Procedure 0x404b43
	.globl sub_404b43
	.type sub_404b43, @function
sub_404b43:

	nop	word ptr cs:[rax + rax]
.label_381:
	cmp	r14d, 8
	mov	rcx, qword ptr [rsp + 0x18]
	jne	.label_399
	cmp	rcx, 1
	adc	rcx, -1
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, 1
	adc	rax, -1
	mov	qword ptr [rsp + 0x20], rax
	mov	r14d, 8
	jmp	.label_386
.label_391:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rax, rcx
	jb	.label_388
	cmp	r14d, 9
	jne	.label_382
	test	r13, r13
	je	.label_383
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 9
	jmp	.label_383
.label_399:
	inc	rcx
	jne	.label_386
	jmp	.label_388
.label_382:
	inc	rcx
	test	r15b, 1
	je	.label_390
	cmp	rcx, rax
	jne	.label_390
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 9
	mov	rax, rcx
.label_383:
	mov	ecx, dword ptr [rsp + 0xc]
	and	cl, 1
	movzx	r13d, cl
	mov	r14d, 9
	mov	rcx, rax
	nop	
.label_386:
	test	r13, r13
	mov	qword ptr [rsp + 0x18], rcx
	je	.label_398
	cmp	r13, 1
	je	.label_401
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	je	.label_401
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 9
.label_401:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, r13
	call	fwrite_unlocked
	cmp	rax, r13
	jne	.label_384
	mov	dword ptr [rsp + 0xc], 0
.label_398:
	test	bp, bp
	setne	al
	cmp	byte ptr [byte ptr [rip + convert_entire_line]],  0
	setne	cl
	or	cl, al
	and	r12b, cl
	xor	r13d, r13d
.label_402:
	test	r14d, r14d
	js	.label_392
	mov	edi, r14d
	call	putchar_unlocked
	test	eax, eax
	js	.label_384
.label_385:
	cmp	r14d, 0xa
	jne	.label_395
	jmp	.label_397
.label_392:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_393:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_384:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_403
	ret	
.label_403:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x404ce3
	.globl sub_404ce3
	.type sub_404ce3, @function
sub_404ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x404cfa
	.globl sub_404cfa
	.type sub_404cfa, @function
sub_404cfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d65
	.globl sub_404d65
	.type sub_404d65, @function
sub_404d65:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d72
	.globl sub_404d72
	.type sub_404d72, @function
sub_404d72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d96
	.globl sub_404d96
	.type sub_404d96, @function
sub_404d96:

	nop	word ptr cs:[rax + rax]
