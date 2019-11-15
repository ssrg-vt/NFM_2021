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
	je	.label_9
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_11
	jmp	.label_10
.label_9:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_10
.label_11:
	mov	eax, 1
	test	bpl, bpl
	je	.label_10
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
.label_10:
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
	#Procedure 0x40152d
	.globl sub_40152d
	.type sub_40152d, @function
sub_40152d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401530
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_12
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_14]]
.label_12:
	xor	eax, eax
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x401545
	.globl sub_401545
	.type sub_401545, @function
sub_401545:

	nop	word ptr cs:[rax + rax]
.label_13:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401550
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
	.align	16
	#Procedure 0x401573
	.globl sub_401573
	.type sub_401573, @function
sub_401573:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401580

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
	.align	16
	#Procedure 0x40159a
	.globl sub_40159a
	.type sub_40159a, @function
sub_40159a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_18
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_20
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_20
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_23
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_23:
	mov	rbx, r14
.label_20:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_18:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_19
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401641
	.globl sub_401641
	.type sub_401641, @function
sub_401641:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650

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
	je	.label_29
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_29:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_24
	mov	edx, OFFSET FLAT:label_25
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_28
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_30
	cmp	eax, 0x76
	je	.label_27
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_26
.label_27:
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
	.align	16
	#Procedure 0x401734
	.globl sub_401734
	.type sub_401734, @function
sub_401734:

	nop	dword ptr [rax]
.label_30:
	xor	edi, edi
.label_26:
	call	rcx
.label_28:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401750
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
	#Procedure 0x401763
	.globl sub_401763
	.type sub_401763, @function
sub_401763:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401770

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
	#Procedure 0x4017a9
	.globl sub_4017a9
	.type sub_4017a9, @function
sub_4017a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017b0
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
	#Procedure 0x4017c1
	.globl sub_4017c1
	.type sub_4017c1, @function
sub_4017c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017d0
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
	#Procedure 0x4017e4
	.globl sub_4017e4
	.type sub_4017e4, @function
sub_4017e4:

	nop	word ptr cs:[rax + rax]
.label_31:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017f3
	.globl sub_4017f3
	.type sub_4017f3, @function
sub_4017f3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4017f5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_31
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401810
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_32
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_32:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40182e
	.globl sub_40182e
	.type sub_40182e, @function
sub_40182e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401830
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4018a4
	.globl sub_4018a4
	.type sub_4018a4, @function
sub_4018a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0

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
	jne	.label_43
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
	je	.label_39
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_47
	mov	eax, OFFSET FLAT:label_48
	jmp	.label_42
.label_46:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_44
	mov	eax, OFFSET FLAT:label_45
.label_42:
	cmove	rax, rcx
.label_43:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40192f
	.globl sub_40192f
	.type sub_40192f, @function
sub_40192f:

	nop	dword ptr [rax]
.label_39:
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
	je	.label_46
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_40
	mov	eax, OFFSET FLAT:label_41
	jmp	.label_42
	.section	.text
	.align	16
	#Procedure 0x401970

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_51
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
.label_51:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
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
	.align	16
	#Procedure 0x401a2b
	.globl sub_401a2b
	.type sub_401a2b, @function
sub_401a2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a30
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
	#Procedure 0x401a57
	.globl sub_401a57
	.type sub_401a57, @function
sub_401a57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a60
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x401a6a
	.globl sub_401a6a
	.type sub_401a6a, @function
sub_401a6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70
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
	#Procedure 0x401a7f
	.globl sub_401a7f
	.type sub_401a7f, @function
sub_401a7f:

	nop	
.label_55:
	cmp	edi, 0x7f
	je	.label_54
	xor	eax, eax
	jmp	.label_54
	.section	.text
	.align	16
	#Procedure 0x401a89
	.globl sub_401a89
	.type sub_401a89, @function
sub_401a89:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a98
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_55
.label_54:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aa0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x401aa5
	.globl sub_401aa5
	.type sub_401aa5, @function
sub_401aa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_56]]
	addsd	xmm0, xmm1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ac7
	.globl sub_401ac7
	.type sub_401ac7, @function
