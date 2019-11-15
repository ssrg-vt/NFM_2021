	.section	.text
	.align	16
	#Procedure 0x4013d9
	.globl sub_4013d9
	.type sub_4013d9, @function
sub_4013d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4013da
	.globl sub_4013da
	.type sub_4013da, @function
sub_4013da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401412
	.globl sub_401412
	.type sub_401412, @function
sub_401412:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40145a
	.globl sub_40145a
	.type sub_40145a, @function
sub_40145a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40147c
	.globl sub_40147c
	.type sub_40147c, @function
sub_40147c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40148d
	.globl sub_40148d
	.type sub_40148d, @function
sub_40148d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4014a6
	.globl sub_4014a6
	.type sub_4014a6, @function
sub_4014a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014b0
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
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4014d6
	.globl sub_4014d6
	.type sub_4014d6, @function
sub_4014d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014e0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_10
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_10:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4014fe
	.globl sub_4014fe
	.type sub_4014fe, @function
sub_4014fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401500

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_15
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_11
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_11
.label_15:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_16
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_12:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_16:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_12
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4015c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_18
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_19
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015e5
	.globl sub_4015e5
	.type sub_4015e5, @function
sub_4015e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015f0

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
	mov	r15d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_18
	call	setlocale
	mov	edi, OFFSET FLAT:label_26
	mov	esi, OFFSET FLAT:label_27
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_26
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r14d, r14d
	jmp	.label_23
	.section	.text
	.align	16
	#Procedure 0x401641
	.globl sub_401641
	.type sub_401641, @function
sub_401641:

	nop	word ptr cs:[rax + rax]
.label_46:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
.label_23:
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_40
	cmp	eax, 0x5a
	je	.label_41
	cmp	eax, 0x6d
	je	.label_46
	jmp	.label_20
	.section	.text
	.align	16
	#Procedure 0x401683
	.globl sub_401683
	.type sub_401683, @function
sub_401683:

	nop	word ptr cs:[rax + rax]
.label_41:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	je	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_23
.label_40:
	cmp	eax, -1
	jne	.label_30
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	je	.label_32
	mov	r13d, 0x1b6
	test	r14, r14
	je	.label_34
	mov	rdi, r14
	call	mode_compile
	mov	rbx, rax
	test	rbx, rbx
	je	.label_36
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	edi, ebp
	call	umask
	mov	edi, 0x1b6
	xor	esi, esi
	xor	r8d, r8d
	mov	edx, ebp
	mov	rcx, rbx
	call	mode_adjust
	mov	r13d, eax
	mov	rdi, rbx
	call	free
	cmp	r13d, 0x1ff
	ja	.label_33
.label_34:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	xor	ebx, ebx
	cmp	eax, r15d
	jge	.label_29
	xor	ebx, ebx
	jmp	.label_31
	.section	.text
	.align	16
	#Procedure 0x401744
	.globl sub_401744
	.type sub_401744, @function
sub_401744:

	nop	word ptr cs:[rax + rax]
.label_22:
	test	r14, r14
	je	.label_21
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r12 + rax*8]
	mov	esi, r13d
	call	chmod
	test	eax, eax
	je	.label_21
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	jmp	.label_43
.label_31:
	cdqe	
	mov	rdi, qword ptr [r12 + rax*8]
	mov	esi, r13d
	call	mkfifo
	test	eax, eax
	je	.label_22
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
.label_43:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [r12 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	ebx, 1
.label_21:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_31
.label_29:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_30:
	cmp	eax, 0xffffff7d
	je	.label_47
	cmp	eax, 0xffffff7e
	jne	.label_20
	xor	edi, edi
	call	usage
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
.label_47:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_37
	mov	edx, OFFSET FLAT:label_38
	mov	r8d, OFFSET FLAT:label_39
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_20:
	mov	edi, 1
	call	usage
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	jmp	.label_45
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
.label_45:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4018e0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018ea
	.globl sub_4018ea
	.type sub_4018ea, @function
sub_4018ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_50
	test	rsi, rsi
	mov	ecx, 1
	je	.label_51
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_51
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_50:
	mov	ecx, 1
.label_51:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40193b
	.globl sub_40193b
	.type sub_40193b, @function
sub_40193b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401940

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401962
	.globl sub_401962
	.type sub_401962, @function
sub_401962:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401970

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
	mov	rcx,  qword ptr [word ptr [rip + label_53]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_54]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_55]]
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
	#Procedure 0x4019dd
	.globl sub_4019dd
	.type sub_4019dd, @function
sub_4019dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4019ed
	.globl sub_4019ed
	.type sub_4019ed, @function
sub_4019ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x4019f7
	.globl sub_4019f7
	.type sub_4019f7, @function
