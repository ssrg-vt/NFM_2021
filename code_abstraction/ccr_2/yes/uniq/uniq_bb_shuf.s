	.section	.text
	.align	32
	#Procedure 0x401709
	.globl sub_401709
	.type sub_401709, @function
sub_401709:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40170a
	.globl sub_40170a
	.type sub_40170a, @function
sub_40170a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401742
	.globl sub_401742
	.type sub_401742, @function
sub_401742:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40178a
	.globl sub_40178a
	.type sub_40178a, @function
sub_40178a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017ac
	.globl sub_4017ac
	.type sub_4017ac, @function
sub_4017ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017bd
	.globl sub_4017bd
	.type sub_4017bd, @function
sub_4017bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017d6
	.globl sub_4017d6
	.type sub_4017d6, @function
sub_4017d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017e0

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
	je	.label_9
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
.label_9:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401848
	.globl sub_401848
	.type sub_401848, @function
sub_401848:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401850

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
	jne	.label_11
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_14
.label_11:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_10:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_12
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_10
	jmp	.label_13
.label_14:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_13:
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
	#Procedure 0x4018f6
	.globl sub_4018f6
	.type sub_4018f6, @function
sub_4018f6:

	nop	dword ptr [rax]
.label_12:
	neg	r14
	sbb	eax, eax
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x401900

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
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
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_36
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_27
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_27
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_15:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	.align	32
	#Procedure 0x401bdb
	.globl sub_401bdb
	.type sub_401bdb, @function
sub_401bdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401be0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_36
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401c54
	.globl sub_401c54
	.type sub_401c54, @function
sub_401c54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_45
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_47:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_47
.label_45:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_48
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_49], OFFSET FLAT:slot0
.label_48:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_46
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_46:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cf1
	.globl sub_401cf1
	.type sub_401cf1, @function
sub_401cf1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d00
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401d0a
	.globl sub_401d0a
	.type sub_401d0a, @function
sub_401d0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d10
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
	je	.label_50
	mov	qword ptr [rax], rbx
.label_50:
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
	#Procedure 0x401dfc
	.globl sub_401dfc
	.type sub_401dfc, @function
sub_401dfc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_51
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_52
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e25
	.globl sub_401e25
	.type sub_401e25, @function
sub_401e25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r14, rsi
	mov	ebp, edi
	mov	edi, OFFSET FLAT:label_108
	call	getenv
	mov	r12, rax
	mov	eax, OFFSET FLAT:label_67
	movq	xmm0, rax
	pshufd	xmm0, xmm0, 0x44
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_51
	call	setlocale
	mov	edi, OFFSET FLAT:label_76
	mov	esi, OFFSET FLAT:label_100
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_76
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + skip_chars],  0
	mov	qword ptr [rip + skip_fields],  0
	mov	qword ptr [rip + check_chars],  -1
	mov	byte ptr [rip + output_first_repeated],  1
	mov	byte ptr [rip + output_unique],  1
	mov	byte ptr [rip + output_later_repeated],  0
	mov	byte ptr [rip + countmode],  1
	mov	dword ptr [rip + delimit_groups],  0
	mov	bl, 0xa
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x18], 0
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_55
	.section	.text
	.align	32
	#Procedure 0x401f11
	.globl sub_401f11
	.type sub_401f11, @function
sub_401f11:

	nop	word ptr cs:[rax + rax]
.label_143:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [r14 + rax*8]
	mov	ecx, r13d
	inc	r13d
	mov	qword ptr [rsp + rcx*8 + 0x50], rax
	mov	ecx, edx
	mov	bl, r15b
.label_55:
	mov	r15d, ebx
	test	r12, r12
	setne	al
	test	r13d, r13d
	setne	dl
	cmp	ecx, -1
	je	.label_112
	and	al, dl
	mov	edx, ecx
	jne	.label_120
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_121
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	lea	esi, [rax + 1]
	cmp	esi, 0x81
	ja	.label_127
	mov	ecx, 0x7a
	mov	edx, 0xffffffff
	jmp	qword ptr [(rsi * 8) + label_131]
.label_594:
	cmp	dword ptr [rsp + 0x18], 2
	jne	.label_133
	mov	qword ptr [rip + skip_fields],  0
	xor	ecx, ecx
	jmp	.label_135
	.section	.text
	.align	32
	#Procedure 0x401fa6
	.globl sub_401fa6
	.type sub_401fa6, @function
sub_401fa6:

	nop	word ptr cs:[rax + rax]
.label_112:
	mov	edx, ecx
.label_120:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_141
	cmp	r13d, 2
	jne	.label_143
	jmp	.label_87
.label_133:
	mov	rcx, qword ptr [rip + skip_fields]
	movabs	rdx, 0x1999999999999999
	cmp	rcx, rdx
	ja	.label_147
.label_135:
	lea	rdx, [rcx + rcx*4]
	movsxd	rsi, eax
	lea	rdx, [rsi + rdx*2 - 0x30]
	cmp	rdx, rcx
	jae	.label_152
.label_147:
	mov	qword ptr [rip + skip_fields],  -1
	jmp	.label_144
.label_152:
	mov	qword ptr [rip + skip_fields],  rdx
.label_144:
	mov	dword ptr [rsp + 0x18], 1
	mov	ecx, eax
	mov	bl, r15b
	jmp	.label_55
.label_593:
	mov	rax, qword ptr [rip + optarg]
	cmp	byte ptr [rax], 0x2b
	jne	.label_60
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b9
	jb	.label_60
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_51
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	test	eax, eax
	je	.label_68
.label_60:
	cmp	r13d, 2
	je	.label_70
	mov	rax, qword ptr [rip + optarg]
	mov	ecx, r13d
	inc	r13d
	mov	qword ptr [rsp + rcx*8 + 0x50], rax
.label_72:
	mov	ecx, 1
	mov	bl, r15b
	jmp	.label_55
