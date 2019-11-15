	.section	.text
	.align	32
	#Procedure 0x401809
	.globl sub_401809
	.type sub_401809, @function
sub_401809:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40180a
	.globl sub_40180a
	.type sub_40180a, @function
sub_40180a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401842
	.globl sub_401842
	.type sub_401842, @function
sub_401842:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40188a
	.globl sub_40188a
	.type sub_40188a, @function
sub_40188a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018ac
	.globl sub_4018ac
	.type sub_4018ac, @function
sub_4018ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018bd
	.globl sub_4018bd
	.type sub_4018bd, @function
sub_4018bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018d6
	.globl sub_4018d6
	.type sub_4018d6, @function
sub_4018d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018e0

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
	#Procedure 0x4018f7
	.globl sub_4018f7
	.type sub_4018f7, @function
sub_4018f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401900

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	ebp, edi
	mov	edi, OFFSET FLAT:label_9
	call	getenv
	mov	r12, rax
	mov	qword ptr [word ptr [rsp + 40]], OFFSET FLAT:label_26
	mov	qword ptr [word ptr [rsp + 32]], OFFSET FLAT:label_26
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_14
	call	setlocale
	mov	edi, OFFSET FLAT:label_44
	mov	esi, OFFSET FLAT:label_45
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_44
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + skip_chars]],  0
	mov	qword ptr [word ptr [rip + skip_fields]],  0
	mov	qword ptr [word ptr [rip + check_chars]],  -1
	mov	byte ptr [byte ptr [rip + output_first_repeated]],  1
	mov	byte ptr [byte ptr [rip + output_unique]],  1
	mov	byte ptr [byte ptr [rip + output_later_repeated]],  0
	mov	byte ptr [byte ptr [rip + countmode]],  1
	mov	dword ptr [dword ptr [rip + delimit_groups]],  0
	mov	r14b, 0xa
	xor	eax, eax
	mov	dword ptr [rsp + 0xc], 0
	xor	r15d, r15d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	jmp	.label_10
	.section	.text
	.align	32
	#Procedure 0x4019e1
	.globl sub_4019e1
	.type sub_4019e1, @function
sub_4019e1:

	nop	word ptr cs:[rax + rax]
.label_16:
	lea	edx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  edx
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, r15d
	inc	r15d
	mov	qword ptr [rsp + rdx*8 + 0x20], rax
	mov	eax, ecx
	mov	r14b, r13b
.label_10:
	mov	r13d, r14d
	test	r12, r12
	setne	cl
	test	r15d, r15d
	setne	dl
	cmp	eax, -1
	je	.label_17
	and	cl, dl
	mov	ecx, eax
	jne	.label_52
	xor	r14d, r14d
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x18]
	call	getopt_long
	mov	ebx, eax
	lea	edx, [rbx + 1]
	cmp	edx, 0x81
	ja	.label_41
	mov	eax, 0x7a
	mov	ecx, 0xffffffff
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_48]]
.label_565:
	cmp	dword ptr [rsp + 0xc], 2
	jne	.label_53
	mov	qword ptr [word ptr [rip + skip_fields]],  0
	xor	eax, eax
	jmp	.label_57
.label_17:
	mov	ecx, eax
.label_52:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_11
	cmp	r15d, 2
	jne	.label_16
	jmp	.label_24
.label_53:
	mov	rax,  qword ptr [word ptr [rip + skip_fields]]
	movabs	rcx, 0x1999999999999999
	cmp	rax, rcx
	ja	.label_28
.label_57:
	lea	rcx, [rax + rax*4]
	movsxd	rdx, ebx
	lea	rcx, [rdx + rcx*2 - 0x30]
	cmp	rcx, rax
	jae	.label_37
.label_28:
	mov	qword ptr [word ptr [rip + skip_fields]],  -1
	jmp	.label_40
.label_37:
	mov	qword ptr [word ptr [rip + skip_fields]],  rcx
.label_40:
	mov	dword ptr [rsp + 0xc], 1
.label_20:
	mov	eax, ebx
	mov	r14b, r13b
	jmp	.label_10
.label_564:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0x2b
	jne	.label_55
	call	strict_posix2
	test	al, al
	jne	.label_55
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_14
	lea	rcx, [rsp + 0x30]
	call	xstrtoul
	test	eax, eax
	je	.label_39
.label_55:
	cmp	r15d, 2
	je	.label_30
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	ecx, r15d
	inc	r15d
	mov	qword ptr [rsp + rcx*8 + 0x20], rax
.label_47:
	mov	eax, 1
	mov	r14b, r13b
	jmp	.label_10
.label_566:
	mov	byte ptr [byte ptr [rip + output_unique]],  0
	mov	byte ptr [byte ptr [rip + output_later_repeated]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	test	rsi, rsi
	je	.label_46
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_42
	mov	edx, OFFSET FLAT:delimit_method_string
	mov	ecx, OFFSET FLAT:delimit_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + delimit_method_map]]
.label_46:
	mov	dword ptr [dword ptr [rip + delimit_groups]],  eax
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_20
.label_567:
	mov	byte ptr [byte ptr [rip + countmode]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 0x63
	mov	r14b, r13b
	jmp	.label_10
.label_568:
	mov	byte ptr [byte ptr [rip + output_unique]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 0x64
	mov	r14b, r13b
	jmp	.label_10
.label_569:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:label_32
	call	size_opt
	mov	qword ptr [word ptr [rip + skip_fields]],  rax
	mov	dword ptr [rsp + 0xc], 2
	mov	eax, 0x66
	mov	r14b, r13b
	jmp	.label_10
.label_570:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	mov	eax, 0x69
	mov	r14b, r13b
	jmp	.label_10
.label_571:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:label_27
	call	size_opt
	mov	qword ptr [word ptr [rip + skip_chars]],  rax
	mov	eax, 0x73
	mov	r14b, r13b
	jmp	.label_10
.label_572:
	mov	byte ptr [byte ptr [rip + output_first_repeated]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 0x75
	mov	r14b, r13b
	jmp	.label_10
.label_573:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:label_50
	call	size_opt
	mov	qword ptr [word ptr [rip + check_chars]],  rax
	mov	eax, 0x77
	mov	r14b, r13b
	jmp	.label_10
.label_574:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_12
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_49
	mov	edx, OFFSET FLAT:grouping_method_string
	mov	ecx, OFFSET FLAT:grouping_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + grouping_method_map]]
	mov	dword ptr [dword ptr [rip + grouping]],  eax
	jmp	.label_29
.label_12:
	mov	dword ptr [dword ptr [rip + grouping]],  3
.label_29:
	mov	eax, 0x80
	mov	r14b, r13b
	jmp	.label_10
.label_39:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [word ptr [rip + skip_chars]],  rax
	jmp	.label_47
.label_11:
	mov	ecx,  dword ptr [dword ptr [rip + grouping]]
	mov	rax, qword ptr [rsp + 0x10]
	test	al, al
	je	.label_54
	test	ecx, ecx
	jne	.label_56
.label_54:
	mov	al,  byte ptr [byte ptr [rip + countmode]]
	test	ecx, ecx
	je	.label_58
	mov	ecx, eax
	xor	cl, 1
	test	cl, 1
	jne	.label_13
.label_58:
	test	al, 1
	jne	.label_21
	cmp	byte ptr [byte ptr [rip + output_later_repeated]],  1
	je	.label_23
.label_21:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x28]
	movsx	edx, r13b
	call	check_file
	xor	eax, eax
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
.label_51:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_41:
	cmp	ebx, 0xffffff7d
	je	.label_15
	cmp	ebx, 0xffffff7e
	jne	.label_22
	xor	edi, edi
	call	usage
