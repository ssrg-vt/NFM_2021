	.section	.text
	.align	16
	#Procedure 0x401a59
	.globl sub_401a59
	.type sub_401a59, @function
sub_401a59:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401a5a
	.globl sub_401a5a
	.type sub_401a5a, @function
sub_401a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a92
	.globl sub_401a92
	.type sub_401a92, @function
sub_401a92:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ada
	.globl sub_401ada
	.type sub_401ada, @function
sub_401ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401afc
	.globl sub_401afc
	.type sub_401afc, @function
sub_401afc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b0d
	.globl sub_401b0d
	.type sub_401b0d, @function
sub_401b0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b26
	.globl sub_401b26
	.type sub_401b26, @function
sub_401b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	16
	#Procedure 0x401b85
	.globl sub_401b85
	.type sub_401b85, @function
sub_401b85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b98
	.globl sub_401b98
	.type sub_401b98, @function
sub_401b98:

	nop	dword ptr [rax + rax]
.label_14:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_12
	test	rax, rax
	je	.label_13
.label_12:
	pop	rbx
	ret	
.label_13:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401bb9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_14
	test	rbx, rbx
	jne	.label_14
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bd0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_15
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_16
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bf5
	.globl sub_401bf5
	.type sub_401bf5, @function
sub_401bf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401c30
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
	.align	16
	#Procedure 0x401ca5
	.globl sub_401ca5
	.type sub_401ca5, @function
sub_401ca5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_19
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_19:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ce3
	.globl sub_401ce3
	.type sub_401ce3, @function
sub_401ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cf0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_23
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_21
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_22:
	cmp	qword ptr [rcx], 0
	je	.label_24
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_20:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_20
	cmp	rdi, rax
	cmova	rax, rdi
.label_24:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_27
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_25:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_25
	cmp	rdi, rax
	cmova	rax, rdi
.label_27:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_22
.label_21:
	test	r8, r8
	je	.label_23
	cmp	qword ptr [rcx], 0
	je	.label_23
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_26:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_26
	cmp	rdx, rax
	cmova	rax, rdx
.label_23:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401da4
	.globl sub_401da4
	.type sub_401da4, @function
sub_401da4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401db0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401db5
	.globl sub_401db5
	.type sub_401db5, @function
sub_401db5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_28
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_29
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_29:
	add	rax, rcx
.label_28:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401de8
	.globl sub_401de8
	.type sub_401de8, @function
sub_401de8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401df0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_34
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_33
	cmp	byte ptr [r15], 0x2f
	je	.label_33
	mov	r12b, 0x2f
	jmp	.label_30
.label_34:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_30
.label_33:
	xor	r12d, r12d
.label_30:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_32
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_31
	mov	qword ptr [rax], rbp
.label_31:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_32:
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
	#Procedure 0x401ec8
	.globl sub_401ec8
	.type sub_401ec8, @function
sub_401ec8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ed0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_15
	call	setlocale
	mov	edi, OFFSET FLAT:label_36
	mov	esi, OFFSET FLAT:label_85
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_36
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	mov	byte ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0xc], 4
	mov	byte ptr [rsp + 0x10], 0
	mov	byte ptr [rsp + 0x12], 0
	mov	byte ptr [rsp + 0x11], 0
	mov	qword ptr [rsp + 0x18], 0
	mov	byte ptr [rsp + 0x20], 0
	xor	r13d, r13d
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rsp + 0x21]
	mov	byte ptr [rsp + 0x22], 0
	mov	byte ptr [rsp + 0x23], 0
	mov	bl, 1
	jmp	.label_49
	.section	.text
	.align	16
	#Procedure 0x401f6a
	.globl sub_401f6a
	.type sub_401f6a, @function
sub_401f6a:

	nop	word ptr [rax + rax]
.label_37:
	mov	dword ptr [rsp + 0xc], 3
	mov	byte ptr [rsp + 8], 0
.label_49:
	xor	r15d, r15d
	jmp	.label_58
	.section	.text
	.align	16
	#Procedure 0x401f82
	.globl sub_401f82
	.type sub_401f82, @function
sub_401f82:

	nop	word ptr cs:[rax + rax]
.label_1100:
	mov	dword ptr [rsp + 0xc], 5
	mov	byte ptr [rsp + 8], 1
	mov	r15b, 1
.label_58:
	xor	r14d, r14d
	jmp	.label_42
.label_1098:
	mov	byte ptr [rsp + 0x11], 1
	mov	r13b, 1
	nop	dword ptr [rax]
.label_42:
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x48
	jle	.label_73
	add	eax, -0x49
	cmp	eax, 0x3b
	ja	.label_74
	jmp	qword ptr [(rax * 8) + label_75]
.label_1099:
	mov	byte ptr [rsp + 0x12], 1
	jmp	.label_42
.label_1101:
	mov	byte ptr [rsp + 0x22], 1
	jmp	.label_42
.label_1102:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_37
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_35
	mov	edx, OFFSET FLAT:interactive_args
	mov	ecx, OFFSET FLAT:interactive_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + interactive_types]
	cmp	eax, 2
	je	.label_37
	cmp	eax, 1
	je	.label_41
	test	eax, eax
	jne	.label_42
	jmp	.label_44
.label_41:
	mov	dword ptr [rsp + 0xc], 4
	mov	byte ptr [rsp + 8], 0
	mov	r14b, 1
	xor	r15d, r15d
	jmp	.label_42
.label_1103:
	mov	byte ptr [rsp + 0x10], 1
	jmp	.label_42
.label_1104:
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r12 + rax*8 - 8]
	mov	esi, OFFSET FLAT:label_52
	call	strcmp
	xor	ebx, ebx
	test	eax, eax
	je	.label_42
	jmp	.label_60
.label_1105:
	mov	rax, qword ptr [rip + optarg]
	test	rax, rax
	mov	bl, 1
	je	.label_42
	cmp	byte ptr [rax], 0x61
	jne	.label_65
	cmp	byte ptr [rax + 1], 0x6c
	jne	.label_65
	cmp	byte ptr [rax + 2], 0x6c
	jne	.label_65
	cmp	byte ptr [rax + 3], 0
	jne	.label_65
	mov	byte ptr [rsp + 0x20], 1
	mov	bl, 1
	jmp	.label_42
.label_1106:
	mov	byte ptr [rsp + 0x21], 1
	jmp	.label_42
.label_44:
	mov	dword ptr [rsp + 0xc], 5
	jmp	.label_58
.label_73:
	cmp	eax, -1
	jne	.label_56
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_82
	test	bl, bl
	je	.label_83
	test	r13b, r13b
	je	.label_83
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_45
	mov	eax, dword ptr [rip + optind]
.label_83:
	test	r14b, r14b
	je	.label_40
	sub	ebp, eax
	cmp	ebp, 3
	ja	.label_38
	test	r13b, r13b
	je	.label_40
.label_38:
	mov	ebx, eax
	movsxd	r15, ebp
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	test	r13b, r13b
	je	.label_43
	mov	esi, OFFSET FLAT:label_46
	mov	edx, OFFSET FLAT:label_47
	jmp	.label_48
.label_56:
	cmp	eax, 0xffffff7d
	je	.label_50
	cmp	eax, 0xffffff7e
	je	.label_59
.label_74:
	cmp	ebp, 2
	jl	.label_57
	movsxd	r15, ebp
	mov	ebx, 1
	lea	r14, [rsp + 0x28]
	nop	dword ptr [rax + rax]
.label_69:
	mov	rbp, qword ptr [r12 + rbx*8]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_51
	cmp	byte ptr [rbp + 1], 0
	je	.label_51
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r14
	call	__lxstat
	test	eax, eax
	je	.label_68
.label_51:
	inc	rbx
	cmp	rbx, r15
	jl	.label_69
.label_57:
	mov	edi, 1
	call	usage
.label_82:
	xor	ebp, ebp
	test	r15b, r15b
	jne	.label_72
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
.label_68:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	r12, qword ptr [r12]
	mov	edi, 1
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, rbp
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_43:
	mov	esi, OFFSET FLAT:label_53
	mov	edx, OFFSET FLAT:label_54
.label_48:
	mov	r8d, 5
	mov	rcx, r15
	call	dcngettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	xor	ebp, ebp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	r8, r15
	call	__fprintf_chk
	call	yesno
	test	al, al
	mov	eax, ebx
	je	.label_72
.label_40:
	cdqe	
	lea	rdi, [r12 + rax*8]
	lea	rsi, [rsp + 8]
	call	rm
	lea	ecx, [rax - 2]
	cmp	ecx, 3
	jae	.label_70
	xor	ebp, ebp
	cmp	eax, 4
	sete	bpl
.label_72:
	mov	eax, ebp
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_59:
	xor	edi, edi
	call	usage
.label_50:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_76
	mov	edx, OFFSET FLAT:label_77
	mov	r8d, OFFSET FLAT:label_78
	mov	r9d, OFFSET FLAT:label_79
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_80
	push	OFFSET FLAT:label_81
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_70:
	mov	edi, OFFSET FLAT:label_61
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 0x173
	mov	ecx, OFFSET FLAT:label_63
	call	__assert_fail
.label_45:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_71
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023f0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_86
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_86:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_87
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_88
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_89
.label_88:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_89:
	mov	ecx, dword ptr [rax]
.label_87:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024ae
	.globl sub_4024ae
	.type sub_4024ae, @function
sub_4024ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4024b0

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
	jne	.label_91
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_90
	test	cl, cl
	jne	.label_90
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_90
.label_91:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_90
	call	__errno_location
	mov	dword ptr [rax], 0
.label_90:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402510

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
	je	.label_92
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
.label_92:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4025a5
	.globl sub_4025a5
	.type sub_4025a5, @function
sub_4025a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025b0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	cmp	byte ptr [rip + can_write_any_file.initialized],  1
	jne	.label_93
	mov	al, byte ptr [rip + can_write_any_file.can_write]
	ret	
.label_93:
	push	rax
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [rip + can_write_any_file.can_write]
	mov	byte ptr [rip + can_write_any_file.initialized],  1
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025de
	.globl sub_4025de
	.type sub_4025de, @function
sub_4025de:

	nop	
.label_96:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_94:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_95
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_94
.label_95:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402614
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_98
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_99:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_97
	test	rdx, rdx
	jne	.label_99
	jmp	.label_96
.label_97:
	test	rdx, rdx
	je	.label_96
	mov	rax, qword ptr [rdx]
	jmp	.label_95
.label_98:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402663
	.globl sub_402663
	.type sub_402663, @function
sub_402663:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_100
	call	rpl_calloc
	test	rax, rax
	je	.label_100
	pop	rcx
	ret	
.label_100:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402696
	.globl sub_402696
	.type sub_402696, @function
sub_402696:

	nop	word ptr cs:[rax + rax]
.label_105:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4026a5
	.globl sub_4026a5
	.type sub_4026a5, @function
sub_4026a5:

	nop	word ptr cs:[rax + rax]
.label_104:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_101
	mov	qword ptr [rsi], rbx
.label_103:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_102
	test	rax, rax
	je	.label_101
.label_102:
	pop	rbx
	ret	
.label_101:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4026de
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_104
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_105
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_103
	call	free
	xor	eax, eax
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x402710

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
	je	.label_106
	test	r15, r15
	je	.label_107
.label_106:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_107:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40274c
	.globl sub_40274c
	.type sub_40274c, @function
sub_40274c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402750
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
	.align	16
	#Procedure 0x402768
	.globl sub_402768
	.type sub_402768, @function
sub_402768:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402770
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	16
	#Procedure 0x4027df
	.globl sub_4027df
	.type sub_4027df, @function
sub_4027df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4027e0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	rbx, r9
	mov	dword ptr [rsp + 0x1c], r8d
	mov	r14, rcx
	mov	r12d, edx
	mov	r15, rsi
	mov	rcx, qword ptr [r15 + 0x30]
	mov	rax, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	test	rbx, rbx
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x10], rcx
	je	.label_142
	mov	dword ptr [rbx], 2
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	mov	rsi, rcx
	call	is_empty_dir
	mov	bpl, al
	movzx	eax, bpl
	add	eax, 3
	mov	dword ptr [rbx], eax
	jmp	.label_116