.label_595:
	mov	byte ptr [rip + output_unique],  0
	mov	byte ptr [rip + output_later_repeated],  1
	mov	rsi, qword ptr [rip + optarg]
	xor	eax, eax
	test	rsi, rsi
	je	.label_75
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_80
	mov	edx, OFFSET FLAT:delimit_method_string
	mov	ecx, OFFSET FLAT:delimit_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + delimit_method_map]
.label_75:
	mov	dword ptr [rip + delimit_groups],  eax
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, 0x44
	mov	bl, r15b
	jmp	.label_55
.label_596:
	mov	byte ptr [rip + countmode],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, 0x63
	mov	bl, r15b
	jmp	.label_55
.label_597:
	mov	byte ptr [rip + output_unique],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, 0x64
	mov	bl, r15b
	jmp	.label_55
.label_598:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_51
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_113
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_fields],  rax
	mov	dword ptr [rsp + 0x18], 2
	mov	ecx, 0x66
	mov	bl, r15b
	jmp	.label_55
.label_599:
	mov	byte ptr [rip + ignore_case],  1
	mov	ecx, 0x69
	mov	bl, r15b
	jmp	.label_55
.label_600:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_51
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_138
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_chars],  rax
	mov	ecx, 0x73
	mov	bl, r15b
	jmp	.label_55
.label_601:
	mov	byte ptr [rip + output_first_repeated],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, 0x75
	mov	bl, r15b
	jmp	.label_55
.label_602:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_51
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_150
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + check_chars],  rax
	mov	ecx, 0x77
	mov	bl, r15b
	jmp	.label_55
.label_603:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_83
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_98
	mov	edx, OFFSET FLAT:grouping_method_string
	mov	ecx, OFFSET FLAT:grouping_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + grouping_method_map]
	mov	dword ptr [rip + grouping],  eax
	jmp	.label_65
.label_83:
	mov	dword ptr [rip + grouping],  3
.label_65:
	mov	ecx, 0x80
	mov	bl, r15b
	jmp	.label_55
.label_68:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_chars],  rax
	jmp	.label_72
.label_141:
	mov	ecx, dword ptr [rip + grouping]
	mov	rax, qword ptr [rsp + 0x10]
	test	al, al
	je	.label_73
	test	ecx, ecx
	jne	.label_77
.label_73:
	mov	al, byte ptr [rip + countmode]
	test	ecx, ecx
	je	.label_134
	mov	ecx, eax
	xor	cl, 1
	test	cl, 1
	jne	.label_146
.label_134:
	test	al, 1
	jne	.label_84
	cmp	byte ptr [rip + output_later_repeated],  1
	je	.label_85
.label_84:
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_74
	cmp	byte ptr [rbp + 1], 0
	je	.label_91
.label_74:
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_92
	mov	rdi, rbp
	call	freopen_safer
	test	rax, rax
	je	.label_95
.label_91:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_97
	cmp	byte ptr [rbx + 1], 0
	je	.label_99
.label_97:
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_154
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_107
.label_99:
	mov	qword ptr [rsp + 0x68], rbp
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	lea	rbp, [rsp + 0x38]
	mov	rdi, rbp
	call	initbuffer
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	initbuffer
	cmp	byte ptr [rip + output_unique],  1
	jne	.label_117
	cmp	byte ptr [rip + output_first_repeated],  1
	jne	.label_117
	test	byte ptr [rip + countmode],  1
	je	.label_117
	movzx	eax, r15b
	mov	dword ptr [rsp + 8], eax
	lea	rbp, [rsp + 0x38]
	mov	dword ptr [rsp + 0x20], 0
	movsx	eax, r15b
	mov	dword ptr [rsp + 0x10], eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_124
.label_117:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rsi, qword ptr [rip + stdin]
	movsx	edx, r15b
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	mov	dword ptr [rsp + 0x18], edx
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_58
	mov	rdi, rbx
	call	find_field
	mov	r14, rax
	mov	r13, qword ptr [rsp + 0x78]
	dec	r13
	sub	r13, r14
	add	r13, qword ptr [rsp + 0x80]
	movzx	eax, r15b
	mov	dword ptr [rsp + 0x34], eax
	mov	al, 1
	xor	ebp, ebp
	jmp	.label_142
	.section	.text
	.align	32
	#Procedure 0x4023e4
	.globl sub_4023e4
	.type sub_4023e4, @function
sub_4023e4:

	nop	word ptr cs:[rax + rax]
.label_64:
	test	bl, bl
	mov	eax, 0
	cmovne	rbp, rax
	mov	eax, ecx
	mov	rbx, r12
.label_142:
	mov	r12, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 8], eax
	and	al, 1
	mov	byte ptr [rsp + 0xf], al
	jmp	.label_53
.label_96:
	mov	esi, dword ptr [rsp + 0x34]
	call	__overflow
	jmp	.label_105
	.section	.text
	.align	32
	#Procedure 0x40242e
	.globl sub_40242e
	.type sub_40242e, @function
sub_40242e:

	nop	
.label_53:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_88
	mov	rdi, r12
	mov	edx, dword ptr [rsp + 0x18]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_66
	mov	rdi, r12
	call	find_field
	mov	r14, rax
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	sub	rcx, r14
	lea	r13, [rax + rcx - 1]
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, r13
	mov	rdx, r13
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rcx, rax
	cmovae	rcx, rax
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_69
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_89
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcasecmp
	jmp	.label_81
	.section	.text
	.align	32
	#Procedure 0x4024ae
	.globl sub_4024ae
	.type sub_4024ae, @function
sub_4024ae:

	nop	
.label_69:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_145
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x28]
	call	xmemcoll
	jmp	.label_81
.label_145:
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_89
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcmp
	nop	
.label_81:
	test	eax, eax
	setne	al
.label_89:
	movzx	ecx, al
	xor	rcx, 1
	add	rbp, rcx
	xor	ecx, ecx
	cmp	rbp, -1
	sete	cl
	sub	rbp, rcx
	mov	ecx, dword ptr [rip + delimit_groups]
	test	ecx, ecx
	je	.label_94
	test	al, al
	jne	.label_102
	cmp	rbp, 1
	jne	.label_105
	cmp	ecx, 1
	je	.label_106
	cmp	ecx, 2
	jne	.label_105
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_105
.label_106:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_96
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
	jmp	.label_105
	.section	.text
	.align	32
	#Procedure 0x402542
	.globl sub_402542
	.type sub_402542, @function