.label_22:
	mov	edi, 1
	call	usage
.label_15:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_33
	mov	edx, OFFSET FLAT:label_34
	mov	r8d, OFFSET FLAT:label_35
	mov	r9d, OFFSET FLAT:label_36
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_51
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	jmp	.label_19
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	jmp	.label_19
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
.label_19:
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
	#Procedure 0x401e48
	.globl sub_401e48
	.type sub_401e48, @function
sub_401e48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e50

	.globl find_field
	.type find_field, @function
find_field:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r15, qword ptr [r14 + 8]
	xor	ebx, ebx
	dec	r15
	je	.label_61
	mov	rax,  qword ptr [word ptr [rip + skip_fields]]
	test	rax, rax
	je	.label_61
	mov	r12, qword ptr [r14 + 0x10]
	mov	r13,  qword ptr [word ptr [rip + skip_fields]]
	xor	ebx, ebx
	xor	ebp, ebp
	jmp	.label_62
	.section	.text
	.align	32
	#Procedure 0x401e86
	.globl sub_401e86
	.type sub_401e86, @function
sub_401e86:

	nop	word ptr cs:[rax + rax]
.label_59:
	inc	rbx
.label_62:
	cmp	rbx, r15
	jae	.label_60
	movzx	edi, byte ptr [r12 + rbx]
	call	field_sep
	test	al, al
	jne	.label_59
	jmp	.label_60
	.section	.text
	.align	32
	#Procedure 0x401ea8
	.globl sub_401ea8
	.type sub_401ea8, @function
sub_401ea8:

	nop	dword ptr [rax + rax]
.label_63:
	inc	rbx
.label_60:
	cmp	rbx, r15
	jae	.label_64
	movzx	edi, byte ptr [r12 + rbx]
	call	field_sep
	test	al, al
	je	.label_63
.label_64:
	cmp	r15, rbx
	jbe	.label_61
	inc	rbp
	cmp	rbp, r13
	jb	.label_62
.label_61:
	mov	rax,  qword ptr [word ptr [rip + skip_chars]]
	sub	r15, rbx
	cmp	rax, r15
	cmovb	r15, rax
	add	r15, rbx
	add	r15, qword ptr [r14 + 0x10]
	mov	rax, r15
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
	#Procedure 0x401efd
	.globl sub_401efd
	.type sub_401efd, @function
sub_401efd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f00

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
	je	.label_65
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_66:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_65
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_66
.label_65:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f42
	.globl sub_401f42
	.type sub_401f42, @function
sub_401f42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_67
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_67:
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
	#Procedure 0x401fd3
	.globl sub_401fd3
	.type sub_401fd3, @function
sub_401fd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_68
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_69
.label_68:
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	strcoll_loop
.label_69:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402040

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
	jne	.label_77
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
	je	.label_76
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_78
	mov	eax, OFFSET FLAT:label_79
	jmp	.label_72
.label_75:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_73
	mov	eax, OFFSET FLAT:label_74
.label_72:
	cmove	rax, rcx
.label_77:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020bf
	.globl sub_4020bf
	.type sub_4020bf, @function
sub_4020bf:

	nop	dword ptr [rax]
.label_76:
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
	je	.label_75
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_70
	mov	eax, OFFSET FLAT:label_71
	jmp	.label_72
	.section	.text
	.align	32
	#Procedure 0x402100

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x402105
	.globl sub_402105
	.type sub_402105, @function
sub_402105:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402110

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_80
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_80:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40212a
	.globl sub_40212a
	.type sub_40212a, @function
sub_40212a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402130

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_81
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_82
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_82
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_82:
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
	#Procedure 0x402190

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
	je	.label_85
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_83
	jmp	.label_84
.label_85:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_84
.label_83:
	mov	eax, 1
	test	bpl, bpl
	je	.label_84
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
.label_84:
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
	#Procedure 0x402218
	.globl sub_402218
	.type sub_402218, @function
sub_402218:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402220

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
	je	.label_86
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_88
	jmp	.label_87
.label_86:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_87
.label_88:
	mov	eax, 1
	test	bpl, bpl
	je	.label_87
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
.label_87:
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
	#Procedure 0x402299
	.globl sub_402299
	.type sub_402299, @function
sub_402299:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022a0

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
	je	.label_91
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_90
	jmp	.label_89
.label_91:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_89
.label_90:
	mov	eax, 1
	test	bpl, bpl
	je	.label_89
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
.label_89:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402303
	.globl sub_402303
	.type sub_402303, @function
sub_402303:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402310

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
	je	.label_94
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_92
	jmp	.label_93
.label_94:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_93
.label_92:
	mov	eax, 1
	test	bpl, bpl
	je	.label_93
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_93:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40236f
	.globl sub_40236f
	.type sub_40236f, @function
sub_40236f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402370

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
	je	.label_95
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_97
	jmp	.label_96
.label_95:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_96
.label_97:
	mov	eax, 1
	test	bpl, bpl
	je	.label_96
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_96:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023b9
	.globl sub_4023b9
	.type sub_4023b9, @function
sub_4023b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4023c0

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
	je	.label_100
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_99
	jmp	.label_98
.label_100:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_98
.label_99:
	mov	eax, 1
	test	bpl, bpl
	je	.label_98
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_98:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402405
	.globl sub_402405
	.type sub_402405, @function
sub_402405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402410

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_103
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_102
	jmp	.label_101
.label_103:
	mov	eax, 1
	test	cl, cl
	je	.label_101