sub_401ac7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ad0

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
	je	.label_58
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_57
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_57
.label_58:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_57
	test	cl, cl
	jne	.label_57
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_57:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b36
	.globl sub_401b36
	.type sub_401b36, @function
sub_401b36:

	nop	word ptr cs:[rax + rax]
.label_59:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b43
	.globl sub_401b43
	.type sub_401b43, @function
sub_401b43:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b4b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_59
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b60

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_60
	test	rsi, rsi
	mov	ecx, 1
	je	.label_61
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_61
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_60:
	mov	ecx, 1
.label_61:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401bab
	.globl sub_401bab
	.type sub_401bab, @function
sub_401bab:

	nop	dword ptr [rax + rax]
.label_62:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401bb5
	.globl sub_401bb5
	.type sub_401bb5, @function
sub_401bb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bbf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_62
	call	rpl_calloc
	test	rax, rax
	je	.label_62
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401be0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x401bea
	.globl sub_401bea
	.type sub_401bea, @function
sub_401bea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bf0

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
	je	.label_63
	mov	qword ptr [rax], rbx
.label_63:
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
	#Procedure 0x401cdc
	.globl sub_401cdc
	.type sub_401cdc, @function
sub_401cdc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ce0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_24
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_64
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d05
	.globl sub_401d05
	.type sub_401d05, @function
sub_401d05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d10

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rax
	movabs	rdi, 0x7fffffffffffffff
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_65]]
	jbe	.label_66
	movsd	xmm1,  qword ptr [word ptr [rip + label_68]]
	ucomisd	xmm1, xmm0
	jbe	.label_69
	cvttsd2si	rdi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rdi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_56]]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	xor	ecx, ecx
	ucomisd	xmm0, xmm1
	seta	cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rsi, rcx
	sub	rsi, rax
	add	rsi, 0x3b9aca00
	sub	rcx, rax
	cmovns	rsi, rcx
	add	rdi, rdx
	sar	rcx, 0x3f
	add	rcx, rdi
	mov	rdi, rcx
	jmp	.label_67
.label_69:
	mov	esi, 0x3b9ac9ff
.label_67:
	call	make_timespec
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dc1
	.globl sub_401dc1
	.type sub_401dc1, @function
sub_401dc1:

	nop	dword ptr [rax + rax]
.label_66:
	inc	rdi
	xor	esi, esi
	jmp	.label_67
	.section	.text
	.align	16
	#Procedure 0x401dd0

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
	je	.label_80
	mov	edx, OFFSET FLAT:label_85
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_72
.label_80:
	mov	edx, OFFSET FLAT:label_74
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
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
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_81
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_82]]
.label_388:
	add	rsp, 8
	jmp	.label_73
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
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
	jmp	.label_73
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
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
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
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
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
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
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	jmp	.label_73
.label_393:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_73
.label_394:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
	jmp	.label_73
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
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
	jmp	.label_73
.label_397:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
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
	jmp	.label_73
.label_396:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
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
.label_73:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402128
	.globl sub_402128
	.type sub_402128, @function
sub_402128:

	nop	dword ptr [rax + rax]
.label_91:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 8]
.label_90:
	test	r14, r14
	je	.label_89
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14], rax
.label_89:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402150
	.globl sub_402150
	.type sub_402150, @function
sub_402150:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40215f

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	strtod
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax], 0
	je	.label_90
	movsd	qword ptr [rsp + 8], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp], rax
	jae	.label_91
	mov	qword ptr [rsp], rax
	jmp	.label_90
	.section	.text
	.align	16
	#Procedure 0x4021b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_93
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4021e0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_94
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_94:
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
	#Procedure 0x402263
	.globl sub_402263
	.type sub_402263, @function
sub_402263:

	nop	word ptr cs:[rax + rax]
.label_95:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x40227c
	.globl sub_40227c
	.type sub_40227c, @function
sub_40227c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402289

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_95
	ret	
	.section	.text
	.align	16
	#Procedure 0x402290
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
	#Procedure 0x40229f
	.globl sub_40229f
	.type sub_40229f, @function
sub_40229f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4022a0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022aa
	.globl sub_4022aa
	.type sub_4022aa, @function
