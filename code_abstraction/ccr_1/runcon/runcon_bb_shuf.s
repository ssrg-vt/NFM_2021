	.section	.text
	.align	32
	#Procedure 0x401309
	.globl sub_401309
	.type sub_401309, @function
sub_401309:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40130a
	.globl sub_40130a
	.type sub_40130a, @function
sub_40130a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401342
	.globl sub_401342
	.type sub_401342, @function
sub_401342:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40138a
	.globl sub_40138a
	.type sub_40138a, @function
sub_40138a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ac
	.globl sub_4013ac
	.type sub_4013ac, @function
sub_4013ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4013bd
	.globl sub_4013bd
	.type sub_4013bd, @function
sub_4013bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4013d6
	.globl sub_4013d6
	.type sub_4013d6, @function
sub_4013d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013e0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4013ea
	.globl sub_4013ea
	.type sub_4013ea, @function
sub_4013ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013f0

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
	mov	rbx, rsi
	mov	ebp, edi
	mov	qword ptr [rsp + 0x20], 0
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_14
	call	setlocale
	mov	edi, OFFSET FLAT:label_25
	mov	esi, OFFSET FLAT:label_33
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_25
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	r14, [rsp + 0x1c]
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_20
	.section	.text
	.align	32
	#Procedure 0x401464
	.globl sub_401464
	.type sub_401464, @function
sub_401464:

	nop	word ptr cs:[rax + rax]
.label_9:
	mov	r12b, cl
.label_20:
	mov	dword ptr [rsp + 0x1c], 0
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebp
	mov	rsi, rbx
	mov	r8, r14
	call	getopt_long
	cmp	eax, 0x62
	jle	.label_13
	add	eax, -0x63
	cmp	eax, 0x12
	ja	.label_15
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_18]]
.label_416:
	cmp	qword ptr [rsp + 8], 0
	jne	.label_22
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_27
.label_417:
	test	r15, r15
	jne	.label_28
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_27
.label_418:
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_35
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_27
.label_419:
	test	r13, r13
	jne	.label_40
	mov	r13,  qword ptr [word ptr [rip + optarg]]
.label_27:
	mov	ecx, r12d
	jmp	.label_9
.label_13:
	cmp	eax, -1
	jne	.label_11
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jne	.label_12
	lea	rdi, [rsp + 0x20]
	call	getcon
	test	eax, eax
	js	.label_21
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 0xa
	call	fputc_unlocked
	xor	eax, eax
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_11:
	cmp	eax, 0xffffff7d
	je	.label_37
	cmp	eax, 0xffffff7e
	jne	.label_15
	xor	edi, edi
	call	usage
.label_37:
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
.label_15:
	mov	edi, 1
	call	usage
.label_12:
	or	r13, r15
	mov	rcx, qword ptr [rsp + 0x10]
	or	rcx, r13
	or	qword ptr [rsp + 8], rcx
	sete	cl
	test	r12b, 1
	jne	.label_24
	test	cl, cl
	je	.label_24
	cmp	eax, ebp
	jge	.label_32
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_24:
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jge	.label_36
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	jmp	.label_17
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	jmp	.label_17
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	jmp	.label_17
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
.label_17:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_21:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	jmp	.label_42
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
.label_42:
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
	.section	.text
	.align	32
	#Procedure 0x4016b3
	.globl sub_4016b3
	.type sub_4016b3, @function
sub_4016b3:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_43
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_43
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_43:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4016e6
	.globl sub_4016e6
	.type sub_4016e6, @function
sub_4016e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4016fa
	.globl sub_4016fa
	.type sub_4016fa, @function
sub_4016fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401700

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40170e
	.globl sub_40170e
	.type sub_40170e, @function
sub_40170e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401710

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
	js	.label_47
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_50
	cmp	r12d, 0x7fffffff
	je	.label_45
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
	jne	.label_48
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_48:
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
.label_50:
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
	jbe	.label_46
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_49
.label_46:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_44
	mov	rdi, r14
	call	free
.label_44:
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
.label_49:
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
.label_47:
	call	abort
.label_45:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4018cd
	.globl sub_4018cd
	.type sub_4018cd, @function
sub_4018cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018e3
	.globl sub_4018e3
	.type sub_4018e3, @function