.label_102:
	xor	eax, eax
.label_101:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40243f
	.globl sub_40243f
	.type sub_40243f, @function
sub_40243f:

	nop	
.label_104:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402445
	.globl sub_402445
	.type sub_402445, @function
sub_402445:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40244f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_104
	call	rpl_calloc
	test	rax, rax
	je	.label_104
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402470
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
	#Procedure 0x40247f
	.globl sub_40247f
	.type sub_40247f, @function
sub_40247f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402480
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_105
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_107:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_107
.label_105:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_109
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_108]], OFFSET FLAT:slot0
.label_109:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_106
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_106:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402511
	.globl sub_402511
	.type sub_402511, @function
sub_402511:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402520

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
	je	.label_122
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_119
.label_122:
	mov	edx, OFFSET FLAT:label_120
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_119:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
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
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_125
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_126]]
.label_615:
	add	rsp, 8
	jmp	.label_112
.label_125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
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
	jmp	.label_112
.label_616:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
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
.label_617:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
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
.label_618:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
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
.label_619:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
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
	jmp	.label_112
.label_620:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
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
	jmp	.label_112
.label_621:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
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
	jmp	.label_112
.label_622:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
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
	jmp	.label_112
.label_624:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
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
	jmp	.label_112
.label_623:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
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
.label_112:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402878
	.globl sub_402878
	.type sub_402878, @function
sub_402878:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880

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
	je	.label_129
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_129:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028c2
	.globl sub_4028c2
	.type sub_4028c2, @function
sub_4028c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0
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
	je	.label_130
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_130:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402918
	.globl sub_402918
	.type sub_402918, @function
sub_402918:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402920
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
	#Procedure 0x402953
	.globl sub_402953
	.type sub_402953, @function
sub_402953:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960

	.globl check_file
	.type check_file, @function
check_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_143
	cmp	byte ptr [rbx + 1], 0
	je	.label_159
.label_143:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_146
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_148
.label_159:
	cmp	byte ptr [rbp], 0x2d
	jne	.label_154
	cmp	byte ptr [rbp + 1], 0
	je	.label_151
.label_154:
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:label_152
	mov	rdi, rbp
	call	freopen_safer
	test	rax, rax
	je	.label_155
.label_151:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	call	fadvise
	lea	rbp, [rsp + 0x50]
	mov	rdi, rbp
	call	initbuffer
	lea	rbx, [rsp + 0x38]
	mov	rdi, rbx
	call	initbuffer
	cmp	byte ptr [byte ptr [rip + output_unique]],  1
	jne	.label_132
	cmp	byte ptr [byte ptr [rip + output_first_repeated]],  1
	jne	.label_132
	test	byte ptr [byte ptr [rip + countmode]],  1
	je	.label_132
	movsx	r12d, r14b
	lea	rbp, [rsp + 0x50]
	mov	dword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_133
.label_132:
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	movsx	edx, r14b
	lea	rbx, [rsp + 0x38]
	mov	rdi, rbx
	mov	dword ptr [rsp + 0x18], edx
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_139
	mov	rdi, rbx
	call	find_field
	mov	r14, qword ptr [rsp + 0x40]
	dec	r14
	mov	qword ptr [rsp + 0x10], rax
	sub	r14, rax
	add	r14, qword ptr [rsp + 0x48]
	mov	cl, 1
	xor	eax, eax
	mov	rdx, rbp
	jmp	.label_137
	.section	.text
	.align	32
	#Procedure 0x402a7e
	.globl sub_402a7e
	.type sub_402a7e, @function
sub_402a7e:

	nop	
.label_150:
	mov	rdi, qword ptr [rsp + 0x28]
	mov	esi, r15d
	mov	rdx, rbx
	call	writeline
	mov	rdx, qword ptr [rsp + 0x28]
	test	r13b, r13b
	mov	eax, 0
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x10], r12
	mov	rbx, rbp
	mov	ecx, dword ptr [rsp + 0x24]
.label_137:
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 8], r14
	mov	dword ptr [rsp + 0x24], ecx
	and	cl, 1
	mov	byte ptr [rsp + 7], cl
	mov	rbx, rax
	nop	dword ptr [rax + rax]
.label_149:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	feof_unlocked
	test	eax, eax
	jne	.label_158
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbp
	mov	edx, dword ptr [rsp + 0x18]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_160
	mov	rdi, rbp
	call	find_field
	mov	r12, rax
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	sub	rcx, r12
	lea	r14, [rax + rcx - 1]
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	call	different
	mov	r13d, eax
	xor	al, 1
	movzx	r15d, al
	add	rbx, r15
	xor	eax, eax
	cmp	rbx, -1
	sete	al
	sub	rbx, rax
	mov	eax,  dword ptr [dword ptr [rip + delimit_groups]]
	test	eax, eax
	je	.label_135
	test	r13b, r13b
	jne	.label_140
	cmp	rbx, 1
	jne	.label_141
	cmp	eax, 1
	je	.label_142
	cmp	eax, 2
	jne	.label_141
	cmp	byte ptr [rsp + 7], 0
	jne	.label_141
.label_142:
	mov	edi, dword ptr [rsp + 0x18]
	call	putchar_unlocked
	jmp	.label_141
	.section	.text
	.align	32
	#Procedure 0x402b79
	.globl sub_402b79
	.type sub_402b79, @function
sub_402b79:

	nop	dword ptr [rax]
.label_135:
	test	r13b, r13b
	jne	.label_150
.label_141:
	cmp	byte ptr [byte ptr [rip + output_later_repeated]],  1
	jne	.label_149
	jmp	.label_150
.label_140:
	test	rbx, rbx
	je	.label_150
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_150
.label_160:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_139
.label_158:
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	call	writeline
	jmp	.label_139
.label_156:
	mov	rdx, qword ptr [rbp + 8]
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, rbp
	mov	rbp, r15
.label_133:
	mov	r15, rbx
	nop	dword ptr [rax + rax]
.label_153:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	feof_unlocked
	test	eax, eax
	jne	.label_134
	mov	rsi,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbp
	mov	edx, r12d
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_134
	mov	rdi, rbp
	call	find_field
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	sub	rcx, rbx
	lea	r13, [rax + rcx - 1]
	mov	r14b, 1
	cmp	qword ptr [r15 + 8], 0
	je	.label_138
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	call	different
	mov	r14d, eax
.label_138:
	test	r14b, r14b
	je	.label_145
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	test	eax, eax
	je	.label_145
	cmp	eax, 1
	je	.label_144
	cmp	eax, 4
	je	.label_144
	mov	ecx, dword ptr [rsp + 8]
	test	cl, cl
	je	.label_145
	or	eax, 1
	cmp	eax, 3
	jne	.label_145
	nop	word ptr cs:[rax + rax]