sub_4019f7:

	nop	word ptr [rax + rax]
.label_56:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a03
	.globl sub_401a03
	.type sub_401a03, @function
sub_401a03:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a0b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_56
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a20

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x401a29
	.globl sub_401a29
	.type sub_401a29, @function
sub_401a29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
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
	mov	rax,  qword ptr [word ptr [rip + label_53]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_54]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_55]]
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
	#Procedure 0x401a98
	.globl sub_401a98
	.type sub_401a98, @function
sub_401a98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401aa0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_58
	cmp	byte ptr [rax], 0x43
	jne	.label_60
	cmp	byte ptr [rax + 1], 0
	je	.label_57
.label_60:
	mov	esi, OFFSET FLAT:label_59
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_58
.label_57:
	xor	ebx, ebx
.label_58:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ad1
	.globl sub_401ad1
	.type sub_401ad1, @function
sub_401ad1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0

	.globl make_node_op_equals
	.type make_node_op_equals, @function
make_node_op_equals:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, esi
	mov	ebp, edi
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebp
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b10
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_61
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_61:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b2e
	.globl sub_401b2e
	.type sub_401b2e, @function
sub_401b2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401b30
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
	#Procedure 0x401b3f
	.globl sub_401b3f
	.type sub_401b3f, @function
sub_401b3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401b40
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b4a
	.globl sub_401b4a
	.type sub_401b4a, @function
sub_401b4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b50

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
	#Procedure 0x401b86
	.globl sub_401b86
	.type sub_401b86, @function
sub_401b86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b98
	.globl sub_401b98
	.type sub_401b98, @function
sub_401b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ba0
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
	#Procedure 0x401c12
	.globl sub_401c12
	.type sub_401c12, @function
sub_401c12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c20

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
	jne	.label_62
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_62
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_63
.label_62:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_63:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_64
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_64:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c8e
	.globl sub_401c8e
	.type sub_401c8e, @function
sub_401c8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401c90

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rdi
	mov	al, byte ptr [rbp]
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_68
	xor	r14d, r14d
	xor	edi, edi
	mov	rbx, rbp
	nop	
.label_84:
	movsx	eax, byte ptr [rbx]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_67
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	ecx, eax
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_84
	xor	r14d, r14d
	test	al, al
	jne	.label_67
	call	octal_to_mode
	sub	rbx, rbp
	mov	ecx, eax
	and	ecx, 0xc00
	or	ecx, 0x3ff
	cmp	rbx, 5
	mov	esi, 0xfff
	cmovl	esi, ecx
	mov	edi, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	make_node_op_equals
.label_68:
	mov	edi, 1
	mov	rax, rbp
	jmp	.label_70
.label_79:
	add	rdi, rdx
	inc	rax
.label_70:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x2c
	jle	.label_73
	cmp	cl, 0x2d
	je	.label_77
	cmp	cl, 0x3d
	mov	edx, 1
	je	.label_79
	jmp	.label_82
	.section	.text
	.align	16
	#Procedure 0x401d3f
	.globl sub_401d3f
	.type sub_401d3f, @function
sub_401d3f:

	nop	
.label_73:
	cmp	cl, 0x2b
	mov	edx, 1
	je	.label_79
	test	cl, cl
	je	.label_86
.label_82:
	xor	edx, edx
	jmp	.label_79
	.section	.text
	.align	16
	#Procedure 0x401d52
	.globl sub_401d52
	.type sub_401d52, @function
sub_401d52:

	nop	word ptr cs:[rax + rax]
.label_77:
	mov	edx, 1
	jmp	.label_79
.label_86:
	mov	esi, 0x10
	call	xnmalloc
	mov	r14, rax
	xor	r15d, r15d
	movabs	r12, 0x2000280000000000
	jmp	.label_90
	.section	.text
	.align	16
	#Procedure 0x401d83

	.globl sub_401d83
	.type sub_401d83, @function
sub_401d83:
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_90:
	xor	ecx, ecx
	jmp	.label_76
	.section	.text
	.align	16
	#Procedure 0x401d94
	.globl sub_401d94
	.type sub_401d94, @function
sub_401d94:

	nop	word ptr cs:[rax + rax]
.label_446:
	or	ecx, 0x207
	inc	rbp
.label_76:
	movsx	eax, byte ptr [rbp]
	lea	edx, [rax - 0x61]
	cmp	edx, 0x14
	ja	.label_74
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_80]]
.label_444:
	or	ecx, 0xfff
	inc	rbp
	jmp	.label_76
	.section	.text
	.align	16
	#Procedure 0x401dc7
	.globl sub_401dc7
	.type sub_401dc7, @function
sub_401dc7:

	nop	word ptr [rax + rax]