sub_4018e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_51
	test	rsi, rsi
	mov	ecx, 1
	je	.label_52
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_52
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_51:
	mov	ecx, 1
.label_52:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40193b
	.globl sub_40193b
	.type sub_40193b, @function
sub_40193b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401940

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_53
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_53:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
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
	#Procedure 0x401a43
	.globl sub_401a43
	.type sub_401a43, @function
sub_401a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a50

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
	#Procedure 0x401a89
	.globl sub_401a89
	.type sub_401a89, @function
sub_401a89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a90
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
	#Procedure 0x401aa1
	.globl sub_401aa1
	.type sub_401aa1, @function
sub_401aa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ab0
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
	#Procedure 0x401ac4
	.globl sub_401ac4
	.type sub_401ac4, @function
sub_401ac4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ad0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_60
.label_61:
	ret	
.label_60:
	cmp	edi, 0x7f
	je	.label_61
	xor	eax, eax
	jmp	.label_61
	.section	.text
	.align	32
	#Procedure 0x401ae1
	.globl sub_401ae1
	.type sub_401ae1, @function
sub_401ae1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_63
	cmp	byte ptr [rax], 0x43
	jne	.label_65
	cmp	byte ptr [rax + 1], 0
	je	.label_62
.label_65:
	mov	esi, OFFSET FLAT:label_64
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_63
.label_62:
	xor	ebx, ebx
.label_63:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b21
	.globl sub_401b21
	.type sub_401b21, @function
sub_401b21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_72:
	call	xalloc_die
.label_68:
	test	rcx, rcx
	jne	.label_69
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_69:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_70
.label_71:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_70:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401bac
	.globl sub_401bac
	.type sub_401bac, @function
sub_401bac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bb3

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_68
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_72
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_71
	.section	.text
	.align	32
	#Procedure 0x401be0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_73
	ret	
.label_73:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x401bf3
	.globl sub_401bf3
	.type sub_401bf3, @function
sub_401bf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c00
	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c13
	.globl sub_401c13
	.type sub_401c13, @function
sub_401c13:

	nop	word ptr cs:[rax + rax]
.label_74:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c25
	.globl sub_401c25
	.type sub_401c25, @function
sub_401c25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c2f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_74
	call	rpl_calloc
	test	rax, rax
	je	.label_74
	pop	rcx
	ret	
.label_77:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_75
.label_76:
	mov	eax, 1
	test	bpl, bpl
	je	.label_75
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
.label_75:
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
	#Procedure 0x401c98
	.globl sub_401c98
	.type sub_401c98, @function
sub_401c98:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c9b

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
	je	.label_77
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_76
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x401cd0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cda
	.globl sub_401cda
	.type sub_401cda, @function
sub_401cda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401cea
	.globl sub_401cea
	.type sub_401cea, @function
sub_401cea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cf0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x401cfd
	.globl sub_401cfd
	.type sub_401cfd, @function
sub_401cfd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d00
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
	#Procedure 0x401d10
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_78
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_78
.label_79:
	ret	
.label_78:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_79
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d36
	.globl sub_401d36
	.type sub_401d36, @function
sub_401d36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d40
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d53
	.globl sub_401d53
	.type sub_401d53, @function
sub_401d53:

	nop	word ptr cs:[rax + rax]
.label_80:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d63
	.globl sub_401d63
	.type sub_401d63, @function
sub_401d63:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d6b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_80
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d80
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_81
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_81:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d9e
	.globl sub_401d9e
	.type sub_401d9e, @function
sub_401d9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401da0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_82
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_84:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_84
.label_82:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_86
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_85]], OFFSET FLAT:slot0
.label_86:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_83
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_83:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e31
	.globl sub_401e31
	.type sub_401e31, @function
sub_401e31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e40
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e53
	.globl sub_401e53
	.type sub_401e53, @function
sub_401e53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e60
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e73
	.globl sub_401e73
	.type sub_401e73, @function
sub_401e73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e80
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
	#Procedure 0x401e8f
	.globl sub_401e8f
	.type sub_401e8f, @function
sub_401e8f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401e90
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
	#Procedure 0x401ea3
	.globl sub_401ea3
	.type sub_401ea3, @function
sub_401ea3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401eb0

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
	#Procedure 0x401edd
	.globl sub_401edd
	.type sub_401edd, @function