.label_144:
	mov	edi, r12d
	call	putchar_unlocked
.label_145:
	cmp	dword ptr [dword ptr [rip + grouping]],  0
	setne	al
	or	r14b, al
	cmp	r14b, 1
	jne	.label_153
	jmp	.label_156
.label_134:
	mov	eax,  dword ptr [dword ptr [rip + grouping]]
	cmp	eax, 4
	je	.label_157
	cmp	eax, 2
	jne	.label_139
.label_157:
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	je	.label_139
	mov	edi, r12d
	call	putchar_unlocked
.label_139:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_131
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	jne	.label_131
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_148:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_147
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_155:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_147
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0

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
	.align	32
	#Procedure 0x402dfd
	.globl sub_402dfd
	.type sub_402dfd, @function
sub_402dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e00

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
	je	.label_162
	test	rbx, rbx
	je	.label_162
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_162
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_162
	mov	edi, OFFSET FLAT:label_161
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_163
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_162
.label_163:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_162:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e91
	.globl sub_402e91
	.type sub_402e91, @function
sub_402e91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	.section	.text
	.align	32
	#Procedure 0x402ea5
	.globl sub_402ea5
	.type sub_402ea5, @function
sub_402ea5:

	nop	word ptr cs:[rax + rax]
.label_165:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_164
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_164:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ee4
	.globl sub_402ee4
	.type sub_402ee4, @function
sub_402ee4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402ee6

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
	jne	.label_166
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_166
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_165
.label_166:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x402f20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_168
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_167
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_168
.label_167:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_168
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_169
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_169:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_168:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402f97
	.globl sub_402f97
	.type sub_402f97, @function
sub_402f97:

	nop	word ptr [rax + rax]
.label_175:
	mov	al,  byte ptr [byte ptr [rip + output_first_repeated]]
.label_176:
	test	al, al
	je	.label_171
.label_173:
	mov	al,  byte ptr [byte ptr [rip + countmode]]
	test	al, al
	jne	.label_172
	inc	rdx
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_170
	xor	eax, eax
	call	__printf_chk
.label_172:
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	pop	rbx
	jmp	fwrite_unlocked
.label_174:
	mov	al,  byte ptr [byte ptr [rip + output_unique]]
	jmp	.label_176
	.section	.text
	.align	32
	#Procedure 0x402fea

	.globl writeline
	.type writeline, @function
writeline:
	push	rbx
	mov	rbx, rdi
	test	rdx, rdx
	je	.label_174
	test	sil, sil
	je	.label_175
	cmp	byte ptr [byte ptr [rip + output_later_repeated]],  1
	je	.label_173
	jmp	.label_171
.label_171:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403005
	.globl sub_403005
	.type sub_403005, @function
sub_403005:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010
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
	je	.label_177
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_178:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_177
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_178
.label_177:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403073
	.globl sub_403073
	.type sub_403073, @function
sub_403073:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403080

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
	#Procedure 0x4030b6
	.globl sub_4030b6
	.type sub_4030b6, @function
sub_4030b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_179
	nop	
.label_189:
	mov	edi, OFFSET FLAT:label_33
	call	strcmp
	test	eax, eax
	je	.label_187
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_189
.label_187:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_33
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_34
	mov	ecx, OFFSET FLAT:label_181
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_180
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_180
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_180:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_33
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_181
	mov	ecx, OFFSET FLAT:label_33
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_184
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
	#Procedure 0x4031da
	.globl sub_4031da
	.type sub_4031da, @function
sub_4031da:

	nop	word ptr [rax + rax]
.label_190:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031e3
	.globl sub_4031e3
	.type sub_4031e3, @function
sub_4031e3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4031e5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_190
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_196:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_191
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_194:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_196
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_147
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403279

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_192
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_194
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_194
.label_192:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_193
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_193:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4032c0

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
	je	.label_197
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
.label_197:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403312
	.globl sub_403312
	.type sub_403312, @function
sub_403312:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403320
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
	#Procedure 0x403339
	.globl sub_403339
	.type sub_403339, @function
sub_403339:

	nop	dword ptr [rax]
.label_198:
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
	mov	r8, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_191
	xor	eax, eax
	mov	rcx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40336f

	.globl size_opt
	.type size_opt, @function
size_opt:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_14
	call	xstrtoul
	cmp	eax, 2
	jae	.label_198
	mov	rax, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033a0

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
	je	.label_211
	cmp	eax, 1
	je	.label_200
	cmp	eax, 2
	je	.label_201
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_201:
	mov	bpl, r14b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_209
.label_211:
	xor	ebp, ebp
	xor	r15d, r15d
	jmp	.label_199
.label_200:
	xor	ebp, ebp
.label_209:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_202
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_204
.label_202:
	test	r14b, r14b
	je	.label_205
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_210
.label_205:
	test	bpl, bpl
	je	.label_199
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_204
.label_199:
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
	jmp	.label_204
.label_210:
	mov	r14b, 1
.label_204:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	test	bpl, bpl
	je	.label_207
	mov	edi, 2
	call	close
.label_207:
	test	r14b, r14b
	je	.label_208
	mov	edi, 1
	call	close
.label_208:
	test	r15b, r15b
	je	.label_206
	xor	edi, edi
	call	close
.label_206:
	test	r13, r13
	jne	.label_203
	mov	dword ptr [rbx], r12d
.label_203:
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
	#Procedure 0x4034be
	.globl sub_4034be
	.type sub_4034be, @function
sub_4034be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4034c0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4034ca
	.globl sub_4034ca
	.type sub_4034ca, @function
sub_4034ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_213:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_212
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_214
	.section	.text
	.align	32
	#Procedure 0x4034f9
	.globl sub_4034f9
	.type sub_4034f9, @function
sub_4034f9:

	nop	dword ptr [rax]
.label_212:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_214:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_215
	inc	r9
	cmp	r9, 0xa
	jb	.label_213
.label_215:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40352f
	.globl sub_40352f
	.type sub_40352f, @function
sub_40352f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403530

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40353e
	.globl sub_40353e
	.type sub_40353e, @function
sub_40353e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403540

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
	js	.label_216
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_219
	cmp	r12d, 0x7fffffff
	je	.label_221
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
	jne	.label_217
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_217:
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
.label_219:
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
	jbe	.label_222
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_218
.label_222:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_220
	mov	rdi, r14
	call	free
.label_220:
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
.label_218:
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
.label_216:
	call	abort
