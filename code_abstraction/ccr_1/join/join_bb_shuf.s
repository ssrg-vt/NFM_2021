	.section	.text
	.align	16
	#Procedure 0x4017b9
	.globl sub_4017b9
	.type sub_4017b9, @function
sub_4017b9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4017ba
	.globl sub_4017ba
	.type sub_4017ba, @function
sub_4017ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017f2
	.globl sub_4017f2
	.type sub_4017f2, @function
sub_4017f2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40183a
	.globl sub_40183a
	.type sub_40183a, @function
sub_40183a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40185c
	.globl sub_40185c
	.type sub_40185c, @function
sub_40185c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40186d
	.globl sub_40186d
	.type sub_40186d, @function
sub_40186d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401886
	.globl sub_401886
	.type sub_401886, @function
sub_401886:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401890

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
	mov	rcx,  qword ptr [word ptr [rip + label_9]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_10]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_11]]
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
	#Procedure 0x4018fd
	.globl sub_4018fd
	.type sub_4018fd, @function
sub_4018fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401900

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40190d
	.globl sub_40190d
	.type sub_40190d, @function
sub_40190d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401910

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x401917
	.globl sub_401917
	.type sub_401917, @function
sub_401917:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401920

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
	#Procedure 0x40194d
	.globl sub_40194d
	.type sub_40194d, @function
sub_40194d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401950
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
	#Procedure 0x401963
	.globl sub_401963
	.type sub_401963, @function
sub_401963:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401970

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x401979
	.globl sub_401979
	.type sub_401979, @function
sub_401979:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401980

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
	mov	rax,  qword ptr [word ptr [rip + label_9]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_10]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_11]]
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
	#Procedure 0x4019e8
	.globl sub_4019e8
	.type sub_4019e8, @function
sub_4019e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4019fa
	.globl sub_4019fa
	.type sub_4019fa, @function
sub_4019fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a00

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
	je	.label_12
	mov	qword ptr [rax], rbx
.label_12:
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
	#Procedure 0x401aec
	.globl sub_401aec
	.type sub_401aec, @function
sub_401aec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401af0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_13:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_13
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401b11
	.globl sub_401b11
	.type sub_401b11, @function
sub_401b11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b20

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
	jae	.label_20
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_14:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_14
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_28
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_31
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_26
	cmp	eax, 0x22
	jne	.label_28
	mov	r12d, 1
.label_26:
	test	rbp, rbp
	jne	.label_30
	jmp	.label_16
.label_31:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_28
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_28
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_28
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_30:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_16
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_24
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_25
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_25
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_17
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_15
	cmp	ecx, 0x44
	je	.label_15
	cmp	ecx, 0x69
	jne	.label_17
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_17
.label_15:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_17
.label_25:
	mov	rsi, r14
.label_17:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_24
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_27]]
.label_542:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_19
.label_24:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_29
.label_543:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_19
.label_544:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_19
.label_546:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_19
.label_540:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_18
.label_541:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_19
.label_545:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_19
.label_547:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_19
.label_548:
	lea	rdi, [rsp]
	mov	edx, 7
.label_19:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_18:
	mov	rsi, r14
.label_550:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_16:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_29:
	mov	r15d, r12d
.label_28:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_549:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_18
.label_551:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_18
.label_20:
	mov	edi, OFFSET FLAT:label_21
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_23
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401dc2
	.globl sub_401dc2
	.type sub_401dc2, @function
sub_401dc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dd0

	.globl freeline
	.type freeline, @function
freeline:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_32
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
.label_32:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dfd
	.globl sub_401dfd
	.type sub_401dfd, @function
sub_401dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e00

	.globl string_to_join_field
	.type string_to_join_field, @function
string_to_join_field:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_33
	call	xstrtoul
	cmp	eax, 1
	jne	.label_37
	mov	qword ptr [rsp], -1
	jmp	.label_34
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	dword ptr [rax + rax]
.label_37:
	test	eax, eax
	jne	.label_35
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_35
.label_34:
	mov	rax, qword ptr [rsp]
	dec	rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e80

	.globl reset_line
	.type reset_line, @function
reset_line:
	mov	qword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e89
	.globl sub_401e89
	.type sub_401e89, @function
sub_401e89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e98
	.globl sub_401e98
	.type sub_401e98, @function
sub_401e98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ea0

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
	mov	r12, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0xc], 0
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_33
	call	setlocale
	mov	edi, OFFSET FLAT:label_81
	mov	esi, OFFSET FLAT:label_90
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_81
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:free_spareline
	call	atexit
	mov	byte ptr [byte ptr [rip + print_pairables]],  1
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  0
	mov	byte ptr [byte ptr [rip + label_45]],  0
	mov	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	mov	dword ptr [dword ptr [rip + check_input_order]],  0
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, -1
	je	.label_50
	lea	r13, [rsp + 8]
	lea	r14, [rsp + 4]
	lea	r15, [rsp + 0x18]
	jmp	.label_65
.label_59:
	xor	ecx, ecx
	cmp	al, 0x32
	sete	cl
	inc	dword ptr [rsp + rcx*4 + 0x10]
	inc	ecx
	mov	dword ptr [rsp + 4], ecx
	jmp	.label_38
	.section	.text
	.align	16
	#Procedure 0x401f8e
	.globl sub_401f8e
	.type sub_401f8e, @function
sub_401f8e:

	nop	
.label_65:
	mov	dword ptr [rsp + 4], 0
	lea	ecx, [rax - 1]
	cmp	ecx, 0x81
	ja	.label_71
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_78]]
.label_677:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	lea	rcx, [rsp + 0xc]
	mov	r8, r13
	mov	r9, r14
	call	add_file_name
	jmp	.label_38
.label_678:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	jmp	.label_87
.label_679:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_2
.label_87:
	mov	rsi, rax
	call	set_join_field
	jmp	.label_38
.label_681:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_40
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_44
.label_40:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + empty_filler]],  rax
	jmp	.label_38
.label_682:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_38
.label_683:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rcx]
	mov	edx, eax
	add	dl, 0xcf
	cmp	dl, 1
	ja	.label_54
	cmp	byte ptr [rcx + 1], 0
	jne	.label_54
	movsxd	rdx,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [r12 + rdx*8 - 8]
	add	rdx, 2
	cmp	rcx, rdx
	je	.label_59
.label_54:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	mov	rsi, rax
	call	set_join_field
	mov	rsi,  qword ptr [word ptr [rip + join_field_1]]
	mov	edi, OFFSET FLAT:join_field_2
	call	set_join_field
	jmp	.label_38
.label_684:
	mov	ebx, ebp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:label_77
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_83
	mov	rdi, rbp
	call	add_field_list
	mov	dword ptr [rsp + 4], 3
	mov	ebp, ebx
	jmp	.label_38
.label_685:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	edx, byte ptr [rax]
	mov	cl, 0xa
	test	dl, dl
	je	.label_69
	movzx	ecx, byte ptr [rax + 1]
	test	cl, cl
	je	.label_41
	cmp	dl, 0x5c
	jne	.label_39
	cmp	cl, 0x30
	jne	.label_39
	cmp	byte ptr [rax + 2], 0
	jne	.label_39
	xor	ecx, ecx
	jmp	.label_69
.label_686:
	mov	byte ptr [byte ptr [rip + print_pairables]],  0
.label_680:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_33
	mov	rcx, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_52
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax - 1]
	cmp	rcx, 2
	jae	.label_52
	cmp	rax, 1
	jne	.label_58
	mov	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jmp	.label_38
.label_687:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	jmp	.label_38
.label_688:
	mov	dword ptr [dword ptr [rip + check_input_order]],  1
	jmp	.label_38
.label_689:
	mov	dword ptr [dword ptr [rip + check_input_order]],  2
	jmp	.label_38
.label_690:
	mov	byte ptr [byte ptr [rip + join_header_lines]],  1
	jmp	.label_38
.label_58:
	mov	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jmp	.label_38
.label_83:
	mov	byte ptr [byte ptr [rip + autoformat]],  1
	mov	ebp, ebx
	jmp	.label_38
.label_41:
	mov	cl, dl
.label_69:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	test	edx, edx
	movzx	eax, cl
	js	.label_79
	cmp	edx, eax
	jne	.label_82