sub_402542:

	nop	word ptr cs:[rax + rax]
.label_94:
	mov	bl, 1
	test	al, al
	jne	.label_119
.label_105:
	cmp	byte ptr [rip + output_later_repeated],  1
	jne	.label_53
	xor	ebx, ebx
.label_119:
	mov	ecx, dword ptr [rsp + 8]
	jmp	.label_123
.label_102:
	test	rbp, rbp
	mov	ecx, dword ptr [rsp + 8]
	je	.label_125
	xor	ecx, ecx
.label_125:
	mov	bl, 1
.label_123:
	test	rbp, rbp
	je	.label_128
	test	bl, bl
	je	.label_130
	mov	al, byte ptr [rip + output_first_repeated]
	jmp	.label_104
.label_128:
	mov	al, byte ptr [rip + output_unique]
.label_104:
	test	al, al
	je	.label_64
	jmp	.label_93
.label_130:
	cmp	byte ptr [rip + output_later_repeated],  1
	jne	.label_64
.label_93:
	mov	dword ptr [rsp + 8], ecx
	mov	al, byte ptr [rip + countmode]
	test	al, al
	jne	.label_151
	lea	rdx, [rbp + 1]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_62
	xor	eax, eax
	call	__printf_chk
.label_151:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	mov	ecx, dword ptr [rsp + 8]
	jmp	.label_64
.label_66:
	mov	rax, qword ptr [rip + stdin]
	test	byte ptr [rax], 0x20
	jne	.label_58
.label_88:
	test	rbp, rbp
	je	.label_54
	cmp	byte ptr [rip + output_first_repeated],  1
	je	.label_56
	jmp	.label_58
.label_54:
	mov	al, byte ptr [rip + output_unique]
	test	al, al
	je	.label_58
.label_56:
	mov	al, byte ptr [rip + countmode]
	test	al, al
	jne	.label_61
	inc	rbp
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_62
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
.label_61:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_58
.label_149:
	mov	rdx, qword ptr [rbp + 8]
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	mov	r12, r14
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, rbp
	mov	rbp, qword ptr [rsp + 0x18]
.label_124:
	mov	qword ptr [rsp + 0x18], rbx
	jmp	.label_78
.label_129:
	mov	esi, dword ptr [rsp + 8]
	call	__overflow
	mov	eax, dword ptr [rip + grouping]
	jmp	.label_79
	.section	.text
	.align	32
	#Procedure 0x4026af
	.globl sub_4026af
	.type sub_4026af, @function
sub_4026af:

	nop	
.label_78:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_90
	mov	rdi, rbp
	mov	edx, dword ptr [rsp + 0x10]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_90
	mov	rdi, rbp
	call	find_field
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	sub	rcx, rbx
	lea	r14, [rax + rcx - 1]
	mov	r13b, 1
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_86
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, r14
	mov	rdx, r14
	cmovb	rdx, rcx
	cmp	rcx, r12
	cmovae	rcx, r12
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_101
	cmp	rdx, rcx
	jne	.label_86
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcasecmp
	jmp	.label_109
	.section	.text
	.align	32
	#Procedure 0x402734
	.globl sub_402734
	.type sub_402734, @function
sub_402734:

	nop	word ptr cs:[rax + rax]
.label_101:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_114
	mov	rdi, rbx
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x28]
	call	xmemcoll
	jmp	.label_109
.label_114:
	cmp	rdx, rcx
	jne	.label_86
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcmp
	nop	dword ptr [rax]
.label_109:
	test	eax, eax
	setne	r13b
.label_86:
	mov	eax, dword ptr [rip + grouping]
	test	r13b, r13b
	je	.label_79
	test	eax, eax
	je	.label_79
	cmp	eax, 1
	je	.label_132
	cmp	eax, 4
	je	.label_132
	mov	ecx, dword ptr [rsp + 0x20]
	test	cl, cl
	je	.label_79
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_79
	nop	word ptr cs:[rax + rax]
.label_132:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_129
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], r15b
.label_79:
	test	eax, eax
	setne	al
	or	r13b, al
	cmp	r13b, 1
	jne	.label_78
	jmp	.label_149
.label_90:
	mov	eax, dword ptr [rip + grouping]
	cmp	eax, 4
	je	.label_153
	cmp	eax, 2
	jne	.label_58
.label_153:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_58
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_155
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_58:
	mov	rdi, qword ptr [rip + stdin]
	test	byte ptr [rdi], 0x20
	jne	.label_59
	call	rpl_fclose
	test	eax, eax
	jne	.label_59
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	xor	eax, eax
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_155:
	mov	esi, dword ptr [rsp + 8]
	call	__overflow
	jmp	.label_58
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
.label_148:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_127:
	cmp	eax, 0xffffff7d
	je	.label_82
	cmp	eax, 0xffffff7e
	jne	.label_63
	xor	edi, edi
	call	usage
.label_63:
	mov	edi, 1
	call	usage
.label_82:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_16
	mov	edx, OFFSET FLAT:label_37
	mov	r8d, OFFSET FLAT:label_110
	mov	r9d, OFFSET FLAT:label_111
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x68]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	jmp	.label_116
.label_138:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	jmp	.label_116
.label_150:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
.label_116:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_148
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	jmp	.label_137
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	jmp	.label_137
.label_95:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_139
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_107:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_139
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
.label_137:
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
	#Procedure 0x402a32
	.globl sub_402a32
	.type sub_402a32, @function
sub_402a32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40
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
	#Procedure 0x402a4f
	.globl sub_402a4f
	.type sub_402a4f, @function
sub_402a4f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a50

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
	.align	32
	#Procedure 0x402aa6
	.globl sub_402aa6
	.type sub_402aa6, @function