.label_221:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4036fd
	.globl sub_4036fd
	.type sub_4036fd, @function
sub_4036fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403700

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
	mov	rcx,  qword ptr [word ptr [rip + label_223]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_224]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_225]]
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
	#Procedure 0x40376d
	.globl sub_40376d
	.type sub_40376d, @function
sub_40376d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403770

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40377d
	.globl sub_40377d
	.type sub_40377d, @function
sub_40377d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403780

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x403787
	.globl sub_403787
	.type sub_403787, @function
sub_403787:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403790

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_147
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4037c0

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
	jns	.label_227
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
.label_227:
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
	#Procedure 0x403828
	.globl sub_403828
	.type sub_403828, @function
sub_403828:

	nop	dword ptr [rax + rax]
.label_228:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403836
	.globl sub_403836
	.type sub_403836, @function
sub_403836:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40383b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_228
	test	rdx, rdx
	je	.label_228
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403860

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40386a
	.globl sub_40386a
	.type sub_40386a, @function
sub_40386a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403870
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40387a
	.globl sub_40387a
	.type sub_40387a, @function
sub_40387a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403880
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x403889
	.globl sub_403889
	.type sub_403889, @function
sub_403889:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403890

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
	#Procedure 0x4038c7
	.globl sub_4038c7
	.type sub_4038c7, @function
sub_4038c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038da
	.globl sub_4038da
	.type sub_4038da, @function
sub_4038da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038e0
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
	#Procedure 0x4038ed
	.globl sub_4038ed
	.type sub_4038ed, @function
sub_4038ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038f0
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
	#Procedure 0x4038fd
	.globl sub_4038fd
	.type sub_4038fd, @function
sub_4038fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403900

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
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
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
	#Procedure 0x4039ca
	.globl sub_4039ca
	.type sub_4039ca, @function
sub_4039ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039d0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4039d9
	.globl sub_4039d9
	.type sub_4039d9, @function
sub_4039d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039e0

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
	mov	rax,  qword ptr [word ptr [rip + label_223]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_224]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_225]]
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
	#Procedure 0x403a48
	.globl sub_403a48
	.type sub_403a48, @function
sub_403a48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a50
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a5a
	.globl sub_403a5a
	.type sub_403a5a, @function
sub_403a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_233
	cmp	byte ptr [rax], 0x43
	jne	.label_235
	cmp	byte ptr [rax + 1], 0
	je	.label_232
.label_235:
	mov	esi, OFFSET FLAT:label_234
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_233
.label_232:
	xor	ebx, ebx
.label_233:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a91
	.globl sub_403a91
	.type sub_403a91, @function
sub_403a91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403aa0
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
	#Procedure 0x403ab3
	.globl sub_403ab3
	.type sub_403ab3, @function
sub_403ab3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ac0

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
	#Procedure 0x403af9
	.globl sub_403af9
	.type sub_403af9, @function
sub_403af9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b00

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
	#Procedure 0x403b11
	.globl sub_403b11
	.type sub_403b11, @function
sub_403b11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b20
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
	#Procedure 0x403b34
	.globl sub_403b34
	.type sub_403b34, @function
sub_403b34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b40
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_236:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_236
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403b61
	.globl sub_403b61
	.type sub_403b61, @function
sub_403b61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b70
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b78
	.globl sub_403b78
	.type sub_403b78, @function
sub_403b78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_237
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_237:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
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
.label_252:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x403d8c
	.globl sub_403d8c
	.type sub_403d8c, @function
sub_403d8c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d99

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_252
	ret	
	.section	.text
	.align	32
	#Procedure 0x403da0

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
	#Procedure 0x403dcd
	.globl sub_403dcd
	.type sub_403dcd, @function
sub_403dcd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403dd0
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
	#Procedure 0x403de3
	.globl sub_403de3
	.type sub_403de3, @function
sub_403de3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403df0

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
	#Procedure 0x403e39
	.globl sub_403e39
	.type sub_403e39, @function
sub_403e39:

	nop	dword ptr [rax]
.label_253:
	neg	r14
	sbb	eax, eax
.label_254:
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
	#Procedure 0x403e54
	.globl sub_403e54
	.type sub_403e54, @function
sub_403e54:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403e56

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
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
	call	__errno_location
	mov	r13, rax
	nop	
.label_255:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_254
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_253
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_255
	jmp	.label_254
	.section	.text
	.align	32
	#Procedure 0x403ec0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403eca
	.globl sub_403eca
	.type sub_403eca, @function
sub_403eca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0

	.globl strict_posix2
	.type strict_posix2, @function
strict_posix2:
	push	rax
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b9
	setb	al
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ee5
	.globl sub_403ee5
	.type sub_403ee5, @function
sub_403ee5:

	nop	word ptr cs:[rax + rax]
.label_257:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_256
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403f10
	.globl sub_403f10
	.type sub_403f10, @function
sub_403f10:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f1f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_257
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_259
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_259
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_258
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_258:
	mov	rbx, r14
.label_259:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fa0
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
	#Procedure 0x403faf
	.globl sub_403faf
	.type sub_403faf, @function
sub_403faf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403fb0

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
.label_283:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_287
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_291]]
.label_558:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_298
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_74
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_559:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_309
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_309
	xor	r14d, r14d
.label_324:
	cmp	r14, r11
	jae	.label_319
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_319:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_324
.label_309:
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
	jmp	.label_330
.label_551:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_330
.label_554:
	mov	al, 1
.label_552:
	mov	r12b, 1
.label_555:
	test	r12b, 1
	mov	cl, 1
	je	.label_342
	mov	ecx, eax
.label_342:
	mov	al, cl
.label_553:
	test	r12b, 1
	jne	.label_345
	test	r11, r11
	je	.label_347
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_347:
	mov	r14d, 1
	jmp	.label_295
.label_345:
	xor	r14d, r14d
.label_295:
	mov	ecx, OFFSET FLAT:label_74
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_330
.label_556:
	test	r12b, 1
	jne	.label_353
	test	r11, r11
	je	.label_359
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_359:
	mov	r14d, 1
	jmp	.label_363
.label_557:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_73
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_330
.label_353:
	xor	r14d, r14d
.label_363:
	mov	eax, OFFSET FLAT:label_73
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_330:
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
	jmp	.label_262
	.section	.text
	.align	32
	#Procedure 0x40428c
	.globl sub_40428c
	.type sub_40428c, @function
sub_40428c:

	nop	dword ptr [rax]
.label_320:
	inc	rsi