.label_445:
	or	ecx, 0x438
	inc	rbp
	jmp	.label_76
	.section	.text
	.align	16
	#Procedure 0x401ddb
	.globl sub_401ddb
	.type sub_401ddb, @function
sub_401ddb:

	nop	dword ptr [rax + rax]
.label_447:
	or	ecx, 0x9c0
	inc	rbp
	jmp	.label_76
	.section	.text
	.align	16
	#Procedure 0x401deb
	.globl sub_401deb
	.type sub_401deb, @function
sub_401deb:

	nop	dword ptr [rax + rax]
.label_74:
	mov	edx, eax
	cmp	eax, 0x3d
	ja	.label_78
	bt	r12, rdx
	jae	.label_78
.label_385:
	lea	rax, [rbp + 1]
	mov	r13b, byte ptr [rbp]
	movsx	edx, byte ptr [rbp + 1]
	add	edx, -0x30
	cmp	edx, 0x45
	ja	.label_66
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_71]]
.label_377:
	xor	edi, edi
	mov	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_85:
	movsx	eax, byte ptr [rbp]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_78
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	je	.label_85
	test	ecx, ecx
	jne	.label_78
	cmp	al, 0x2c
	je	.label_88
	test	al, al
	jne	.label_78
.label_88:
	call	octal_to_mode
	mov	bl, 1
	mov	ecx, 0xfff
	mov	esi, 0xfff
	jmp	.label_69
.label_66:
	mov	bl, 1
	xor	esi, esi
	mov	rbp, rax
	xor	eax, eax
	jmp	.label_91
	.section	.text
	.align	16
	#Procedure 0x401e8a
	.globl sub_401e8a
	.type sub_401e8a, @function
sub_401e8a:

	nop	word ptr [rax + rax]
.label_87:
	inc	rbp
	mov	ebx, edx
.label_91:
	movsx	edi, byte ptr [rbp]
	add	edi, -0x58
	cmp	edi, 0x20
	ja	.label_69
	mov	dl, 2
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_72]]
.label_372:
	or	eax, 0x124
	jmp	.label_75
.label_373:
	or	eax, 0xc00
	jmp	.label_75
.label_374:
	or	eax, 0x200
	jmp	.label_75
.label_375:
	or	eax, 0x92
	jmp	.label_75
.label_376:
	or	eax, 0x49
	nop	dword ptr [rax]
.label_75:
	mov	edx, ebx
	jmp	.label_87
.label_378:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 0x38
	jmp	.label_69
.label_379:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 7
	jmp	.label_69
.label_380:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 0x1c0
	nop	
.label_69:
	mov	rdx, r15
	shl	rdx, 4
	mov	byte ptr [r14 + rdx], r13b
	mov	byte ptr [r14 + rdx + 1], bl
	mov	dword ptr [r14 + rdx + 4], ecx
	mov	dword ptr [r14 + rdx + 8], eax
	test	esi, esi
	jne	.label_65
	cmp	ecx, 1
	sbb	esi, esi
	or	esi, ecx
	and	esi, eax
.label_65:
	inc	r15
	mov	dword ptr [r14 + rdx + 0xc], esi
	mov	al, byte ptr [rbp]
	add	al, 0xd5
	movzx	eax, al
	cmp	al, 0x12
	ja	.label_89
	jmp	qword ptr [word ptr [+ (rax * 8) + label_81]]
.label_89:
	cmp	byte ptr [rbp], 0
	je	.label_83
.label_78:
	mov	rdi, r14
	call	free
	xor	r14d, r14d
.label_67:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_83:
	shl	r15, 4
	mov	byte ptr [r14 + r15 + 1], 0
	jmp	.label_67
	.section	.text
	.align	16
	#Procedure 0x401f71
	.globl sub_401f71
	.type sub_401f71, @function
sub_401f71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f80
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401f8a
	.globl sub_401f8a
	.type sub_401f8a, @function
sub_401f8a:

	nop	word ptr [rax + rax]
.label_96:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
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
	#Procedure 0x401fc8

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_96
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4020b0

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020b3
	.globl sub_4020b3
	.type sub_4020b3, @function
sub_4020b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020c0
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
	#Procedure 0x4020d9
	.globl sub_4020d9
	.type sub_4020d9, @function
sub_4020d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4020e0

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
	je	.label_100
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_102
	jmp	.label_101
.label_100:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_101
.label_102:
	mov	eax, 1
	test	bpl, bpl
	je	.label_101
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
.label_101:
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
	#Procedure 0x40215d
	.globl sub_40215d
	.type sub_40215d, @function
sub_40215d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402160
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
	#Procedure 0x40216f
	.globl sub_40216f
	.type sub_40216f, @function