sub_402aa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ab0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_157
	call	rpl_calloc
	test	rax, rax
	je	.label_157
	pop	rcx
	ret	
.label_157:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402ad6
	.globl sub_402ad6
	.type sub_402ad6, @function
sub_402ad6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ae0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_158
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_158:
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
	#Procedure 0x402b48
	.globl sub_402b48
	.type sub_402b48, @function
sub_402b48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b50

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b5f
	.globl sub_402b5f
	.type sub_402b5f, @function
sub_402b5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402b60

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
	.align	32
	#Procedure 0x402b79
	.globl sub_402b79
	.type sub_402b79, @function
sub_402b79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b80

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_159
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_160
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_160
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_160:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402be0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_161
	test	rax, rax
	je	.label_162
.label_161:
	pop	rbx
	ret	
.label_162:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402bfa
	.globl sub_402bfa
	.type sub_402bfa, @function
sub_402bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c00
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402c0e
	.globl sub_402c0e
	.type sub_402c0e, @function
sub_402c0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402c10

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
	js	.label_166
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_169
	cmp	r12d, 0x7fffffff
	je	.label_164
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
	jne	.label_167
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_167:
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
.label_169:
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
	jbe	.label_165
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_168
.label_165:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_163
	mov	rdi, r14
	call	free
.label_163:
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
.label_168:
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
.label_166:
	call	abort
.label_164:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402dcd
	.globl sub_402dcd
	.type sub_402dcd, @function
sub_402dcd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_170]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_171]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_172]
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
	.align	32
	#Procedure 0x402e3e
	.globl sub_402e3e
	.type sub_402e3e, @function
sub_402e3e:

	nop	
.label_173:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402e4c
	.globl sub_402e4c
	.type sub_402e4c, @function
sub_402e4c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e58

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_173
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_175
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_173
.label_175:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_173
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_174
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_174:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_176:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402ec5
	.globl sub_402ec5
	.type sub_402ec5, @function
sub_402ec5:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402ec7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_170]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_171]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_172]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_176
	test	rdx, rdx
	je	.label_176
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f30
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x402f39
	.globl sub_402f39
	.type sub_402f39, @function
sub_402f39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f40
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	.section	.text
	.align	32
	#Procedure 0x402f47
	.globl sub_402f47
	.type sub_402f47, @function
sub_402f47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f50

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
	jne	.label_180
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_178
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_177:
	cmp	r13, r14
	jne	.label_179
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
.label_179:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_181
	jmp	.label_182
.label_178:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_177
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_180
	test	byte ptr [rbp], 0x20
	jne	.label_180
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_177
.label_182:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
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
	#Procedure 0x40301f
	.globl sub_40301f
	.type sub_40301f, @function
sub_40301f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403020
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_170]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_171]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_172]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_183
	test	rsi, rsi
	je	.label_183
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_183:
	call	abort
.label_184:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403095
	.globl sub_403095
	.type sub_403095, @function
sub_403095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030a0

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
	je	.label_184
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
	.align	32
	#Procedure 0x403130
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_170]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_171]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_172]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_185
	test	rdx, rdx
	je	.label_185
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_185:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40319a
	.globl sub_40319a
	.type sub_40319a, @function
sub_40319a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_186
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_186:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031e2
	.globl sub_4031e2
	.type sub_4031e2, @function
sub_4031e2:

	nop	word ptr cs:[rax + rax]
.label_187:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4031f5
	.globl sub_4031f5
	.type sub_4031f5, @function
sub_4031f5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031f9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_170]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_171]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_172]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_187
	test	rsi, rsi
	je	.label_187
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
	.section	.text
	.align	32
	#Procedure 0x403260

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
	jne	.label_193
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_189
	cmp	ecx, 0x55
	jne	.label_188
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_188
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_188
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_188
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_188
	cmp	byte ptr [rax + 5], 0
	jne	.label_188
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_197
	mov	eax, OFFSET FLAT:label_198
	jmp	.label_192
.label_189:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_188
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_188
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_188
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_188
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_188
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_188
	cmp	byte ptr [rax + 7], 0
	je	.label_194
.label_188:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_195
	mov	eax, OFFSET FLAT:label_196
.label_192:
	cmove	rax, rcx
.label_193:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_194:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_190
	mov	eax, OFFSET FLAT:label_191
	jmp	.label_192
	.section	.text
	.align	32
	#Procedure 0x403325
	.globl sub_403325
	.type sub_403325, @function
sub_403325:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403330
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	call	memcoll0
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_199
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_199:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403378
	.globl sub_403378
	.type sub_403378, @function
sub_403378:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40338a
	.globl sub_40338a
	.type sub_40338a, @function
sub_40338a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403390

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
	#Procedure 0x4033a7
	.globl sub_4033a7
	.type sub_4033a7, @function
sub_4033a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4033c1
	.globl sub_4033c1
	.type sub_4033c1, @function
sub_4033c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033d0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x4033d5
	.globl sub_4033d5
	.type sub_4033d5, @function
sub_4033d5:

	nop	word ptr cs:[rax + rax]
.label_203:
	mov	esi, OFFSET FLAT:label_200
.label_202:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x403433

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_203
	mov	esi, OFFSET FLAT:label_201
	jmp	.label_202
	.section	.text
	.align	32
	#Procedure 0x403450

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
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_214
	cmp	eax, 1
	je	.label_218
	cmp	eax, 2
	je	.label_217
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_217:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_212
.label_214:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_216
.label_218:
	xor	r15d, r15d
.label_212:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_208
	mov	edi, OFFSET FLAT:label_204
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_208
	mov	r13b, 1
	jmp	.label_207
.label_208:
	test	r12b, r12b
	je	.label_211
	mov	edi, OFFSET FLAT:label_204
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_205
.label_211:
	test	r15b, r15b
	je	.label_216
	mov	edi, OFFSET FLAT:label_204
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_207
.label_216:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_210
.label_205:
	mov	r12b, 1
.label_207:
	xor	r14d, r14d
	test	eax, eax
	js	.label_210
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_210:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_206
	mov	edi, 2
	call	close