sub_4022aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022b0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_96
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_98
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_98
.label_96:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_97
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_97:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_101
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_93
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_101:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_100
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
	#Procedure 0x402370
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_102
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_104:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_104
.label_102:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_105
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_106]], OFFSET FLAT:slot0
.label_105:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_103
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_103:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
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
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_107
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_107:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402436
	.globl sub_402436
	.type sub_402436, @function
sub_402436:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402440

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_108
	test	rbx, rbx
	jne	.label_108
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_108:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_110
	test	rax, rax
	je	.label_109
.label_110:
	pop	rbx
	ret	
.label_109:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402470
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40247a
	.globl sub_40247a
	.type sub_40247a, @function
sub_40247a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402480
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40248a
	.globl sub_40248a
	.type sub_40248a, @function
sub_40248a:

	nop	word ptr [rax + rax]
.label_112:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_111
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40249b
	.globl sub_40249b
	.type sub_40249b, @function
sub_40249b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024a5
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_112
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_112
.label_111:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024c0

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	call	dtotimespec
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	lea	rdi, [rsp]
	xor	esi, esi
	call	rpl_nanosleep
	test	eax, eax
	je	.label_113
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_114:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_113
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_114
.label_113:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402533
	.globl sub_402533
	.type sub_402533, @function
sub_402533:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402540
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
	#Procedure 0x40254f
	.globl sub_40254f
	.type sub_40254f, @function
sub_40254f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402550
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
	#Procedure 0x4025c2
	.globl sub_4025c2
	.type sub_4025c2, @function
sub_4025c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0
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
	#Procedure 0x402603
	.globl sub_402603
	.type sub_402603, @function
sub_402603:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402610
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
	#Procedure 0x402626
	.globl sub_402626
	.type sub_402626, @function
sub_402626:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630
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
	#Procedure 0x40263d
	.globl sub_40263d
	.type sub_40263d, @function
sub_40263d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402640

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40264a
	.globl sub_40264a
	.type sub_40264a, @function
sub_40264a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402650
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
	#Procedure 0x402660

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x402669
	.globl sub_402669
	.type sub_402669, @function
sub_402669:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402670

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40267a
	.globl sub_40267a
	.type sub_40267a, @function
sub_40267a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402680
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40268a
	.globl sub_40268a
	.type sub_40268a, @function
sub_40268a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402690

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
	#Procedure 0x4026c7
	.globl sub_4026c7
	.type sub_4026c7, @function
sub_4026c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026d0

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
	#Procedure 0x4026e7
	.globl sub_4026e7
	.type sub_4026e7, @function
sub_4026e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_115
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_116
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_115:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40271f
	.globl sub_40271f
	.type sub_40271f, @function
sub_40271f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402720
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
	#Procedure 0x402769
	.globl sub_402769
	.type sub_402769, @function
sub_402769:

	nop	dword ptr [rax]
.label_120:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_117
	jnp	.label_119
.label_117:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_119
	.section	.text
	.align	16
	#Procedure 0x402787

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbx
	je	.label_121
	test	r15, r15
	jne	.label_120
	cmp	byte ptr [rax], 0
	je	.label_120
	xor	eax, eax
	jmp	.label_118
.label_121:
	xor	eax, eax
.label_119:
	test	r15, r15
	je	.label_118
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15], rcx
.label_118:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027f5
	.globl sub_4027f5
	.type sub_4027f5, @function
sub_4027f5:

	nop	word ptr cs:[rax + rax]
.label_122:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40280e
	.globl sub_40280e
	.type sub_40280e, @function
sub_40280e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402817

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_122
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_124
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_122
.label_124:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_122
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_123
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_123:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402880

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
.label_196:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_185
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_201]]
.label_442:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_207
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_45
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_443:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_216
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_216
	xor	r14d, r14d
.label_226:
	cmp	r14, r11
	jae	.label_224
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_224:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_226
.label_216:
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
	jmp	.label_126
.label_435:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_126
.label_438:
	mov	al, 1
.label_436:
	mov	r12b, 1
.label_439:
	test	r12b, 1
	mov	cl, 1
	je	.label_133
	mov	ecx, eax
.label_133:
	mov	al, cl