sub_40216f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402170
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_103
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_103:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402196
	.globl sub_402196
	.type sub_402196, @function
sub_402196:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_104
	test	rbx, rbx
	jne	.label_104
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_104:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_106
	test	rax, rax
	je	.label_105
.label_106:
	pop	rbx
	ret	
.label_105:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4021d0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021da
	.globl sub_4021da
	.type sub_4021da, @function
sub_4021da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021e0

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
	#Procedure 0x4021f7
	.globl sub_4021f7
	.type sub_4021f7, @function
sub_4021f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402200
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
	#Procedure 0x40220d
	.globl sub_40220d
	.type sub_40220d, @function
sub_40220d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402210

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
	#Procedure 0x402249
	.globl sub_402249
	.type sub_402249, @function
sub_402249:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402250

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
	#Procedure 0x402261
	.globl sub_402261
	.type sub_402261, @function
sub_402261:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402270
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
	#Procedure 0x402284
	.globl sub_402284
	.type sub_402284, @function
sub_402284:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402290

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_114
	nop	
.label_113:
	mov	edi, OFFSET FLAT:label_37
	call	strcmp
	test	eax, eax
	je	.label_111
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_113
.label_111:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_37
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_110
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_107
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_107
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_37
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_110
	mov	ecx, OFFSET FLAT:label_37
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_117
	mov	ecx, OFFSET FLAT:label_18
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
	#Procedure 0x4023aa
	.globl sub_4023aa
	.type sub_4023aa, @function
sub_4023aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023b0
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	stat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_118
	mov	edi, dword ptr [rsp + 0x20]
	mov	esi, 0xfff
	call	make_node_op_equals
.label_118:
	add	rsp, 0x98
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023df
	.globl sub_4023df
	.type sub_4023df, @function
sub_4023df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4023e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_119:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_119
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402401
	.globl sub_402401
	.type sub_402401, @function
sub_402401:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402410
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_121
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_110
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402484
	.globl sub_402484
	.type sub_402484, @function
sub_402484:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490
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
	#Procedure 0x4024c3
	.globl sub_4024c3
	.type sub_4024c3, @function
sub_4024c3:

	nop	word ptr cs:[rax + rax]
.label_124:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4024dc
	.globl sub_4024dc
	.type sub_4024dc, @function
sub_4024dc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024e9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_124
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_125
	test	rdx, rdx
	je	.label_125
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_125:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40251b
	.globl sub_40251b
	.type sub_40251b, @function
sub_40251b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402520

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x402525
	.globl sub_402525
	.type sub_402525, @function
sub_402525:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402530

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
	je	.label_137
	mov	edx, OFFSET FLAT:label_132
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_139
.label_137:
	mov	edx, OFFSET FLAT:label_140
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
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
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_127
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_128]]
.label_354:
	add	rsp, 8
	jmp	.label_126
.label_127:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
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
	jmp	.label_126
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
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
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
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
.label_357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
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
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
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
	jmp	.label_126
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
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
	jmp	.label_126
.label_360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
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
	jmp	.label_126
.label_361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
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
	jmp	.label_126
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
	jmp	.label_126
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
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
.label_126:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402888
	.globl sub_402888
	.type sub_402888, @function
sub_402888:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402890
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
	#Procedure 0x4028b7
	.globl sub_4028b7
	.type sub_4028b7, @function
sub_4028b7:

	nop	word ptr [rax + rax]
.label_146:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_145
	test	cl, cl
	jne	.label_145
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_145:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028eb
	.globl sub_4028eb
	.type sub_4028eb, @function
sub_4028eb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f5

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
	je	.label_146
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_145
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_145
.label_148:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_147
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40293b
	.globl sub_40293b
	.type sub_40293b, @function
sub_40293b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402945
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_148
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_148
.label_147:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402960

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_149
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_150
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_149
.label_150:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_149
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_151
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_151:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_149:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4029d7
	.globl sub_4029d7
	.type sub_4029d7, @function
sub_4029d7:

	nop	word ptr [rax + rax]
.label_154:
	test	rcx, rcx
	jne	.label_152
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_152:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_153
.label_155:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x402a22

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_154
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_156
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_155
.label_153:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402a54
	.globl sub_402a54
	.type sub_402a54, @function
sub_402a54:

	nop	dword ptr [rax]
.label_156:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402a60
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x402a6a
	.globl sub_402a6a
	.type sub_402a6a, @function
sub_402a6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a70

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
	je	.label_157
	cmp	r15, -2
	jb	.label_157
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_157
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_157:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ac6
	.globl sub_402ac6
	.type sub_402ac6, @function
sub_402ac6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ad0
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
	#Procedure 0x402ae6
	.globl sub_402ae6
	.type sub_402ae6, @function