.label_262:
	cmp	rbp, -1
	je	.label_302
	cmp	rsi, rbp
	jne	.label_358
	jmp	.label_306
	.section	.text
	.align	32
	#Procedure 0x4042a3
	.globl sub_4042a3
	.type sub_4042a3, @function
sub_4042a3:

	nop	word ptr cs:[rax + rax]
.label_302:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_306
.label_358:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_311
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_315
	cmp	rbp, -1
	jne	.label_315
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
.label_315:
	cmp	rbx, rbp
	jbe	.label_328
.label_311:
	xor	r8d, r8d
.label_277:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_331
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_333]]
.label_525:
	test	rsi, rsi
	jne	.label_321
	jmp	.label_338
	.section	.text
	.align	32
	#Procedure 0x40433e
	.globl sub_40433e
	.type sub_40433e, @function
sub_40433e:

	nop	
.label_328:
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
	jne	.label_350
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_277
	jmp	.label_286
.label_350:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_277
.label_529:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_365
	test	rsi, rsi
	jne	.label_366
	cmp	rbp, 1
	je	.label_338
	xor	r13d, r13d
	jmp	.label_279
.label_518:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_371
	cmp	byte ptr [rsp + 7], 0
	jne	.label_265
	cmp	r12d, 2
	jne	.label_263
	mov	eax, r9d
	and	al, 1
	jne	.label_263
	cmp	r14, r11
	jae	.label_275
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_275:
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
.label_263:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_356
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_356:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_285
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_285
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_285
	cmp	r14, r11
	jae	.label_299
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_299:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_329
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_329:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_279
.label_519:
	mov	bl, 0x62
	jmp	.label_307
.label_520:
	mov	cl, 0x74
	jmp	.label_310
.label_521:
	mov	bl, 0x76
	jmp	.label_307
.label_522:
	mov	bl, 0x66
	jmp	.label_307
.label_523:
	mov	cl, 0x72
	jmp	.label_310
.label_526:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_317
	cmp	byte ptr [rsp + 7], 0
	jne	.label_265
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
	jae	.label_325
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_325:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_337
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_337:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_339
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	add	r14, 3
	xor	r9d, r9d
.label_317:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_279
.label_527:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_348
	cmp	r12d, 2
	jne	.label_321
	cmp	byte ptr [rsp + 7], 0
	je	.label_321
	jmp	.label_265
.label_528:
	cmp	r12d, 2
	jne	.label_355
	cmp	byte ptr [rsp + 7], 0
	jne	.label_265
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_308
.label_331:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_372
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
	jmp	.label_279
.label_365:
	test	rsi, rsi
	jne	.label_282
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_282
.label_338:
	mov	dl, 1
.label_524:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_265
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_279:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_294
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_296
	jmp	.label_300
	.section	.text
	.align	32
	#Procedure 0x404684
	.globl sub_404684
	.type sub_404684, @function
sub_404684:

	nop	word ptr cs:[rax + rax]
.label_294:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_300
.label_296:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_303
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_308
	jmp	.label_316
	.section	.text
	.align	32
	#Procedure 0x4046cd
	.globl sub_4046cd
	.type sub_4046cd, @function
sub_4046cd:

	nop	dword ptr [rax]
.label_300:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_316
	jmp	.label_308
.label_303:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_316
.label_371:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_320
	xor	r15d, r15d
	jmp	.label_321
.label_355:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_310
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_308
.label_310:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_265
.label_307:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_279
	nop	word ptr cs:[rax + rax]
.label_316:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_265
	cmp	r12d, 2
	jne	.label_343
	mov	eax, r9d
	and	al, 1
	jne	.label_343
	cmp	r14, r11
	jae	.label_346
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_346:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_292
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_292:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_318
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_318:
	add	r14, 3
	mov	r9b, 1
.label_343:
	cmp	r14, r11
	jae	.label_357
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_357:
	inc	r14
	jmp	.label_360
.label_372:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_364
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_364:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_327:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_266
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_270
	cmp	rbp, -2
	je	.label_276
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_280
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_336:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_334
	bt	rsi, rdx
	jb	.label_286
.label_334:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_336
.label_280:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_305
	xor	r13d, r13d
.label_305:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_327
	jmp	.label_293
.label_285:
	xor	r13d, r13d
	jmp	.label_279
.label_282:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_279
.label_348:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_321
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_321
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_321
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_289
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_312
	cmp	byte ptr [rsp + 7], 0
	jne	.label_265
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_340
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_340:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_374
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_374:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_351
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_351:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_352
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_352:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_279
.label_321:
	xor	eax, eax
.label_366:
	xor	r13d, r13d
	jmp	.label_279
.label_274:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_362
	.section	.text
	.align	32
	#Procedure 0x4049b3
	.globl sub_4049b3
	.type sub_4049b3, @function
sub_4049b3:

	nop	word ptr cs:[rax + rax]
.label_323:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_362:
	test	r8b, r8b
	je	.label_367
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_368
	cmp	r14, r11
	jae	.label_369
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_369:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_368
	.section	.text
	.align	32
	#Procedure 0x4049fc
	.globl sub_4049fc
	.type sub_4049fc, @function
sub_4049fc:

	nop	dword ptr [rax]
.label_367:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_286
	cmp	r12d, 2
	jne	.label_267
	mov	eax, r9d
	and	al, 1
	jne	.label_267
	cmp	r14, r11
	jae	.label_269
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_269:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_322
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_322:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_281
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_281:
	add	r14, 3
	mov	r9b, 1
.label_267:
	cmp	r14, r11
	jae	.label_373
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_373:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_284
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_284:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_297
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_297:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_368:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_308
	test	r9b, 1
	je	.label_272
	mov	ebx, eax
	and	bl, 1
	jne	.label_272
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_314
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_314:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_313
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_313:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_272:
	cmp	r14, r11
	jae	.label_323
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_323
	.section	.text
	.align	32
	#Procedure 0x404b03
	.globl sub_404b03
	.type sub_404b03, @function
sub_404b03:

	nop	word ptr cs:[rax + rax]
.label_308:
	test	r9b, 1
	je	.label_301
	and	al, 1
	jne	.label_301
	cmp	r14, r11
	jae	.label_332
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_332:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_326
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_326:
	add	r14, 2
	xor	r9d, r9d
.label_301:
	mov	ebx, r15d
.label_360:
	cmp	r14, r11
	jae	.label_341
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_341:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_320
.label_270:
	xor	r13d, r13d
.label_266:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_293
.label_276:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_354
	mov	rsi, qword ptr [rsp + 0x50]
.label_361:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_335
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_361
	xor	r13d, r13d
	jmp	.label_293