.label_437:
	test	r12b, 1
	jne	.label_137
	test	r11, r11
	je	.label_191
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_191:
	mov	r14d, 1
	jmp	.label_143
.label_137:
	xor	r14d, r14d
.label_143:
	mov	ecx, OFFSET FLAT:label_45
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_126
.label_440:
	test	r12b, 1
	jne	.label_151
	test	r11, r11
	je	.label_155
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_155:
	mov	r14d, 1
	jmp	.label_206
.label_441:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_44
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_126
.label_151:
	xor	r14d, r14d
.label_206:
	mov	eax, OFFSET FLAT:label_44
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_126:
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
	#Procedure 0x402b5c
	.globl sub_402b5c
	.type sub_402b5c, @function
sub_402b5c:

	nop	dword ptr [rax]
.label_176:
	inc	rsi
.label_225:
	cmp	rbp, -1
	je	.label_210
	cmp	rsi, rbp
	jne	.label_158
	jmp	.label_213
	.section	.text
	.align	16
	#Procedure 0x402b73
	.globl sub_402b73
	.type sub_402b73, @function
sub_402b73:

	nop	word ptr cs:[rax + rax]
.label_210:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_213
.label_158:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_218
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_220
	cmp	rbp, -1
	jne	.label_220
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
.label_220:
	cmp	rbx, rbp
	jbe	.label_229
.label_218:
	xor	r8d, r8d
.label_144:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_231
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_234]]
.label_357:
	test	rsi, rsi
	jne	.label_125
	jmp	.label_128
	.section	.text
	.align	16
	#Procedure 0x402c0e
	.globl sub_402c0e
	.type sub_402c0e, @function
sub_402c0e:

	nop	
.label_229:
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
	jne	.label_141
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_144
	jmp	.label_152
.label_141:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_144
.label_361:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_163
	test	rsi, rsi
	jne	.label_164
	cmp	rbp, 1
	je	.label_128
	xor	r13d, r13d
	jmp	.label_131
.label_350:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_169
	cmp	byte ptr [rsp + 7], 0
	jne	.label_127
	cmp	r12d, 2
	jne	.label_173
	mov	eax, r9d
	and	al, 1
	jne	.label_173
	cmp	r14, r11
	jae	.label_180
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_180:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_182
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_182:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_188
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_188:
	add	r14, 3
	mov	r9b, 1
.label_173:
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
	je	.label_197
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_197
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_197
	cmp	r14, r11
	jae	.label_208
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_208:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_214
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_214:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_131
.label_351:
	mov	bl, 0x62
	jmp	.label_215
.label_352:
	mov	cl, 0x74
	jmp	.label_217
.label_353:
	mov	bl, 0x76
	jmp	.label_215
.label_354:
	mov	bl, 0x66
	jmp	.label_215
.label_355:
	mov	cl, 0x72
	jmp	.label_217
.label_358:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_223
	cmp	byte ptr [rsp + 7], 0
	jne	.label_127
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
	jae	.label_227
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_227:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_236
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_236:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_129
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_129:
	add	r14, 3
	xor	r9d, r9d
.label_223:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_131
.label_359:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_140
	cmp	r12d, 2
	jne	.label_125
	cmp	byte ptr [rsp + 7], 0
	je	.label_125
	jmp	.label_127
.label_360:
	cmp	r12d, 2
	jne	.label_148
	cmp	byte ptr [rsp + 7], 0
	jne	.label_127
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_171
.label_231:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_174
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
.label_159:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_172
	test	r8b, r8b
	je	.label_172
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_131
.label_163:
	test	rsi, rsi
	jne	.label_195
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_195
.label_128:
	mov	dl, 1
.label_356:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_127
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_131:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_203
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_205
	jmp	.label_209
	.section	.text
	.align	16
	#Procedure 0x402f54
	.globl sub_402f54
	.type sub_402f54, @function
sub_402f54:

	nop	word ptr cs:[rax + rax]
.label_203:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_209
.label_205:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_211
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_171
	jmp	.label_222
	.section	.text
	.align	16
	#Procedure 0x402f9d
	.globl sub_402f9d
	.type sub_402f9d, @function
sub_402f9d:

	nop	dword ptr [rax]