.label_79:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	nop	word ptr cs:[rax + rax]
.label_38:
	mov	eax, dword ptr [rsp + 4]
	mov	dword ptr [rsp + 8], eax
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, -1
	jne	.label_65
.label_50:
	mov	dword ptr [rsp + 8], 0
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	mov	rbx, r12
	jge	.label_85
	lea	r15, [rsp + 0x10]
	lea	r13, [rsp + 0xc]
	lea	r14, [rsp + 8]
	lea	r12, [rsp + 4]
	nop	word ptr cs:[rax + rax]
.label_56:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	cdqe	
	mov	rdi, qword ptr [rbx + rax*8]
	lea	rsi, [rsp + 0x20]
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, r14
	mov	r9, r12
	call	add_file_name
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jl	.label_56
.label_85:
	mov	eax, dword ptr [rsp + 0xc]
	cmp	eax, 2
	jne	.label_60
	xor	ebx, ebx
	nop	
.label_72:
	cmp	dword ptr [rsp + rbx*4 + 0x10], 0
	je	.label_67
	mov	edi, OFFSET FLAT:join_field_1
	mov	rsi, rbx
	call	set_join_field
	mov	edi, OFFSET FLAT:join_field_2
	mov	rsi, rbx
	call	set_join_field
.label_67:
	inc	rbx
	cmp	rbx, 2
	jne	.label_72
	cmp	qword ptr [word ptr [rip + join_field_1]],  -1
	jne	.label_75
	mov	qword ptr [word ptr [rip + join_field_1]],  0
.label_75:
	cmp	qword ptr [word ptr [rip + join_field_2]],  -1
	jne	.label_80
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_80:
	mov	rax,  qword ptr [word ptr [rip + g_names]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_74
	cmp	byte ptr [rax + 1], 0
	je	.label_88
.label_74:
	mov	rdi,  qword ptr [word ptr [rip + g_names]]
	mov	esi, OFFSET FLAT:label_51
	call	fopen_safer
	mov	rbx, rax
.label_68:
	test	rbx, rbx
	je	.label_55
	mov	rax,  qword ptr [word ptr [rip + label_49]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_96
	cmp	byte ptr [rax + 1], 0
	je	.label_42
.label_96:
	mov	rdi,  qword ptr [word ptr [rip + label_49]]
	mov	esi, OFFSET FLAT:label_51
	call	fopen_safer
	mov	rbp, rax
.label_70:
	test	rbp, rbp
	je	.label_57
	cmp	rbx, rbp
	je	.label_48
	mov	rdi, rbx
	mov	rsi, rbp
	call	system_join
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_55
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	jne	.label_57
	mov	al,  byte ptr [byte ptr [rip + label_45]]
	or	al,  byte ptr [byte ptr [rip + issued_disorder_warning]]
	jne	.label_47
	xor	eax, eax
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_88:
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_68
.label_42:
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_70
.label_71:
	cmp	eax, 0xffffff7d
	je	.label_73
	cmp	eax, 0xffffff7e
	jne	.label_76
	xor	edi, edi
	call	usage
.label_76:
	mov	edi, 1
	call	usage
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
.label_62:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_73:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_93
	mov	edx, OFFSET FLAT:label_94
	mov	r8d, OFFSET FLAT:label_95
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_55:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + g_names]]
	jmp	.label_92
.label_57:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + label_49]]
.label_92:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_82:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	jmp	.label_64
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	jmp	.label_62
.label_60:
	xor	edi, edi
	test	eax, eax
	jne	.label_66
	mov	esi, OFFSET FLAT:label_43
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
.label_48:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	jmp	.label_64
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
.label_64:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_66:
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x402535
	.globl sub_402535
	.type sub_402535, @function
sub_402535:

	nop	word ptr cs:[rax + rax]
.label_97:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402545
	.globl sub_402545
	.type sub_402545, @function
sub_402545:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40254f

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_97
	call	rpl_calloc
	test	rax, rax
	je	.label_97
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402570

	.globl extract_field
	.type extract_field, @function
extract_field:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x18]
	cmp	rax, qword ptr [rbx + 0x20]
	jb	.label_98
	lea	rsi, [rbx + 0x20]
	mov	rdi, qword ptr [rbx + 0x28]
	mov	edx, 0x10
	call	x2nrealloc
	mov	qword ptr [rbx + 0x28], rax
.label_98:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rcx, qword ptr [rbx + 0x28]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r15
	mov	rax, qword ptr [rbx + 0x18]
	mov	rcx, qword ptr [rbx + 0x28]
	shl	rax, 4
	mov	qword ptr [rcx + rax + 8], r14
	inc	qword ptr [rbx + 0x18]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025c9
	.globl sub_4025c9
	.type sub_4025c9, @function
sub_4025c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	16
	#Procedure 0x4025dd
	.globl sub_4025dd
	.type sub_4025dd, @function
sub_4025dd:

	nop	dword ptr [rax]
.label_100:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025e1
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_99
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_101]]
.label_99:
	xor	eax, eax
	jmp	.label_100
	.section	.text
	.align	16
	#Procedure 0x4025f6
	.globl sub_4025f6
	.type sub_4025f6, @function
sub_4025f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402600

	.globl add_field_list
	.type add_field_list, @function
add_field_list:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	lea	r14, [rsp + 0xc]
	lea	r15, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_102:
	mov	esi, 0x2c
	mov	edx, 0x20
	mov	ecx, 9
	mov	rdi, r12
	call	__strpbrk_c3
	test	rax, rax
	mov	ebx, 0
	je	.label_103
	mov	rbx, rax
	inc	rbx
	mov	byte ptr [rax], 0
.label_103:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	decode_field_spec
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	add_field
	test	rbx, rbx
	mov	r12, rbx
	jne	.label_102
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
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

	.globl prfield
	.type prfield, @function
prfield:
	cmp	qword ptr [rsi + 0x18], rdi
	jbe	.label_104
	mov	rax, qword ptr [rsi + 0x28]
	shl	rdi, 4
	mov	rdx, qword ptr [rax + rdi + 8]
	test	rdx, rdx
	je	.label_106
	mov	rdi, qword ptr [rax + rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	jmp	fwrite_unlocked
.label_105:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026ae
	.globl sub_4026ae
	.type sub_4026ae, @function
sub_4026ae:

	nop	
.label_104:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_105
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	fputs_unlocked
.label_106:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_105
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4026e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_107
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_109
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_109
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_112
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_112:
	mov	rbx, r14
.label_109:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_107:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_108
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402781
	.globl sub_402781
	.type sub_402781, @function
sub_402781:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402790

	.globl getseq
	.type getseq, @function
getseq:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_113
	lea	r15, [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 8
	mov	rsi, r15
	call	x2nrealloc
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jae	.label_113
	mov	rcx, qword ptr [r15]
	nop	
.label_114:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	qword ptr [rdx + rax*8], 0
	inc	rax
	cmp	rax, rcx
	jb	.label_114
.label_113:
	mov	rsi, qword ptr [rbx]
	shl	rsi, 3
	add	rsi, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	edx, r14d
	call	get_line
	test	al, al
	je	.label_116
	inc	qword ptr [rbx]
	mov	al, 1
	jmp	.label_115
.label_116:
	xor	eax, eax
.label_115:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402812
	.globl sub_402812
	.type sub_402812, @function
sub_402812:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402820
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
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
	je	.label_132
	mov	edx, OFFSET FLAT:label_123
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_129
.label_132:
	mov	edx, OFFSET FLAT:label_130
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
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
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_118
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_119]]
.label_604:
	add	rsp, 8
	jmp	.label_117
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
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
	jmp	.label_117
.label_605:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
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
.label_606:
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
.label_607:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
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
.label_608:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
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
	jmp	.label_117
.label_609:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
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
	jmp	.label_117
.label_610:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
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
	jmp	.label_117
.label_611:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
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
	jmp	.label_117
.label_613:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
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
	jmp	.label_117
.label_612:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
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
.label_117:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b88
	.globl sub_402b88
	.type sub_402b88, @function
sub_402b88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_136
.label_137:
	ret	
.label_136:
	cmp	edi, 0x7f
	je	.label_137
	xor	eax, eax
	jmp	.label_137
	.section	.text
	.align	16
	#Procedure 0x402ba1
	.globl sub_402ba1
	.type sub_402ba1, @function