sub_401edd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ee0
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
	#Procedure 0x401ef3
	.globl sub_401ef3
	.type sub_401ef3, @function
sub_401ef3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f00

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x401f09
	.globl sub_401f09
	.type sub_401f09, @function
sub_401f09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

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
	mov	rax,  qword ptr [word ptr [rip + label_87]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_88]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_89]]
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
	#Procedure 0x401f78
	.globl sub_401f78
	.type sub_401f78, @function
sub_401f78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_90
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_90:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401fa6
	.globl sub_401fa6
	.type sub_401fa6, @function
sub_401fa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fb0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_91
	test	rbx, rbx
	jne	.label_91
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_91:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_93
	test	rax, rax
	je	.label_92
.label_93:
	pop	rbx
	ret	
.label_92:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401fe0

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
	mov	rcx,  qword ptr [word ptr [rip + label_87]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_88]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_89]]
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
	#Procedure 0x40204d
	.globl sub_40204d
	.type sub_40204d, @function
sub_40204d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402050

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40205d
	.globl sub_40205d
	.type sub_40205d, @function
sub_40205d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402060

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x402067
	.globl sub_402067
	.type sub_402067, @function
sub_402067:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402070
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
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
	#Procedure 0x40209d
	.globl sub_40209d
	.type sub_40209d, @function
sub_40209d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4020a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_94
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_94:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4020c3
	.globl sub_4020c3
	.type sub_4020c3, @function
sub_4020c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_95
	test	rax, rax
	je	.label_96
.label_95:
	pop	rbx
	ret	
.label_96:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4020ea
	.globl sub_4020ea
	.type sub_4020ea, @function
sub_4020ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020f0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402103
	.globl sub_402103
	.type sub_402103, @function
sub_402103:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402110
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
	#Procedure 0x402143
	.globl sub_402143
	.type sub_402143, @function
sub_402143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402150

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
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
	#Procedure 0x402172
	.globl sub_402172
	.type sub_402172, @function
sub_402172:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402180
	.globl freecon
	.type freecon, @function
freecon:

	ret	
	.section	.text
	.align	32
	#Procedure 0x402181
	.globl sub_402181
	.type sub_402181, @function
sub_402181:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402190

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_99:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_98
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_100
	.section	.text
	.align	32
	#Procedure 0x4021b9
	.globl sub_4021b9
	.type sub_4021b9, @function
sub_4021b9:

	nop	dword ptr [rax]
.label_98:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_100:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_101
	inc	r9
	cmp	r9, 0xa
	jb	.label_99
.label_101:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021ef
	.globl sub_4021ef
	.type sub_4021ef, @function
sub_4021ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4021f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_102
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_102:
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
	#Procedure 0x402273
	.globl sub_402273
	.type sub_402273, @function
sub_402273:

	nop	word ptr cs:[rax + rax]
.label_105:
	xor	eax, eax
	jmp	.label_103
	.section	.text
	.align	32
	#Procedure 0x402284
	.globl sub_402284
	.type sub_402284, @function
sub_402284:

	nop	word ptr cs:[rax + rax]
.label_103:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40228f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_105
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_104]]
.label_106:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4022a6
	.globl sub_4022a6
	.type sub_4022a6, @function
sub_4022a6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022ab

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_106
	test	rdx, rdx
	je	.label_106
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022d0

	.globl getcon
	.type getcon, @function
getcon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022e3
	.globl sub_4022e3
	.type sub_4022e3, @function
sub_4022e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4022fa
	.globl sub_4022fa
	.type sub_4022fa, @function
sub_4022fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402300

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_110
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_107
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_107
.label_110:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_111
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_111:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_108:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_109
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_108
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_113:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4023ce
	.globl sub_4023ce
	.type sub_4023ce, @function
sub_4023ce:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023d7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_113
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_115
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_113
.label_115:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_113
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_114
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_114:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402440
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
	#Procedure 0x402459
	.globl sub_402459
	.type sub_402459, @function
sub_402459:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_14
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_116
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402485
	.globl sub_402485
	.type sub_402485, @function
sub_402485:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402490
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40249a
	.globl sub_40249a
	.type sub_40249a, @function
sub_40249a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0

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
	je	.label_117
	mov	qword ptr [rax], rbx
.label_117:
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
	#Procedure 0x40258c
	.globl sub_40258c
	.type sub_40258c, @function