.label_209:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_222
	jmp	.label_171
.label_211:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_222
.label_169:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_176
	xor	r15d, r15d
	jmp	.label_125
.label_148:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_217
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_171
.label_217:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_127
.label_215:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_131
	nop	word ptr cs:[rax + rax]
.label_222:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_127
	cmp	r12d, 2
	jne	.label_134
	mov	eax, r9d
	and	al, 1
	jne	.label_134
	cmp	r14, r11
	jae	.label_138
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_138:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_235
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_235:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_146
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_146:
	add	r14, 3
	mov	r9b, 1
.label_134:
	cmp	r14, r11
	jae	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_149:
	inc	r14
	jmp	.label_156
.label_174:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_160
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_160:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_202:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_181
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_184
	cmp	rbp, -2
	je	.label_189
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_192
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_228:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_194
	bt	rsi, rdx
	jb	.label_152
.label_194:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_228
.label_192:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_212
	xor	r13d, r13d
.label_212:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_202
	jmp	.label_159
.label_197:
	xor	r13d, r13d
	jmp	.label_131
.label_195:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_131
.label_140:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_125
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_125
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_125
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_232
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_221
	cmp	byte ptr [rsp + 7], 0
	jne	.label_127
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_130
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_130:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_178
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_178:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_142
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_142:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_145
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_145:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_131
.label_125:
	xor	eax, eax
.label_164:
	xor	r13d, r13d
	jmp	.label_131
.label_172:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x403283
	.globl sub_403283
	.type sub_403283, @function
sub_403283:

	nop	word ptr cs:[rax + rax]
.label_154:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_157:
	test	r8b, r8b
	je	.label_165
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_166
	cmp	r14, r11
	jae	.label_167
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_167:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_166
	.section	.text
	.align	16
	#Procedure 0x4032cc
	.globl sub_4032cc
	.type sub_4032cc, @function
sub_4032cc:

	nop	dword ptr [rax]
.label_165:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_152
	cmp	r12d, 2
	jne	.label_179
	mov	eax, r9d
	and	al, 1
	jne	.label_179
	cmp	r14, r11
	jae	.label_183
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_183:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_187
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_187:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_193
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_193:
	add	r14, 3
	mov	r9b, 1
.label_179:
	cmp	r14, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_199
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_199:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_135
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_135:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_166:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_171
	test	r9b, 1
	je	.label_170
	mov	ebx, eax
	and	bl, 1
	jne	.label_170
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_219
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_219:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_150
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_150:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_170:
	cmp	r14, r11
	jae	.label_154
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_154
	.section	.text
	.align	16
	#Procedure 0x4033d3
	.globl sub_4033d3
	.type sub_4033d3, @function
sub_4033d3:

	nop	word ptr cs:[rax + rax]
.label_171:
	test	r9b, 1
	je	.label_204
	and	al, 1
	jne	.label_204
	cmp	r14, r11
	jae	.label_233
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_233:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_230
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	add	r14, 2
	xor	r9d, r9d
.label_204:
	mov	ebx, r15d
.label_156:
	cmp	r14, r11
	jae	.label_132
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_132:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_176
.label_184:
	xor	r13d, r13d
.label_181:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_159
.label_189:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_147
	mov	rsi, qword ptr [rsp + 0x50]
.label_162:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_161
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_162
	xor	r13d, r13d
	jmp	.label_159
.label_147:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_159
.label_161:
	xor	r13d, r13d
	jmp	.label_159
.label_232:
	xor	r13d, r13d
	jmp	.label_131
.label_221:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_131
	.section	.text
	.align	16
	#Procedure 0x4034a8
	.globl sub_4034a8
	.type sub_4034a8, @function
sub_4034a8:

	nop	dword ptr [rax + rax]
.label_213:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_168
	or	dl, al
	je	.label_152
.label_168:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_177
	or	dl, al
	jne	.label_177
	test	r10b, 1
	jne	.label_190
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_177
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_196
.label_177:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_198
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_200
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_200
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_237:
	cmp	r14, r11
	jae	.label_186
	mov	byte ptr [rcx + r14], al
.label_186:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_237
	jmp	.label_200