sub_402ba1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edx
	mov	r15, rdi
	mov	rbx, qword ptr [rsi]
	movsxd	rax, r14d
	cmp	rbx,  qword ptr [word ptr [+ (rax * 8) + label_143]]
	lea	rbp, [rax - 1]
	jne	.label_144
	mov	rax,  qword ptr [word ptr [+ (rbp * 8) + spareline]]
	mov	qword ptr [word ptr [+ (rbp * 8) + spareline]],  rbx
	mov	qword ptr [rsi], rax
	mov	rbx, rax
.label_144:
	test	rbx, rbx
	je	.label_140
	mov	rdi, rbx
	call	reset_line
	jmp	.label_145
.label_141:
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	jne	.label_148
	mov	rdi, rbx
	call	freeline
	xor	eax, eax
.label_139:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_138:
	xor	eax, eax
.label_146:
	movzx	edx, al
	mov	rdi, rbx
	mov	rsi, r15
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_141
	inc	qword ptr [word ptr [+ (rbp * 8) + line_no]]
	mov	rdi, rbx
	call	xfields
	mov	rdi,  qword ptr [word ptr [+ (rbp * 8) + prevline]]
	test	rdi, rdi
	je	.label_147
	mov	rsi, rbx
	mov	edx, r14d
	call	check_order
.label_147:
	mov	qword ptr [word ptr [+ (rbp * 8) + prevline]],  rbx
	mov	al, 1
	jmp	.label_139
.label_140:
	mov	rdi, rsi
	call	init_linep
	mov	rbx, rax
.label_145:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	test	al, al
	jne	.label_138
	mov	al, 0xa
	jmp	.label_146
.label_148:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cb0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cba
	.globl sub_402cba
	.type sub_402cba, @function
sub_402cba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cc0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_149
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_152:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_152
.label_149:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_153
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_150]], OFFSET FLAT:slot0
.label_153:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_151
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_151:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d51
	.globl sub_402d51
	.type sub_402d51, @function
sub_402d51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d60
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
	#Procedure 0x402dd2
	.globl sub_402dd2
	.type sub_402dd2, @function
sub_402dd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402de0

	.globl advance_seq
	.type advance_seq, @function
advance_seq:
	test	dl, dl
	je	.label_154
	mov	qword ptr [rsi], 0
.label_154:
	mov	edx, ecx
	jmp	getseq
	.section	.text
	.align	16
	#Procedure 0x402df2
	.globl sub_402df2
	.type sub_402df2, @function
sub_402df2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e00
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e0a
	.globl sub_402e0a
	.type sub_402e0a, @function
sub_402e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e10

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_157
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_159
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_159
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_155
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_156
.label_159:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_156
.label_157:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_156:
	test	ebx, ebx
	js	.label_155
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_155
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_158
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_155
.label_158:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_155:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ed3
	.globl sub_402ed3
	.type sub_402ed3, @function
sub_402ed3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0

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
	je	.label_160
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_161:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_160
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_161
.label_160:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f22
	.globl sub_402f22
	.type sub_402f22, @function
sub_402f22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f30
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
	#Procedure 0x402f57
	.globl sub_402f57
	.type sub_402f57, @function
sub_402f57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f68
	.globl sub_402f68
	.type sub_402f68, @function
sub_402f68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f70

	.globl delseq
	.type delseq, @function
delseq:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	qword ptr [r14 + 8], 0
	je	.label_162
	xor	ebx, ebx
.label_163:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx*8]
	call	freeline
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r14 + 8]
	jb	.label_163
.label_162:
	mov	rdi, qword ptr [r14 + 0x10]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x402fb3
	.globl sub_402fb3
	.type sub_402fb3, @function
sub_402fb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fc0

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
	jne	.label_171
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
	je	.label_170
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_172
	mov	eax, OFFSET FLAT:label_173
	jmp	.label_168
.label_170:
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
	je	.label_169
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_166
	mov	eax, OFFSET FLAT:label_167
	jmp	.label_168
.label_169:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_164
	mov	eax, OFFSET FLAT:label_165
.label_168:
	cmove	rax, rcx
.label_171:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40307d
	.globl sub_40307d
	.type sub_40307d, @function
sub_40307d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl xfields
	.type xfields, @function
xfields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 8]
	mov	r13, qword ptr [r14 + 0x10]
	lea	r15, [r13 + rbx - 1]
	cmp	r13, r15
	je	.label_174
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	test	eax, eax
	js	.label_180
	cmp	eax, 0xa
	jne	.label_181
.label_180:
	test	eax, eax
	jns	.label_175
	lea	rbp, [r13 + rbx]
	dec	rbx
	nop	dword ptr [rax + rax]
.label_177:
	movzx	edi, byte ptr [r13]
	call	field_sep
	test	al, al
	je	.label_176
	inc	r13
	dec	rbx
	jne	.label_177
.label_174:
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
	#Procedure 0x4030e5
	.globl sub_4030e5
	.type sub_4030e5, @function
sub_4030e5:

	nop	word ptr cs:[rax + rax]
.label_185:
	mov	rdx, rbx
	sub	rdx, r13
	mov	rdi, r14
	mov	rsi, r13
	call	extract_field
	mov	r13, rbx
	inc	r13
.label_181:
	mov	esi,  dword ptr [dword ptr [rip + tab]]
	mov	rdx, r15
	sub	rdx, r13
	mov	rdi, r13
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_185
.label_175:
	sub	r15, r13
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r15
.label_178:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	extract_field
.label_176:
	mov	qword ptr [rsp], rbp
.label_186:
	lea	r12, [r13 + 2]
	lea	rcx, [r13 + 3]
	mov	rbp, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_184:
	mov	rbx, rcx
	cmp	rbp, r12
	je	.label_179
	movzx	edi, byte ptr [r12 - 1]
	call	field_sep
	inc	r12
	lea	rcx, [rbx + 1]
	test	al, al
	je	.label_184
	add	r12, -2
	sub	r12, r13
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	extract_field
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	rbp, rbx
	cmp	qword ptr [rsp], rbp
	je	.label_182
	movzx	edi, byte ptr [rbp - 1]
	call	field_sep
	lea	rbx, [rbp + 1]
	test	al, al
	jne	.label_183
.label_182:
	lea	r13, [rbp - 1]
	cmp	qword ptr [rsp], rbp
	jne	.label_186
	dec	rbp
	mov	r13, rbp
	jmp	.label_175
.label_179:
	dec	r12
	sub	r12, r13
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	jmp	.label_178
	.section	.text
	.align	16
	#Procedure 0x4031e3
	.globl sub_4031e3
	.type sub_4031e3, @function
sub_4031e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031f0
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
	#Procedure 0x4031ff
	.globl sub_4031ff
	.type sub_4031ff, @function
sub_4031ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403200

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40320a
	.globl sub_40320a
	.type sub_40320a, @function
sub_40320a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403210
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40321d
	.globl sub_40321d
	.type sub_40321d, @function
sub_40321d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403220
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_188:
	mov	edi, OFFSET FLAT:label_192
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 0x334
	mov	ecx, OFFSET FLAT:label_191
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403249
	.globl sub_403249
	.type sub_403249, @function
sub_403249:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403250

	.globl add_field
	.type add_field, @function
add_field:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	cmp	ebp, 3
	jae	.label_187
	test	ebp, ebp
	jne	.label_193
	test	rbx, rbx
	jne	.label_188
.label_193:
	mov	edi, 0x18
	call	xmalloc
	mov	dword ptr [rax], ebp
	mov	qword ptr [rax + 8], rbx
	mov	qword ptr [rax + 0x10], 0
	mov	rcx,  qword ptr [word ptr [rip + outlist_end]]
	mov	qword ptr [rcx + 0x10], rax
	mov	qword ptr [word ptr [rip + outlist_end]],  rax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_187:
	mov	edi, OFFSET FLAT:label_189
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 0x333
	mov	ecx, OFFSET FLAT:label_191
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4032b0

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
	jne	.label_194
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_195
.label_194:
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
.label_195:
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

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x403325
	.globl sub_403325
	.type sub_403325, @function
sub_403325:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403330

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_196
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_196:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40334a
	.globl sub_40334a
	.type sub_40334a, @function