.label_142:
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	xor	ebp, ebp
.label_116:
	mov	ebx, 3
	cmp	qword ptr [r15 + 0x20], 0
	jne	.label_108
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 5
	je	.label_113
	mov	rdx, qword ptr [r14]
	mov	rax, rdx
	shr	rax, 0x20
	xor	r15d, r15d
	test	dl, dl
	je	.label_126
	xor	ecx, ecx
	jmp	.label_130
.label_126:
	cmp	ecx, 3
	je	.label_131
	cmp	byte ptr [r14 + 0x19], 0
	mov	ecx, 0
	je	.label_130
.label_131:
	call	can_write_any_file
	test	al, al
	jne	.label_109
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_135
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_141
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_144
.label_141:
	mov	rax, qword ptr [rsp + 0x58]
.label_135:
	test	rax, rax
	js	.label_145
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0xa000
	je	.label_109
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	faccessat
	test	eax, eax
	je	.label_109
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	mov	ecx, 1
	mov	r15d, 0xffffffff
	cmove	r15d, ecx
	jmp	.label_115
.label_109:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	eax, dword ptr [r14 + 4]
.label_130:
	cmp	eax, 3
	je	.label_118
	jmp	.label_113
.label_145:
	mov	r15, qword ptr [rsp + 0x30]
	call	__errno_location
.label_144:
	mov	dword ptr [rax], r15d
	mov	r15d, 0xffffffff
.label_115:
	mov	ecx, dword ptr [rax]
.label_118:
	test	r15d, r15d
	js	.label_127
	xor	r12b, 1
	je	.label_127
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_128
	mov	r12, rcx
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_134
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rcx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rcx
	jmp	.label_132
.label_134:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, r12
.label_128:
	test	rax, rax
	js	.label_140
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r12d, 0xa
	cmp	eax, 0xa000
	je	.label_143
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
.label_127:
	mov	r12d, r13d
.label_143:
	test	r15d, r15d
	js	.label_110
	mov	eax, r12d
	and	al, 0xf
	cmp	al, 4
	je	.label_111
	cmp	al, 0xa
	jne	.label_112
	cmp	dword ptr [r14 + 4], 3
	je	.label_112
	jmp	.label_113
.label_111:
	cmp	byte ptr [r14 + 9], 0
	jne	.label_112
	cmp	byte ptr [r14 + 0xa], 0
	mov	ecx, 0x15
	je	.label_110
	mov	eax, ebp
	xor	al, 1
	jne	.label_110
.label_112:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	r14, rax
	cmp	r12d, 4
	setne	al
	cmp	dword ptr [rsp + 0x1c], 2
	setne	cl
	or	cl, al
	or	bpl, cl
	je	.label_120
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_125
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_133
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rbx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rbx
	jmp	.label_117
.label_120:
	mov	rbp, qword ptr [rip + stderr]
	xor	edi, edi
	test	r15d, r15d
	je	.label_137
	mov	esi, OFFSET FLAT:label_138
	jmp	.label_139
.label_140:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
	mov	rcx, rbx
.label_132:
	mov	dword ptr [rax], ecx
.label_110:
	mov	ebx, 4
	mov	edi, 4
	mov	r14, rcx
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	jmp	.label_108
.label_137:
	mov	esi, OFFSET FLAT:label_114
.label_139:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r14
	call	__fprintf_chk
	jmp	.label_119
.label_133:
	mov	rax, qword ptr [rsp + 0x58]
.label_125:
	test	rax, rax
	js	.label_121
	mov	rax, qword ptr [rip + stderr]
	test	r15d, r15d
	je	.label_122
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	jmp	.label_124
.label_121:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
.label_117:
	mov	dword ptr [rax], ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	mov	ebx, 4
	jmp	.label_108
.label_122:
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
.label_124:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, r14
	call	__fprintf_chk
.label_119:
	call	yesno
	test	al, al
	je	.label_108
.label_113:
	mov	ebx, 2
.label_108:
	mov	eax, ebx
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c1e
	.globl sub_402c1e
	.type sub_402c1e, @function
sub_402c1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402c20
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
	#Procedure 0x402c53
	.globl sub_402c53
	.type sub_402c53, @function
sub_402c53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c60

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_147:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_146
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_147
.label_146:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c86
	.globl sub_402c86
	.type sub_402c86, @function
sub_402c86:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c90
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [rip + file_name_0],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c98
	.globl sub_402c98
	.type sub_402c98, @function
sub_402c98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ca0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_152
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_154
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_154
	mov	qword ptr [r13], rdi
	jmp	.label_157
.label_154:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_148
.label_152:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_157:
	test	rbx, rbx
	je	.label_153
	nop	dword ptr [rax]
.label_156:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_156
	mov	rdi, qword ptr [r13]
.label_153:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_150
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_151
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_159
	mov	rdx, rsi
	jmp	.label_149
.label_159:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_158:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_158
.label_149:
	test	rcx, rcx
	je	.label_151
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_155:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_155
.label_151:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_150:
	mov	qword ptr [rcx + 0x10], 0
.label_148:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e1e
	.globl sub_402e1e
	.type sub_402e1e, @function
sub_402e1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402e20

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebp, ecx
	mov	r13, rdx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	edx, bpl
	shl	edx, 9
	mov	edi, dword ptr [rbx + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_166
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	cmp	ebp, 0x1e
	jne	.label_169
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	call	__fxstatat
	test	eax, eax
	je	.label_168
	cmp	dword ptr [r12], 2
	je	.label_162
.label_168:
	mov	dword ptr [r12], 0x1e
.label_162:
	mov	ebp, dword ptr [r12]
.label_169:
	cmp	byte ptr [r13], 0
	je	.label_171
	mov	r14d, 2
	cmp	ebp, 0x16
	ja	.label_170
	mov	eax, 0x500004
	bt	eax, ebp
	jb	.label_165
.label_170:
	cmp	ebp, 0x54
	je	.label_165
.label_171:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 4
	jne	.label_161
	mov	eax, ebp
	cmp	ebp, 0x27
	ja	.label_161
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_161
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0xd
	je	.label_172
	cmp	eax, 1
	jne	.label_161
.label_172:
	mov	dword ptr [r12], eax
	mov	ebp, eax
.label_161:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	r14d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_174
	.section	.text
	.align	16
	#Procedure 0x402f38
	.globl sub_402f38
	.type sub_402f38, @function
sub_402f38:

	nop	dword ptr [rax + rax]
.label_167:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_174:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_165
	cmp	qword ptr [rax + 0x20], 0
	je	.label_167
	jmp	.label_165
.label_160:
	mov	esi, OFFSET FLAT:label_173
.label_164:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_165:
	mov	eax, r14d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fa6
	.globl sub_402fa6
	.type sub_402fa6, @function
sub_402fa6:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402fa9
	.globl sub_402fa9
	.type sub_402fa9, @function
sub_402fa9:

	nop	word ptr cs:[rax + rax]
.label_166:
	mov	r14d, 2
	cmp	byte ptr [r13 + 0x1a], 0
	je	.label_165
	xor	edi, edi
	test	bpl, bpl
	je	.label_160
	mov	esi, OFFSET FLAT:label_163
	jmp	.label_164
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_175
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_175:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_176
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_178
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_177
.label_178:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_177:
	mov	edx, dword ptr [rax]
.label_176:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x403094
	.globl sub_403094
	.type sub_403094, @function
sub_403094:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0
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
	je	.label_180
	test	r15, r15
	je	.label_179
.label_180:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_179:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4030e2
	.globl sub_4030e2
	.type sub_4030e2, @function
sub_4030e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_181
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_184:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_184
.label_181:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_185
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_182], OFFSET FLAT:slot0
.label_185:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_183
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_183:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403181
	.globl sub_403181
	.type sub_403181, @function
sub_403181:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403190

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40319a
	.globl sub_40319a
	.type sub_40319a, @function
sub_40319a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x4031aa
	.globl sub_4031aa
	.type sub_4031aa, @function
sub_4031aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031b0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_189
	.section	.text
	.align	16
	#Procedure 0x4031c1
	.globl sub_4031c1
	.type sub_4031c1, @function
sub_4031c1:

	nop	word ptr cs:[rax + rax]
.label_188:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031de
	.globl sub_4031de
	.type sub_4031de, @function
sub_4031de:

	nop	word ptr [rax + rax]
.label_190:
	add	r14, 0x10
.label_189:
	cmp	r14, rax
	jae	.label_188
	cmp	qword ptr [r14], 0
	je	.label_190
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_191
	nop	word ptr cs:[rax + rax]
.label_186:
	test	cl, 1
	je	.label_192
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_192:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_186
.label_191:
	test	cl, cl
	je	.label_187
	mov	rdi, qword ptr [r14]
	call	rax
.label_187:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x403260

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	eax, 2
	cmp	qword ptr [rdi], 0
	je	.label_219
	mov	qword ptr [rsp + 0x10], rsi
	cmp	byte ptr [rsi + 8], 0
	mov	eax, 0x218
	mov	esi, 0x258
	cmove	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r12, rax
	mov	r13d, 2
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x4032a8
	.globl sub_4032a8
	.type sub_4032a8, @function
sub_4032a8:

	nop	dword ptr [rax + rax]
.label_237:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
.label_203:
	mov	dword ptr [rsp + 8], r13d
.label_197:
	mov	rdi, r12
	call	rpl_fts_read
	mov	r14, rax
	test	r14, r14
	je	.label_241
	movzx	eax, word ptr [r14 + 0x70]
	lea	ecx, [rax - 1]
	movzx	ecx, cx
	cmp	ecx, 0xc
	ja	.label_213
	jmp	qword ptr [(rcx * 8) + label_247]
.label_1124:
	mov	r13, qword ptr [rsp + 0x10]
	cmp	byte ptr [r13 + 9], 0
	jne	.label_249
	mov	ebp, 0x15
	cmp	byte ptr [r13 + 0xa], 0
	je	.label_195
	mov	edi, dword ptr [r12 + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_245
.label_249:
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_201
	mov	rbp, qword ptr [r14 + 0x30]
	mov	rdi, rbp
	call	last_component
	cmp	byte ptr [rax], 0x2e
	jne	.label_212
	xor	ecx, ecx
	cmp	byte ptr [rax + 1], 0x2e
	sete	cl
	mov	al, byte ptr [rax + rcx + 1]
	cmp	al, 0x2f
	je	.label_214
	test	al, al
	je	.label_214
.label_212:
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	je	.label_220
	mov	rcx, qword ptr [r14 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_220
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	je	.label_226
.label_220:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_201
	mov	esi, OFFSET FLAT:label_230
	xor	edx, edx
	mov	rdi, rbp
	call	file_name_concat
	mov	rbx, rax
	test	rbx, rbx
	mov	ebp, 0
	je	.label_234
	mov	edi, 1
	mov	rsi, rbx
	lea	rdx, [rsp + 0x18]
	call	__lxstat
	test	eax, eax
	jne	.label_227
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r12 + 0x18]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_218
.label_201:
	mov	edi, dword ptr [r12 + 0x2c]
	mov	edx, 1
	mov	r8d, 2
	mov	rsi, r14
	mov	rcx, r13
	lea	r9, [rsp + 0x18]
	call	prompt
	mov	r15d, eax
	cmp	r15d, 2
	jne	.label_194
	cmp	dword ptr [rsp + 0x18], 4
	jne	.label_194
	mov	ecx, 1
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	call	excise
	mov	r15d, eax
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
.label_194:
	cmp	r15d, 2
	je	.label_207
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_239
	.section	.text
	.align	16
	#Procedure 0x403451
	.globl sub_403451
	.type sub_403451, @function
sub_403451:

	nop	word ptr cs:[rax + rax]
.label_223:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_239:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_221
	cmp	qword ptr [rax + 0x20], 0
	je	.label_223
.label_221:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
	jmp	.label_207
.label_1126:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 8], 0
	je	.label_232
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_232
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [r12 + 0x18]
	jne	.label_235
	nop	word ptr cs:[rax + rax]
.label_232:
	or	eax, 2
	movzx	ebx, ax
	xor	edx, edx
	cmp	ebx, 6
	sete	dl
	mov	edi, dword ptr [r12 + 0x2c]
	mov	r8d, 3
	xor	r9d, r9d
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rcx, rbp
	call	prompt
	mov	r15d, eax
	cmp	r15d, 2
	jne	.label_207
	xor	ecx, ecx
	cmp	ebx, 6
	sete	cl
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	excise
	mov	r15d, eax