sub_40258c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402590
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025a3
	.globl sub_4025a3
	.type sub_4025a3, @function
sub_4025a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025b8
	.globl sub_4025b8
	.type sub_4025b8, @function
sub_4025b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025c0
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025d3
	.globl sub_4025d3
	.type sub_4025d3, @function
sub_4025d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025e0

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
	je	.label_118
	cmp	r15, -2
	jb	.label_118
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_118
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_118:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402636
	.globl sub_402636
	.type sub_402636, @function
sub_402636:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402640
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_120
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_123
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4026b4
	.globl sub_4026b4
	.type sub_4026b4, @function
sub_4026b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4026ca
	.globl sub_4026ca
	.type sub_4026ca, @function
sub_4026ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026d0
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
	#Procedure 0x4026e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x4026e9
	.globl sub_4026e9
	.type sub_4026e9, @function
sub_4026e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4026f0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
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
	je	.label_126
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_124
	jmp	.label_125
.label_126:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_125
.label_124:
	mov	eax, 1
	test	bpl, bpl
	je	.label_125
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
.label_125:
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
	#Procedure 0x402788
	.globl sub_402788
	.type sub_402788, @function
sub_402788:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402790

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
	je	.label_127
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_129
	jmp	.label_128
.label_127:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_128
.label_129:
	mov	eax, 1
	test	bpl, bpl
	je	.label_128
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
.label_128:
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
	#Procedure 0x402809
	.globl sub_402809
	.type sub_402809, @function
sub_402809:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402810

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
	je	.label_132
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_131
	jmp	.label_130
.label_132:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_130
.label_131:
	mov	eax, 1
	test	bpl, bpl
	je	.label_130
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
.label_130:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402873
	.globl sub_402873
	.type sub_402873, @function
sub_402873:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880

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
	je	.label_135
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_133
	jmp	.label_134
.label_135:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_134
.label_133:
	mov	eax, 1
	test	bpl, bpl
	je	.label_134
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_134:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028df
	.globl sub_4028df
	.type sub_4028df, @function
sub_4028df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4028e0

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
	je	.label_136
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_138
	jmp	.label_137
.label_136:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_137
.label_138:
	mov	eax, 1
	test	bpl, bpl
	je	.label_137
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_137:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402929
	.globl sub_402929
	.type sub_402929, @function
sub_402929:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402930

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
	je	.label_141
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_140
	jmp	.label_139
.label_141:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_139
.label_140:
	mov	eax, 1
	test	bpl, bpl
	je	.label_139
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_139:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402975
	.globl sub_402975
	.type sub_402975, @function
sub_402975:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402980

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_144
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_143
	jmp	.label_142
.label_144:
	mov	eax, 1
	test	cl, cl
	je	.label_142
.label_143:
	xor	eax, eax
.label_142:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029af
	.globl sub_4029af
	.type sub_4029af, @function
sub_4029af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4029b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_148
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_150
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_150
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_146
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_146:
	mov	rbx, r14
.label_150:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_148:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_149
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402a51
	.globl sub_402a51
	.type sub_402a51, @function
sub_402a51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_151:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_151
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402a81
	.globl sub_402a81
	.type sub_402a81, @function
sub_402a81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
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
	#Procedure 0x402ad7
	.globl sub_402ad7
	.type sub_402ad7, @function
sub_402ad7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ae0
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402af3
	.globl sub_402af3
	.type sub_402af3, @function
sub_402af3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b00

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_152
	nop	
.label_161:
	mov	edi, OFFSET FLAT:label_29
	call	strcmp
	test	eax, eax
	je	.label_159
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_161
.label_159:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_29
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_123
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_153
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_153
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_29
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_123
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_157
	mov	ecx, OFFSET FLAT:label_14
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
	#Procedure 0x402c1a
	.globl sub_402c1a
	.type sub_402c1a, @function
sub_402c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c20
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c33
	.globl sub_402c33
	.type sub_402c33, @function
sub_402c33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c40

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x402c45
	.globl sub_402c45
	.type sub_402c45, @function
sub_402c45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c50
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
	#Procedure 0x402c77
	.globl sub_402c77
	.type sub_402c77, @function
sub_402c77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c8a
	.globl sub_402c8a
	.type sub_402c8a, @function
sub_402c8a:

	nop	word ptr [rax + rax]