sub_40334a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403350

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_198
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_200
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_201
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_197
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_198
.label_197:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_199
.label_200:
	mov	rax, rbx
	jmp	.label_198
.label_201:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_199:
	xor	eax, eax
.label_198:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033d6
	.globl sub_4033d6
	.type sub_4033d6, @function
sub_4033d6:

	nop	word ptr cs:[rax + rax]
.label_204:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_202
.label_203:
	mov	eax, 1
	test	bpl, bpl
	je	.label_202
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
.label_202:
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
	#Procedure 0x403428
	.globl sub_403428
	.type sub_403428, @function
sub_403428:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40342b

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
	je	.label_204
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_203
	jmp	.label_202
	.section	.text
	.align	16
	#Procedure 0x403460

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_205
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_205:
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
	#Procedure 0x4034e3
	.globl sub_4034e3
	.type sub_4034e3, @function
sub_4034e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034f0

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
	#Procedure 0x403527
	.globl sub_403527
	.type sub_403527, @function
sub_403527:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403530
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40353a
	.globl sub_40353a
	.type sub_40353a, @function
sub_40353a:

	nop	word ptr [rax + rax]
.label_207:
	mov	ecx, 1
.label_206:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403550
	.globl sub_403550
	.type sub_403550, @function
sub_403550:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403555

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_207
	test	rsi, rsi
	mov	ecx, 1
	je	.label_206
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_206
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403590

	.globl free_spareline
	.type free_spareline, @function
free_spareline:
	push	rbx
	mov	rbx, -0x10
	nop	dword ptr [rax + rax]
.label_209:
	mov	rdi,  qword ptr [word ptr [rbx + outlist_head]]
	test	rdi, rdi
	je	.label_208
	call	freeline
	mov	rdi,  qword ptr [word ptr [rbx + outlist_head]]
	call	free
.label_208:
	add	rbx, 8
	jne	.label_209
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035c5
	.globl sub_4035c5
	.type sub_4035c5, @function
sub_4035c5:

	nop	word ptr cs:[rax + rax]
.label_213:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
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
	#Procedure 0x403608
	.globl sub_403608
	.type sub_403608, @function
sub_403608:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40360d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_213
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
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
	#Procedure 0x403770

	.globl decode_field_spec
	.type decode_field_spec, @function
decode_field_spec:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	lea	ecx, [rax - 0x31]
	cmp	ecx, 2
	jae	.label_225
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_223
	movsx	eax, byte ptr [rbx]
	add	eax, -0x30
	mov	dword ptr [rsi], eax
	add	rbx, 2
	mov	rdi, rbx
	call	string_to_join_field
	jmp	.label_228
.label_225:
	cmp	eax, 0x30
	jne	.label_222
	cmp	byte ptr [rbx + 1], 0
	jne	.label_223
	mov	dword ptr [rsi], 0
	xor	eax, eax
.label_228:
	mov	qword ptr [r14], rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_222:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
	jmp	.label_227
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
.label_227:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403800

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_229
	test	rdx, rdx
	je	.label_229
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_229:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40382b
	.globl sub_40382b
	.type sub_40382b, @function
sub_40382b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403830
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_230
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_230
.label_231:
	ret	
.label_230:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_231
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403856
	.globl sub_403856
	.type sub_403856, @function
sub_403856:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403860
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
	#Procedure 0x40386f
	.globl sub_40386f
	.type sub_40386f, @function
sub_40386f:

	nop	
.label_232:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403873
	.globl sub_403873
	.type sub_403873, @function
sub_403873:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403875
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_232
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x403890

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
.label_302:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_307
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_310]]
.label_622:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_315
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_165
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_623:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_328
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_328
	xor	r14d, r14d
.label_336:
	cmp	r14, r11
	jae	.label_334
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_334:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_336
.label_328:
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
	jmp	.label_237
.label_615:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_237
.label_618:
	mov	al, 1
.label_616:
	mov	r12b, 1
.label_619:
	test	r12b, 1
	mov	cl, 1
	je	.label_244
	mov	ecx, eax
.label_244:
	mov	al, cl
.label_617:
	test	r12b, 1
	jne	.label_248
	test	r11, r11
	je	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_251:
	mov	r14d, 1
	jmp	.label_257
.label_248:
	xor	r14d, r14d
.label_257:
	mov	ecx, OFFSET FLAT:label_165
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_237
.label_620:
	test	r12b, 1
	jne	.label_266
	test	r11, r11
	je	.label_288
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_288:
	mov	r14d, 1
	jmp	.label_303
.label_621:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_164
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_237
.label_266:
	xor	r14d, r14d
.label_303:
	mov	eax, OFFSET FLAT:label_164
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_237:
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
	jmp	.label_241
	.section	.text
	.align	16
	#Procedure 0x403b6c
	.globl sub_403b6c
	.type sub_403b6c, @function
sub_403b6c:

	nop	dword ptr [rax]
.label_306:
	inc	rsi
.label_241:
	cmp	rbp, -1
	je	.label_322
	cmp	rsi, rbp
	jne	.label_324
	jmp	.label_316
	.section	.text
	.align	16
	#Procedure 0x403b83
	.globl sub_403b83
	.type sub_403b83, @function
sub_403b83:

	nop	word ptr cs:[rax + rax]
.label_322:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_316
.label_324:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_330
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_332
	cmp	rbp, -1
	jne	.label_332
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
.label_332:
	cmp	rbx, rbp
	jbe	.label_338
.label_330:
	xor	r8d, r8d
.label_258:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_340
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_345]]
.label_633:
	test	rsi, rsi
	jne	.label_236
	jmp	.label_239
	.section	.text
	.align	16
	#Procedure 0x403c1e
	.globl sub_403c1e
	.type sub_403c1e, @function
sub_403c1e:

	nop	
.label_338:
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
	jne	.label_254
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_258
	jmp	.label_267
.label_254:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_258
.label_637:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_275
	test	rsi, rsi
	jne	.label_277
	cmp	rbp, 1
	je	.label_239
	xor	r13d, r13d
	jmp	.label_235
.label_626:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_282
	cmp	byte ptr [rsp + 7], 0
	jne	.label_238
	cmp	r12d, 2
	jne	.label_287
	mov	eax, r9d
	and	al, 1
	jne	.label_287
	cmp	r14, r11
	jae	.label_290
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_290:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_293
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_293:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_297
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	add	r14, 3
	mov	r9b, 1
.label_287:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_284:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_305
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_305
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_305
	cmp	r14, r11
	jae	.label_311
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_311:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_319
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_319:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_235
.label_627:
	mov	bl, 0x62
	jmp	.label_327
.label_628:
	mov	cl, 0x74
	jmp	.label_329
.label_629:
	mov	bl, 0x76
	jmp	.label_327
.label_630:
	mov	bl, 0x66
	jmp	.label_327
.label_631:
	mov	cl, 0x72
	jmp	.label_329
.label_634:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_333
	cmp	byte ptr [rsp + 7], 0
	jne	.label_238
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
	jae	.label_337
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_337:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_234
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_234:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_240
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	add	r14, 3
	xor	r9d, r9d
.label_333:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_235
.label_635:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_252
	cmp	r12d, 2
	jne	.label_236
	cmp	byte ptr [rsp + 7], 0
	je	.label_236
	jmp	.label_238
.label_636:
	cmp	r12d, 2
	jne	.label_264
	cmp	byte ptr [rsp + 7], 0
	jne	.label_238
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_268
.label_340:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_271
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
.label_272:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_286
	test	r8b, r8b
	je	.label_286
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_235
.label_275:
	test	rsi, rsi
	jne	.label_301
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_301
.label_239:
	mov	dl, 1
.label_632:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_238
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_235:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_312
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_313
	jmp	.label_317
	.section	.text
	.align	16
	#Procedure 0x403f64
	.globl sub_403f64
	.type sub_403f64, @function
sub_403f64:

	nop	word ptr cs:[rax + rax]
.label_312:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_317
.label_313:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_323
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_268
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x403fad
	.globl sub_403fad
	.type sub_403fad, @function
sub_403fad:

	nop	dword ptr [rax]
.label_317:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_242
	jmp	.label_268
.label_323:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_242
.label_282:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_306
	xor	r15d, r15d
	jmp	.label_236