.label_206:
	test	r12b, r12b
	je	.label_209
	mov	edi, 1
	call	close
.label_209:
	test	r13b, r13b
	je	.label_215
	xor	edi, edi
	call	close
.label_215:
	test	r14, r14
	jne	.label_213
	mov	dword ptr [rbx], ebp
.label_213:
	mov	rax, r14
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
	#Procedure 0x403592
	.globl sub_403592
	.type sub_403592, @function
sub_403592:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035a0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_225
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_219:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_224
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_222
	cmp	qword ptr [rsp + 8], -1
	je	.label_223
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_221
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_224
.label_221:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_224
.label_223:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_224:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_219
	jmp	.label_220
.label_225:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_220:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_222:
	mov	rax, rbp
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
	#Procedure 0x40369d
	.globl sub_40369d
	.type sub_40369d, @function
sub_40369d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_170]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_171]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_172]
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
	.align	32
	#Procedure 0x4036f5
	.globl sub_4036f5
	.type sub_4036f5, @function
sub_4036f5:

	nop	word ptr cs:[rax + rax]
.label_227:
	mov	ecx, 1
.label_226:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x403710
	.globl sub_403710
	.type sub_403710, @function
sub_403710:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403715

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_227
	test	rsi, rsi
	mov	ecx, 1
	je	.label_226
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_226
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_228:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403755
	.globl sub_403755
	.type sub_403755, @function
sub_403755:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403764
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
	je	.label_228
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
.label_232:
	inc	rbx
.label_231:
	cmp	rbx, r15
	jae	.label_230
	movzx	edi, byte ptr [r14 + rbx]
	call	field_sep
	test	al, al
	je	.label_232
.label_230:
	cmp	r15, rbx
	jbe	.label_233
	inc	r13
	cmp	r13, r12
	jb	.label_234
.label_233:
	mov	rax, qword ptr [rip + skip_chars]
	sub	r15, rbx
	cmp	rax, r15
	cmovb	r15, rax
	add	r15, rbx
	add	r14, r15
	mov	rax, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403807
	.globl sub_403807
	.type sub_403807, @function
sub_403807:

	nop	word ptr [rax + rax]
.label_229:
	inc	rbx
.label_234:
	cmp	rbx, r15
	jae	.label_231
	movzx	edi, byte ptr [r14 + rbx]
	call	field_sep
	test	al, al
	jne	.label_229
	jmp	.label_231
	.section	.text
	.align	32
	#Procedure 0x403828
	.globl sub_403828
	.type sub_403828, @function
sub_403828:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403830

	.globl find_field
	.type find_field, @function
find_field:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, qword ptr [rdi + 8]
	mov	r14, qword ptr [rdi + 0x10]
	xor	ebx, ebx
	dec	r15
	je	.label_233
	mov	r12, qword ptr [rip + skip_fields]
	test	r12, r12
	je	.label_233
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_234
	.section	.text
	.align	32
	#Procedure 0x40385b
	.globl sub_40385b
	.type sub_40385b, @function
sub_40385b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403860

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
	jne	.label_235
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_235
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_236
.label_235:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_236:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_237
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_237:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038ce
	.globl sub_4038ce
	.type sub_4038ce, @function
sub_4038ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4038d0

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
	.align	32
	#Procedure 0x403901
	.globl sub_403901
	.type sub_403901, @function
sub_403901:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403910

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	ebp, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r13
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x4039da
	.globl sub_4039da
	.type sub_4039da, @function
sub_4039da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039e0
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
	.align	32
	#Procedure 0x4039f8
	.globl sub_4039f8
	.type sub_4039f8, @function
sub_4039f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a00
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
	je	.label_246
	test	r15, r15
	je	.label_245
.label_246:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_245:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a42
	.globl sub_403a42
	.type sub_403a42, @function
sub_403a42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a50

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
	je	.label_247
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
.label_247:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403abc
	.globl sub_403abc
	.type sub_403abc, @function
sub_403abc:

	nop	dword ptr [rax]
.label_248:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ac6
	.globl sub_403ac6
	.type sub_403ac6, @function
sub_403ac6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403acb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_248
	test	rdx, rdx
	je	.label_248
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_249:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403af5
	.globl sub_403af5
	.type sub_403af5, @function
sub_403af5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403aff
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
	je	.label_250
	test	r14, r14
	je	.label_249
.label_250:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_139
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403b60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b68
	.globl sub_403b68
	.type sub_403b68, @function
sub_403b68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b70
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
	.align	32
	#Procedure 0x403be5
	.globl sub_403be5
	.type sub_403be5, @function
sub_403be5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bf0
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
	#Procedure 0x403c03
	.globl sub_403c03
	.type sub_403c03, @function
sub_403c03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c10

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
	je	.label_252
	test	r15, r15
	je	.label_253
.label_252:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_253:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c4c
	.globl sub_403c4c
	.type sub_403c4c, @function
sub_403c4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c50

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
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_255
	test	rbx, rbx
	je	.label_255
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_255
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_255
	mov	edi, OFFSET FLAT:label_204
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_254
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_255
.label_254:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_255:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ce4
	.globl sub_403ce4
	.type sub_403ce4, @function
sub_403ce4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cf0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_256
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_257
	test	rax, rax
	je	.label_256
.label_257:
	pop	rbx
	ret	
.label_256:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403d25
	.globl sub_403d25
	.type sub_403d25, @function
sub_403d25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d30

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_258
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_258:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d4d
	.globl sub_403d4d
	.type sub_403d4d, @function
sub_403d4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_170]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_171]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_172]
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
	.align	32
	#Procedure 0x403da4
	.globl sub_403da4
	.type sub_403da4, @function
sub_403da4:

	nop	word ptr cs:[rax + rax]
.label_262:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403dbb

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_260
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_259
	cmp	dword ptr [rbp], 0x20
	jne	.label_259
.label_260:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_262
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_259:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_261
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_139
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_261:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e70

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_266
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_268
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_264
	call	free
	xor	eax, eax
	jmp	.label_267
.label_265:
	call	xalloc_die