.label_164:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_162
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_162:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cc4
	.globl sub_402cc4
	.type sub_402cc4, @function
sub_402cc4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402cc6

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
	jne	.label_163
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_163
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_164
.label_163:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_165:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d03
	.globl sub_402d03
	.type sub_402d03, @function
sub_402d03:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402d05
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_165
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d20
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d33
	.globl sub_402d33
	.type sub_402d33, @function
sub_402d33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d40
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
	#Procedure 0x402d4d
	.globl sub_402d4d
	.type sub_402d4d, @function
sub_402d4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d50

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
	jne	.label_175
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
	je	.label_166
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_170
	mov	eax, OFFSET FLAT:label_171
	jmp	.label_169
.label_166:
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
	je	.label_174
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_167
	mov	eax, OFFSET FLAT:label_168
	jmp	.label_169
.label_174:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_172
	mov	eax, OFFSET FLAT:label_173
.label_169:
	cmove	rax, rcx
.label_175:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e0d
	.globl sub_402e0d
	.type sub_402e0d, @function
sub_402e0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e10

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
	#Procedure 0x402e27
	.globl sub_402e27
	.type sub_402e27, @function
sub_402e27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e30
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
	#Procedure 0x402e79
	.globl sub_402e79
	.type sub_402e79, @function
sub_402e79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e80

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
	je	.label_176
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_177
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_177
.label_176:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_177
	test	cl, cl
	jne	.label_177
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_177:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ee6
	.globl sub_402ee6
	.type sub_402ee6, @function
sub_402ee6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ef0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402efa
	.globl sub_402efa
	.type sub_402efa, @function
sub_402efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f00

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
	je	.label_178
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
.label_178:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f52
	.globl sub_402f52
	.type sub_402f52, @function
sub_402f52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f60
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f73
	.globl sub_402f73
	.type sub_402f73, @function
sub_402f73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f90
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
	#Procedure 0x402fa6
	.globl sub_402fa6
	.type sub_402fa6, @function
sub_402fa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fb0
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
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
	#Procedure 0x403006
	.globl sub_403006
	.type sub_403006, @function
sub_403006:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010
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
	#Procedure 0x40301f
	.globl sub_40301f
	.type sub_40301f, @function
sub_40301f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403020
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403028
	.globl sub_403028
	.type sub_403028, @function
sub_403028:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403030
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
	#Procedure 0x40303f
	.globl sub_40303f
	.type sub_40303f, @function
sub_40303f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403040
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
	#Procedure 0x4030b2
	.globl sub_4030b2
	.type sub_4030b2, @function
sub_4030b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0

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
.label_258:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_261
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_266]]
.label_404:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_271
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_173
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
	jne	.label_255
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_255
	xor	r14d, r14d
.label_291:
	cmp	r14, r11
	jae	.label_288
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_288:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_291
.label_255:
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
	jmp	.label_184
.label_397:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_184
.label_400:
	mov	al, 1
.label_398:
	mov	r12b, 1
.label_401:
	test	r12b, 1
	mov	cl, 1
	je	.label_203
	mov	ecx, eax
.label_203:
	mov	al, cl
.label_399:
	test	r12b, 1
	jne	.label_206
	test	r11, r11
	je	.label_208
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_208:
	mov	r14d, 1
	jmp	.label_215
.label_206:
	xor	r14d, r14d
.label_215:
	mov	ecx, OFFSET FLAT:label_173
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_184
.label_402:
	test	r12b, 1
	jne	.label_228
	test	r11, r11
	je	.label_290
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_290:
	mov	r14d, 1
	jmp	.label_233
.label_403:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_172
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_184
.label_228:
	xor	r14d, r14d
.label_233:
	mov	eax, OFFSET FLAT:label_172
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_184:
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
	jmp	.label_245
	.section	.text
	.align	32
	#Procedure 0x40339c
	.globl sub_40339c
	.type sub_40339c, @function
sub_40339c:

	nop	dword ptr [rax]
.label_201:
	inc	rsi
.label_245:
	cmp	rbp, -1
	je	.label_274
	cmp	rsi, rbp
	jne	.label_277
	jmp	.label_217
	.section	.text
	.align	32
	#Procedure 0x4033b3
	.globl sub_4033b3
	.type sub_4033b3, @function
sub_4033b3:

	nop	word ptr cs:[rax + rax]