.label_264:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_329
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_268
.label_329:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_238
.label_327:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_235
	nop	word ptr cs:[rax + rax]
.label_242:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_238
	cmp	r12d, 2
	jne	.label_245
	mov	eax, r9d
	and	al, 1
	jne	.label_245
	cmp	r14, r11
	jae	.label_250
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_250:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_262
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_261
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_261:
	add	r14, 3
	mov	r9b, 1
.label_245:
	cmp	r14, r11
	jae	.label_265
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_265:
	inc	r14
	jmp	.label_269
.label_271:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_273
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_273:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_321:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_292
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_295
	cmp	rbp, -2
	je	.label_259
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_300
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_233:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_283
	bt	rsi, rdx
	jb	.label_267
.label_283:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_233
.label_300:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_325
	xor	r13d, r13d
.label_325:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_321
	jmp	.label_272
.label_305:
	xor	r13d, r13d
	jmp	.label_235
.label_301:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_235
.label_252:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_236
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_236
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_236
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_341
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_344
	cmp	byte ptr [rsp + 7], 0
	jne	.label_238
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_342
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_342:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_246
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_246:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_256
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_256:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_260
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_260:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_235
.label_236:
	xor	eax, eax
.label_277:
	xor	r13d, r13d
	jmp	.label_235
.label_286:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x404293
	.globl sub_404293
	.type sub_404293, @function
sub_404293:

	nop	word ptr cs:[rax + rax]
.label_335:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_270:
	test	r8b, r8b
	je	.label_278
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_279
	cmp	r14, r11
	jae	.label_253
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_253:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_279
	.section	.text
	.align	16
	#Procedure 0x4042dc
	.globl sub_4042dc
	.type sub_4042dc, @function
sub_4042dc:

	nop	dword ptr [rax]
.label_278:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_267
	cmp	r12d, 2
	jne	.label_291
	mov	eax, r9d
	and	al, 1
	jne	.label_291
	cmp	r14, r11
	jae	.label_294
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_294:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_296
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_296:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_274
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_274:
	add	r14, 3
	mov	r9b, 1
.label_291:
	cmp	r14, r11
	jae	.label_304
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_304:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_326
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_326:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_314
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_314:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_279:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_268
	test	r9b, 1
	je	.label_320
	mov	ebx, eax
	and	bl, 1
	jne	.label_320
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_331
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_331:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_281
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_281:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_320:
	cmp	r14, r11
	jae	.label_335
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_335
	.section	.text
	.align	16
	#Procedure 0x4043e3
	.globl sub_4043e3
	.type sub_4043e3, @function
sub_4043e3:

	nop	word ptr cs:[rax + rax]
.label_268:
	test	r9b, 1
	je	.label_255
	and	al, 1
	jne	.label_255
	cmp	r14, r11
	jae	.label_343
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_343:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_249
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	r14, 2
	xor	r9d, r9d
.label_255:
	mov	ebx, r15d
.label_269:
	cmp	r14, r11
	jae	.label_243
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_243:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_306
.label_295:
	xor	r13d, r13d
.label_292:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_272
.label_259:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_263
	mov	rsi, qword ptr [rsp + 0x50]
.label_289:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_339
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_289
	xor	r13d, r13d
	jmp	.label_272
.label_263:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_272
.label_339:
	xor	r13d, r13d
	jmp	.label_272
.label_341:
	xor	r13d, r13d
	jmp	.label_235
.label_344:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_235
	.section	.text
	.align	16
	#Procedure 0x4044b8
	.globl sub_4044b8
	.type sub_4044b8, @function
sub_4044b8:

	nop	dword ptr [rax + rax]
.label_316:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_280
	or	dl, al
	je	.label_267
.label_280:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_298
	or	dl, al
	jne	.label_298
	test	r10b, 1
	jne	.label_299
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_298
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_302
.label_298:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_308
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_309
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_309
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_285:
	cmp	r14, r11
	jae	.label_276
	mov	byte ptr [rcx + r14], al
.label_276:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_285
	jmp	.label_309
.label_238:
	mov	qword ptr [rsp + 0x20], rbp
.label_267:
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
.label_247:
	mov	r14, rax
.label_318:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_299:
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
	jmp	.label_247
.label_308:
	mov	rcx, qword ptr [rsp + 8]
.label_309:
	cmp	r14, r11
	jae	.label_318
	mov	byte ptr [rcx + r14], 0
	jmp	.label_318
.label_307:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40464c
	.globl sub_40464c
	.type sub_40464c, @function
sub_40464c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404650

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40465a
	.globl sub_40465a
	.type sub_40465a, @function
sub_40465a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404660
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40466a
	.globl sub_40466a
	.type sub_40466a, @function
sub_40466a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404670
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x404679
	.globl sub_404679
	.type sub_404679, @function
sub_404679:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404680

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_348
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_346
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_346
.label_348:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_349
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_346:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_347
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_349:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_347:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_350
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
	#Procedure 0x404740

	.globl check_order
	.type check_order, @function
check_order:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	eax,  dword ptr [dword ptr [rip + check_input_order]]
	cmp	eax, 1
	je	.label_352
	cmp	eax, 2
	je	.label_354
	cmp	byte ptr [byte ptr [rip + seen_unpairable]],  1
	jne	.label_354
.label_352:
	movsxd	rbp, edx
	cmp	byte ptr [byte ptr [rbp + seen_unpairable]],  0
	jne	.label_354
	cmp	edx, 1
	mov	eax, OFFSET FLAT:join_field_1
	mov	ecx, OFFSET FLAT:join_field_2
	cmove	rcx, rax
	mov	rdx, qword ptr [rcx]
	mov	rsi, rbx
	mov	rcx, rdx
	call	keycmp
	test	eax, eax
	jle	.label_354
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_356
	lea	r15, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	byte ptr [rcx + rax - 1], 0xa
	cmovne	r15, rax
.label_356:
	xor	r14d, r14d
	cmp	dword ptr [dword ptr [rip + check_input_order]],  1
	sete	r14b
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	r15, 0x7fffffff
	mov	rcx,  qword ptr [word ptr [+ (rbp * 8) + ignore_case]]
	mov	r8,  qword ptr [word ptr [+ (rbp * 8) + label_355]]
	mov	r9d, 0x7fffffff
	cmovbe	r9d, r15d
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp], rax
	mov	esi, 0
	xor	eax, eax
	mov	edi, r14d
	call	error
	mov	byte ptr [byte ptr [rbp + seen_unpairable]],  1
.label_354:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404827
	.globl sub_404827
	.type sub_404827, @function
sub_404827:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830

	.globl prjoin
	.type prjoin, @function
prjoin:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r13, rdi
	mov	rbx,  qword ptr [word ptr [rip + label_357]]
	test	rbx, rbx
	je	.label_358
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	mov	ecx, OFFSET FLAT:uni_blank
	cmp	r13, rcx
	mov	ecx, OFFSET FLAT:join_field_2
	mov	r12d, OFFSET FLAT:join_field_1
	cmove	r12, rcx
	mov	r15, r13
	cmove	r15, r14
	test	eax, eax
	movsx	eax, al
	mov	ebp, 0x20
	cmovns	ebp, eax
	jmp	.label_361
.label_359:
	mov	edi, ebp
	call	putchar_unlocked
.label_361:
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	mov	rsi, r14
	cmove	rsi, r13
	lea	rcx, [rbx + 8]
	test	eax, eax
	cmove	rcx, r12
	cmove	rsi, r15
	mov	rdi, qword ptr [rcx]
	call	prfield
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_359
	jmp	.label_360
.label_358:
	mov	eax, OFFSET FLAT:uni_blank
	cmp	r13, rax
	mov	rsi, r13
	cmove	rsi, r14
	mov	eax, OFFSET FLAT:join_field_2
	mov	ecx, OFFSET FLAT:join_field_1
	cmove	rcx, rax
	mov	rdi, qword ptr [rcx]
	call	prfield
	mov	rsi,  qword ptr [word ptr [rip + join_field_1]]
	mov	rdx,  qword ptr [word ptr [rip + autocount_1]]
	mov	rdi, r13
	call	prfields
	mov	rsi,  qword ptr [word ptr [rip + join_field_2]]
	mov	rdx,  qword ptr [word ptr [rip + autocount_2]]
	mov	rdi, r14
	call	prfields