.label_127:
	mov	qword ptr [rsp + 0x20], rbp
.label_152:
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
.label_136:
	mov	r14, rax
.label_139:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_190:
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
	jmp	.label_136
.label_198:
	mov	rcx, qword ptr [rsp + 8]
.label_200:
	cmp	r14, r11
	jae	.label_139
	mov	byte ptr [rcx + r14], 0
	jmp	.label_139
.label_185:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40363c
	.globl sub_40363c
	.type sub_40363c, @function
sub_40363c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403640
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403648
	.globl sub_403648
	.type sub_403648, @function
sub_403648:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403650

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_239
	cmp	byte ptr [rax], 0x43
	jne	.label_241
	cmp	byte ptr [rax + 1], 0
	je	.label_238
.label_241:
	mov	esi, OFFSET FLAT:label_240
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_239
.label_238:
	xor	ebx, ebx
.label_239:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403681
	.globl sub_403681
	.type sub_403681, @function
sub_403681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403690

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x403699
	.globl sub_403699
	.type sub_403699, @function
sub_403699:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036a0

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
	mov	rax,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
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
	#Procedure 0x403708
	.globl sub_403708
	.type sub_403708, @function
sub_403708:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403710

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40371a
	.globl sub_40371a
	.type sub_40371a, @function
sub_40371a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403720
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40372d
	.globl sub_40372d
	.type sub_40372d, @function
sub_40372d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403730
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
	#Procedure 0x403740

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40374e
	.globl sub_40374e
	.type sub_40374e, @function
sub_40374e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403750

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
	js	.label_248
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_251
	cmp	r12d, 0x7fffffff
	je	.label_246
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
	jne	.label_249
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_249:
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
.label_251:
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
	jbe	.label_247
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_250
.label_247:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_245
	mov	rdi, r14
	call	free
.label_245:
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
.label_250:
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
.label_248:
	call	abort
.label_246:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40390d
	.globl sub_40390d
	.type sub_40390d, @function
sub_40390d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403910

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
	je	.label_252
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
.label_252:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403962
	.globl sub_403962
	.type sub_403962, @function
sub_403962:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_254
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_254:
	test	rbx, rbx
	je	.label_253
	mov	qword ptr [rbx], r14
.label_253:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039ac
	.globl sub_4039ac
	.type sub_4039ac, @function
sub_4039ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039b0
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
	#Procedure 0x4039bd
	.globl sub_4039bd
	.type sub_4039bd, @function
sub_4039bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0

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
	mov	rcx,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
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
	#Procedure 0x403a2d
	.globl sub_403a2d
	.type sub_403a2d, @function
sub_403a2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a30

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403a3d
	.globl sub_403a3d
	.type sub_403a3d, @function
sub_403a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a40

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x403a47
	.globl sub_403a47
	.type sub_403a47, @function
sub_403a47:

	nop	word ptr [rax + rax]
.label_257:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_255
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_255:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a84
	.globl sub_403a84
	.type sub_403a84, @function
sub_403a84:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a86

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
	jne	.label_256
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_256
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_257
.label_256:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403ac0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403aca
	.globl sub_403aca
	.type sub_403aca, @function
sub_403aca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_258
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_258
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_258:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403af6
	.globl sub_403af6
	.type sub_403af6, @function
sub_403af6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b00

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b0a
	.globl sub_403b0a
	.type sub_403b0a, @function
sub_403b0a:

	nop	word ptr [rax + rax]
.label_429:
	movsd	xmm0,  qword ptr [word ptr [rip + label_259]]
.label_261:
	mulsd	xmm0, qword ptr [rdi]
	movsd	qword ptr [rdi], xmm0
	mov	al, 1
.label_260:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b23
	.globl sub_403b23
	.type sub_403b23, @function
sub_403b23:

	nop	
	nop	dword ptr [rax + rax]
.label_264:
	test	esi, esi
	je	.label_261
	jmp	.label_260
.label_428:
	movsd	xmm0,  qword ptr [word ptr [rip + label_262]]
	jmp	.label_261
	.section	.text
	.align	16
	#Procedure 0x403b3d

	.globl apply_suffix
	.type apply_suffix, @function