.label_268:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403eac
	.globl sub_403eac
	.type sub_403eac, @function
sub_403eac:

	nop	word ptr cs:[rax + rax]
.label_266:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_265
	mov	qword ptr [rsi], rbx
.label_264:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_267
	test	rax, rax
	je	.label_265
.label_267:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ee0
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
	#Procedure 0x403f13
	.globl sub_403f13
	.type sub_403f13, @function
sub_403f13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f20

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
	je	.label_281
	mov	edx, OFFSET FLAT:label_272
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_278
.label_281:
	mov	edx, OFFSET FLAT:label_279
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_278:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
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
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_284
	jmp	qword ptr [(r12 * 8) + label_285]
.label_567:
	add	rsp, 8
	jmp	.label_271
.label_284:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
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
	jmp	.label_271
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
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
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
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
.label_570:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
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
.label_571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
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
	jmp	.label_271
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
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
	jmp	.label_271
.label_573:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
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
	jmp	.label_271
.label_574:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
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
	jmp	.label_271
.label_576:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
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
	jmp	.label_271
.label_575:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
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
.label_271:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404278
	.globl sub_404278
	.type sub_404278, @function
sub_404278:

	nop	dword ptr [rax + rax]
.label_292:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_288
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4042a0
	.globl sub_4042a0
	.type sub_4042a0, @function
sub_4042a0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042af

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_292
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_290
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_290
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_289
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_289:
	mov	rbx, r14
.label_290:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404330

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_304
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_306
.label_304:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_306:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_294
	cmp	r10d, 0x29
	jae	.label_303
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_305
.label_303:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_305:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_294
	cmp	r10d, 0x29
	jae	.label_301
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_302
.label_301:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_302:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_294
	cmp	r10d, 0x29
	jae	.label_299
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_300
.label_299:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_300:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_294
	cmp	r10d, 0x29
	jae	.label_297
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_298
.label_297:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_298:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_294
	cmp	r10d, 0x29
	jae	.label_295
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_296
.label_295:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_296:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_294
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_294
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_294
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_294
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_294:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
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
	.align	32
	#Procedure 0x404538
	.globl sub_404538
	.type sub_404538, @function
sub_404538:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404540

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_307
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_307
	test	byte ptr [rbx + 1], 1
	je	.label_307
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_307:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x404573
	.globl sub_404573
	.type sub_404573, @function
sub_404573:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404580

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
	jne	.label_308
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_312
.label_308:
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
.label_309:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_310
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r15, rax
	sub	r13, r12
	je	.label_311
	add	rbp, rax
	add	r14, r12
	mov	eax, 1
	test	r15, r15
	jne	.label_309
	jmp	.label_310
.label_311:
	neg	r15
	sbb	eax, eax
.label_310:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_313
.label_312:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_313:
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
	#Procedure 0x40468d
	.globl sub_40468d
	.type sub_40468d, @function
sub_40468d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404690
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
	#Procedure 0x40469f
	.globl sub_40469f
	.type sub_40469f, @function
sub_40469f:

	nop	
.label_314:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4046a5
	.globl sub_4046a5
	.type sub_4046a5, @function
sub_4046a5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046ad

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
	je	.label_314
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
	.align	32
	#Procedure 0x404710

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	bl, 0xa
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	and	al, 1
	or	al, cl
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40472a
	.globl sub_40472a
	.type sub_40472a, @function
sub_40472a:

	nop	
	nop	dword ptr [rax]
.label_320:
	test	rcx, rcx
	jne	.label_317
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_317:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_315
.label_321:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_316
	test	rbx, rbx
	jne	.label_316
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_319:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404781
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_320
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_319
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_321
.label_316:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_318
	test	rax, rax
	je	.label_319
.label_318:
	pop	rbx
	ret	
.label_315:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4047c7
	.globl sub_4047c7
	.type sub_4047c7, @function
sub_4047c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_170]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_171]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_172]
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
	.align	32
	#Procedure 0x40483f
	.globl sub_40483f
	.type sub_40483f, @function
sub_40483f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404840
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_322
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_323
	test	rbx, rbx
	jne	.label_323
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_323:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_324
	test	rax, rax
	je	.label_322
.label_324:
	pop	rbx
	ret	
.label_322:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404888
	.globl sub_404888
	.type sub_404888, @function
sub_404888:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404898
	.globl sub_404898
	.type sub_404898, @function
sub_404898:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0
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
	#Procedure 0x4048d6
	.globl sub_4048d6
	.type sub_4048d6, @function
sub_4048d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048e0
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
	.align	32
	#Procedure 0x4049a1
	.globl sub_4049a1
	.type sub_4049a1, @function
sub_4049a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049b0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_325
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_326:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_325
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_326
.label_325:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a13
	.globl sub_404a13
	.type sub_404a13, @function
sub_404a13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20
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
	.align	32
	#Procedure 0x404a39
	.globl sub_404a39
	.type sub_404a39, @function
sub_404a39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a40

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_338
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_328:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_328
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_327
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_343
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_346
	cmp	eax, 0x22
	jne	.label_327
	mov	ebx, 1
.label_346:
	test	r14, r14
	jne	.label_347
	jmp	.label_332
.label_343:
	test	r14, r14
	je	.label_327
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_327
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_327
.label_347:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_332
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_337
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_331
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_331
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_331
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_335
	cmp	eax, 0x44
	je	.label_335
	cmp	eax, 0x69
	jne	.label_331
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_331
.label_335:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_331:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_337
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_345]
.label_582:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_333
.label_337:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_336
.label_583:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_339
.label_584:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_333
.label_586:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_333
.label_580:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_329
.label_581:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_333:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_334
.label_585:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_334
.label_587:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_344
.label_588:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_344:
	movzx	eax, dl
.label_339:
	and	eax, 1
.label_334:
	mov	rbp, rsi
.label_330:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_332:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_336:
	mov	r13d, ebx
.label_327:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_589:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_329:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_330
.label_590:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_330
.label_338:
	mov	edi, OFFSET FLAT:label_340
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_342
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40505d
	.globl sub_40505d
	.type sub_40505d, @function