.label_360:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	xor	ecx, ecx
	test	al, al
	mov	edi, 0xa
	cmovne	edi, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putchar_unlocked
	.section	.text
	.align	16
	#Procedure 0x40492a
	.globl sub_40492a
	.type sub_40492a, @function
sub_40492a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404930

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_363
	cmp	byte ptr [rax], 0x43
	jne	.label_365
	cmp	byte ptr [rax + 1], 0
	je	.label_362
.label_365:
	mov	esi, OFFSET FLAT:label_364
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_363
.label_362:
	xor	ebx, ebx
.label_363:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404961
	.globl sub_404961
	.type sub_404961, @function
sub_404961:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404970
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40497a
	.globl sub_40497a
	.type sub_40497a, @function
sub_40497a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_33
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_366
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049a5
	.globl sub_4049a5
	.type sub_4049a5, @function
sub_4049a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049b0

	.globl init_linep
	.type init_linep, @function
init_linep:
	push	rbx
	mov	rbx, rdi
	mov	edi, 1
	mov	esi, 0x30
	call	xcalloc
	mov	qword ptr [rbx], rax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049c8
	.globl sub_4049c8
	.type sub_4049c8, @function
sub_4049c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0

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
	je	.label_367
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_368:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_368
.label_367:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a0e
	.globl sub_404a0e
	.type sub_404a0e, @function
sub_404a0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404a10

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
.label_370:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_369
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_371
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_370
	jmp	.label_369
.label_371:
	neg	r14
	sbb	eax, eax
.label_369:
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
	#Procedure 0x404a8e
	.globl sub_404a8e
	.type sub_404a8e, @function
sub_404a8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404a90

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
	je	.label_374
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_372
	jmp	.label_373
.label_374:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_373
.label_372:
	mov	eax, 1
	test	bpl, bpl
	je	.label_373
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
.label_373:
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
	#Procedure 0x404b18
	.globl sub_404b18
	.type sub_404b18, @function
sub_404b18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b20

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
	je	.label_375
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_377
	jmp	.label_376
.label_375:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_376
.label_377:
	mov	eax, 1
	test	bpl, bpl
	je	.label_376
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
.label_376:
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
	#Procedure 0x404b99
	.globl sub_404b99
	.type sub_404b99, @function
sub_404b99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0

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
	je	.label_380
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_379
	jmp	.label_378
.label_380:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_378
.label_379:
	mov	eax, 1
	test	bpl, bpl
	je	.label_378
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
.label_378:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c03
	.globl sub_404c03
	.type sub_404c03, @function
sub_404c03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c10

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
	je	.label_383
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_381
	jmp	.label_382
.label_383:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_382
.label_381:
	mov	eax, 1
	test	bpl, bpl
	je	.label_382
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_382:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c6f
	.globl sub_404c6f
	.type sub_404c6f, @function
sub_404c6f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404c70

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
	je	.label_384
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_386
	jmp	.label_385
.label_384:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_385
.label_386:
	mov	eax, 1
	test	bpl, bpl
	je	.label_385
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_385:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cb9
	.globl sub_404cb9
	.type sub_404cb9, @function
sub_404cb9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0

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
	je	.label_389
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_388
	jmp	.label_387
.label_389:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_387
.label_388:
	mov	eax, 1
	test	bpl, bpl
	je	.label_387
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_387:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d05
	.globl sub_404d05
	.type sub_404d05, @function
sub_404d05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_392
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_391
	jmp	.label_390
.label_392:
	mov	eax, 1
	test	cl, cl
	je	.label_390
.label_391:
	xor	eax, eax
.label_390:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d3f
	.globl sub_404d3f
	.type sub_404d3f, @function
sub_404d3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404d40

	.globl initseq
	.type initseq, @function
initseq:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d4f
	.globl sub_404d4f
	.type sub_404d4f, @function
sub_404d4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404d50

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_402
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_402:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_403
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_398
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_399
	test	esi, esi
	jne	.label_403
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_405
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_396
.label_403:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_395
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_399
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_401
.label_398:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_399:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_406
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_394
.label_406:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_394:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_401:
	cmp	eax, 6
	jne	.label_395
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_404
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_393
.label_395:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_397
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_400
.label_405:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_396:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_404:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_393:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_397:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_400:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f04
	.globl sub_404f04
	.type sub_404f04, @function
sub_404f04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_407
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_407
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_407:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404f36
	.globl sub_404f36
	.type sub_404f36, @function
sub_404f36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f40

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_408
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_409
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_408
.label_409:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_408
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_410
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_410:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_408:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x404fb7
	.globl sub_404fb7
	.type sub_404fb7, @function
sub_404fb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0

	.globl prfields
	.type prfields, @function
prfields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	al,  byte ptr [byte ptr [rip + autoformat]]
	test	al, al
	jne	.label_411
	mov	r14, qword ptr [r15 + 0x18]
.label_411:
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	test	eax, eax
	mov	r13b, 0x20
	js	.label_412
	mov	r13d, eax
.label_412:
	test	rbx, rbx
	je	.label_413
	test	r14, r14
	je	.label_413
	movsx	r12d, r13b
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_414:
	mov	edi, r12d
	call	putchar_unlocked
	mov	rdi, rbp
	mov	rsi, r15
	call	prfield
	inc	rbp
	cmp	rbp, rbx
	jae	.label_413
	cmp	rbp, r14
	jb	.label_414
.label_413:
	inc	rbx
	cmp	rbx, r14
	jae	.label_416
	movsx	ebp, r13b
	nop	dword ptr [rax]
.label_415:
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	prfield
	inc	rbx
	cmp	r14, rbx
	jne	.label_415
.label_416:
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
	#Procedure 0x405069
	.globl sub_405069
	.type sub_405069, @function
sub_405069:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405070
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
	#Procedure 0x405089
	.globl sub_405089
	.type sub_405089, @function
sub_405089:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405090

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
	#Procedure 0x4050a7
	.globl sub_4050a7
	.type sub_4050a7, @function
sub_4050a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0

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
	#Procedure 0x4050dd
	.globl sub_4050dd
	.type sub_4050dd, @function
sub_4050dd:

	nop	dword ptr [rax]
.label_418:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4050e5
	.globl sub_4050e5
	.type sub_4050e5, @function
sub_4050e5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050ec

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_421
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_419
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_417
.label_421:
	test	rcx, rcx
	jne	.label_420
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_420:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_418
.label_417:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_419:
	call	xalloc_die
.label_422:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405163
	.globl sub_405163
	.type sub_405163, @function
sub_405163:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40516b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_422
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x405180

	.globl add_file_name
	.type add_file_name, @function
add_file_name:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r13]
	cmp	eax, 2
	jne	.label_423
	mov	ebp, dword ptr [rbx]
	xor	eax, eax
	test	ebp, ebp
	sete	al
	mov	ecx, dword ptr [rbx + rax*4]
	cmp	rcx, 3
	ja	.label_425
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + g_names]]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_427]]
.label_566:
	dec	dword ptr [rdx + 4]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_2
.label_424:
	mov	rsi, rax
	call	set_join_field
	jmp	.label_425
.label_565:
	dec	dword ptr [rdx]
	call	string_to_join_field
	mov	edi, OFFSET FLAT:join_field_1
	jmp	.label_424
.label_567:
	call	add_field_list
.label_425:
	mov	eax, 1
	test	ebp, ebp
	je	.label_423
	mov	ecx, dword ptr [rbx + 4]
	mov	dword ptr [rbx], ecx
	mov	rcx,  qword ptr [word ptr [rip + label_49]]
	mov	qword ptr [word ptr [rip + g_names]],  rcx
.label_423:
	mov	ecx, dword ptr [r12]
	cdqe	
	mov	dword ptr [rbx + rax*4], ecx
	mov	qword ptr [word ptr [+ (rax * 8) + g_names]],  r15
	inc	eax
	mov	dword ptr [r13], eax
	cmp	dword ptr [r12], 3
	jne	.label_426
	mov	dword ptr [r14], 3
.label_426:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x40527a
	.globl sub_40527a
	.type sub_40527a, @function
sub_40527a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405280

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4052b0
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
	#Procedure 0x4052bd
	.globl sub_4052bd
	.type sub_4052bd, @function