sub_402ae6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402af0
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
	#Procedure 0x402aff
	.globl sub_402aff
	.type sub_402aff, @function
sub_402aff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402b00
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
	#Procedure 0x402b0d
	.globl sub_402b0d
	.type sub_402b0d, @function
sub_402b0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b10

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
	#Procedure 0x402b3d
	.globl sub_402b3d
	.type sub_402b3d, @function
sub_402b3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b40
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
	#Procedure 0x402b53
	.globl sub_402b53
	.type sub_402b53, @function
sub_402b53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b6a
	.globl sub_402b6a
	.type sub_402b6a, @function
sub_402b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b70

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402b7a
	.globl sub_402b7a
	.type sub_402b7a, @function
sub_402b7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b80
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x402b8d
	.globl sub_402b8d
	.type sub_402b8d, @function
sub_402b8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b90
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
	#Procedure 0x402ba0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_158
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_161:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_161
.label_158:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_162
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_159]], OFFSET FLAT:slot0
.label_162:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_160
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_160:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c31
	.globl sub_402c31
	.type sub_402c31, @function
sub_402c31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c4a
	.globl sub_402c4a
	.type sub_402c4a, @function
sub_402c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402c5e
	.globl sub_402c5e
	.type sub_402c5e, @function
sub_402c5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402c60

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
	js	.label_163
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_166
	cmp	r12d, 0x7fffffff
	je	.label_168
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
	jne	.label_164
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_164:
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
.label_166:
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
	jbe	.label_169
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_165
.label_169:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_167
	mov	rdi, r14
	call	free
.label_167:
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
.label_165:
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
.label_163:
	call	abort
.label_168:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402e1d
	.globl sub_402e1d
	.type sub_402e1d, @function
sub_402e1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e20

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
	#Procedure 0x402e57
	.globl sub_402e57
	.type sub_402e57, @function
sub_402e57:

	nop	word ptr [rax + rax]
.label_171:
	cmp	edi, 0x7f
	je	.label_170
	xor	eax, eax
	jmp	.label_170
	.section	.text
	.align	16
	#Procedure 0x402e69
	.globl sub_402e69
	.type sub_402e69, @function
sub_402e69:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e78
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_171
.label_170:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e80
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e8a
	.globl sub_402e8a
	.type sub_402e8a, @function
sub_402e8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e90

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402e9a
	.globl sub_402e9a
	.type sub_402e9a, @function
sub_402e9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0
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
	#Procedure 0x402eb0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x402eb9
	.globl sub_402eb9
	.type sub_402eb9, @function
sub_402eb9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x402eca
	.globl sub_402eca
	.type sub_402eca, @function
sub_402eca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ed8
	.globl sub_402ed8
	.type sub_402ed8, @function
sub_402ed8:

	nop	dword ptr [rax + rax]
.label_175:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_173:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_174
	inc	r9
	cmp	r9, 0xa
	jb	.label_172
.label_174:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f0f
	.globl sub_402f0f
	.type sub_402f0f, @function
sub_402f0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402f10

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_172:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_175
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_173
	.section	.text
	.align	16
	#Procedure 0x402f39
	.globl sub_402f39
	.type sub_402f39, @function
sub_402f39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f40

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_176
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_178
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_178
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_181
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_181:
	mov	rbx, r14
.label_178:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_176:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_177
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402fe1
	.globl sub_402fe1
	.type sub_402fe1, @function
sub_402fe1:

	nop	word ptr cs:[rax + rax]
.label_182:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402ff5
	.globl sub_402ff5
	.type sub_402ff5, @function
sub_402ff5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403003

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
	je	.label_182
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
	#Procedure 0x403050

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
	je	.label_185
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_183
	jmp	.label_184
.label_185:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_184
.label_183:
	mov	eax, 1
	test	bpl, bpl
	je	.label_184
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
.label_184:
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
	#Procedure 0x4030d8
	.globl sub_4030d8
	.type sub_4030d8, @function
sub_4030d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030e0

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
	je	.label_186
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_188
	jmp	.label_187
.label_186:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_187
.label_188:
	mov	eax, 1
	test	bpl, bpl
	je	.label_187
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
.label_187:
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
	#Procedure 0x403159
	.globl sub_403159
	.type sub_403159, @function
sub_403159:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403160

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
	je	.label_191
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_190
	jmp	.label_189
.label_191:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_189
.label_190:
	mov	eax, 1
	test	bpl, bpl
	je	.label_189
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
.label_189:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031c3
	.globl sub_4031c3
	.type sub_4031c3, @function
sub_4031c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0

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
	je	.label_194
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_192
	jmp	.label_193