.label_207:
	lea	eax, [r15 - 2]
	cmp	eax, 2
	jae	.label_196
	cmp	dword ptr [rsp + 8], 2
	jne	.label_197
	mov	r13d, 3
	cmp	r15d, 3
	jne	.label_197
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x403537
	.globl sub_403537
	.type sub_403537, @function
sub_403537:

	nop	word ptr [rax + rax]
.label_196:
	mov	r13d, 4
	cmp	r15d, 4
	je	.label_203
	jmp	.label_243
.label_1125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_225
.label_1127:
	mov	r15d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
.label_225:
	mov	rdx, rbp
	call	error
.label_200:
	mov	r13d, 4
	jmp	.label_237
.label_235:
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_240
	.section	.text
	.align	16
	#Procedure 0x4035cf
	.globl sub_4035cf
	.type sub_4035cf, @function
sub_4035cf:

	nop	
.label_244:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_240:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_242
	cmp	qword ptr [rax + 0x20], 0
	je	.label_244
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r13d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_203
.label_245:
	cmp	byte ptr [r13 + 0xa], 0
	mov	ebp, 0x15
	mov	eax, 0x27
	cmovne	ebp, eax
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_222
	.section	.text
	.align	16
	#Procedure 0x403673
	.globl sub_403673
	.type sub_403673, @function
sub_403673:

	nop	word ptr cs:[rax + rax]
.label_233:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_222:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_200
	cmp	qword ptr [rax + 0x20], 0
	je	.label_233
	jmp	.label_200
.label_227:
	mov	rbp, rbx
.label_234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r13
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_200
.label_218:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	jmp	.label_205
.label_214:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	r13d, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_215
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_230
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx, qword ptr [r14 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, rbp
	call	error
	jmp	.label_237
.label_226:
	mov	rax, qword ptr [r14 + 0x38]
	cmp	byte ptr [rax], 0x2f
	jne	.label_236
	cmp	byte ptr [rax + 1], 0
	je	.label_231
.label_236:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_71
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rbp
	call	error
.label_224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
.label_205:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_200
.label_231:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_224
.label_241:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	je	.label_246
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
	mov	dword ptr [rsp + 8], 4
.label_246:
	mov	rdi, r12
	call	rpl_fts_close
	test	eax, eax
	mov	eax, dword ptr [rsp + 8]
	je	.label_219
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	eax, 4
.label_219:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	movzx	ebp, word ptr [r14 + 0x70]
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_199
	xor	eax, eax
	mov	rdx, r15
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
.label_243:
	mov	edi, OFFSET FLAT:label_209
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:label_211
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40395d
	.globl sub_40395d
	.type sub_40395d, @function
sub_40395d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403960

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403988
	.globl sub_403988
	.type sub_403988, @function
sub_403988:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403990

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_251
	pop	rcx
	ret	
.label_251:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_250
	mov	edi, OFFSET FLAT:label_252
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_254
	call	__assert_fail
.label_250:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4039cb
	.globl sub_4039cb
	.type sub_4039cb, @function
sub_4039cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

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
	#Procedure 0x4039e7
	.globl sub_4039e7
	.type sub_4039e7, @function
sub_4039e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_274
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_274:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_257
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_275
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_256
	test	esi, esi
	jne	.label_257
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_258
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_260
.label_257:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_261
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_256
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_268
.label_275:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_255
.label_256:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_271
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_272
.label_271:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_272:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_273:
	call	fcntl
.label_255:
	mov	ebp, eax
.label_262:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_268:
	cmp	eax, 6
	jne	.label_261
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_264
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_266
.label_261:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_267
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_270
.label_258:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_260:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_273
.label_264:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_266:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_265
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_263
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_263
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_262
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_269
.label_263:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_262
.label_267:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_270:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_255
.label_265:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_269:
	test	al, al
	je	.label_262
	test	ebp, ebp
	js	.label_262
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_259
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_262
.label_259:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_262
	.section	.text
	.align	16
	#Procedure 0x403c81
	.globl sub_403c81
	.type sub_403c81, @function
sub_403c81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c90
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
	.align	16
	#Procedure 0x403ca8
	.globl sub_403ca8
	.type sub_403ca8, @function
sub_403ca8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cb0
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
	.align	16
	#Procedure 0x403d71
	.globl sub_403d71
	.type sub_403d71, @function
sub_403d71:

	nop	word ptr cs:[rax + rax]
.label_280:
	mov	r15, qword ptr [rbx]
.label_276:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d92

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_279
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_276
	add	rbx, rax
	je	.label_276
	cmp	rsi, r12
	je	.label_278
	xor	r15d, r15d
	nop	
.label_277:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_280
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_276
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_277
.label_278:
	mov	r15, r12
	jmp	.label_276
.label_279:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403df8
	.globl sub_403df8
	.type sub_403df8, @function
sub_403df8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e00
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
	#Procedure 0x403e36
	.globl sub_403e36
	.type sub_403e36, @function
sub_403e36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e40

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
	je	.label_281
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
.label_281:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403ea8
	.globl sub_403ea8
	.type sub_403ea8, @function
sub_403ea8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_298
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_291
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_306
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_282
	mov	r14, qword ptr [r13]
.label_306:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_285
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_288
.label_282:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_291
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_304:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_299
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_302
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_304
	jmp	.label_291
.label_285:
	mov	qword ptr [r13], 0
	jmp	.label_288
.label_299:
	mov	rcx, rax
	jmp	.label_284
.label_302:
	mov	r14, qword ptr [rcx]
.label_284:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_288:
	xor	r12d, r12d
	test	r14, r14
	je	.label_291
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_290
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_296
	cvtsi2ss	xmm1, rax
	jmp	.label_300
.label_296:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_300:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_305
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_283
.label_305:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_283:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_290
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_292
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_294]
	jbe	.label_295
	movss	xmm4, dword ptr [rip + label_297]
	ucomiss	xmm4, xmm3
	jbe	.label_295
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_295
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_301]
	jbe	.label_295
	movss	xmm4, dword ptr [rip + label_294]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_295
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_307]
	ucomiss	xmm5, xmm3
	jb	.label_295
	ucomiss	xmm3, xmm4
	ja	.label_287
.label_295:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_287
.label_292:
	mov	eax, OFFSET FLAT:default_tuning
.label_287:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_290
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_293
	mulss	xmm0, dword ptr [rax + 8]
.label_293:
	movss	xmm1, dword ptr [rip + label_286]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_290
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_303
	nop	word ptr cs:[rax + rax]
.label_289:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_289
.label_303:
	mov	qword ptr [r15 + 0x48], 0
.label_290:
	mov	r12, r14
.label_291:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_298:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404143
	.globl sub_404143
	.type sub_404143, @function
sub_404143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404150
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_199
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_77
	mov	ecx, OFFSET FLAT:label_311
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4041c4
	.globl sub_4041c4
	.type sub_4041c4, @function
sub_4041c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041d0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_324
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_325
	nop	word ptr cs:[rax + rax]
.label_312:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_329
	mov	rbx, qword ptr [rdi + 8]
.label_329:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_312
	jmp	.label_314
.label_325:
	mov	rbx, rdi
.label_314:
	mov	rdi, rbx
	call	free
.label_324:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_317
	nop	word ptr cs:[rax + rax]
.label_322:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_320
	call	closedir
.label_320:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_322
.label_317:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_327
	xor	ebp, ebp
	test	al, 4
	jne	.label_316
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_330
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_330:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_315
	jmp	.label_316
.label_327:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_316
	call	close
.label_315:
	test	eax, eax
	je	.label_316
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_316:
	lea	rbx, [r14 + 0x60]
	jmp	.label_321
	.section	.text
	.align	16
	#Procedure 0x4042b8
	.globl sub_4042b8
	.type sub_4042b8, @function
sub_4042b8:

	nop	dword ptr [rax + rax]
.label_319:
	mov	edi, eax
	call	close
.label_321:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_323
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_319
	jmp	.label_321
.label_323:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_326
	call	hash_free
.label_326:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_328
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_313
	call	hash_free
	jmp	.label_313
.label_328:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_313:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_318
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_318:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404332
	.globl sub_404332
	.type sub_404332, @function
sub_404332:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404340

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_331
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_331:
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
	#Procedure 0x4043c3
	.globl sub_4043c3
	.type sub_4043c3, @function
sub_4043c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0
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
	#Procedure 0x4043e3
	.globl sub_4043e3
	.type sub_4043e3, @function
sub_4043e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4043fa
	.globl sub_4043fa
	.type sub_4043fa, @function
sub_4043fa:

	nop	word ptr [rax + rax]
.label_334:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404405
	.globl sub_404405
	.type sub_404405, @function
sub_404405:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40440d
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_334
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_333
	test	rbx, rbx
	jne	.label_333
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_333:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_332
	test	rax, rax
	je	.label_334
.label_332:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40445d
	.globl sub_40445d
	.type sub_40445d, @function
sub_40445d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404460
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_335
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_340
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_339:
	cmp	qword ptr [rax], 0
	je	.label_347
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_341:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_341
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_347:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_348
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_338:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_338
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_348:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_339
.label_340:
	test	r8, r8
	je	.label_335
	cmp	qword ptr [rax], 0
	je	.label_335
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_336:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_336
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_335:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_337
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_349
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_343]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_344]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_345]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_346
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_342
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x4045cf
	.globl sub_4045cf
	.type sub_4045cf, @function
sub_4045cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4045d0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, qword ptr [rip + stdin]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_351
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_351
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_351:
	mov	rdi, qword ptr [rip + stdin]
	call	close_stream
	test	bpl, bpl
	jne	.label_350
	test	eax, eax
	jne	.label_350
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_352:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_355
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_354:
	call	close_stdout
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr [rax + rax]
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name_0]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_352
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_354
	.section	.text
	.align	16
	#Procedure 0x4046a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_357
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_356
	cmp	dword ptr [rbp], 0x20
	jne	.label_356
.label_357:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_359
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_358:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_355
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_359:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_358
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x404760

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_385
	.section	.text
	.align	16
	#Procedure 0x40480f
	.globl sub_40480f
	.type sub_40480f, @function
sub_40480f:

	nop	
.label_383:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_364
	or	al, dl
	jne	.label_364
	test	dil, 1
	jne	.label_381
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_364
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_385
	jmp	.label_364
.label_1165:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_392
	test	rbp, rbp
	je	.label_436
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_436:
	mov	r14d, 1
	jmp	.label_397
.label_1166:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_398
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_402
.label_392:
	xor	r14d, r14d
.label_397:
	mov	eax, OFFSET FLAT:label_398
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_399
	.section	.text
	.align	16
	#Procedure 0x4048df
	.globl sub_4048df
	.type sub_4048df, @function
sub_4048df:

	nop	
.label_385:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_420
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_425]
.label_1167:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_433
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_362
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1168:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_447
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_447
	xor	r14d, r14d
	nop	
.label_426:
	cmp	r14, rbp
	jae	.label_456
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_456:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_426
.label_447:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_402
.label_1160:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_402
.label_1163:
	mov	al, 1
.label_1161:
	mov	r12b, 1
.label_1164:
	test	r12b, 1
	mov	cl, 1
	je	.label_476
	mov	ecx, eax
.label_476:
	mov	al, cl
.label_1162:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_478
	test	rbp, rbp
	je	.label_483
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_483:
	mov	r14d, 1
	jmp	.label_475
.label_478:
	xor	r14d, r14d
.label_475:
	mov	ecx, OFFSET FLAT:label_362
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_399:
	mov	sil, r12b
.label_402:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_370
	.section	.text
	.align	16
	#Procedure 0x404aa1
	.globl sub_404aa1
	.type sub_404aa1, @function
sub_404aa1:

	nop	word ptr cs:[rax + rax]
.label_373:
	inc	r12
.label_370:
	cmp	r11, -1
	je	.label_378
	cmp	r12, r11
	jne	.label_408
	jmp	.label_410
	.section	.text
	.align	16
	#Procedure 0x404ac3
	.globl sub_404ac3
	.type sub_404ac3, @function