sub_4052bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4052ca
	.globl sub_4052ca
	.type sub_4052ca, @function
sub_4052ca:

	nop	word ptr [rax + rax]
.label_430:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4052d5
	.globl sub_4052d5
	.type sub_4052d5, @function
sub_4052d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e3

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
	je	.label_430
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
	#Procedure 0x405330

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
	jne	.label_431
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_431
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_432
.label_431:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_432:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_433
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_433:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40539e
	.globl sub_40539e
	.type sub_40539e, @function
sub_40539e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4053a0

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
	#Procedure 0x4053e9
	.globl sub_4053e9
	.type sub_4053e9, @function
sub_4053e9:

	nop	dword ptr [rax]
.label_436:
	inc	rbx
	inc	r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405430

	.globl set_join_field
	.type set_join_field, @function
set_join_field:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, qword ptr [rdi]
	cmp	rbx, -1
	je	.label_435
	cmp	rbx, r14
	jne	.label_436
.label_435:
	mov	qword ptr [rdi], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405450
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	.section	.text
	.align	16
	#Procedure 0x405457
	.globl sub_405457
	.type sub_405457, @function
sub_405457:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460

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
	jne	.label_439
	add	rbx, r15
	mov	eax, dword ptr [rsp + 8]
	movsx	eax, al
	mov	dword ptr [rsp + 0xc], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, r15
	nop	
.label_438:
	mov	rdi, r13
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_440
	cmp	r12, r15
	je	.label_439
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	jne	.label_439
	mov	eax, dword ptr [rsp + 8]
	cmp	byte ptr [r12 - 1], al
	mov	ebp, dword ptr [rsp + 0xc]
	je	.label_437
.label_440:
	cmp	r12, rbx
	jne	.label_441
	mov	r12, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	r12, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	rbx, r15
	add	rbx, qword ptr [r14]
.label_441:
	mov	byte ptr [r12], bpl
	inc	r12
	cmp	ebp, dword ptr [rsp + 0xc]
	jne	.label_438
.label_437:
	sub	r12, r15
	mov	qword ptr [r14 + 8], r12
	mov	qword ptr [rsp + 0x10], r14
.label_439:
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
	.align	16
	#Procedure 0x40552f
	.globl sub_40552f
	.type sub_40552f, @function
sub_40552f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405530
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
	#Procedure 0x405543
	.globl sub_405543
	.type sub_405543, @function
sub_405543:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40555e
	.globl sub_40555e
	.type sub_40555e, @function
sub_40555e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405560

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
	js	.label_442
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_445
	cmp	r12d, 0x7fffffff
	je	.label_447
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
	jne	.label_443
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_443:
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
.label_445:
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
	jbe	.label_448
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_444
.label_448:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_446
	mov	rdi, r14
	call	free
.label_446:
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
.label_444:
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
.label_442:
	call	abort
.label_447:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40571d
	.globl sub_40571d
	.type sub_40571d, @function
sub_40571d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405720

	.globl system_join
	.type system_join, @function
system_join:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r14, rsi
	mov	rbx, rdi
	mov	esi, 2
	call	fadvise
	mov	esi, 2
	mov	rdi, r14
	call	fadvise
	lea	r15, [rsp + 0x20]
	mov	rdi, r15
	call	initseq
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	getseq
	lea	r15, [rsp + 8]
	mov	rdi, r15
	call	initseq
	mov	edx, 2
	mov	rdi, r14
	mov	rsi, r15
	call	getseq
	cmp	byte ptr [byte ptr [rip + autoformat]],  1
	jne	.label_474
	xor	eax, eax
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_475
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x18]
.label_475:
	mov	qword ptr [word ptr [rip + autocount_1]],  rax
	xor	eax, eax
	cmp	qword ptr [rsp + 8], 0
	je	.label_479
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x18]
.label_479:
	mov	qword ptr [word ptr [rip + autocount_2]],  rax
.label_474:
	cmp	byte ptr [byte ptr [rip + join_header_lines]],  1
	jne	.label_471
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_482
	cmp	qword ptr [rsp + 8], 0
	je	.label_471
	mov	edi, OFFSET FLAT:uni_blank
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_469
.label_482:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
.label_469:
	mov	esi, OFFSET FLAT:uni_blank
	cmp	qword ptr [rsp + 8], 0
	je	.label_487
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
.label_487:
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_454
	lea	rsi, [rsp + 0x20]
	mov	edx, 1
	mov	ecx, 1
	mov	rdi, rbx
	call	advance_seq
.label_454:
	cmp	qword ptr [rsp + 8], 0
	je	.label_471
	lea	rsi, [rsp + 8]
	mov	edx, 1
	mov	ecx, 2
	mov	rdi, r14
	call	advance_seq
.label_471:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_468
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_468
	lea	r15, [rsp + 0x20]
	lea	r12, [rsp + 8]
	jmp	.label_472
.label_465:
	inc	rcx
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	dword ptr [rsp + 0x44], eax
	nop	word ptr cs:[rax + rax]
.label_457:
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r14
	mov	rsi, r12
	call	advance_seq
	test	al, al
	je	.label_480
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rcx + rax*8 - 8]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	je	.label_457
	mov	dword ptr [rsp + 0x40], 0
	jmp	.label_484
.label_480:
	inc	qword ptr [rsp + 8]
	mov	al, 1
	mov	dword ptr [rsp + 0x40], eax
.label_484:
	cmp	qword ptr [rsp + 0x20], 1
	je	.label_449
	mov	al,  byte ptr [byte ptr [rip + print_pairables]]
	xor	al, 1
	test	al, 1
	jne	.label_449
	xor	r13d, r13d
.label_462:
	cmp	qword ptr [rsp + 8], 1
	je	.label_452
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_460:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	prjoin
	inc	rbp
	mov	rax, qword ptr [rsp + 8]
	dec	rax
	cmp	rbp, rax
	jb	.label_460
.label_452:
	inc	r13
	mov	rax, qword ptr [rsp + 0x20]
	dec	rax
	cmp	r13, rax
	jb	.label_462
.label_449:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	mov	eax, 0
	jne	.label_467
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx + rax*8 - 8], rdx
	mov	eax, 1
.label_467:
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, dword ptr [rsp + 0x40]
	test	al, al
	je	.label_464
	mov	qword ptr [rsp + 8], 0
	jmp	.label_477
.label_464:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx + rax*8 - 8], rdx
	mov	qword ptr [rsp + 8], 1
	jmp	.label_477
	.section	.text
	.align	16
	#Procedure 0x4059da
	.globl sub_4059da
	.type sub_4059da, @function
sub_4059da:

	nop	word ptr [rax + rax]
.label_472:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	js	.label_453
	je	.label_450
	cmp	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jne	.label_451
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_451:
	mov	edx, 1
	mov	ecx, 2
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_458
	.section	.text
	.align	16
	#Procedure 0x405a3d
	.globl sub_405a3d
	.type sub_405a3d, @function
sub_405a3d:

	nop	dword ptr [rax]
.label_450:
	xor	edx, edx
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	advance_seq
	mov	rcx, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_465
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + rcx*8 - 8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	je	.label_450
	mov	dword ptr [rsp + 0x44], 0
	jmp	.label_457
	.section	.text
	.align	16
	#Procedure 0x405a95
	.globl sub_405a95
	.type sub_405a95, @function
sub_405a95:

	nop	word ptr cs:[rax + rax]
.label_453:
	cmp	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jne	.label_478
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_478:
	mov	edx, 1
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
.label_458:
	call	advance_seq
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_477:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_468
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	jne	.label_472
.label_468:
	mov	qword ptr [rsp + 0x38], 0
	cmp	dword ptr [dword ptr [rip + check_input_order]],  2
	jne	.label_485
	xor	ebp, ebp
	jmp	.label_488
.label_485:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	sete	al
	cmp	byte ptr [byte ptr [rip + label_45]],  0
	sete	bpl
	or	bpl, al
.label_488:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_456
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	ecx, ebp
	or	cl, al
	xor	cl, 1
	test	cl, 1
	jne	.label_456
	test	al, 1
	je	.label_461
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_461:
	cmp	qword ptr [rsp + 8], 0
	je	.label_466
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_466:
	lea	rsi, [rsp + 0x38]
	mov	edx, 1
	mov	rdi, rbx
	call	get_line
	test	al, al
	je	.label_456
	lea	r15, [rsp + 0x38]
	nop	dword ptr [rax]