.label_194:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_193
.label_192:
	mov	eax, 1
	test	bpl, bpl
	je	.label_193
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_193:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40322f
	.globl sub_40322f
	.type sub_40322f, @function
sub_40322f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403230

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
	je	.label_195
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_197
	jmp	.label_196
.label_195:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_196
.label_197:
	mov	eax, 1
	test	bpl, bpl
	je	.label_196
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_196:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403279
	.globl sub_403279
	.type sub_403279, @function
sub_403279:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403280

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
	je	.label_200
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_199
	jmp	.label_198
.label_200:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_198
.label_199:
	mov	eax, 1
	test	bpl, bpl
	je	.label_198
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_198:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032c5
	.globl sub_4032c5
	.type sub_4032c5, @function
sub_4032c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_202
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_203
	jmp	.label_201
.label_202:
	mov	eax, 1
	test	cl, cl
	je	.label_201
.label_203:
	xor	eax, eax
.label_201:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032ff
	.globl sub_4032ff
	.type sub_4032ff, @function
sub_4032ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403300
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40330a
	.globl sub_40330a
	.type sub_40330a, @function
sub_40330a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403310

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
	je	.label_204
	mov	qword ptr [rax], rbx
.label_204:
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
	#Procedure 0x4033fc
	.globl sub_4033fc
	.type sub_4033fc, @function
sub_4033fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
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
.label_243:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_246
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_251]]
.label_395:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_257
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_240
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_396:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_270
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_270
	xor	r14d, r14d
.label_280:
	cmp	r14, r11
	jae	.label_276
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_276:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_280
.label_270:
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
	jmp	.label_241
.label_388:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_241
.label_391:
	mov	al, 1
.label_389:
	mov	r12b, 1
.label_392:
	test	r12b, 1
	mov	cl, 1
	je	.label_294
	mov	ecx, eax
.label_294:
	mov	al, cl
.label_390:
	test	r12b, 1
	jne	.label_297
	test	r11, r11
	je	.label_300
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_300:
	mov	r14d, 1
	jmp	.label_305
.label_297:
	xor	r14d, r14d
.label_305:
	mov	ecx, OFFSET FLAT:label_240
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_241
.label_393:
	test	r12b, 1
	jne	.label_314
	test	r11, r11
	je	.label_302
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_302:
	mov	r14d, 1
	jmp	.label_317
.label_394:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_216
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_241
.label_314:
	xor	r14d, r14d
.label_317:
	mov	eax, OFFSET FLAT:label_216
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_241:
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
	jmp	.label_225
	.section	.text
	.align	16
	#Procedure 0x4036dc
	.globl sub_4036dc
	.type sub_4036dc, @function
sub_4036dc:

	nop	dword ptr [rax]
.label_277:
	inc	rsi
.label_225:
	cmp	rbp, -1
	je	.label_262
	cmp	rsi, rbp
	jne	.label_288
	jmp	.label_266
	.section	.text
	.align	16
	#Procedure 0x4036f3
	.globl sub_4036f3
	.type sub_4036f3, @function
sub_4036f3:

	nop	word ptr cs:[rax + rax]
.label_262:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_266
.label_288:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_272
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_274
	cmp	rbp, -1
	jne	.label_274
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
.label_274:
	cmp	rbx, rbp
	jbe	.label_283
.label_272:
	xor	r8d, r8d
.label_231:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_284
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_287]]
.label_455:
	test	rsi, rsi
	jne	.label_282
	jmp	.label_215
	.section	.text
	.align	16
	#Procedure 0x40378e
	.globl sub_40378e
	.type sub_40378e, @function
sub_40378e:

	nop	
.label_283:
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
	jne	.label_303
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_231
	jmp	.label_224
.label_303:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_231
.label_459:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_208
	test	rsi, rsi
	jne	.label_212
	cmp	rbp, 1
	je	.label_215
	xor	r13d, r13d
	jmp	.label_211
.label_448:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_219
	cmp	byte ptr [rsp + 7], 0
	jne	.label_220
	cmp	r12d, 2
	jne	.label_222
	mov	eax, r9d
	and	al, 1
	jne	.label_222
	cmp	r14, r11
	jae	.label_319
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_319:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_229:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_234
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_234:
	add	r14, 3
	mov	r9b, 1
.label_222:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_242
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_242:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_239
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_239
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_239
	cmp	r14, r11
	jae	.label_248
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_248:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_210
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_210:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_211
.label_449:
	mov	bl, 0x62
	jmp	.label_268
.label_450:
	mov	cl, 0x74
	jmp	.label_271
.label_451:
	mov	bl, 0x76
	jmp	.label_268
.label_452:
	mov	bl, 0x66
	jmp	.label_268