sub_404ac3:

	nop	word ptr cs:[rax + rax]
.label_378:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_414
.label_408:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_421
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_424
	cmp	r11, -1
	jne	.label_424
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_424:
	cmp	rbx, r11
	jbe	.label_439
.label_421:
	xor	esi, esi
.label_437:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_440
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_444]
.label_1082:
	test	r12, r12
	jne	.label_395
	jmp	.label_449
	.section	.text
	.align	16
	#Procedure 0x404b56
	.globl sub_404b56
	.type sub_404b56, @function
sub_404b56:

	nop	word ptr cs:[rax + rax]
.label_439:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_459
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_437
	jmp	.label_372
.label_459:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_437
.label_1086:
	xor	eax, eax
	cmp	r11, -1
	je	.label_471
	test	r12, r12
	jne	.label_473
	cmp	r11, 1
	je	.label_449
	xor	r13d, r13d
	jmp	.label_365
.label_1075:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_480
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_372
	cmp	r8d, 2
	jne	.label_486
	mov	eax, r9d
	and	al, 1
	jne	.label_486
	cmp	r14, rbp
	jae	.label_363
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_363:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_366
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_366:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_374
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_374:
	add	r14, 3
	mov	r9b, 1
.label_486:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_380
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_380:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_387
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_387
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_387
	cmp	r14, rbp
	jae	.label_431
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_431:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_452
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_452:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_365
.label_1076:
	mov	bl, 0x62
	jmp	.label_407
.label_1077:
	mov	cl, 0x74
	jmp	.label_390
.label_1078:
	mov	bl, 0x76
	jmp	.label_407
.label_1079:
	mov	bl, 0x66
	jmp	.label_407
.label_1080:
	mov	cl, 0x72
	jmp	.label_390
.label_1083:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_417
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_369
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_427
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_427:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_441
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_441:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_446
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_446:
	add	r14, 3
	xor	r9d, r9d
.label_417:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_365
.label_1084:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_453
	cmp	r8d, 2
	jne	.label_395
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_395
	jmp	.label_369
.label_1085:
	cmp	r8d, 2
	jne	.label_463
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_369
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_468
.label_440:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_469
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_438
.label_471:
	test	r12, r12
	jne	.label_361
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_361
.label_449:
	mov	dl, 1
.label_1081:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_369
	xor	eax, eax
	mov	r13b, dl
.label_365:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_371
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_375
	jmp	.label_377
	.section	.text
	.align	16
	#Procedure 0x404e34
	.globl sub_404e34
	.type sub_404e34, @function
sub_404e34:

	nop	word ptr cs:[rax + rax]
.label_371:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_377
.label_375:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_382
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_386
	.section	.text
	.align	16
	#Procedure 0x404e6d
	.globl sub_404e6d
	.type sub_404e6d, @function
sub_404e6d:

	nop	dword ptr [rax]
.label_377:
	test	sil, sil
.label_386:
	mov	ebx, r15d
	je	.label_404
	jmp	.label_394
.label_382:
	mov	ebx, r15d
	jmp	.label_394
.label_480:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_373
	xor	r15d, r15d
	jmp	.label_395
.label_463:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_390
	xor	eax, eax
	mov	r15b, 0x5c
.label_468:
	xor	r13d, r13d
	jmp	.label_404
.label_390:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_369
.label_407:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_365
	nop	
.label_394:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_372
	cmp	r8d, 2
	jne	.label_418
	mov	eax, r9d
	and	al, 1
	jne	.label_418
	cmp	r14, rbp
	jae	.label_457
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_457:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_428
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_428:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_432
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_432:
	add	r14, 3
	mov	r9b, 1
.label_418:
	cmp	r14, rbp
	jae	.label_423
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_423:
	inc	r14
	jmp	.label_448
.label_469:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_445
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_445:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_450
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_485:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_464
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_472
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_376
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_481
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_429:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_389
	bt	rsi, rdx
	jb	.label_369
.label_389:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_429
.label_481:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_379
	xor	r13d, r13d
.label_379:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_485
	jmp	.label_388
.label_387:
	xor	r13d, r13d
	jmp	.label_365
.label_361:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_365
.label_453:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_395
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_395
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_395
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_405
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_443
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_413
	cmp	r14, rbp
	jae	.label_415
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_415:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_451
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_451:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_474
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_474:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_467
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_467:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_443:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_365
.label_395:
	xor	eax, eax
.label_473:
	xor	r13d, r13d
	jmp	.label_365
.label_450:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_470:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_460
	cmp	rbp, -1
	je	.label_462
	cmp	rbp, -2
	je	.label_464
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_466
	xor	r13d, r13d
.label_466:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_470
	jmp	.label_388
.label_464:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_406
	lea	rax, [r10 + r12]
.label_391:
	cmp	byte ptr [rax + rsi], 0
	je	.label_406
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_391
.label_406:
	mov	qword ptr [rsp + 0x40], rsi
.label_472:
	xor	r13d, r13d
	jmp	.label_376
.label_462:
	xor	r13d, r13d
.label_460:
	mov	r10, qword ptr [rsp + 0x28]
.label_376:
	mov	r12, qword ptr [rsp + 0x40]
.label_388:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_438:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_368
	test	al, al
	je	.label_368
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_365
.label_368:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_384
	.section	.text
	.align	16
	#Procedure 0x405267
	.globl sub_405267
	.type sub_405267, @function
sub_405267:

	nop	word ptr [rax + rax]
.label_412:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_384:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_393
	test	sil, 1
	je	.label_403
	cmp	r14, rbp
	jae	.label_396
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_396:
	inc	r14
	xor	esi, esi
	jmp	.label_403
	.section	.text
	.align	16
	#Procedure 0x4052a5
	.globl sub_4052a5
	.type sub_4052a5, @function
sub_4052a5:

	nop	word ptr cs:[rax + rax]
.label_393:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_372
	cmp	r8d, 2
	jne	.label_409
	mov	eax, r9d
	and	al, 1
	jne	.label_409
	cmp	r14, rbp
	jae	.label_411
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_411:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_416
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_416:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_419
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_419:
	add	r14, 3
	mov	r9b, 1
.label_409:
	cmp	r14, rbp
	jae	.label_430
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_430:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_435
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_435:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_442
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_442:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_403:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_404
	test	r9b, 1
	je	.label_454
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_400
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_458
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_458:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_465
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_465:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_454
	.section	.text
	.align	16
	#Procedure 0x4053b6
	.globl sub_4053b6
	.type sub_4053b6, @function
sub_4053b6:

	nop	word ptr cs:[rax + rax]
.label_400:
	mov	rbx, rcx
.label_454:
	cmp	r14, rbp
	jae	.label_412
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_412
	.section	.text
	.align	16
	#Procedure 0x4053de
	.globl sub_4053de
	.type sub_4053de, @function
sub_4053de:

	nop	
.label_404:
	test	r9b, 1
	je	.label_479
	and	al, 1
	jne	.label_479
	cmp	r14, rbp
	jae	.label_482
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_482:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_477
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_477:
	add	r14, 2
	xor	r9d, r9d
.label_479:
	mov	ebx, r15d
.label_448:
	cmp	r14, rbp
	jae	.label_367
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_367:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_373
.label_405:
	xor	r13d, r13d
	jmp	.label_365
	.section	.text
	.align	16
	#Procedure 0x405441
	.globl sub_405441
	.type sub_405441, @function
sub_405441:

	nop	word ptr cs:[rax + rax]
.label_410:
	mov	rcx, r12
.label_414:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_383
	or	al, dl
	jne	.label_383
	mov	r11, rcx
	jmp	.label_372
.label_369:
	mov	eax, 2
.label_461:
	mov	qword ptr [rsp + 0x38], rax
.label_372:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_484:
	mov	r14, rax
.label_455:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_364:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_487
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_422
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_422
	inc	rdx
	nop	dword ptr [rax + rax]
.label_401:
	cmp	r14, rbp
	jae	.label_434
	mov	byte ptr [rcx + r14], al
.label_434:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_401
	jmp	.label_422
.label_381:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_484
.label_487:
	mov	rcx, qword ptr [rsp + 0x10]
.label_422:
	cmp	r14, rbp
	jae	.label_455
	mov	byte ptr [rcx + r14], 0
	jmp	.label_455
.label_413:
	mov	eax, 5
	jmp	.label_461
.label_420:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405590

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40559c
	.globl sub_40559c
	.type sub_40559c, @function
sub_40559c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055a0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055c3
	.globl sub_4055c3
	.type sub_4055c3, @function
sub_4055c3:

	nop	word ptr cs:[rax + rax]
.label_488:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4055d5
	.globl sub_4055d5
	.type sub_4055d5, @function
sub_4055d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055e3

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_488
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055f0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055f5
	.globl sub_4055f5
	.type sub_4055f5, @function
sub_4055f5:

	nop	word ptr cs:[rax + rax]
.label_489:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405606
	.globl sub_405606
	.type sub_405606, @function
sub_405606:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40560b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_489
	test	rdx, rdx
	je	.label_489
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405630

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, esi
	mov	r15, rdi
	mov	r13, qword ptr [r15]
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp + 0x70], rdi
	je	.label_501
	call	dirfd
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	js	.label_508
	mov	dword ptr [rsp], ebx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	lea	rbp, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_514
.label_501:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_522
	mov	edi, dword ptr [r15 + 0x2c]
.label_522:
	mov	rsi, qword ptr [r13 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_526
	test	al, 1
	je	.label_527
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_526
.label_527:
	mov	edx, 0x20000
.label_526:
	lea	rcx, [rsp + 4]
	call	opendirat
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_534
	mov	dword ptr [rsp], ebx
	lea	rcx, [r15 + 0x48]
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 0xb
	mov	rbp, r13
	mov	r12, rcx
	jne	.label_536
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rbx, rbp
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_543
.label_508:
	mov	rdi, qword ptr [r13 + 0x18]
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
.label_534:
	xor	r14d, r14d
	cmp	ebx, 3
	jne	.label_519
	mov	word ptr [r13 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r13 + 0x40], eax
	jmp	.label_491
.label_536:
	mov	rbx, rbp
	test	byte ptr [rcx + 1], 1
	je	.label_543
	mov	rdi, r15
	mov	rbp, rbx
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_553
	mov	edi, 0x18
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_557
	mov	rax, rbx
	movups	xmm0, xmmword ptr [rax + 0x78]
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x58]
	mov	rsi, rbp
	call	hash_insert
	mov	r14, rax
	cmp	r14, rbp
	je	.label_543
	mov	rdi, rbp
	call	free
	test	r14, r14
	je	.label_557
	mov	rax, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	mov	qword ptr [rcx], rax
	mov	word ptr [rcx + 0x70], 2
	jmp	.label_543
.label_553:
	mov	rdi, qword ptr [r15 + 0x58]
	lea	rsi, [rbp + 0x78]
	call	cycle_check
	test	al, al
	je	.label_543
	mov	rax, rbx
	mov	qword ptr [rax], rax
	mov	word ptr [rax + 0x70], 2
.label_543:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	cmp	dword ptr [rsp], 2
	mov	r13, rbx
	mov	rbp, r12
	je	.label_511
	mov	eax, dword ptr [rbp]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_499
	cmp	qword ptr [r13 + 0x88], 2
	jne	.label_499
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, r13
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_559
	cmp	rax, 0x9fa0
	je	.label_499
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_499
	cmp	rax, 0x5346414f
	je	.label_499
	jmp	.label_511
.label_557:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_491
.label_559:
	test	rax, rax
	je	.label_499
	cmp	rax, 0x6969
	jne	.label_511
.label_499:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14b, 1
	jmp	.label_517
.label_511:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14d, 0
	jne	.label_520
.label_517:
	mov	r15, r13
	test	byte ptr [rbp + 1], 2
	mov	ebp, dword ptr [rsp + 4]
	je	.label_523
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
.label_523:
	test	ebp, ebp
	js	.label_529
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_538
.label_529:
	and	bl, r14b
	cmp	bl, 1
	jne	.label_535
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_535:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	rbp, r12
	mov	eax, dword ptr [rbp]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_542
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_542
	call	close
.label_542:
	mov	r13, rbx
	mov	qword ptr [r13 + 0x18], 0