.label_481:
	cmp	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jne	.label_473
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_473:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	je	.label_476
	cmp	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jne	.label_456
.label_476:
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	get_line
	test	al, al
	jne	.label_481
.label_456:
	cmp	qword ptr [rsp + 8], 0
	je	.label_455
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_2]]
	or	bpl, al
	xor	bpl, 1
	test	bpl, 1
	jne	.label_455
	test	al, 1
	je	.label_483
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rax]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_483:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_486
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_486:
	lea	rsi, [rsp + 0x38]
	mov	edx, 2
	mov	rdi, r14
	call	get_line
	test	al, al
	je	.label_455
	lea	rbx, [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_470:
	cmp	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jne	.label_459
	mov	rsi, qword ptr [rsp + 0x38]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_459:
	cmp	byte ptr [byte ptr [rip + label_45]],  0
	je	.label_463
	cmp	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jne	.label_455
.label_463:
	mov	edx, 2
	mov	rdi, r14
	mov	rsi, rbx
	call	get_line
	test	al, al
	jne	.label_470
.label_455:
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	call	freeline
	mov	rdi, rbx
	call	free
	lea	rdi, [rsp + 0x20]
	call	delseq
	lea	rdi, [rsp + 8]
	call	delseq
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ca6
	.globl sub_405ca6
	.type sub_405ca6, @function
sub_405ca6:

	nop	word ptr cs:[rax + rax]
.label_490:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_491:
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
	#Procedure 0x405ccc
	.globl sub_405ccc
	.type sub_405ccc, @function
sub_405ccc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405cd3

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
	jne	.label_489
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_490
.label_489:
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
	jmp	.label_491
.label_492:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x405d3c
	.globl sub_405d3c
	.type sub_405d3c, @function
sub_405d3c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d49

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_492
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d50
	.globl initbuffer
	.type initbuffer, @function
initbuffer:

	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d5f
	.globl sub_405d5f
	.type sub_405d5f, @function
sub_405d5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405d60

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_493
	nop	
.label_503:
	mov	edi, OFFSET FLAT:label_93
	call	strcmp
	test	eax, eax
	je	.label_501
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_503
.label_501:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_93
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_496
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_94
	mov	ecx, OFFSET FLAT:label_495
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_494
	mov	esi, OFFSET FLAT:label_500
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_494
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_499
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_494:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_497
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_93
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_495
	mov	ecx, OFFSET FLAT:label_93
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_502
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_498
	mov	ecx, OFFSET FLAT:label_33
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
	#Procedure 0x405e7a
	.globl sub_405e7a
	.type sub_405e7a, @function
sub_405e7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e80

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405e8a
	.globl sub_405e8a
	.type sub_405e8a, @function
sub_405e8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e90
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
	#Procedure 0x405ea0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x405ea9
	.globl sub_405ea9
	.type sub_405ea9, @function
sub_405ea9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405eb0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x405eba
	.globl sub_405eba
	.type sub_405eba, @function
sub_405eba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0

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
	je	.label_504
	cmp	r15, -2
	jb	.label_504
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_504
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_504:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f16
	.globl sub_405f16
	.type sub_405f16, @function
sub_405f16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f20
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
	#Procedure 0x405f2f
	.globl sub_405f2f
	.type sub_405f2f, @function
sub_405f2f:

	nop	
.label_508:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_506:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_507
	inc	r9
	cmp	r9, 0xa
	jb	.label_505
.label_507:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f5f
	.globl sub_405f5f
	.type sub_405f5f, @function
sub_405f5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405f60

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_505:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_508
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_506
	.section	.text
	.align	16
	#Procedure 0x405f89
	.globl sub_405f89
	.type sub_405f89, @function
sub_405f89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f90
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
	#Procedure 0x405fc3
	.globl sub_405fc3
	.type sub_405fc3, @function
sub_405fc3:

	nop	word ptr cs:[rax + rax]
.label_510:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_509
	test	cl, cl
	jne	.label_509
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_509:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ffb
	.globl sub_405ffb
	.type sub_405ffb, @function
sub_405ffb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406005

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
	je	.label_510
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_509
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_509
	.section	.text
	.align	16
	#Procedure 0x406040

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
	#Procedure 0x406076
	.globl sub_406076
	.type sub_406076, @function
sub_406076:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080

	.globl keycmp
	.type keycmp, @function
keycmp:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	xor	edi, edi
	cmp	qword ptr [rax + 0x18], rdx
	mov	r14d, 0
	jbe	.label_511
	mov	rax, qword ptr [rax + 0x28]
	shl	rdx, 4
	mov	rdi, qword ptr [rax + rdx]
	mov	r14, qword ptr [rax + rdx + 8]
.label_511:
	xor	r8d, r8d
	cmp	qword ptr [rsi + 0x18], rcx
	mov	ebx, 0
	jbe	.label_513
	mov	rax, qword ptr [rsi + 0x28]
	shl	rcx, 4
	mov	r8, qword ptr [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
.label_513:
	test	r14, r14
	je	.label_512
	mov	eax, 1
	test	rbx, rbx
	je	.label_514
	cmp	byte ptr [byte ptr [rip + ignore_case]],  1
	jne	.label_517
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_515
.label_512:
	neg	rbx
	sbb	eax, eax
	jmp	.label_514
.label_517:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_516
	mov	rsi, r14
	mov	rdx, r8
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xmemcoll
.label_516:
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcmp
.label_515:
	test	eax, eax
	jne	.label_514
	xor	ecx, ecx
	cmp	r14, rbx
	setne	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_514:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x406144
	.globl sub_406144
	.type sub_406144, @function
sub_406144:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150

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
	mov	esi, OFFSET FLAT:label_518
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_519
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
	mov	esi, OFFSET FLAT:label_520
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
	.align	16
	#Procedure 0x40621a
	.globl sub_40621a
	.type sub_40621a, @function
sub_40621a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406220
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_521
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_521:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406243
	.globl sub_406243
	.type sub_406243, @function
sub_406243:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_522
	test	rax, rax
	je	.label_523
.label_522:
	pop	rbx
	ret	
.label_523:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40626a
	.globl sub_40626a
	.type sub_40626a, @function
sub_40626a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406270

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
	.align	16
	#Procedure 0x40628a
	.globl sub_40628a
	.type sub_40628a, @function
sub_40628a:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406290
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
	je	.label_524
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_524:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062d8
	.globl sub_4062d8
	.type sub_4062d8, @function
sub_4062d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_525
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_526
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_528
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_94
	mov	ecx, OFFSET FLAT:label_495
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_527
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x406354
	.globl sub_406354
	.type sub_406354, @function
sub_406354:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406360
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
	#Procedure 0x406376
	.globl sub_406376
	.type sub_406376, @function
sub_406376:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406380

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
	je	.label_529
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_529:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063c2
	.globl sub_4063c2
	.type sub_4063c2, @function
sub_4063c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063d0

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
	#Procedure 0x406409
	.globl sub_406409
	.type sub_406409, @function
sub_406409:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406410

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
	#Procedure 0x406421
	.globl sub_406421
	.type sub_406421, @function
sub_406421:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406430
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
	#Procedure 0x406444
	.globl sub_406444
	.type sub_406444, @function
sub_406444:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406450
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
	#Procedure 0x40645d
	.globl sub_40645d
	.type sub_40645d, @function
sub_40645d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406460

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40646e
	.globl sub_40646e
	.type sub_40646e, @function
sub_40646e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406470
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_530
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_530:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40648e
	.globl sub_40648e
	.type sub_40648e, @function
sub_40648e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406490
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_531
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_531:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4064b6
	.globl sub_4064b6
	.type sub_4064b6, @function
sub_4064b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_532
	test	rbx, rbx
	jne	.label_532
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_532:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_534
	test	rax, rax
	je	.label_533
.label_534:
	pop	rbx
	ret	
.label_533:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406555
	.globl sub_406555
	.type sub_406555, @function
sub_406555:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406562
	.globl sub_406562
	.type sub_406562, @function
sub_406562:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406586
	.globl sub_406586
	.type sub_406586, @function
sub_406586:

	nop	word ptr cs:[rax + rax]