.label_274:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_217
.label_277:
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
	jbe	.label_183
.label_281:
	xor	r8d, r8d
.label_216:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_185
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_190]]
.label_347:
	test	rsi, rsi
	jne	.label_180
	jmp	.label_197
	.section	.text
	.align	32
	#Procedure 0x40344e
	.globl sub_40344e
	.type sub_40344e, @function
sub_40344e:

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
	jne	.label_213
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_216
	jmp	.label_229
.label_213:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_216
.label_351:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_236
	test	rsi, rsi
	jne	.label_238
	cmp	rbp, 1
	je	.label_197
	xor	r13d, r13d
	jmp	.label_191
.label_340:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_243
	cmp	byte ptr [rsp + 7], 0
	jne	.label_187
	cmp	r12d, 2
	jne	.label_244
	mov	eax, r9d
	and	al, 1
	jne	.label_244
	cmp	r14, r11
	jae	.label_222
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_222:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_249
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_249:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_253
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	add	r14, 3
	mov	r9b, 1
.label_244:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_287
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_287:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_260
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_260
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_260
	cmp	r14, r11
	jae	.label_272
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_272:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_212
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_212:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_191
.label_341:
	mov	bl, 0x62
	jmp	.label_219
.label_342:
	mov	cl, 0x74
	jmp	.label_196
.label_343:
	mov	bl, 0x76
	jmp	.label_219
.label_344:
	mov	bl, 0x66
	jmp	.label_219
.label_345:
	mov	cl, 0x72
	jmp	.label_196
.label_348:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_286
	cmp	byte ptr [rsp + 7], 0
	jne	.label_187
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
	jae	.label_179
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_179:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_195
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_195:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_198
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_198:
	add	r14, 3
	xor	r9d, r9d
.label_286:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_191
.label_349:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_210
	cmp	r12d, 2
	jne	.label_180
	cmp	byte ptr [rsp + 7], 0
	je	.label_180
	jmp	.label_187
.label_350:
	cmp	r12d, 2
	jne	.label_225
	cmp	byte ptr [rsp + 7], 0
	jne	.label_187
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_182
.label_185:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_252
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
.label_209:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_192
	test	r8b, r8b
	je	.label_192
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_191
.label_236:
	test	rsi, rsi
	jne	.label_257
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_257
.label_197:
	mov	dl, 1
.label_346:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_187
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_191:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_267
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_269
	jmp	.label_273
	.section	.text
	.align	32
	#Procedure 0x403794
	.globl sub_403794
	.type sub_403794, @function
sub_403794:

	nop	word ptr cs:[rax + rax]
.label_267:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_273
.label_269:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_276
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_182
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x4037dd
	.globl sub_4037dd
	.type sub_4037dd, @function
sub_4037dd:

	nop	dword ptr [rax]
.label_273:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_285
	jmp	.label_182
.label_276:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_285
.label_243:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_201
	xor	r15d, r15d
	jmp	.label_180
.label_225:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_196
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_182
.label_196:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_187
.label_219:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_191
	nop	word ptr cs:[rax + rax]
.label_285:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_187
	cmp	r12d, 2
	jne	.label_204
	mov	eax, r9d
	and	al, 1
	jne	.label_204
	cmp	r14, r11
	jae	.label_207
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_207:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_232
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_232:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_221
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	add	r14, 3
	mov	r9b, 1
.label_204:
	cmp	r14, r11
	jae	.label_227
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_227:
	inc	r14
	jmp	.label_230
.label_252:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_234
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_234:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_226:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_248
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_251
	cmp	rbp, -2
	je	.label_263
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_279
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_268:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_237
	bt	rsi, rdx
	jb	.label_229
.label_237:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_268
.label_279:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_278
	xor	r13d, r13d
.label_278:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_226
	jmp	.label_209
.label_260:
	xor	r13d, r13d
	jmp	.label_191
.label_257:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_191
.label_210:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_180
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_180
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_180
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_235
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_247
	cmp	byte ptr [rsp + 7], 0
	jne	.label_187
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_200
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_200:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_282
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_282:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_214
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_214:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_220
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_220:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_191
.label_180:
	xor	eax, eax
.label_238:
	xor	r13d, r13d
	jmp	.label_191
.label_192:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_231
	.section	.text
	.align	32
	#Procedure 0x403ac3
	.globl sub_403ac3
	.type sub_403ac3, @function