.label_520:
	mov	dword ptr [rsp + 0xc], 0
.label_514:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r13 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	byte ptr [rbp], 4
	je	.label_548
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x20], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_548:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x38], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x78], rcx
	mov	rax, qword ptr [r13 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x88], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x80], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	dword ptr [rsp + 8], 0
	xor	eax, eax
	xor	r14d, r14d
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x30], r13
.label_498:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	je	.label_512
	mov	qword ptr [rsp + 0x90], rax
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_504:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_490
	mov	rcx, r13
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_494
	cmp	byte ptr [r13], 0x2e
	jne	.label_494
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_500
	test	al, al
	je	.label_546
	jmp	.label_494
	.section	.text
	.align	16
	#Procedure 0x405a39
	.globl sub_405a39
	.type sub_405a39, @function
sub_405a39:

	nop	dword ptr [rax]
.label_500:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_494
.label_546:
	mov	r13, rcx
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_504
	jmp	.label_506
	.section	.text
	.align	16
	#Procedure 0x405a58
	.globl sub_405a58
	.type sub_405a58, @function
sub_405a58:

	nop	dword ptr [rax + rax]
.label_494:
	mov	qword ptr [rsp + 0x50], r12
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_541
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x68], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x78]
	cmp	rbx, rax
	jae	.label_524
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_540
	.section	.text
	.align	16
	#Procedure 0x405b08
	.globl sub_405b08
	.type sub_405b08, @function
sub_405b08:

	nop	dword ptr [rax + rax]
.label_524:
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_544
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_545
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_547
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	test	byte ptr [rbp], 4
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_549
.label_547:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
.label_549:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
.label_540:
	add	rbx, rdx
	mov	r13, rbp
	jb	.label_555
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbp], 4
	jne	.label_558
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_562
	.section	.text
	.align	16
	#Procedure 0x405bcf
	.globl sub_405bcf
	.type sub_405bcf, @function
sub_405bcf:

	nop	
.label_558:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x68]
	call	memmove
	mov	rbp, r13
.label_562:
	mov	edx, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	je	.label_493
	mov	eax, edx
	and	eax, 0x400
	jne	.label_493
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	rbp, r13
	mov	word ptr [r12 + 0x70], ax
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_497
	.section	.text
	.align	16
	#Procedure 0x405c28
	.globl sub_405c28
	.type sub_405c28, @function
sub_405c28:

	nop	dword ptr [rax + rax]
.label_493:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_518
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_518:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	r14, qword ptr [rsp + 0x40]
	ja	.label_505
	mov	eax, dword ptr [(rcx * 4) + label_510]
.label_505:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_497:
	mov	qword ptr [r12 + 0x10], 0
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	mov	rax, r12
	je	.label_539
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rcx
.label_539:
	mov	rbx, rax
	cmp	r14, 0x2710
	jne	.label_495
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_495
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, qword ptr [rsp + 0x30]
	call	filesystem_type
	cmp	rax, 0x6969
	je	.label_532
	cmp	rax, 0x1021994
	je	.label_532
	mov	dword ptr [rsp + 8], 0
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	mov	rbp, r13
	je	.label_495
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	jmp	.label_495
.label_532:
	mov	dword ptr [rsp + 8], 0
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_495:
	inc	r14
	cmp	qword ptr [rsp + 0x58], r14
	mov	rax, r12
	mov	r13, qword ptr [rsp + 0x30]
	mov	r12, rbx
	ja	.label_498
	jmp	.label_512
.label_490:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x40]
	je	.label_565
	mov	dword ptr [r13 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x70]
	or	rax, r14
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r13 + 0x70], cx
.label_565:
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_512
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
	jmp	.label_512
.label_506:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x40]
.label_512:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_554
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_556
	.section	.text
	.align	16
	#Procedure 0x405d92
	.globl sub_405d92
	.type sub_405d92, @function
sub_405d92:

	nop	word ptr cs:[rax + rax]
.label_561:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_556:
	test	rcx, rcx
	je	.label_560
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_561
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_561
.label_560:
	cmp	qword ptr [r12 + 0x58], 0
	js	.label_554
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_492:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_564
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_564:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_567
	mov	rdx, qword ptr [rcx + 8]
.label_567:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_492
.label_554:
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_496
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	r14, r14
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_496:
	cmp	qword ptr [rsp + 0x70], 0
	jne	.label_503
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_503
	cmp	dword ptr [rsp], 1
	je	.label_507
	test	r14, r14
	jne	.label_503
.label_507:
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_509
	mov	rsi, qword ptr [r13 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_230
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_515
.label_509:
	mov	rdi, r15
	call	restore_initial_cwd
.label_515:
	mov	rcx, rbp
	test	eax, eax
	je	.label_503
	mov	word ptr [r13 + 0x70], 7
	or	byte ptr [rcx + 1], 0x20
	xor	r14d, r14d
	test	r12, r12
	je	.label_519
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_530:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_525
	call	closedir
.label_525:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_530
	jmp	.label_519
.label_503:
	test	r14, r14
	je	.label_531
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_533
	cmp	r14, 2
	jb	.label_537
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_537
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	jmp	.label_519
.label_531:
	cmp	dword ptr [rsp], 3
	jne	.label_528
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 4
	je	.label_528
	movzx	eax, ax
	cmp	eax, 7
	je	.label_528
	mov	word ptr [r13 + 0x70], 6
.label_528:
	xor	r14d, r14d
	test	r12, r12
	je	.label_519
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_552:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_551
	call	closedir
.label_551:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_552
	jmp	.label_519
.label_533:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	mov	qword ptr [rbx], 0
	jmp	.label_519
.label_537:
	mov	r14, r12
	jmp	.label_519
.label_538:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	r13, rax
	jmp	.label_514
.label_555:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_563
	nop	word ptr [rax + rax]
.label_566:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_550
	call	closedir
.label_550:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_566
.label_563:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [r13 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_491
.label_544:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_502
.label_545:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_502:
	mov	qword ptr [rsp + 0x48], r12
.label_541:
	mov	r12, qword ptr [rsp + 0x30]
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_513
	nop	word ptr cs:[rax + rax]
.label_521:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_516
	call	closedir
.label_516:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_521
.label_513:
	mov	rbx, r12
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x28]
	or	byte ptr [rax + 1], 0x20
	mov	dword ptr [r15], r14d
.label_491:
	xor	r14d, r14d
.label_519:
	mov	rax, r14
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060e0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060f0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_569
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_568
	mov	dword ptr [r14], ebp
	jmp	.label_569
.label_568:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_569:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40613f
	.globl sub_40613f
	.type sub_40613f, @function
sub_40613f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406140

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
	mov	esi, OFFSET FLAT:label_570
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_577
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_576:
	test	r15, r15
	je	.label_575
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_571
.label_575:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_578
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_573
	.section	.text
	.align	16
	#Procedure 0x4061d2
	.globl sub_4061d2
	.type sub_4061d2, @function
sub_4061d2:

	nop	word ptr cs:[rax + rax]
.label_574:
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
	.align	16
	#Procedure 0x4061f8
	.globl sub_4061f8
	.type sub_4061f8, @function
sub_4061f8:

	nop	word ptr cs:[rax + rax]
.label_571:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_572
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_573:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_576
.label_577:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_574
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
	.section	.text
	.align	16
	#Procedure 0x406270

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_579
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_579:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406292
	.globl sub_406292
	.type sub_406292, @function
sub_406292:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062a0
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
	#Procedure 0x4062af
	.globl sub_4062af
	.type sub_4062af, @function
sub_4062af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4062b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	16
	#Procedure 0x40631e
	.globl sub_40631e
	.type sub_40631e, @function
sub_40631e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406320

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406324
	.globl sub_406324
	.type sub_406324, @function
sub_406324:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406330
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_580
	test	rsi, rsi
	je	.label_580
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_580:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4063a0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_581
	xor	ebx, ebx
.label_585:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_583
	test	r13, r13
	je	.label_583
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_581
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_582:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_584
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_582
	jmp	.label_581
	.section	.text
	.align	16
	#Procedure 0x40640c
	.globl sub_40640c
	.type sub_40640c, @function
sub_40640c:

	nop	dword ptr [rax]
.label_584:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_583:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_585
.label_581:
	mov	rax, rbx
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
	#Procedure 0x406433
	.globl sub_406433
	.type sub_406433, @function
sub_406433:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406440
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_586
	test	rdx, rdx
	je	.label_586
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_586:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4064ae
	.globl sub_4064ae
	.type sub_4064ae, @function
sub_4064ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4064b0
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
	#Procedure 0x4064bf
	.globl sub_4064bf
	.type sub_4064bf, @function
sub_4064bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4064c0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_71
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_587
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_587:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406502
	.globl sub_406502
	.type sub_406502, @function
sub_406502:

	nop	word ptr cs:[rax + rax]
.label_594:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_588:
	test	rbx, rbx
	jne	.label_594
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_593
.label_589:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_595
.label_597:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_597
.label_595:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x406555
	.globl sub_406555
	.type sub_406555, @function
sub_406555:

	nop	word ptr cs:[rax + rax]
.label_596:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_592
	.section	.text
	.align	16
	#Procedure 0x406568
	.globl sub_406568
	.type sub_406568, @function
sub_406568:

	nop	
.label_593:
	add	r15, 0x10
.label_598:
	cmp	r15, rax
	jae	.label_596
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_593
	test	r15, r15
	je	.label_593
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_588
.label_591:
	add	r15, 0x10
.label_592:
	cmp	r15, rax
	jae	.label_589
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_591
	nop	word ptr cs:[rax + rax]
.label_590:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_590
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_591
	.section	.text
	.align	16
	#Procedure 0x4065c0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_596
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_596
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_598
	.section	.text
	.align	16
	#Procedure 0x4065df
	.globl sub_4065df
	.type sub_4065df, @function
sub_4065df:

	nop	
.label_601:
	xor	ebx, ebx
.label_600:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065f3
	.globl sub_4065f3
	.type sub_4065f3, @function
sub_4065f3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065fb

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rcx, qword ptr [rip + stdin]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_601
	mov	rdi, qword ptr [rsp]
	cmp	byte ptr [rdi + rax - 1], 0xa
	jne	.label_599
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp]
.label_599:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_600
	.section	.text
	.align	16
	#Procedure 0x406650

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_607
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_612
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_618
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_604
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_617
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_616
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_608
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_609
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_610
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_611
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_77
	mov	ecx, OFFSET FLAT:label_311
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_615
	mov	esi, OFFSET FLAT:label_603
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_615
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_619
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_615:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_613
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_311
	mov	ecx, OFFSET FLAT:label_76
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_620
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_76
	mov	ecx, OFFSET FLAT:label_602
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_607:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_614
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
	.align	16
	#Procedure 0x4068d8
	.globl sub_4068d8
	.type sub_4068d8, @function
sub_4068d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068e0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4068ee
	.globl sub_4068ee
	.type sub_4068ee, @function
sub_4068ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4068f0

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
	js	.label_625
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_628
	cmp	r12d, 0x7fffffff
	je	.label_623
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
	jne	.label_626
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_626:
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
.label_628:
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
	jbe	.label_624
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_627
.label_624:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_622
	mov	rdi, r14
	call	free
.label_622:
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
.label_627:
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
.label_625:
	call	abort
.label_623:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406aad
	.globl sub_406aad
	.type sub_406aad, @function
sub_406aad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ab0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x406abe
	.globl sub_406abe
	.type sub_406abe, @function
sub_406abe:

	nop	
.label_629:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406ac5
	.globl sub_406ac5
	.type sub_406ac5, @function
sub_406ac5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406acd
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
	je	.label_629
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
.label_632:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406b35
	.globl sub_406b35
	.type sub_406b35, @function
sub_406b35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b43

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_631
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_632
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_631:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_630
	cmp	qword ptr [rax + 0x58], 0
	js	.label_630
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_632
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_630
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_630
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_630:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bc0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bd0

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_639
	test	r14, r14
	je	.label_633
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_637:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_640
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_635
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_636
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_640
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_640
.label_636:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_640:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_637
	jmp	.label_638
.label_633:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_641:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_634
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_635
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_634
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_634:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_641
.label_638:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_635:
	mov	rax, rbx
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
	#Procedure 0x406d36
	.globl sub_406d36
	.type sub_406d36, @function