sub_40505d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405060

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_348
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_348:
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
	#Procedure 0x4050e3
	.globl sub_4050e3
	.type sub_4050e3, @function
sub_4050e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x4050fa
	.globl sub_4050fa
	.type sub_4050fa, @function
sub_4050fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405100
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_349:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_349
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x405121
	.globl sub_405121
	.type sub_405121, @function
sub_405121:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_350
	test	rax, rax
	je	.label_351
.label_350:
	pop	rbx
	ret	
.label_351:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40514a
	.globl sub_40514a
	.type sub_40514a, @function
sub_40514a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405150

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_353
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_355:
	test	r15, r15
	je	.label_352
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_359
.label_352:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_354
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_360
	.section	.text
	.align	32
	#Procedure 0x4051e2
	.globl sub_4051e2
	.type sub_4051e2, @function
sub_4051e2:

	nop	word ptr cs:[rax + rax]
.label_357:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	32
	#Procedure 0x405208
	.globl sub_405208
	.type sub_405208, @function
sub_405208:

	nop	word ptr cs:[rax + rax]
.label_359:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_356
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_360:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_355
.label_353:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_357
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_362:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_361
	call	__errno_location
	mov	dword ptr [rax], 0
.label_361:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40529b

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
	jne	.label_362
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_361
	test	cl, cl
	jne	.label_361
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_361
	.section	.text
	.align	32
	#Procedure 0x4052e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_363
	test	rbx, rbx
	jne	.label_363
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_363:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	je	.label_364
.label_365:
	pop	rbx
	ret	
.label_364:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405310

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
	mov	qword ptr [rsp + 0xa8], rax
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
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_473:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_470
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_412]
.label_564:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_480
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_196
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_565:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_376
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_376
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_390:
	cmp	r14, r11
	jae	.label_388
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_388:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_390
.label_376:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_406
.label_557:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_406
.label_560:
	mov	al, 1
.label_558:
	mov	r12b, 1
.label_561:
	test	r12b, 1
	mov	cl, 1
	je	.label_410
	mov	ecx, eax
.label_410:
	mov	al, cl
.label_559:
	test	r12b, 1
	jne	.label_414
	test	r11, r11
	je	.label_398
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_398:
	mov	r14d, 1
	jmp	.label_417
.label_414:
	xor	r14d, r14d
.label_417:
	mov	ecx, OFFSET FLAT:label_196
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_406
.label_562:
	test	r12b, 1
	jne	.label_430
	test	r11, r11
	je	.label_432
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_432:
	mov	r14d, 1
	jmp	.label_435
.label_563:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_195
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_406
.label_430:
	xor	r14d, r14d
.label_435:
	mov	eax, OFFSET FLAT:label_195
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_406:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_451
	.section	.text
	.align	32
	#Procedure 0x4055fd
	.globl sub_4055fd
	.type sub_4055fd, @function
sub_4055fd:

	nop	dword ptr [rax]
.label_391:
	inc	rsi
.label_451:
	cmp	rbp, -1
	je	.label_367
	cmp	rsi, rbp
	jne	.label_370
	jmp	.label_372
	.section	.text
	.align	32
	#Procedure 0x405613
	.globl sub_405613
	.type sub_405613, @function
sub_405613:

	nop	word ptr cs:[rax + rax]
.label_367:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_377
.label_370:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_397
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_383
	cmp	rbp, -1
	jne	.label_383
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_383:
	cmp	rbx, rbp
	jbe	.label_400
.label_397:
	xor	r8d, r8d
.label_436:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_401
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_403]
.label_515:
	test	rsi, rsi
	jne	.label_393
	jmp	.label_409
	.section	.text
	.align	32
	#Procedure 0x4056b5
	.globl sub_4056b5
	.type sub_4056b5, @function
sub_4056b5:

	nop	word ptr cs:[rax + rax]
.label_400:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_421
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_436
	jmp	.label_429
.label_421:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_436
.label_519:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_443
	test	rsi, rsi
	jne	.label_445
	cmp	rbp, 1
	je	.label_409
	xor	r13d, r13d
	jmp	.label_368
.label_508:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_450
	cmp	byte ptr [rsp + 6], 0
	jne	.label_413
	cmp	r12d, 2
	jne	.label_454
	mov	eax, r9d
	and	al, 1
	jne	.label_454
	cmp	r14, r11
	jae	.label_457
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_457:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_461
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_461:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_482
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_482:
	add	r14, 3
	mov	r9b, 1
.label_454:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_475
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_475:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_477
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_477
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_477
	cmp	r14, r11
	jae	.label_369
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_369:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_407
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_407:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_368
.label_509:
	mov	bl, 0x62
	jmp	.label_380
.label_510:
	mov	cl, 0x74
	jmp	.label_399
.label_511:
	mov	bl, 0x76
	jmp	.label_380
.label_512:
	mov	bl, 0x66
	jmp	.label_380
.label_513:
	mov	cl, 0x72
	jmp	.label_399
.label_516:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_389
	cmp	byte ptr [rsp + 6], 0
	jne	.label_392
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_396
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_396:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_408
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_408:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_411
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_411:
	add	r14, 3
	xor	r9d, r9d
.label_389:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_368
.label_517:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_418
	cmp	r12d, 2
	jne	.label_393
	cmp	byte ptr [rsp + 6], 0
	je	.label_393
	jmp	.label_392
.label_518:
	cmp	r12d, 2
	jne	.label_431
	cmp	byte ptr [rsp + 6], 0
	jne	.label_392
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_381
.label_401:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_440
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
.label_387:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_453
	test	r8b, r8b
	je	.label_453
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_368
.label_443:
	test	rsi, rsi
	jne	.label_402
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_402
.label_409:
	mov	dl, 1
.label_514:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_392
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_368:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_481
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_483
	jmp	.label_366
	.section	.text
	.align	32
	#Procedure 0x405a04
	.globl sub_405a04
	.type sub_405a04, @function