.label_354:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_293
.label_335:
	xor	r13d, r13d
	jmp	.label_293
.label_289:
	xor	r13d, r13d
	jmp	.label_279
.label_312:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_279
	.section	.text
	.align	32
	#Procedure 0x404bd8
	.globl sub_404bd8
	.type sub_404bd8, @function
sub_404bd8:

	nop	dword ptr [rax + rax]
.label_306:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_370
	or	dl, al
	je	.label_286
.label_370:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_264
	or	dl, al
	jne	.label_264
	test	r10b, 1
	jne	.label_278
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_264
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_283
.label_264:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_288
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_290
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_290
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_304:
	cmp	r14, r11
	jae	.label_349
	mov	byte ptr [rcx + r14], al
.label_349:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_304
	jmp	.label_290
.label_265:
	mov	qword ptr [rsp + 0x20], rbp
.label_286:
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
.label_344:
	mov	r14, rax
.label_271:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_278:
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
	jmp	.label_344
.label_288:
	mov	rcx, qword ptr [rsp + 8]
.label_290:
	cmp	r14, r11
	jae	.label_271
	mov	byte ptr [rcx + r14], 0
	jmp	.label_271
.label_287:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404d6c
	.globl sub_404d6c
	.type sub_404d6c, @function
sub_404d6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d70
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d7a
	.globl sub_404d7a
	.type sub_404d7a, @function
sub_404d7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x404d8a
	.globl sub_404d8a
	.type sub_404d8a, @function
sub_404d8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

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
	je	.label_375
	mov	qword ptr [rax], rbx
.label_375:
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
	#Procedure 0x404e7c
	.globl sub_404e7c
	.type sub_404e7c, @function
sub_404e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e80
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
	#Procedure 0x404ef2
	.globl sub_404ef2
	.type sub_404ef2, @function
sub_404ef2:

	nop	word ptr cs:[rax + rax]
.label_377:
	cmp	edi, 0x7f
	je	.label_376
	xor	eax, eax
	jmp	.label_376
	.section	.text
	.align	32
	#Procedure 0x404f09
	.globl sub_404f09
	.type sub_404f09, @function
sub_404f09:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f18
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_377
.label_376:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f20

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
	je	.label_384
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_378:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_382
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_380
	cmp	qword ptr [rsp + 8], -1
	je	.label_381
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_383
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_382
.label_383:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_382
.label_381:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_382:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_378
	jmp	.label_379
.label_384:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_379:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_380:
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
	#Procedure 0x40501d
	.globl sub_40501d
	.type sub_40501d, @function
sub_40501d:

	nop	dword ptr [rax]
.label_386:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_385
	test	cl, cl
	jne	.label_385
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_385:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40504b
	.globl sub_40504b
	.type sub_40504b, @function
sub_40504b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405055

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
	je	.label_386
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_385
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x405090

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4050b2
	.globl sub_4050b2
	.type sub_4050b2, @function
sub_4050b2:

	nop	word ptr cs:[rax + rax]
.label_389:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_388
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050cb
	.globl sub_4050cb
	.type sub_4050cb, @function
sub_4050cb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050d5
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_389
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_389
.label_388:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050ff
	.globl sub_4050ff
	.type sub_4050ff, @function
sub_4050ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405100

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x405105
	.globl sub_405105
	.type sub_405105, @function
sub_405105:

	nop	word ptr cs:[rax + rax]
.label_391:
	mov	ecx, 1
.label_390:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x405120
	.globl sub_405120
	.type sub_405120, @function
sub_405120:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405125

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_391
	test	rsi, rsi
	mov	ecx, 1
	je	.label_390
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_390
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405160

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
	#Procedure 0x40517a
	.globl sub_40517a
	.type sub_40517a, @function
sub_40517a:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405180

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
	mov	eax, OFFSET FLAT:label_392
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051a5
	.globl sub_4051a5
	.type sub_4051a5, @function
sub_4051a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051b0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051ba
	.globl sub_4051ba
	.type sub_4051ba, @function
sub_4051ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051c0
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	.section	.text
	.align	32
	#Procedure 0x4051c7
	.globl sub_4051c7
	.type sub_4051c7, @function
sub_4051c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], edx
	mov	r13, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	r15, qword ptr [r14 + 0x10]
	mov	rdi, r13
	call	feof_unlocked
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	eax, eax
	jne	.label_397
	add	rbx, r15
	mov	eax, dword ptr [rsp + 8]
	movsx	eax, al
	mov	dword ptr [rsp + 0xc], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, r15
	nop	
.label_396:
	mov	rdi, r13
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_394
	cmp	r12, r15
	je	.label_397
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	jne	.label_397
	mov	eax, dword ptr [rsp + 8]
	cmp	byte ptr [r12 - 1], al
	mov	ebp, dword ptr [rsp + 0xc]
	je	.label_393
.label_394:
	cmp	r12, rbx
	jne	.label_395
	mov	r12, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	r12, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	rbx, r15
	add	rbx, qword ptr [r14]
.label_395:
	mov	byte ptr [r12], bpl
	inc	r12
	cmp	ebp, dword ptr [rsp + 0xc]
	jne	.label_396
.label_393:
	sub	r12, r15
	mov	qword ptr [r14 + 8], r12
	mov	qword ptr [rsp + 0x10], r14
.label_397:
	mov	rax, qword ptr [rsp + 0x10]
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
	#Procedure 0x40529f
	.globl sub_40529f
	.type sub_40529f, @function
sub_40529f:

	nop	
.label_398:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052a3
	.globl sub_4052a3
	.type sub_4052a3, @function
sub_4052a3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4052a5
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_398
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052c0

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
	je	.label_399
	cmp	r15, -2
	jb	.label_399
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_399
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_399:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405316
	.globl sub_405316
	.type sub_405316, @function
sub_405316:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405320
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_400
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_400:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405343
	.globl sub_405343
	.type sub_405343, @function
sub_405343:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_401
	test	rax, rax
	je	.label_402
.label_401:
	pop	rbx
	ret	
.label_402:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40536a
	.globl sub_40536a
	.type sub_40536a, @function
sub_40536a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405370

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
	je	.label_403
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_405
	jmp	.label_404
.label_403:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_404
.label_405:
	mov	eax, 1
	test	bpl, bpl
	je	.label_404
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
.label_404:
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
	#Procedure 0x4053ed
	.globl sub_4053ed
	.type sub_4053ed, @function
sub_4053ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_406
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_406:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405416
	.globl sub_405416
	.type sub_405416, @function