apply_suffix:
	movsd	xmm0,  qword ptr [word ptr [rip + label_263]]
	xor	eax, eax
	lea	ecx, [rsi - 0x64]
	cmp	ecx, 0xf
	ja	.label_264
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_266]]
.label_427:
	movsd	xmm0,  qword ptr [word ptr [rip + label_265]]
	jmp	.label_261
	.section	.text
	.align	16
	#Procedure 0x403b60

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
	#Procedure 0x403b96
	.globl sub_403b96
	.type sub_403b96, @function
sub_403b96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ba0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_267:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_267
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403bc1
	.globl sub_403bc1
	.type sub_403bc1, @function
sub_403bc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bd0

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
	#Procedure 0x403bfd
	.globl sub_403bfd
	.type sub_403bfd, @function
sub_403bfd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c00
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
	#Procedure 0x403c13
	.globl sub_403c13
	.type sub_403c13, @function
sub_403c13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c20
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
	je	.label_268
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_268:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_269
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_270
	cmp	eax, 0x76
	jne	.label_269
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
.label_270:
	xor	edi, edi
	call	rbx
.label_269:
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
	.align	16
	#Procedure 0x403d11
	.globl sub_403d11
	.type sub_403d11, @function
sub_403d11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d28
	.globl sub_403d28
	.type sub_403d28, @function
sub_403d28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	xor	ecx, ecx
	or	rsi, rdi
	setne	cl
	test	rdi, rdi
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d44
	.globl sub_403d44
	.type sub_403d44, @function
sub_403d44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d50

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
	mov	r14, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_24
	call	setlocale
	mov	edi, OFFSET FLAT:label_273
	mov	esi, OFFSET FLAT:label_288
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_273
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	edx, OFFSET FLAT:label_283
	mov	ecx, OFFSET FLAT:label_37
	mov	r9d, 1
	mov	eax, 0
	mov	edi, r12d
	mov	rsi, r14
	push	0
	push	OFFSET FLAT:label_284
	push	OFFSET FLAT:label_285
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	cmp	r12d, 1
	je	.label_275
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	xorpd	xmm0, xmm0
	cmp	eax, r12d
	jge	.label_278
	lea	rbp, [r14 + rax*8]
	sub	r12d, eax
	mov	r13b, 1
	lea	r14, [rsp + 8]
	lea	r15, [rsp]
	xorpd	xmm0, xmm0
	nop	
.label_272:
	movsd	qword ptr [rsp + 0x10], xmm0
	mov	rdi, qword ptr [rbp]
	mov	ecx, OFFSET FLAT:cl_strtod
	mov	rsi, r14
	mov	rdx, r15
	call	xstrtod
	test	al, al
	jne	.label_281
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_274
.label_281:
	movsd	xmm0, qword ptr [rsp]
	ucomisd	xmm0,  qword ptr [word ptr [label_286]]
	jb	.label_274
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_279
	cmp	byte ptr [rax + 1], 0
	jne	.label_274
.label_279:
	mov	rax, qword ptr [rsp + 8]
	movsx	esi, byte ptr [rax]
	mov	rdi, r15
	call	apply_suffix
	test	al, al
	jne	.label_280
	nop	dword ptr [rax]
.label_274:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rbp]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_280:
	movsd	xmm0, qword ptr [rsp + 0x10]
	addsd	xmm0, qword ptr [rsp]
	add	rbp, 8
	dec	r12d
	jne	.label_272
	test	r13b, 1
	je	.label_276
.label_278:
	call	xnanosleep
	test	eax, eax
	jne	.label_271
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_271:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_276:
	mov	edi, 1
	call	usage
.label_292:
	test	rcx, rcx
	jne	.label_289
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_289:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_293
.label_291:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_290:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f87

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_292
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_290
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_291
.label_293:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403fb9
	.globl sub_403fb9
	.type sub_403fb9, @function
sub_403fb9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403fc0

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	cmp	qword ptr [rdi + 8], 0x3b9aca00
	jb	.label_294
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_296
.label_294:
	mov	rbx, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_297:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_295
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_297
	test	r15, r15
	je	.label_296
	add	qword ptr [r15], rbx
	jmp	.label_296