sub_405a04:

	nop	word ptr cs:[rax + rax]
.label_481:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_366
.label_483:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_374
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_381
	jmp	.label_386
	.section	.text
	.align	32
	#Procedure 0x405a4d
	.globl sub_405a4d
	.type sub_405a4d, @function
sub_405a4d:

	nop	dword ptr [rax]
.label_366:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_386
	jmp	.label_381
.label_374:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_386
.label_450:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_391
	xor	r15d, r15d
	jmp	.label_393
.label_431:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_399
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_381
.label_399:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_392
.label_380:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_368
	nop	word ptr cs:[rax + rax]
.label_386:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_413
	cmp	r12d, 2
	jne	.label_416
	mov	eax, r9d
	and	al, 1
	jne	.label_416
	cmp	r14, r11
	jae	.label_434
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_434:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_423
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_423:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_371
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_371:
	add	r14, 3
	mov	r9b, 1
.label_416:
	cmp	r14, r11
	jae	.label_395
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_395:
	inc	r14
	jmp	.label_438
.label_440:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_441
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_441:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_442:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_460
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_463
	cmp	rbp, -2
	je	.label_469
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_474
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_464:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_466
	bt	rsi, rdx
	jb	.label_485
.label_466:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_464
.label_474:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_465
	xor	r13d, r13d
.label_465:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_442
	jmp	.label_387
.label_477:
	xor	r13d, r13d
	jmp	.label_368
.label_402:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_368
.label_418:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_393
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_393
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_393
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_425
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_472
	cmp	byte ptr [rsp + 6], 0
	jne	.label_385
	cmp	r14, r11
	jae	.label_458
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_458:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_419
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_419:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_420
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_420:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_456
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_456:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_368
.label_393:
	xor	eax, eax
.label_445:
	xor	r13d, r13d
	jmp	.label_368
.label_453:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_439
	.section	.text
	.align	32
	#Procedure 0x405d32
	.globl sub_405d32
	.type sub_405d32, @function
sub_405d32:

	nop	word ptr cs:[rax + rax]
.label_394:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_439:
	test	r8b, r8b
	je	.label_446
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_447
	cmp	r14, r11
	jae	.label_448
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_448:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_447
	.section	.text
	.align	32
	#Procedure 0x405d7c
	.globl sub_405d7c
	.type sub_405d7c, @function
sub_405d7c:

	nop	dword ptr [rax]
.label_446:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_429
	cmp	r12d, 2
	jne	.label_459
	mov	eax, r9d
	and	al, 1
	jne	.label_459
	cmp	r14, r11
	jae	.label_462
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_462:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_467
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_467:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_471
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_471:
	add	r14, 3
	mov	r9b, 1
.label_459:
	cmp	r14, r11
	jae	.label_426
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_426:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_444
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_444:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_484
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_484:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_447:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_381
	test	r9b, 1
	je	.label_382
	mov	ebx, eax
	and	bl, 1
	jne	.label_382
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_384
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_384:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_476
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_476:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_382:
	cmp	r14, r11
	jae	.label_394
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_394
	.section	.text
	.align	32
	#Procedure 0x405e83
	.globl sub_405e83
	.type sub_405e83, @function
sub_405e83:

	nop	word ptr cs:[rax + rax]
.label_381:
	test	r9b, 1
	je	.label_404
	and	al, 1
	jne	.label_404
	cmp	r14, r11
	jae	.label_405
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_405:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_415
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_415:
	add	r14, 2
	xor	r9d, r9d
.label_404:
	mov	ebx, r15d
.label_438:
	cmp	r14, r11
	jae	.label_373
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_373:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_391
.label_463:
	xor	r13d, r13d
.label_460:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_387
.label_469:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_428
	mov	rsi, qword ptr [rsp + 0x58]
.label_437:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_478
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_437
	xor	r13d, r13d
	jmp	.label_387
.label_428:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_387
.label_478:
	xor	r13d, r13d
	jmp	.label_387
.label_425:
	xor	r13d, r13d
	jmp	.label_368
.label_472:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_368
	.section	.text
	.align	32
	#Procedure 0x405f58
	.globl sub_405f58
	.type sub_405f58, @function
sub_405f58:

	nop	dword ptr [rax + rax]
.label_372:
	mov	rcx, rsi
.label_377:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_449
	or	al, dl
	je	.label_452
.label_449:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_455
	or	al, dl
	jne	.label_455
	test	r10b, 1
	jne	.label_468
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_455
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_473
.label_455:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_479
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_378
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_378
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_375:
	cmp	r14, r11
	jae	.label_422
	mov	byte ptr [rcx + r14], al
.label_422:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_375
	jmp	.label_378
.label_413:
	mov	qword ptr [rsp + 0x20], rbp
.label_429:
	mov	rdx, rdi
	jmp	.label_379
.label_392:
	mov	qword ptr [rsp + 0x20], rbp
.label_485:
	mov	rdx, rdi
	mov	eax, 2
.label_433:
	mov	qword ptr [rsp + 0x38], rax
.label_379:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
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
.label_424:
	mov	r14, rax
.label_427:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_452:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_379
.label_468:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_424
.label_479:
	mov	rcx, qword ptr [rsp + 8]
.label_378:
	cmp	r14, r11
	jae	.label_427
	mov	byte ptr [rcx + r14], 0
	jmp	.label_427
.label_385:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_433
.label_470:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406117
	.globl sub_406117
	.type sub_406117, @function
sub_406117:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406120

	.globl memcasecmp
	.type memcasecmp, @function
memcasecmp:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	xor	eax, eax
	test	rbx, rbx
	je	.label_486
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_487:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_486
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_487
.label_486:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406162
	.globl sub_406162
	.type sub_406162, @function
sub_406162:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061d5
	.globl sub_4061d5
	.type sub_4061d5, @function
sub_4061d5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e2
	.globl sub_4061e2
	.type sub_4061e2, @function
sub_4061e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406206
	.globl sub_406206
	.type sub_406206, @function
sub_406206:

	nop	word ptr cs:[rax + rax]