sub_403ac3:

	nop	word ptr cs:[rax + rax]
.label_181:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_231:
	test	r8b, r8b
	je	.label_239
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_240
	cmp	r14, r11
	jae	.label_241
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_241:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_240
	.section	.text
	.align	32
	#Procedure 0x403b0c
	.globl sub_403b0c
	.type sub_403b0c, @function
sub_403b0c:

	nop	dword ptr [rax]
.label_239:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_229
	cmp	r12d, 2
	jne	.label_224
	mov	eax, r9d
	and	al, 1
	jne	.label_224
	cmp	r14, r11
	jae	.label_250
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_250:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_275
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_275:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_256
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_256:
	add	r14, 3
	mov	r9b, 1
.label_224:
	cmp	r14, r11
	jae	.label_199
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_199:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_264
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_264:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_270
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_270:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_240:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_182
	test	r9b, 1
	je	.label_218
	mov	ebx, eax
	and	bl, 1
	jne	.label_218
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_194
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_194:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_188
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_188:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_218:
	cmp	r14, r11
	jae	.label_181
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_181
	.section	.text
	.align	32
	#Procedure 0x403c13
	.globl sub_403c13
	.type sub_403c13, @function
sub_403c13:

	nop	word ptr cs:[rax + rax]
.label_182:
	test	r9b, 1
	je	.label_186
	and	al, 1
	jne	.label_186
	cmp	r14, r11
	jae	.label_189
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_189:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_259
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_259:
	add	r14, 2
	xor	r9d, r9d
.label_186:
	mov	ebx, r15d
.label_230:
	cmp	r14, r11
	jae	.label_202
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_202:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_201
.label_251:
	xor	r13d, r13d
.label_248:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_209
.label_263:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_193
	mov	rsi, qword ptr [rsp + 0x50]
.label_284:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_223
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_284
	xor	r13d, r13d
	jmp	.label_209
.label_193:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_209
.label_223:
	xor	r13d, r13d
	jmp	.label_209
.label_235:
	xor	r13d, r13d
	jmp	.label_191
.label_247:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_191
	.section	.text
	.align	32
	#Procedure 0x403ce8
	.globl sub_403ce8
	.type sub_403ce8, @function
sub_403ce8:

	nop	dword ptr [rax + rax]
.label_217:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_242
	or	dl, al
	je	.label_229
.label_242:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_246
	or	dl, al
	jne	.label_246
	test	r10b, 1
	jne	.label_254
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_246
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_258
.label_246:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_262
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_265
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_265
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_289:
	cmp	r14, r11
	jae	.label_280
	mov	byte ptr [rcx + r14], al
.label_280:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_289
	jmp	.label_265
.label_187:
	mov	qword ptr [rsp + 0x20], rbp
.label_229:
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
.label_205:
	mov	r14, rax
.label_211:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_254:
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
	jmp	.label_205
.label_262:
	mov	rcx, qword ptr [rsp + 8]
.label_265:
	cmp	r14, r11
	jae	.label_211
	mov	byte ptr [rcx + r14], 0
	jmp	.label_211
.label_261:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403e7c
	.globl sub_403e7c
	.type sub_403e7c, @function
sub_403e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e80

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
	je	.label_292
	mov	edx, OFFSET FLAT:label_302
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_308
.label_292:
	mov	edx, OFFSET FLAT:label_309
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_297
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_298]]
.label_321:
	add	rsp, 8
	jmp	.label_296
.label_297:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
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
	jmp	.label_296
.label_322:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
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
.label_323:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
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
.label_324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
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
	jmp	.label_296
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
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
	jmp	.label_296
.label_327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
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
	jmp	.label_296
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
	jmp	.label_296
.label_330:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
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
	jmp	.label_296
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
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
.label_296:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041d8
	.globl sub_4041d8
	.type sub_4041d8, @function
sub_4041d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041e0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041ea
	.globl sub_4041ea
	.type sub_4041ea, @function
sub_4041ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404255
	.globl sub_404255
	.type sub_404255, @function
sub_404255:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404262
	.globl sub_404262
	.type sub_404262, @function
sub_404262:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404286
	.globl sub_404286
	.type sub_404286, @function
sub_404286:

	nop	word ptr cs:[rax + rax]