sub_406d36:

	nop	dword ptr [rax + rax]
.label_639:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_638
.label_645:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406d55
	.globl sub_406d55
	.type sub_406d55, @function
sub_406d55:

	nop	word ptr [rax + rax]
.label_647:
	test	rcx, rcx
	jne	.label_646
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_646:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_645
.label_648:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_643
	test	rbx, rbx
	jne	.label_643
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406daa
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_647
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_644
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_648
.label_644:
	call	xalloc_die
.label_643:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_642
	test	rax, rax
	je	.label_644
.label_642:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406df0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	16
	#Procedure 0x406e44
	.globl sub_406e44
	.type sub_406e44, @function
sub_406e44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e50
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e55
	.globl sub_406e55
	.type sub_406e55, @function
sub_406e55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e60

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_649
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_650
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_650
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_651
.label_650:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_652
	mov	al, 1
	test	rdx, rdx
	je	.label_651
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_652:
	xor	eax, eax
.label_651:
	ret	
.label_649:
	push	rax
	mov	edi, OFFSET FLAT:label_653
	mov	esi, OFFSET FLAT:label_654
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_655
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x406ec5
	.globl sub_406ec5
	.type sub_406ec5, @function
sub_406ec5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ed0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_656
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_657
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_658
	jmp	.label_659
.label_657:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_660
.label_659:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_656:
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
	#Procedure 0x406f93
	.globl sub_406f93
	.type sub_406f93, @function
sub_406f93:

	nop	word ptr cs:[rax + rax]
.label_661:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406fa5
	.globl sub_406fa5
	.type sub_406fa5, @function
sub_406fa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fb4
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
	je	.label_661
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
	.section	.text
	.align	16
	#Procedure 0x407010
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_672
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_669
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_668
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_669
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_669
.label_672:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_669
.label_668:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_663
	nop	dword ptr [rax]
.label_673:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_670
	call	closedir
.label_670:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_673
.label_663:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_675
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_675:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_665
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_665
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_665
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_666
	mov	edi, OFFSET FLAT:label_215
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_671
.label_665:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_669:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_666:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_215
	xor	eax, eax
	call	openat_safer
.label_671:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_674
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_664
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_662
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_669
.label_674:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_669
.label_664:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_678
	cmp	esi, -0x64
	jne	.label_667
.label_678:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_676
	mov	edi, eax
	call	close
.label_676:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_677
.label_662:
	mov	edi, r15d
	call	close
.label_677:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_669
.label_667:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4071b7
	.globl sub_4071b7
	.type sub_4071b7, @function
sub_4071b7:

	nop	word ptr [rax + rax]
.label_679:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4071c6
	.globl sub_4071c6
	.type sub_4071c6, @function
sub_4071c6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071ce
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_682
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x4071e0
	.globl sub_4071e0
	.type sub_4071e0, @function
sub_4071e0:

	nop	word ptr cs:[rax + rax]
.label_680:
	add	rcx, 0x10
.label_681:
	cmp	rcx, rdx
	jae	.label_679
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_680
.label_682:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407200
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_683
	xor	eax, eax
.label_685:
	cmp	qword ptr [r9], 0
	je	.label_684
	test	r9, r9
	je	.label_684
	mov	r8, r9
	nop	
.label_686:
	cmp	rax, rdx
	jae	.label_683
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_686
	mov	r8, qword ptr [rdi + 8]
.label_684:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_685
.label_683:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407246
	.globl sub_407246
	.type sub_407246, @function
sub_407246:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407250

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_687:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_687
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_690
	.section	.text
	.align	16
	#Procedure 0x407273
	.globl sub_407273
	.type sub_407273, @function
sub_407273:

	nop	word ptr cs:[rax + rax]
.label_689:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407284
	.globl sub_407284
	.type sub_407284, @function
sub_407284:

	nop	dword ptr [rax]
.label_688:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_690:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_688
	test	dl, dl
	je	.label_689
	mov	ecx, esi
	and	cl, 1
	je	.label_691
	xor	esi, esi
.label_691:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_688
	.section	.text
	.align	16
	#Procedure 0x4072b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4072c1
	.globl sub_4072c1
	.type sub_4072c1, @function
sub_4072c1:

	nop	word ptr cs:[rax + rax]
.label_693:
	mov	eax, ebx
.label_692:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072dd
	.globl sub_4072dd
	.type sub_4072dd, @function
sub_4072dd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072ec

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_693
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_692
	.section	.text
	.align	16
	#Procedure 0x407320

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_694
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_694:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40734c
	.globl sub_40734c
	.type sub_40734c, @function
sub_40734c:

	nop	dword ptr [rax]
.label_695:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407355
	.globl sub_407355
	.type sub_407355, @function
sub_407355:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407359

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
	je	.label_695
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
.label_696:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4073c6
	.globl sub_4073c6
	.type sub_4073c6, @function
sub_4073c6:

	nop	
.label_697:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073d1

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_696
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_697
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_698:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4073f5
	.globl sub_4073f5
	.type sub_4073f5, @function
sub_4073f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073ff
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
	je	.label_699
	test	r14, r14
	je	.label_698
.label_699:
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
	.align	16
	#Procedure 0x407430
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_700]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x407444
	.globl sub_407444
	.type sub_407444, @function
sub_407444:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407450

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
	.align	16
	#Procedure 0x407469
	.globl sub_407469
	.type sub_407469, @function
sub_407469:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407470
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40747a
	.globl sub_40747a
	.type sub_40747a, @function
sub_40747a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407480

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_701
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_703
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_701
.label_703:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_701
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_702
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_702:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_701:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4074f4
	.globl sub_4074f4
	.type sub_4074f4, @function
sub_4074f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407500
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_704:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_704
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x407521
	.globl sub_407521
	.type sub_407521, @function
sub_407521:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407530

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_705
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_705
	test	byte ptr [rbx + 1], 1
	je	.label_705
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_705:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x407563
	.globl sub_407563
	.type sub_407563, @function
sub_407563:

	nop	word ptr cs:[rax + rax]
.label_707:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_706
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_706:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075a4
	.globl sub_4075a4
	.type sub_4075a4, @function
sub_4075a4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4075a6

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
	jne	.label_708
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_708
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_707
.label_708:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4075e0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_719
	test	dl, dl
	je	.label_710
	nop	dword ptr [rax]
.label_721:
	cmp	qword ptr [r13], 0
	je	.label_716
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_718
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_714:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_725
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_726
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_712
	.section	.text
	.align	16
	#Procedure 0x40766a
	.globl sub_40766a
	.type sub_40766a, @function
sub_40766a:

	nop	word ptr [rax + rax]
.label_726:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_712:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_714
	mov	rax, qword ptr [r15 + 8]
.label_718:
	mov	qword ptr [r13 + 8], 0
.label_716:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_721
	jmp	.label_719
	.section	.text
	.align	16
	#Procedure 0x4076b4
	.globl sub_4076b4
	.type sub_4076b4, @function
sub_4076b4:

	nop	word ptr cs:[rax + rax]
.label_710:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_709
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_715
	nop	word ptr [rax + rax]
.label_711:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_725
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_728
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_724
	.section	.text
	.align	16
	#Procedure 0x40771a
	.globl sub_40771a
	.type sub_40771a, @function
sub_40771a:

	nop	word ptr [rax + rax]
.label_728:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_724:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_711
	mov	r12, qword ptr [r13]
.label_715:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_717
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_722
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_727
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_729
	.section	.text
	.align	16
	#Procedure 0x407788
	.globl sub_407788
	.type sub_407788, @function
sub_407788:

	nop	dword ptr [rax + rax]
.label_722:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_720
.label_727:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_723
.label_729:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_720:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_709:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_710
.label_719:
	mov	al, 1
.label_713:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_723:
	xor	eax, eax
	jmp	.label_713
.label_725:
	call	abort
.label_717:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4077f9
	.globl sub_4077f9
	.type sub_4077f9, @function
sub_4077f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407800
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_730
	test	rdx, rdx
	je	.label_730
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_730:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40786a
	.globl sub_40786a
	.type sub_40786a, @function
sub_40786a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407870

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_732
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_732
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_733
	cmp	rsi, r14
	je	.label_746
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_749
	mov	rax, qword ptr [r12]
.label_745:
	test	rax, rax
	jne	.label_751
	jmp	.label_733
.label_746:
	mov	rax, r14
.label_751:
	xor	ebp, ebp
	test	r15, r15
	je	.label_734
	mov	qword ptr [r15], rax
	jmp	.label_734
.label_749:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_733
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_740:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_731
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_738
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_740
.label_733:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_743
	cvtsi2ss	xmm1, rax
	jmp	.label_748
.label_743:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_748:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_753
	cvtsi2ss	xmm0, rcx
	jmp	.label_759
.label_753:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_759:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_736
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_752
	ucomiss	xmm2, dword ptr [rip + label_294]
	jbe	.label_739
	movss	xmm3, dword ptr [rip + label_297]
	ucomiss	xmm3, xmm2
	jbe	.label_739
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_301]
	jbe	.label_739
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_739
	addss	xmm3, dword ptr [rip + label_294]
	ucomiss	xmm2, xmm3
	jbe	.label_739
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_307]
	ucomiss	xmm5, xmm4
	jb	.label_739
	ucomiss	xmm4, xmm3
	ja	.label_758
.label_739:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_760]
	jmp	.label_758
.label_752:
	mov	eax, OFFSET FLAT:default_tuning
.label_758:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_736
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_737
	mulss	xmm0, xmm2
.label_737:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_742]
	jae	.label_734
	movss	xmm1, dword ptr [rip + label_286]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_734
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_732
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_736
	cmp	rsi, r14
	mov	rax, r14
	je	.label_735
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_744
	mov	rax, qword ptr [r12]
.label_735:
	test	rax, rax
	jne	.label_747
.label_736:
	cmp	qword ptr [r12], 0
	je	.label_741
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_750
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_754
.label_741:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_756]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_757
.label_750:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_734
.label_754:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_757:
	mov	ebp, 1
.label_734:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_731:
	mov	rax, r14
	jmp	.label_745
.label_738:
	mov	rax, qword ptr [rbp]
	jmp	.label_745
.label_744:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_736
	lea	rbp, [rbx + rbp + 8]
.label_762:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_755
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_761
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_762
	jmp	.label_736
.label_755:
	mov	rax, r14
	jmp	.label_735
.label_761:
	mov	rax, qword ptr [rbp]
	jmp	.label_735
.label_732:
	call	abort
.label_747:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407ba1
	.globl sub_407ba1
	.type sub_407ba1, @function
sub_407ba1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bb0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_784
	mov	eax, ebx
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_784
	test	bl, 0x12
	je	.label_784
	mov	edi, 0x80
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_796
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	or	eax, 4
	test	bl, 2
	cmove	eax, ebx
	mov	dword ptr [r15 + 0x48], eax
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_764
	mov	r13d, ebx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_781:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_781
	inc	rbp
	mov	ebx, r13d
.label_764:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_789
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	r13, qword ptr [r12]
	xor	r12d, r12d
	test	r13, r13
	je	.label_791
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_795
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_791:
	mov	byte ptr [rsp + 0xf], 1
	mov	qword ptr [rsp + 0x28], r14
	test	r14, r14
	je	.label_792
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_792:
	xor	r14d, r14d
	test	r13, r13
	je	.label_777
	test	bh, 8
	mov	qword ptr [rsp + 0x18], r12
	jne	.label_782
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_783:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	cmp	rbx, 3
	jb	.label_768
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	jne	.label_768
	nop	dword ptr [rax]
.label_790:
	cmp	byte ptr [r13 + rbx - 2], 0x2f
	jne	.label_768
	dec	rbx
	cmp	rbx, 1
	ja	.label_790
	nop	word ptr cs:[rax + rax]
.label_768:
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r15, rax
	mov	r14, rbp
	test	r15, r15
	je	.label_797
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	dword ptr [r15 + 0x40], 0
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	mov	rbx, r14
	test	rbx, rbx
	setne	al
	test	byte ptr [rsp + 0xf], al
	je	.label_765
	mov	word ptr [r15 + 0x70], 0xb
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_780
.label_765:
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_780:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_787
	mov	r14, r15
	mov	qword ptr [r15 + 0x10], rbx
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_773
.label_787:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_773
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r15
	mov	r14, rbx