.label_295:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_296:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404055
	.globl sub_404055
	.type sub_404055, @function
sub_404055:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404060

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	mov	rax, rdi
	mov	rdx, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404067
	.globl sub_404067
	.type sub_404067, @function
sub_404067:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_303
	nop	
.label_302:
	mov	edi, OFFSET FLAT:label_283
	call	strcmp
	test	eax, eax
	je	.label_300
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_302
.label_300:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_283
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_298
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_298
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_298:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_283
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_283
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_307
	mov	ecx, OFFSET FLAT:label_24
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
	#Procedure 0x40418a
	.globl sub_40418a
	.type sub_40418a, @function
sub_40418a:

	nop	word ptr [rax + rax]
.label_308:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_310:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_311
	inc	r9
	cmp	r9, 0xa
	jb	.label_309
.label_311:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041bf
	.globl sub_4041bf
	.type sub_4041bf, @function
sub_4041bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4041c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_309:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_308
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_310
	.section	.text
	.align	16
	#Procedure 0x4041e9
	.globl sub_4041e9
	.type sub_4041e9, @function
sub_4041e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041f0

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
	je	.label_314
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_312
	jmp	.label_313
.label_314:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_313
.label_312:
	mov	eax, 1
	test	bpl, bpl
	je	.label_313
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
.label_313:
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
	#Procedure 0x404278
	.globl sub_404278
	.type sub_404278, @function
sub_404278:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404280

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
	je	.label_315
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_317
	jmp	.label_316
.label_315:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_316
.label_317:
	mov	eax, 1
	test	bpl, bpl
	je	.label_316
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
.label_316:
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
	#Procedure 0x4042f9
	.globl sub_4042f9
	.type sub_4042f9, @function
sub_4042f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404300

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
	je	.label_320
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_319
	jmp	.label_318
.label_320:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_318
.label_319:
	mov	eax, 1
	test	bpl, bpl
	je	.label_318
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
.label_318:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404363
	.globl sub_404363
	.type sub_404363, @function
sub_404363:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404370

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
	je	.label_323
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_321
	jmp	.label_322
.label_323:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_322
.label_321:
	mov	eax, 1
	test	bpl, bpl
	je	.label_322
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_322:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043cf
	.globl sub_4043cf
	.type sub_4043cf, @function
sub_4043cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4043d0

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
	je	.label_324
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_326
	jmp	.label_325
.label_324:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_325
.label_326:
	mov	eax, 1
	test	bpl, bpl
	je	.label_325
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_325:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404419
	.globl sub_404419
	.type sub_404419, @function
sub_404419:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404420

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
	je	.label_329
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_328
	jmp	.label_327
.label_329:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_327
.label_328:
	mov	eax, 1
	test	bpl, bpl
	je	.label_327
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_327:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404465
	.globl sub_404465
	.type sub_404465, @function
sub_404465:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404470

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_332
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_331
	jmp	.label_330
.label_332:
	mov	eax, 1
	test	cl, cl
	je	.label_330
.label_331:
	xor	eax, eax
.label_330:
	pop	rbx
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
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044aa
	.globl sub_4044aa
	.type sub_4044aa, @function
sub_4044aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_333
	test	rdx, rdx
	je	.label_333
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_333:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4044db
	.globl sub_4044db
	.type sub_4044db, @function
sub_4044db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0
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
	#Procedure 0x4044f9
	.globl sub_4044f9
	.type sub_4044f9, @function
sub_4044f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404500
	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:

	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_334
	mov	eax, 1
	jg	.label_334
	sub	esi, ecx
	mov	eax, esi
.label_334:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404516
	.globl sub_404516
	.type sub_404516, @function
sub_404516:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404520

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
	je	.label_335
	cmp	r15, -2
	jb	.label_335
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_335
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_335:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404576
	.globl sub_404576
	.type sub_404576, @function
sub_404576:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e5
	.globl sub_4045e5
	.type sub_4045e5, @function
sub_4045e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045f2
	.globl sub_4045f2
	.type sub_4045f2, @function
sub_4045f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404616
	.globl sub_404616
	.type sub_404616, @function
sub_404616:

	nop	word ptr cs:[rax + rax]