sub_405416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405420

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_407
	test	rbx, rbx
	jne	.label_407
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_407:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_409
	test	rax, rax
	je	.label_408
.label_409:
	pop	rbx
	ret	
.label_408:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405450

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
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_420
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_418:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_418
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_413
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_421
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_426
	cmp	eax, 0x22
	jne	.label_413
	mov	r12d, 1
.label_426:
	test	rbp, rbp
	jne	.label_411
	jmp	.label_412
.label_421:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_413
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_413
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_413
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_411:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_412
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_416
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_425
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_425
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_414
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_419
	cmp	ecx, 0x44
	je	.label_419
	cmp	ecx, 0x69
	jne	.label_414
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_414
.label_419:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_414
.label_425:
	mov	rsi, r14
.label_414:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_416
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_427]]
.label_578:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_415
.label_416:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_410
.label_579:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_415
.label_580:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_415
.label_582:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_415
.label_576:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_417
.label_577:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_415
.label_581:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_415
.label_583:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_415
.label_584:
	lea	rdi, [rsp]
	mov	edx, 7
.label_415:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_417:
	mov	rsi, r14
.label_586:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_412:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_410:
	mov	r15d, r12d
.label_413:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_585:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_417
.label_587:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_417
.label_420:
	mov	edi, OFFSET FLAT:label_422
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_424
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4056f2
	.globl sub_4056f2
	.type sub_4056f2, @function
sub_4056f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405700

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_428
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_430
.label_428:
	mov	bpl, byte ptr [r12 + rbx]
	mov	r13b, byte ptr [r14 + r15]
	mov	byte ptr [r12 + rbx], 0
	mov	byte ptr [r14 + r15], 0
	lea	rsi, [rbx + 1]
	lea	rcx, [r15 + 1]
	mov	rdi, r12
	mov	rdx, r14
	call	strcoll_loop
	mov	byte ptr [r12 + rbx], bpl
	mov	byte ptr [r14 + r15], r13b
	jmp	.label_429
.label_430:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_429:
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
	#Procedure 0x405779
	.globl sub_405779
	.type sub_405779, @function
sub_405779:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405780

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
	je	.label_431
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_432:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_432
.label_431:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057be
	.globl sub_4057be
	.type sub_4057be, @function
sub_4057be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4057c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_433
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_433
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_433:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4057e6
	.globl sub_4057e6
	.type sub_4057e6, @function
sub_4057e6:

	nop	word ptr cs:[rax + rax]
.label_435:
	test	rcx, rcx
	jne	.label_434
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_434:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_436
.label_437:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x405832

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_435
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_438
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_437
.label_436:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405864
	.globl sub_405864
	.type sub_405864, @function
sub_405864:

	nop	dword ptr [rax]
.label_438:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405870
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405878
	.globl sub_405878
	.type sub_405878, @function
sub_405878:

	nop	dword ptr [rax + rax]
.label_439:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405883
	.globl sub_405883
	.type sub_405883, @function
sub_405883:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40588b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_439
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058a0

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_446
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_442:
	test	rbp, rbp
	je	.label_444
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_441
.label_444:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_447
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_443
	.section	.text
	.align	32
	#Procedure 0x405933
	.globl sub_405933
	.type sub_405933, @function
sub_405933:

	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_445
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_443:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_442
.label_446:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	.section	.text
	.align	32
	#Procedure 0x40599e
	.globl sub_40599e
	.type sub_40599e, @function
sub_40599e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4059a0

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
	je	.label_448
	mov	esi, OFFSET FLAT:label_449
	jmp	.label_450
.label_448:
	mov	esi, OFFSET FLAT:label_451
.label_450:
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
	#Procedure 0x405a10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_453
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_455
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_34
	mov	ecx, OFFSET FLAT:label_181
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x405a84
	.globl sub_405a84
	.type sub_405a84, @function
sub_405a84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a90
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
	#Procedure 0x405ab7
	.globl sub_405ab7
	.type sub_405ab7, @function
sub_405ab7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ac0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x405aca
	.globl sub_405aca
	.type sub_405aca, @function
sub_405aca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0
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
	#Procedure 0x405ae0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x405ae9
	.globl sub_405ae9
	.type sub_405ae9, @function
sub_405ae9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405af0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x405afa
	.globl sub_405afa
	.type sub_405afa, @function
sub_405afa:

	nop	word ptr [rax + rax]
.label_458:
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_456
	mov	rsi, r8
	call	memcmp
.label_457:
	test	eax, eax
	setne	al
.label_456:
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b16
	.globl sub_405b16
	.type sub_405b16, @function
sub_405b16:

	nop	
.label_459:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_458
	mov	rsi, rdx
	mov	rdx, r8
	call	xmemcoll
	jmp	.label_457
	.section	.text
	.align	32
	#Procedure 0x405b2d

	.globl different
	.type different, @function
different:
	push	rax
	mov	r8, rsi
	mov	rax,  qword ptr [word ptr [rip + check_chars]]
	cmp	rax, rdx
	cmovb	rdx, rax
	cmp	rax, rcx
	cmovb	rcx, rax
	cmp	byte ptr [byte ptr [rip + ignore_case]],  1
	jne	.label_459
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_456
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_457
	.section	.text
	.align	32
	#Procedure 0x405b60
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
	#Procedure 0x405b6f
	.globl sub_405b6f
	.type sub_405b6f, @function
sub_405b6f:

	nop	
.label_461:
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b71
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_460
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_462]]
.label_460:
	xor	eax, eax
	jmp	.label_461
	.section	.text
	.align	32
	#Procedure 0x405b86
	.globl sub_405b86
	.type sub_405b86, @function
sub_405b86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_161
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_463
	test	ecx, ecx
	js	.label_464
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_464:
	xor	eax, eax
.label_463:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bc3
	.globl sub_405bc3
	.type sub_405bc3, @function
sub_405bc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x405bda
	.globl sub_405bda
	.type sub_405bda, @function
sub_405bda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405be0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x405bea
	.globl sub_405bea
	.type sub_405bea, @function
sub_405bea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bf0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x405bfd
	.globl sub_405bfd
	.type sub_405bfd, @function
sub_405bfd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c00
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
	#Procedure 0x405c10
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
	#Procedure 0x405c26
	.globl sub_405c26
	.type sub_405c26, @function
sub_405c26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c95
	.globl sub_405c95
	.type sub_405c95, @function
sub_405c95:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ca2
	.globl sub_405ca2
	.type sub_405ca2, @function
sub_405ca2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc6
	.globl sub_405cc6
	.type sub_405cc6, @function
sub_405cc6:

	nop	word ptr cs:[rax + rax]