.label_453:
	mov	cl, 0x72
	jmp	.label_271
.label_456:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_275
	cmp	byte ptr [rsp + 7], 0
	jne	.label_220
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
	jae	.label_281
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_281:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_289
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_289:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_291
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_291:
	add	r14, 3
	xor	r9d, r9d
.label_275:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_211
.label_457:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_301
	cmp	r12d, 2
	jne	.label_282
	cmp	byte ptr [rsp + 7], 0
	je	.label_282
	jmp	.label_220
.label_458:
	cmp	r12d, 2
	jne	.label_311
	cmp	byte ptr [rsp + 7], 0
	jne	.label_220
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_258
.label_284:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_309
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
.label_206:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_235
	test	r8b, r8b
	je	.label_235
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_211
.label_208:
	test	rsi, rsi
	jne	.label_244
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_244
.label_215:
	mov	dl, 1
.label_454:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_220
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_211:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_252
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_255
	jmp	.label_259
	.section	.text
	.align	16
	#Procedure 0x403ad4
	.globl sub_403ad4
	.type sub_403ad4, @function
sub_403ad4:

	nop	word ptr cs:[rax + rax]
.label_252:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_259
.label_255:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_263
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_258
	jmp	.label_253
	.section	.text
	.align	16
	#Procedure 0x403b1d
	.globl sub_403b1d
	.type sub_403b1d, @function
sub_403b1d:

	nop	dword ptr [rax]
.label_259:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_253
	jmp	.label_258
.label_263:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_253
.label_219:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_277
	xor	r15d, r15d
	jmp	.label_282
.label_311:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_271
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_258
.label_271:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_220
.label_268:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_211
	nop	word ptr cs:[rax + rax]
.label_253:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_220
	cmp	r12d, 2
	jne	.label_295
	mov	eax, r9d
	and	al, 1
	jne	.label_295
	cmp	r14, r11
	jae	.label_299
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_299:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_223
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_223:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_308
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_308:
	add	r14, 3
	mov	r9b, 1
.label_295:
	cmp	r14, r11
	jae	.label_313
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_313:
	inc	r14
	jmp	.label_315
.label_309:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_318
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_318:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_209:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_228
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_233
	cmp	rbp, -2
	je	.label_267
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_237
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_269:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_232
	bt	rsi, rdx
	jb	.label_224
.label_232:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_269
.label_237:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_265
	xor	r13d, r13d
.label_265:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_209
	jmp	.label_206
.label_239:
	xor	r13d, r13d
	jmp	.label_211
.label_244:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_211
.label_301:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_282
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_282
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_282
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_285
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_245
	cmp	byte ptr [rsp + 7], 0
	jne	.label_220
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_292:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_312
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_312:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_304
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_304:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_307
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_307:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_211
.label_282:
	xor	eax, eax
.label_212:
	xor	r13d, r13d
	jmp	.label_211
.label_235:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_316
	.section	.text
	.align	16
	#Procedure 0x403e03
	.globl sub_403e03
	.type sub_403e03, @function
sub_403e03:

	nop	word ptr cs:[rax + rax]
.label_279:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_316:
	test	r8b, r8b
	je	.label_213
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_214
	cmp	r14, r11
	jae	.label_217
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_217:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x403e4c
	.globl sub_403e4c
	.type sub_403e4c, @function
sub_403e4c:

	nop	dword ptr [rax]
.label_213:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_224
	cmp	r12d, 2
	jne	.label_227
	mov	eax, r9d
	and	al, 1
	jne	.label_227
	cmp	r14, r11
	jae	.label_230
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_230:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_298
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_298:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_238
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_238:
	add	r14, 3
	mov	r9b, 1
.label_227:
	cmp	r14, r11
	jae	.label_310
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_310:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_249
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_249:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_256
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_256:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_214:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_258
	test	r9b, 1
	je	.label_207
	mov	ebx, eax
	and	bl, 1
	jne	.label_207
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_273
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_273:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_306
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_306:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_207:
	cmp	r14, r11
	jae	.label_279
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_279
	.section	.text
	.align	16
	#Procedure 0x403f53
	.globl sub_403f53
	.type sub_403f53, @function
sub_403f53:

	nop	word ptr cs:[rax + rax]
.label_258:
	test	r9b, 1
	je	.label_221
	and	al, 1
	jne	.label_221
	cmp	r14, r11
	jae	.label_286
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_286:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_260
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_260:
	add	r14, 2
	xor	r9d, r9d
.label_221:
	mov	ebx, r15d
.label_315:
	cmp	r14, r11
	jae	.label_293
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_293:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_277
.label_233:
	xor	r13d, r13d