.label_773:
	inc	r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	mov	rbp, r14
	jne	.label_783
	jmp	.label_785
.label_784:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_788:
	xor	eax, eax
.label_796:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_789:
	mov	rdi, qword ptr [r15 + 0x20]
	jmp	.label_766
.label_782:
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r12d, r12d
	nop	
.label_767:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_772
	mov	r14, rbx
	add	r14, 0x108
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_775
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_794
.label_775:
	xor	edx, edx
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_794:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_799
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_801
.label_799:
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	mov	r14, rbx
	je	.label_801
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbx
	mov	r14, r15
.label_801:
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + r12*8 + 8]
	inc	r12
	test	r13, r13
	mov	r15, r14
	jne	.label_767
.label_785:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_770
	cmp	r12, 2
	jb	.label_770
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r12
	call	fts_sort
	mov	r14, rax
.label_770:
	mov	r12, qword ptr [rsp + 0x18]
.label_777:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_798
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], r15
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	mov	qword ptr [rax + 0x10], r14
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_778
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_800
	jmp	.label_763
.label_795:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_793
.label_798:
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [r15], 0
	jmp	.label_763
.label_778:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	je	.label_763
	mov	rdi, rax
	call	cycle_check_init
.label_800:
	mov	eax, dword ptr [r15 + 0x48]
	test	ax, 0x204
	jne	.label_769
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_771
	mov	edi, OFFSET FLAT:label_215
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_774
.label_772:
	mov	r14, r15
.label_797:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x18]
.label_763:
	test	r14, r14
	je	.label_776
	nop	dword ptr [rax]
.label_786:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_779
	call	closedir
.label_779:
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_786
.label_776:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [r15 + 0x20]
.label_793:
	mov	rdi, rbp
.label_766:
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_788
.label_771:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:label_215
	xor	eax, eax
	call	openat_safer
.label_774:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_769
	or	byte ptr [r15 + 0x48], 4
.label_769:
	mov	rdi, r15
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r15
	jmp	.label_796
	.section	.text
	.align	16
	#Procedure 0x4081e9
	.globl sub_4081e9
	.type sub_4081e9, @function
sub_4081e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4081f0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_819
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_807
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_807
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_807:
	test	eax, eax
	sete	r14b
	jmp	.label_811
.label_819:
	xor	r14d, r14d
.label_811:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_812
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_813
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_813
	and	eax, 0x200
	je	.label_813
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_813
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_813:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_803
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_805
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_810
.label_812:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_804
	and	eax, 0x200
	je	.label_804
	mov	edi, r13d
	call	close
	jmp	.label_804
.label_805:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_810:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_804
.label_803:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_820
	test	rbx, rbx
	je	.label_802
	cmp	byte ptr [rbx], 0x2e
	jne	.label_802
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_802
	cmp	byte ptr [rbx + 2], 0
	jne	.label_802
.label_820:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_808
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_809
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_809
	mov	eax, dword ptr [r15 + 0x48]
.label_802:
	test	ah, 2
	jne	.label_814
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_815
.label_814:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_816
	cmp	esi, -0x64
	jne	.label_817
.label_816:
	test	r14b, r14b
	je	.label_818
	test	al, 4
	jne	.label_806
	test	esi, esi
	js	.label_806
	mov	edi, esi
	jmp	.label_821
.label_809:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_808:
	mov	ebp, 0xffffffff
.label_815:
	test	r13d, r13d
	jns	.label_804
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_804
.label_818:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_806
	mov	edi, eax
.label_821:
	call	close
.label_806:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_804:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_817:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4083d9
	.globl sub_4083d9
	.type sub_4083d9, @function
sub_4083d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083e0

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_822
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_824
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_825
.label_824:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_827
	mov	rax, qword ptr [rax + 8]
	jmp	.label_822
.label_826:
	mov	rdi, rbp
	call	free
.label_823:
	mov	rax, qword ptr [rsp]
.label_822:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408478
	.globl sub_408478
	.type sub_408478, @function
sub_408478:

	nop	word ptr [rax + rax]
.label_827:
	mov	r12b, 1
	mov	r14, rbp
.label_825:
	xor	eax, eax
	test	r15d, r15d
	js	.label_822
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_822
	test	r12b, r12b
	je	.label_823
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_823
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_826
	cmp	rax, rbp
	je	.label_823
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4084e0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_828
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_829:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_829
.label_828:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408513
	.globl sub_408513
	.type sub_408513, @function
sub_408513:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408520

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
	je	.label_842
	mov	edx, OFFSET FLAT:label_833
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_839
.label_842:
	mov	edx, OFFSET FLAT:label_840
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_839:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_844
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
	mov	esi, OFFSET FLAT:label_841
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_845
	jmp	qword ptr [(r12 * 8) + label_846]
.label_1175:
	add	rsp, 8
	jmp	.label_832
.label_845:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_836
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
	jmp	.label_832
.label_1176:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_831
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
.label_1177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_837
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
.label_1178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_834
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
.label_1179:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_848
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
	jmp	.label_832
.label_1180:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_847
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
	jmp	.label_832
.label_1181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_830
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
	jmp	.label_832
.label_1182:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_835
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
	jmp	.label_832
.label_1184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_838
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
	jmp	.label_832
.label_1183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_843
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
.label_832:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408878
	.globl sub_408878
	.type sub_408878, @function
sub_408878:

	nop	dword ptr [rax + rax]
.label_856:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_849
	.section	.text
	.align	16
	#Procedure 0x408890
	.globl sub_408890
	.type sub_408890, @function
sub_408890:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40889b

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_855
	test	al, 1
	je	.label_855
	mov	dl, 1
.label_855:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_858
	and	eax, 2
	jne	.label_858
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_850
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_851
.label_858:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_850
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_851
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_856
	mov	eax, dword ptr [r14]
.label_851:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_849:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_850:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_857
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_849
	cmp	ecx, 0x4000
	jne	.label_852
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_853
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_853
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_853:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_849
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_854
	cmp	dl, 0x2e
	jne	.label_849
	test	ecx, 0xff0000
	jne	.label_849
.label_854:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_849
.label_852:
	mov	ax, 3
	jmp	.label_849
.label_857:
	mov	ax, 8
	jmp	.label_849
	.section	.text
	.align	16
	#Procedure 0x408a20
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_864
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_867
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_868:
	cmp	qword ptr [rax], 0
	je	.label_860
	mov	rdx, rax
	nop	dword ptr [rax]
.label_866:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_866
	inc	r10
.label_860:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_869
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_862:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_862
	inc	r10
.label_869:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_868
	jmp	.label_865
.label_867:
	xor	r10d, r10d
.label_865:
	test	r8, r8
	je	.label_864
	cmp	qword ptr [rax], 0
	je	.label_864
	nop	dword ptr [rax]
.label_859:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_859
	inc	r10
.label_864:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_861
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_863
.label_861:
	xor	eax, eax
.label_863:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ae0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_870
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_871
	test	rax, rax
	je	.label_870
.label_871:
	pop	rbx
	ret	
.label_870:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408b15
	.globl sub_408b15
	.type sub_408b15, @function
sub_408b15:

	nop	word ptr cs:[rax + rax]
.label_874:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b29
	.globl sub_408b29
	.type sub_408b29, @function
sub_408b29:

	nop	word ptr [rax + rax]
.label_873:
	mov	edi, eax
	call	close
.label_872:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_874
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_873
	jmp	.label_872
.label_877:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_875
	mov	edi, eax
	call	close
.label_875:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_878:
	xor	eax, eax
.label_876:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_872
	.section	.text
	.align	16
	#Procedure 0x408b79
	.globl sub_408b79
	.type sub_408b79, @function
sub_408b79:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b7f

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_878
	test	ah, 2
	jne	.label_877
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_876
.label_879:
	mov	esi, OFFSET FLAT:label_660
.label_880:
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
	.align	16
	#Procedure 0x408bf3
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
	je	.label_879
	mov	esi, OFFSET FLAT:label_658
	jmp	.label_880
	.section	.text
	.align	16
	#Procedure 0x408c10

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_885
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_888
.label_885:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_888:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_887
	cmp	r10d, 0x29
	jae	.label_884
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_886
.label_884:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_886:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_887
	cmp	r10d, 0x29
	jae	.label_882
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_883
.label_882:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_883:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_887
	cmp	r10d, 0x29
	jae	.label_893
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_881
.label_893:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_881:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_887
	cmp	r10d, 0x29
	jae	.label_891
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_892
.label_891:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_892:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_887
	cmp	r10d, 0x29
	jae	.label_889
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_890
.label_889:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_890:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_887
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_887
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_887
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_887
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_887:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x408df2
	.globl sub_408df2
	.type sub_408df2, @function
sub_408df2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e00

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_894
	cmp	ecx, 0x3fff
	jg	.label_906
	cmp	eax, 0x1000
	je	.label_910
	cmp	eax, 0x2000
	jne	.label_898
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_903
	mov	edx, 5
	jmp	dcgettext
.label_894:
	cmp	eax, 0x8000
	je	.label_896
	cmp	eax, 0xa000
	je	.label_901
	cmp	eax, 0xc000
	jne	.label_898
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_902
	mov	edx, 5
	jmp	dcgettext
.label_906:
	cmp	eax, 0x4000
	je	.label_900
	cmp	eax, 0x6000
	jne	.label_898
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_905
	mov	edx, 5
	jmp	dcgettext
.label_910:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_899
	mov	edx, 5
	jmp	dcgettext
.label_896:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_907
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_909
	mov	edx, 5
	jmp	dcgettext
.label_901:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_908
	mov	edx, 5
	jmp	dcgettext
.label_900:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_895
	mov	edx, 5
	jmp	dcgettext
.label_898:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_904
	mov	edx, 5
	jmp	dcgettext
.label_907:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_897
	mov	edx, 5
	jmp	dcgettext
	.section	.text
	.align	16
	#Procedure 0x408ef4
	.globl sub_408ef4
	.type sub_408ef4, @function
sub_408ef4:

	nop	word ptr cs:[rax + rax]
.label_911:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408f05
	.globl sub_408f05
	.type sub_408f05, @function
sub_408f05:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f09
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_911
	test	rsi, rsi
	je	.label_911
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
	.align	16
	#Procedure 0x408f70
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
	je	.label_912
	mov	qword ptr [rax], rbx
.label_912:
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
	#Procedure 0x40905c
	.globl sub_40905c
	.type sub_40905c, @function
sub_40905c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409060
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_913
	test	rax, rax
	je	.label_914
.label_913:
	pop	rbx
	ret	
.label_914:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40907a
	.globl sub_40907a
	.type sub_40907a, @function
sub_40907a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409080
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
	.align	16
	#Procedure 0x409099
	.globl sub_409099
	.type sub_409099, @function
sub_409099:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4090a0

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
	je	.label_915
	cmp	r15, -2
	jb	.label_915
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_915
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_915:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090f6
	.globl sub_4090f6
	.type sub_4090f6, @function
sub_4090f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409100

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_916
	test	rsi, rsi
	mov	ecx, 1
	je	.label_917
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_917
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_916:
	mov	ecx, 1
.label_917:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40914b
	.globl sub_40914b
	.type sub_40914b, @function
sub_40914b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409150

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_919
	cmp	byte ptr [rax], 0x43
	jne	.label_921
	cmp	byte ptr [rax + 1], 0
	je	.label_918
.label_921:
	mov	esi, OFFSET FLAT:label_920
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_919
.label_918:
	xor	ebx, ebx
.label_919:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409181
	.globl sub_409181
	.type sub_409181, @function
sub_409181:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409190

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_922
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_924
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	nop	word ptr [rax + rax]
.label_923:
	mov	rdi, rbx
	call	readdir
	test	rax, rax
	je	.label_928
	cmp	byte ptr [rax + 0x13], 0x2e
	jne	.label_925
	xor	ecx, ecx
	cmp	byte ptr [rax + 0x14], 0x2e
	sete	cl
	movzx	ecx, byte ptr [rax + rcx + 0x14]
	cmp	cl, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	cl, 0x2f
	je	.label_923
	test	cl, cl
	je	.label_923
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	jne	.label_926
	jmp	.label_927