.label_228:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_206
.label_267:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_254
	mov	rsi, qword ptr [rsp + 0x50]
.label_290:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_278
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_290
	xor	r13d, r13d
	jmp	.label_206
.label_254:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_206
.label_278:
	xor	r13d, r13d
	jmp	.label_206
.label_285:
	xor	r13d, r13d
	jmp	.label_211
.label_245:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_211
	.section	.text
	.align	16
	#Procedure 0x404028
	.globl sub_404028
	.type sub_404028, @function
sub_404028:

	nop	dword ptr [rax + rax]
.label_266:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_218
	or	dl, al
	je	.label_224
.label_218:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_226
	or	dl, al
	jne	.label_226
	test	r10b, 1
	jne	.label_236
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_226
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_243
.label_226:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_247
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_250
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_250
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	r14, r11
	jae	.label_261
	mov	byte ptr [rcx + r14], al
.label_261:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_264
	jmp	.label_250
.label_220:
	mov	qword ptr [rsp + 0x20], rbp
.label_224:
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
.label_296:
	mov	r14, rax
.label_205:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_236:
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
	jmp	.label_296
.label_247:
	mov	rcx, qword ptr [rsp + 8]
.label_250:
	cmp	r14, r11
	jae	.label_205
	mov	byte ptr [rcx + r14], 0
	jmp	.label_205
.label_246:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4041bc
	.globl sub_4041bc
	.type sub_4041bc, @function
sub_4041bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0
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
	#Procedure 0x4041d3
	.globl sub_4041d3
	.type sub_4041d3, @function
sub_4041d3:

	nop	word ptr cs:[rax + rax]
.label_320:
	ret	
.label_322:
	xor	eax, eax
	jmp	.label_320
	.section	.text
	.align	16
	#Procedure 0x4041e5
	.globl sub_4041e5
	.type sub_4041e5, @function
sub_4041e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041ef
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_322
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_321]]
	.section	.text
	.align	16
	#Procedure 0x404200

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
	jne	.label_328
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
	je	.label_327
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_329
	mov	eax, OFFSET FLAT:label_330
	jmp	.label_326
.label_323:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_216
	mov	eax, OFFSET FLAT:label_240
.label_326:
	cmove	rax, rcx
.label_328:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40427f
	.globl sub_40427f
	.type sub_40427f, @function
sub_40427f:

	nop	dword ptr [rax]
.label_327:
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
	je	.label_323
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_324
	mov	eax, OFFSET FLAT:label_325
	jmp	.label_326
	.section	.text
	.align	16
	#Procedure 0x4042c0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_331
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_331:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4042e3
	.globl sub_4042e3
	.type sub_4042e3, @function
sub_4042e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_332
	test	rax, rax
	je	.label_333
.label_332:
	pop	rbx
	ret	
.label_333:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40430a
	.globl sub_40430a
	.type sub_40430a, @function
sub_40430a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404310
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
	#Procedure 0x404359
	.globl sub_404359
	.type sub_404359, @function
sub_404359:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404360

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_334
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_341:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_338
	cmp	ebp, 3
	jne	.label_335
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_335
	.section	.text
	.align	16
	#Procedure 0x4043f8
	.globl sub_4043f8
	.type sub_4043f8, @function
sub_4043f8:

	nop	dword ptr [rax + rax]
.label_340:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_337
	.section	.text
	.align	16
	#Procedure 0x404409
	.globl sub_404409
	.type sub_404409, @function
sub_404409:

	nop	dword ptr [rax]
.label_338:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_335:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_339
	cmp	esi, 0x2d
	je	.label_340
	cmp	esi, 0x3d
	jne	.label_337
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_337
	.section	.text
	.align	16
	#Procedure 0x40446a
	.globl sub_40446a
	.type sub_40446a, @function
sub_40446a:

	nop	word ptr [rax + rax]
.label_339:
	or	r13d, ebp
	or	edi, ebp
.label_337:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_341
.label_334:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_336
	mov	dword ptr [rax], r13d
.label_336:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40449f
	.globl sub_40449f
	.type sub_40449f, @function
sub_40449f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4044a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_342
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_342:
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
	#Procedure 0x404523
	.globl sub_404523
	.type sub_404523, @function
sub_404523:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404530

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_343
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_343
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_343:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404556
	.globl sub_404556
	.type sub_404556, @function
sub_404556:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045c5
	.globl sub_4045c5
	.type sub_4045c5, @function
sub_4045c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045d2
	.globl sub_4045d2
	.type sub_4045d2, @function
sub_4045d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045f6
	.globl sub_4045f6
	.type sub_4045f6, @function
sub_4045f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404609
	.globl sub_404609
	.type sub_404609, @function
sub_404609:

	nop	dword ptr [rax]