.label_928:
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
.label_927:
	test	r14d, r14d
	sete	bl
	jmp	.label_922
.label_924:
	mov	edi, ebp
	call	close
	jmp	.label_926
.label_925:
	mov	rdi, rbx
	call	closedir
.label_926:
	xor	ebx, ebx
.label_922:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409246
	.globl sub_409246
	.type sub_409246, @function
sub_409246:

	nop	word ptr cs:[rax + rax]
.label_929:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409255
	.globl sub_409255
	.type sub_409255, @function
sub_409255:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40925b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_930
	test	rax, rax
	je	.label_929
.label_930:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409270

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	xor	ebx, ebx
	test	r15, r15
	je	.label_934
	mov	eax, dword ptr [r14 + 0x48]
	xor	ebx, ebx
	test	ah, 0x20
	jne	.label_934
	movzx	ecx, word ptr [r15 + 0x74]
	mov	word ptr [r15 + 0x74], 3
	cmp	ecx, 1
	je	.label_954
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_955
	mov	ecx, dword ptr [r15 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_939
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_933
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_933
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_959
	mov	edi, OFFSET FLAT:label_215
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_953
.label_954:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	rbx, r15
	jmp	.label_934
.label_955:
	lea	r12, [r15 + 0x70]
	mov	ecx, dword ptr [r15 + 0x70]
	jmp	.label_969
.label_939:
	lea	r12, [r15 + 0x70]
.label_969:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_972
	cmp	edx, 4
	je	.label_973
	test	al, 0x40
	je	.label_975
	mov	rdx, qword ptr [r15 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_973
.label_975:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_977
	test	ah, 0x10
	jne	.label_980
	mov	rcx, qword ptr [r15 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r15
	call	fts_safe_changedir
	test	eax, eax
	je	.label_944
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r15 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_982
	.section	.text
	.align	16
	#Procedure 0x4093b3
	.globl sub_4093b3
	.type sub_4093b3, @function
sub_4093b3:

	nop	word ptr cs:[rax + rax]
.label_972:
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	je	.label_986
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_990
	movzx	eax, word ptr [rbx + 0x74]
	cmp	eax, 4
	mov	r15, rbx
	je	.label_972
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_965
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_932
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_932
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_935
	mov	edi, OFFSET FLAT:label_215
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_941
.label_943:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_982:
	test	rax, rax
	jne	.label_943
	jmp	.label_944
.label_973:
	test	ecx, 0x20000
	je	.label_946
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_946:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_949
	nop	word ptr cs:[rax + rax]
.label_956:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_952
	call	closedir
.label_952:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_956
	mov	qword ptr [r14 + 8], 0
.label_949:
	mov	word ptr [r15 + 0x70], 6
.label_989:
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
	mov	rbx, r15
	jmp	.label_934
.label_986:
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_957
	mov	qword ptr [r14], rbx
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	rbx, rax
	test	rbx, rbx
	je	.label_961
	mov	rdi, r15
	call	free
	jmp	.label_965
.label_990:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_966
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	ebx, ebx
	jmp	.label_934
.label_966:
	test	ax, 0x102
	je	.label_970
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_971
	call	hash_free
	jmp	.label_971
.label_980:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_981:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_979
	call	closedir
.label_979:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_981
	mov	qword ptr [r14 + 8], 0
.label_977:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_983
.label_944:
	mov	rbx, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_965
.label_983:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_934
	cmp	dword ptr [r15 + 0x40], 0
	je	.label_989
	movzx	eax, word ptr [r12]
	cmp	eax, 4
	je	.label_989
	mov	word ptr [r12], 7
	jmp	.label_989
.label_959:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_215
	xor	eax, eax
	call	openat_safer
.label_953:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_931
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_933
.label_961:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_934
	mov	rbx, qword ptr [r15 + 8]
.label_957:
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], -1
	je	.label_937
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 0xb
	je	.label_938
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_940
	movzx	eax, word ptr [rbx + 0x72]
	test	al, 2
	jne	.label_942
	test	al, 1
	jne	.label_947
	mov	rsi, qword ptr [rbx + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_230
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_950
.label_937:
	mov	rdi, rbx
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	ebx, ebx
	jmp	.label_934
.label_931:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
	jmp	.label_933
.label_970:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_971:
	mov	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [rbx + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_960
	cmp	rbp, r15
	jne	.label_962
	cmp	byte ptr [rbx + 0x109], 0
	je	.label_960
.label_962:
	inc	rbp
	mov	rdi, rbp
	call	strlen
	mov	r12, rax
	lea	rdx, [r12 + 1]
	mov	rdi, r15
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rbx + 0x60], r12
.label_960:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	qword ptr [rbx + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_967
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_976
.label_967:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_976
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_976
.label_940:
	mov	rdi, r14
	call	restore_initial_cwd
.label_950:
	test	eax, eax
	je	.label_947
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_947
.label_942:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbp, [rbx + 0x44]
	test	al, 4
	jne	.label_985
	test	ah, 2
	mov	r15d, dword ptr [rbx + 0x44]
	jne	.label_988
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_985
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_985
.label_935:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_215
	xor	eax, eax
	call	openat_safer
.label_941:
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_936
	or	byte ptr [rbx + 0x72], 2
	jmp	.label_932
.label_936:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
.label_932:
	mov	word ptr [rbx + 0x74], 3
.label_965:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [rbx + 0x108]
	mov	rdx, qword ptr [rbx + 0x60]
	inc	rdx
	call	memmove
.label_976:
	mov	r15, rbx
.label_933:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_945
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_948
	cmp	rax, 2
	jne	.label_938
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_951
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_951
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_948
	cmp	rax, 0x58465342
	je	.label_948
.label_951:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_945
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_948
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_948
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_948:
	mov	ax, word ptr [r15 + 0x70]
.label_945:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_963
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_964
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_964:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_958
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_968
	movups	xmm0, xmmword ptr [r15 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r15
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	rbp, rax
	cmp	rbp, rbx
	je	.label_974
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	je	.label_968
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r15], rax
	jmp	.label_978
.label_963:
	mov	rbx, r15
	jmp	.label_934
.label_958:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r15 + 0x78]
	call	cycle_check
	test	al, al
	je	.label_974
	mov	qword ptr [r15], r15
.label_978:
	mov	word ptr [r15 + 0x70], 2
	mov	rbx, r15
	jmp	.label_934
.label_974:
	mov	rbx, r15
	jmp	.label_934
.label_968:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_934
.label_988:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, r15d
	jne	.label_984
	cmp	esi, -0x64
	jne	.label_938
.label_984:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_987
	mov	edi, eax
	call	close
.label_987:
	mov	dword ptr [r14 + 0x2c], r15d
.label_985:
	mov	edi, dword ptr [rbp]
	call	close
.label_947:
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 2
	je	.label_991
	mov	eax, dword ptr [rbx + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [rbx + 0x70], cx
	jne	.label_991
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
.label_991:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	rbx, rax
.label_934:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_938:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409a24
	.globl sub_409a24
	.type sub_409a24, @function
sub_409a24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a30

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1006
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_994
	cvtsi2ss	xmm0, rsi
	jmp	.label_998
.label_994:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_998:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_286]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_742]
	jae	.label_992
.label_1006:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_1002
	.section	.text
	.align	16
	#Procedure 0x409abb
	.globl sub_409abb
	.type sub_409abb, @function
sub_409abb:

	nop	dword ptr [rax + rax]
.label_997:
	add	rbx, 2
.label_1002:
	cmp	rbx, -1
	je	.label_992
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_996
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_1010:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_996
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_1010
.label_996:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_997
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_992
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_1003
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_992
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_1000
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_1003
.label_1000:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_995
	.section	.text
	.align	16
	#Procedure 0x409bde
	.globl sub_409bde
	.type sub_409bde, @function
sub_409bde:

	nop	
.label_1004:
	add	r12, 0x10
.label_995:
	cmp	r12, r15
	jae	.label_1001
	cmp	qword ptr [r12], 0
	je	.label_1004
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_1008
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1005:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_999
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_1007
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_1009
	.section	.text
	.align	16
	#Procedure 0x409c4a
	.globl sub_409c4a
	.type sub_409c4a, @function
sub_409c4a:

	nop	word ptr [rax + rax]
.label_1007:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_1009:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_1005
.label_1008:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_1004
.label_1001:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_993
	mov	rdi, qword ptr [rsp]
	call	free
.label_992:
	xor	ebp, ebp
.label_1003:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_999:
	call	abort
.label_993:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409cba
	.globl sub_409cba
	.type sub_409cba, @function
sub_409cba:

	nop	word ptr [rax + rax]
.label_1014:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1011
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409ce0
	.globl sub_409ce0
	.type sub_409ce0, @function
sub_409ce0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cef

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1014
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1013
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1016
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1013
	mov	esi, OFFSET FLAT:label_1015
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1012
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1012:
	mov	rbx, r14
.label_1013:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d78
	.globl sub_409d78
	.type sub_409d78, @function
sub_409d78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d80

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_1022
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_1018
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_294]
	jbe	.label_1019
	movss	xmm1, dword ptr [rip + label_297]
	ucomiss	xmm1, xmm0
	jbe	.label_1019
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_301]
	jbe	.label_1019
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_1019
	addss	xmm1, dword ptr [rip + label_294]
	ucomiss	xmm0, xmm1
	jbe	.label_1019
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_307]
	ucomiss	xmm2, xmm0
	jb	.label_1019
	ucomiss	xmm0, xmm1
	jbe	.label_1019
.label_1018:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_1021
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_1023
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_1024
.label_1023:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_1024:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_286]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_742]
	jae	.label_1019
.label_1021:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_1025
	.section	.text
	.align	16
	#Procedure 0x409ece
	.globl sub_409ece
	.type sub_409ece, @function
sub_409ece:

	nop	
.label_1026:
	add	rbx, 2
.label_1025:
	cmp	rbx, -1
	je	.label_1019
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_1017
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_1020:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1017
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_1020
.label_1017:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1026
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_1019
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_1019
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_1019
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_1022
.label_1019:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_1022:
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
	#Procedure 0x409f98
	.globl sub_409f98
	.type sub_409f98, @function
sub_409f98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fa0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fa7
	.globl sub_409fa7
	.type sub_409fa7, @function
sub_409fa7:

	nop	word ptr [rax + rax]
.label_1031:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1027
	mov	eax, OFFSET FLAT:label_1028
	jmp	.label_1029
	.section	.text
	.align	16
	#Procedure 0x409fbf
	.globl sub_409fbf
	.type sub_409fbf, @function
sub_409fbf:

	nop	word ptr cs:[rax + rax]
.label_1032:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1030
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1030
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1030
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1030
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1030
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1030
	cmp	byte ptr [rax + 7], 0
	je	.label_1031
.label_1030:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_398
	mov	eax, OFFSET FLAT:label_362
.label_1029:
	cmove	rax, rcx
.label_1033:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a012

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
	jne	.label_1033
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1032
	cmp	ecx, 0x55
	jne	.label_1030
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1030
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1030
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_1030
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1030
	cmp	byte ptr [rax + 5], 0
	jne	.label_1030
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1034
	mov	eax, OFFSET FLAT:label_1035
	jmp	.label_1029
	.section	.text
	.align	16
	#Procedure 0x40a080

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1036
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_1036:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a097
	.globl sub_40a097
	.type sub_40a097, @function
sub_40a097:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0a0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_1037
	cmp	ecx, 0x11
	jne	.label_1038
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_1037:
	ret	
.label_1038:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0be
	.globl sub_40a0be
	.type sub_40a0be, @function
sub_40a0be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a0c0
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
	je	.label_1039
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_1040:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_1039
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_1040
.label_1039:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a123
	.globl sub_40a123
	.type sub_40a123, @function
sub_40a123:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a195
	.globl sub_40a195
	.type sub_40a195, @function
sub_40a195:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1a2
	.globl sub_40a1a2
	.type sub_40a1a2, @function
sub_40a1a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1c6
	.globl sub_40a1c6
	.type sub_40a1c6, @function
sub_40a1c6:

	nop	word ptr cs:[rax + rax]
