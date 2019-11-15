	.section	.text
	.align	16
	#Procedure 0x401a19
	.globl sub_401a19
	.type sub_401a19, @function
sub_401a19:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401a1a
	.globl sub_401a1a
	.type sub_401a1a, @function
sub_401a1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a52
	.globl sub_401a52
	.type sub_401a52, @function
sub_401a52:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a9a
	.globl sub_401a9a
	.type sub_401a9a, @function
sub_401a9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401abc
	.globl sub_401abc
	.type sub_401abc, @function
sub_401abc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401acd
	.globl sub_401acd
	.type sub_401acd, @function
sub_401acd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ae6
	.globl sub_401ae6
	.type sub_401ae6, @function
sub_401ae6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401af0
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
	#Procedure 0x401b23
	.globl sub_401b23
	.type sub_401b23, @function
sub_401b23:

	nop	word ptr cs:[rax + rax]
.label_10:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b33
	.globl sub_401b33
	.type sub_401b33, @function
sub_401b33:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401b35

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_10
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b50

	.globl validate_split_str
	.type validate_split_str, @function
validate_split_str:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_12
	movsx	rbp, byte ptr [r14]
	test	rbp, rbp
	je	.label_12
	call	__ctype_b_loc
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_12
	mov	qword ptr [rsp + 0x18], r15
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r14
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 8], rax
	mov	al, byte ptr [r14]
	xor	r8d, r8d
	mov	r15d, 1
	test	al, al
	je	.label_21
	xor	edx, edx
	xor	ebp, ebp
	xor	r12d, r12d
	mov	r9, qword ptr [rsp + 0x10]
	nop	
.label_11:
	mov	esi, r15d
	movsx	rax, al
	mov	rcx, qword ptr [r9]
	movzx	ebx, byte ptr [rcx + rax*2 + 1]
	and	bl, 0x20
	shr	bl, 5
	mov	eax, r12d
	and	al, 1
	mov	edi, ebp
	and	dil, 1
	mov	ecx, ebp
	or	cl, r12b
	test	cl, 1
	sete	r13b
	and	r13b, bl
	cmovne	edx, r8d
	mov	r15d, edx
	add	r15d, esi
	movsx	edx, byte ptr [r14]
	cmp	edx, 0x26
	jg	.label_27
	cmp	edx, 0x22
	je	.label_16
	cmp	edx, 0x24
	jne	.label_15
	test	dil, dil
	jne	.label_15
	mov	rbx, r9
	mov	rdi, r14
	call	extract_varname
	test	rax, rax
	je	.label_25
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_24
	mov	rdi, rax
	call	strlen
	add	qword ptr [rsp + 8], rax
.label_24:
	xor	r8d, r8d
	mov	r9, rbx
	jmp	.label_15
	.section	.text
	.align	16
	#Procedure 0x401c66
	.globl sub_401c66
	.type sub_401c66, @function
sub_401c66:

	nop	word ptr cs:[rax + rax]
.label_27:
	cmp	edx, 0x5c
	je	.label_37
	cmp	edx, 0x27
	jne	.label_15
	test	dil, dil
	sete	dl
	test	al, al
	je	.label_35
	test	dl, dl
	je	.label_14
.label_35:
	or	al, dil
	sete	bpl
	jmp	.label_15
	.section	.text
	.align	16
	#Procedure 0x401c99
	.globl sub_401c99
	.type sub_401c99, @function
sub_401c99:

	nop	dword ptr [rax]
.label_16:
	test	dil, dil
	sete	dl
	test	al, al
	je	.label_19
	test	dl, dl
	je	.label_22
.label_19:
	or	al, dil
	sete	r12b
	jmp	.label_15
	.section	.text
	.align	16
	#Procedure 0x401cbb
	.globl sub_401cbb
	.type sub_401cbb, @function
sub_401cbb:

	nop	dword ptr [rax + rax]
.label_37:
	movsx	ebx, byte ptr [r14 + 1]
	test	al, al
	je	.label_26
	cmp	bl, 0x63
	je	.label_28
.label_26:
	test	bl, bl
	je	.label_32
	mov	edi, ebx
	call	valid_escape_sequence
	test	al, al
	je	.label_34
	inc	r14
	xor	eax, eax
	cmp	bl, 0x5f
	sete	al
	add	r15d, eax
	mov	r9, qword ptr [rsp + 0x10]
	xor	r8d, r8d
	nop	
.label_15:
	movzx	edx, r13b
	movzx	eax, byte ptr [r14 + 1]
	inc	r14
	test	al, al
	jne	.label_11
	jmp	.label_38
.label_21:
	xor	r12d, r12d
	xor	ebp, ebp
.label_38:
	or	r12b, bpl
	test	r12b, 1
	jne	.label_20
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], r15d
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax], rcx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_14:
	mov	edi, OFFSET FLAT:label_29
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 0x12f
	mov	ecx, OFFSET FLAT:label_31
	call	__assert_fail
.label_22:
	mov	edi, OFFSET FLAT:label_29
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 0x134
	mov	ecx, OFFSET FLAT:label_31
	call	__assert_fail
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	jmp	.label_18
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
.label_18:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_12:
	mov	edi, OFFSET FLAT:label_33
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 0x118
	mov	ecx, OFFSET FLAT:label_31
	call	__assert_fail
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	jmp	.label_18
	.section	.text
	.align	16
	#Procedure 0x401e20

	.globl str2signum
	.type str2signum, @function
str2signum:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_46
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_42
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_43
	jmp	.label_42
.label_46:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_48
	nop	dword ptr [rax + rax]
.label_41:
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	je	.label_50
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_41
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r14d, eax
	test	ebp, ebp
	jle	.label_45
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	je	.label_49
.label_45:
	test	r14d, r14d
	jle	.label_42
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_42
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	jne	.label_42
	sub	ebp, r14d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_42
	test	rax, rax
	jg	.label_42
	mov	ecx, r14d
	jmp	.label_40
.label_49:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_42
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_42
	sub	r14d, ebp
	movsxd	rcx, r14d
	cmp	rax, rcx
	jle	.label_44
.label_42:
	mov	eax, 0xffffffff
.label_43:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_44:
	mov	ecx, ebp
.label_40:
	add	rax, rcx
	jmp	.label_43
	.section	.text
	.align	16
	#Procedure 0x401f4d
	.globl sub_401f4d
	.type sub_401f4d, @function
sub_401f4d:

	nop	word ptr cs:[rax + rax]
.label_50:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_43
.label_52:
	ret	
.label_53:
	xor	eax, eax
	jmp	.label_52
	.section	.text
	.align	16
	#Procedure 0x401f65
	.globl sub_401f65
	.type sub_401f65, @function
sub_401f65:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f6a

	.globl valid_escape_sequence
	.type valid_escape_sequence, @function
valid_escape_sequence:
	add	dil, 0xde
	movzx	ecx, dil
	cmp	cl, 0x54
	ja	.label_53
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_54]]
	.section	.text
	.align	16
	#Procedure 0x401f80

	.globl escape_char
	.type escape_char, @function
escape_char:
	add	edi, -0x66
	cmp	edi, 0x10
	ja	.label_55
	mov	al, 0xc
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_56]]
.label_621:
	mov	al, 9
	ret	
.label_620:
	mov	al, 0xd
	ret	
.label_619:
	mov	al, 0xa
.label_618:
	ret	
.label_55:
	push	rax
	mov	edi, OFFSET FLAT:label_57
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 0xd2
	mov	ecx, OFFSET FLAT:label_58
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401fb4
	.globl sub_401fb4
	.type sub_401fb4, @function
sub_401fb4:

	nop	word ptr [rax + rax]
.label_622:
	mov	al, 0xb
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_59
	test	rsi, rsi
	mov	ecx, 1
	je	.label_60
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_60
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_59:
	mov	ecx, 1
.label_60:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40200b
	.globl sub_40200b
	.type sub_40200b, @function
sub_40200b:

	nop	dword ptr [rax + rax]
.label_62:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_61
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40201b
	.globl sub_40201b
	.type sub_40201b, @function
sub_40201b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402025

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_62
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_62
.label_61:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402040
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402048
	.globl sub_402048
	.type sub_402048, @function
sub_402048:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402050

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
	je	.label_63
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
.label_63:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4020a2
	.globl sub_4020a2
	.type sub_4020a2, @function
sub_4020a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020b0

	.globl append_unset_var
	.type append_unset_var, @function
append_unset_var:
	push	rbx
	mov	rbx, rdi
	mov	rax,  qword ptr [word ptr [rip + usvars_used]]
	cmp	rax,  qword ptr [word ptr [rip + usvars_alloc]]
	jne	.label_64
	mov	rdi,  qword ptr [word ptr [rip + usvars]]
	mov	esi, OFFSET FLAT:usvars_alloc
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + usvars]],  rax
.label_64:
	mov	rax,  qword ptr [word ptr [rip + usvars_used]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + usvars_used]],  rcx
	mov	rcx,  qword ptr [word ptr [rip + usvars]]
	mov	qword ptr [rcx + rax*8], rbx
	pop	rbx
	ret	
.label_65:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402103
	.globl sub_402103
	.type sub_402103, @function
sub_402103:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402105
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_65
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x402120

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
	#Procedure 0x402156
	.globl sub_402156
	.type sub_402156, @function
sub_402156:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402160

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_66
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_66
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_66:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402186
	.globl sub_402186
	.type sub_402186, @function
sub_402186:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402190

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
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_77
	call	setlocale
	mov	edi, OFFSET FLAT:label_103
	mov	esi, OFFSET FLAT:label_104
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_103
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	initialize_signals
	xor	r12d, r12d
	lea	r14, [rsp + 0xc]
	lea	r15, [rsp + 0x10]
	xor	r13d, r13d
	xor	eax, eax
	jmp	.label_91
.label_108:
	call	parse_block_signal_params
	mov	al, bpl
	nop	word ptr [rax + rax]
.label_91:
	mov	ebp, eax
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 8
	jle	.label_84
	lea	ecx, [rbx - 0x20]
	cmp	ecx, 0x63
	ja	.label_87
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_89]]
.label_601:
	mov	r13b, 1
	mov	al, bpl
	jmp	.label_91
.label_602:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	al, bpl
	jmp	.label_91
.label_603:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r14
	mov	rdx, r15
	call	parse_split_string
	mov	al, bpl
	jmp	.label_91
.label_604:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	append_unset_var
	mov	al, bpl
	jmp	.label_91
.label_605:
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	mov	al, bpl
	jmp	.label_91
.label_606:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	call	parse_signal_action_params
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	jmp	.label_108
.label_607:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	call	parse_signal_action_params
	mov	al, bpl
	jmp	.label_91
.label_608:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	jmp	.label_108
.label_609:
	mov	byte ptr [byte ptr [rip + report_signal_handling]],  1
	mov	al, bpl
	jmp	.label_91
.label_84:
	cmp	ebx, -1
	jne	.label_118
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0xc]
	jge	.label_74
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_74
	cmp	byte ptr [rax + 1], 0
	je	.label_72
.label_74:
	test	bpl, bpl
	jne	.label_100
	call	unset_envvars
	jmp	.label_80
.label_72:
	inc	dword ptr [dword ptr [rip + optind]]
.label_100:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_82
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_86
	xor	eax, eax
	call	__fprintf_chk
.label_82:
	mov	qword ptr [word ptr [rip + __environ]], OFFSET FLAT:main.dummy_environ
.label_80:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0xc]
	jge	.label_93
	mov	r14, qword ptr [rsp + 0x10]
	mov	r15d, dword ptr [rsp + 0xc]
	nop	dword ptr [rax + rax]
.label_107:
	cdqe	
	mov	rbp, qword ptr [r14 + rax*8]
	mov	esi, 0x3d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_93
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_88
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_101
	xor	eax, eax
	mov	rcx, rbp
	call	__fprintf_chk
.label_88:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8]
	call	putenv
	test	eax, eax
	jne	.label_105
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_107
.label_93:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, dword ptr [rsp + 0xc]
	test	r13b, r13b
	je	.label_115
	cmp	eax, ecx
	jl	.label_117
.label_115:
	test	r12, r12
	sete	dl
	cmp	eax, ecx
	jl	.label_119
	test	dl, dl
	je	.label_121
.label_119:
	cmp	eax, ecx
	jge	.label_67
	call	reset_signal_handlers
	cmp	byte ptr [byte ptr [rip + sig_mask_changed]],  1
	jne	.label_71
	call	set_signal_proc_mask
.label_71:
	cmp	byte ptr [byte ptr [rip + report_signal_handling]],  1
	jne	.label_78
	call	list_signal_handling
.label_78:
	test	r12, r12
	je	.label_83
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_85
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_92
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_85:
	mov	rdi, r12
	call	chdir
	test	eax, eax
	jne	.label_96
.label_83:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_98
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_99
	xor	eax, eax
	call	__fprintf_chk
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	cmp	ebx, dword ptr [rsp + 0xc]
	jge	.label_98
	mov	r15, qword ptr [rsp + 0x10]
	movsxd	r12, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_68:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_114
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ebp, ebx
	sub	ebp, eax
	mov	rdi, qword ptr [r15 + rbx*8]
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_102
	xor	eax, eax
	mov	rdi, r14
	mov	ecx, ebp
	call	__fprintf_chk
.label_114:
	inc	rbx
	cmp	rbx, r12
	jl	.label_68
.label_98:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rcx + rax*8]
	mov	rdi, qword ptr [rcx + rax*8]
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	r14d, 0x7e
	cmp	ebp, 2
	jne	.label_79
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	esi, 0x20
	call	strchr
	mov	r14d, 0x7f
	test	rax, rax
	je	.label_79
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_79
.label_67:
	mov	rbx,  qword ptr [word ptr [rip + __environ]]
	mov	rdx, qword ptr [rbx]
	xor	r14d, r14d
	test	rdx, rdx
	je	.label_79
	xor	r14d, r14d
	test	r13b, r13b
	mov	ebp, 0xa
	cmovne	ebp, r14d
	add	rbx, 8
	nop	dword ptr [rax]
.label_120:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_116
	xor	eax, eax
	mov	ecx, ebp
	call	__printf_chk
	mov	rdx, qword ptr [rbx]
	add	rbx, 8
	test	rdx, rdx
	jne	.label_120
.label_79:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_105:
	mov	byte ptr [rbx], 0
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
.label_106:
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_118:
	cmp	ebx, 0xffffff7d
	je	.label_94
	cmp	ebx, 0xffffff7e
	jne	.label_95
	xor	edi, edi
	call	usage
.label_87:
	cmp	ebx, 9
	jne	.label_95
.label_600:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
.label_70:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_95:
	mov	edi, 0x7d
	call	usage
.label_94:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_109
	mov	edx, OFFSET FLAT:label_110
	mov	r8d, OFFSET FLAT:label_111
	mov	r9d, OFFSET FLAT:label_112
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_113
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	jmp	.label_70
.label_121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	jmp	.label_70
.label_96:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	jmp	.label_106
	.section	.text
	.align	16
	#Procedure 0x402750
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
	#Procedure 0x40275d
	.globl sub_40275d
	.type sub_40275d, @function
sub_40275d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402760
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
	#Procedure 0x4027d2
	.globl sub_4027d2
	.type sub_4027d2, @function
sub_4027d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_122
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_122:
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
	#Procedure 0x402863
	.globl sub_402863
	.type sub_402863, @function
sub_402863:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402870
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
	#Procedure 0x402897
	.globl sub_402897
	.type sub_402897, @function
sub_402897:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028a0

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
.label_198:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_224
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_207]]
.label_648:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_212
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_150
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_649:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_160
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_160
	xor	r14d, r14d
.label_232:
	cmp	r14, r11
	jae	.label_228
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_228:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_232
.label_160:
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
	jmp	.label_133
.label_641:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_133
.label_644:
	mov	al, 1
.label_642:
	mov	r12b, 1
.label_645:
	test	r12b, 1
	mov	cl, 1
	je	.label_139
	mov	ecx, eax
.label_139:
	mov	al, cl
.label_643:
	test	r12b, 1
	jne	.label_142
	test	r11, r11
	je	.label_144
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_144:
	mov	r14d, 1
	jmp	.label_149
.label_142:
	xor	r14d, r14d
.label_149:
	mov	ecx, OFFSET FLAT:label_150
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_133
.label_646:
	test	r12b, 1
	jne	.label_158
	test	r11, r11
	je	.label_222
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_222:
	mov	r14d, 1
	jmp	.label_166
.label_647:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_168
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_133
.label_158:
	xor	r14d, r14d
.label_166:
	mov	eax, OFFSET FLAT:label_168
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_133:
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
	jmp	.label_213
	.section	.text
	.align	16
	#Procedure 0x402b7c
	.globl sub_402b7c
	.type sub_402b7c, @function
sub_402b7c:

	nop	dword ptr [rax]
.label_187:
	inc	rsi
.label_213:
	cmp	rbp, -1
	je	.label_214
	cmp	rsi, rbp
	jne	.label_200
	jmp	.label_219
	.section	.text
	.align	16
	#Procedure 0x402b93
	.globl sub_402b93
	.type sub_402b93, @function
sub_402b93:

	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_219
.label_200:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_223
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_156
	cmp	rbp, -1
	jne	.label_156
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
.label_156:
	cmp	rbx, rbp
	jbe	.label_235
.label_223:
	xor	r8d, r8d
.label_161:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_237
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_128]]
.label_564:
	test	rsi, rsi
	jne	.label_131
	jmp	.label_135
	.section	.text
	.align	16
	#Procedure 0x402c2e
	.globl sub_402c2e
	.type sub_402c2e, @function
sub_402c2e:

	nop	
.label_235:
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
	jne	.label_147
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_161
	jmp	.label_159
.label_147:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_161
.label_568:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_170
	test	rsi, rsi
	jne	.label_173
	cmp	rbp, 1
	je	.label_135
	xor	r13d, r13d
	jmp	.label_129
.label_557:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_181
	cmp	byte ptr [rsp + 7], 0
	jne	.label_124
	cmp	r12d, 2
	jne	.label_183
	mov	eax, r9d
	and	al, 1
	jne	.label_183
	cmp	r14, r11
	jae	.label_185
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_185:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_189
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_189:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_193
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_193:
	add	r14, 3
	mov	r9b, 1
.label_183:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_197
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_197:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_201
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_201
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_201
	cmp	r14, r11
	jae	.label_169
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_169:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_233
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_233:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_129
.label_558:
	mov	bl, 0x62
	jmp	.label_226
.label_559:
	mov	cl, 0x74
	jmp	.label_221
.label_560:
	mov	bl, 0x76
	jmp	.label_226
.label_561:
	mov	bl, 0x66
	jmp	.label_226
.label_562:
	mov	cl, 0x72
	jmp	.label_221
.label_565:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_227
	cmp	byte ptr [rsp + 7], 0
	jne	.label_124
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
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_234:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_130
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_130:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_136
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_136:
	add	r14, 3
	xor	r9d, r9d
.label_227:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_129
.label_566:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_145
	cmp	r12d, 2
	jne	.label_131
	cmp	byte ptr [rsp + 7], 0
	je	.label_131
	jmp	.label_124
.label_567:
	cmp	r12d, 2
	jne	.label_155
	cmp	byte ptr [rsp + 7], 0
	jne	.label_124
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_199
.label_237:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_217
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
.label_134:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_182
	test	r8b, r8b
	je	.label_182
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_129
.label_170:
	test	rsi, rsi
	jne	.label_196
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_196
.label_135:
	mov	dl, 1
.label_563:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_124
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_129:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_208
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_210
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x402f74
	.globl sub_402f74
	.type sub_402f74, @function
sub_402f74:

	nop	word ptr cs:[rax + rax]
.label_208:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_188
.label_210:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_204
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_199
	jmp	.label_178
	.section	.text
	.align	16
	#Procedure 0x402fbd
	.globl sub_402fbd
	.type sub_402fbd, @function
sub_402fbd:

	nop	dword ptr [rax]
.label_188:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_178
	jmp	.label_199
.label_204:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_178
.label_181:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_187
	xor	r15d, r15d
	jmp	.label_131
.label_155:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_221
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_199
.label_221:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_124
.label_226:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_129
	nop	word ptr cs:[rax + rax]
.label_178:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_124
	cmp	r12d, 2
	jne	.label_140
	mov	eax, r9d
	and	al, 1
	jne	.label_140
	cmp	r14, r11
	jae	.label_143
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_143:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_127
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_127:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_152:
	add	r14, 3
	mov	r9b, 1
.label_140:
	cmp	r14, r11
	jae	.label_157
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_157:
	inc	r14
	jmp	.label_162
.label_217:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_167
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_167:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_230:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_186
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_191
	cmp	rbp, -2
	je	.label_171
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_184
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_209:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_180
	bt	rsi, rdx
	jb	.label_159
.label_180:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_209
.label_184:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_216
	xor	r13d, r13d
.label_216:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_230
	jmp	.label_134
.label_201:
	xor	r13d, r13d
	jmp	.label_129
.label_196:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_129
.label_145:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_131
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_131
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_131
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_236
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_206
	cmp	byte ptr [rsp + 7], 0
	jne	.label_124
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_137
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_137:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_220
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_220:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_148
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_148:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_151
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_151:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_129
.label_131:
	xor	eax, eax
.label_173:
	xor	r13d, r13d
	jmp	.label_129
.label_182:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x4032a3
	.globl sub_4032a3
	.type sub_4032a3, @function
sub_4032a3:

	nop	word ptr cs:[rax + rax]
.label_231:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_165:
	test	r8b, r8b
	je	.label_174
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_175
	cmp	r14, r11
	jae	.label_177
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_177:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_175
	.section	.text
	.align	16
	#Procedure 0x4032ec
	.globl sub_4032ec
	.type sub_4032ec, @function
sub_4032ec:

	nop	dword ptr [rax]
.label_174:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_159
	cmp	r12d, 2
	jne	.label_125
	mov	eax, r9d
	and	al, 1
	jne	.label_125
	cmp	r14, r11
	jae	.label_190
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_190:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_192
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_192:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_154
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_154:
	add	r14, 3
	mov	r9b, 1
.label_125:
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_203
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_203:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_211
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_211:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_175:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_199
	test	r9b, 1
	je	.label_163
	mov	ebx, eax
	and	bl, 1
	jne	.label_163
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_225
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_225:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_132
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_132:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_163:
	cmp	r14, r11
	jae	.label_231
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x4033f3
	.globl sub_4033f3
	.type sub_4033f3, @function
sub_4033f3:

	nop	word ptr cs:[rax + rax]
.label_199:
	test	r9b, 1
	je	.label_123
	and	al, 1
	jne	.label_123
	cmp	r14, r11
	jae	.label_126
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_126:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_164
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_164:
	add	r14, 2
	xor	r9d, r9d
.label_123:
	mov	ebx, r15d
.label_162:
	cmp	r14, r11
	jae	.label_138
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_138:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_187
.label_191:
	xor	r13d, r13d
.label_186:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_134
.label_171:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_153
	mov	rsi, qword ptr [rsp + 0x50]
.label_229:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_176
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_229
	xor	r13d, r13d
	jmp	.label_134
.label_153:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_134
.label_176:
	xor	r13d, r13d
	jmp	.label_134
.label_236:
	xor	r13d, r13d
	jmp	.label_129
.label_206:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_129
	.section	.text
	.align	16
	#Procedure 0x4034c8
	.globl sub_4034c8
	.type sub_4034c8, @function
sub_4034c8:

	nop	dword ptr [rax + rax]
.label_219:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_179
	or	dl, al
	je	.label_159
.label_179:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_194
	or	dl, al
	jne	.label_194
	test	r10b, 1
	jne	.label_195
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_194
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_198
.label_194:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_202
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_205
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_205
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_215:
	cmp	r14, r11
	jae	.label_172
	mov	byte ptr [rcx + r14], al
.label_172:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_215
	jmp	.label_205
.label_124:
	mov	qword ptr [rsp + 0x20], rbp
.label_159:
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
.label_141:
	mov	r14, rax
.label_146:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_195:
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
	jmp	.label_141
.label_202:
	mov	rcx, qword ptr [rsp + 8]
.label_205:
	cmp	r14, r11
	jae	.label_146
	mov	byte ptr [rcx + r14], 0
	jmp	.label_146
.label_224:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40365c
	.globl sub_40365c
	.type sub_40365c, @function
sub_40365c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403660

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
	je	.label_238
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_240
	jmp	.label_239
.label_238:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_239
.label_240:
	mov	eax, 1
	test	bpl, bpl
	je	.label_239
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
.label_239:
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
	#Procedure 0x4036dd
	.globl sub_4036dd
	.type sub_4036dd, @function
sub_4036dd:

	nop	dword ptr [rax]
.label_242:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_241
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_241:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403714
	.globl sub_403714
	.type sub_403714, @function
sub_403714:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403716

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
	jne	.label_243
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_243
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_242
.label_243:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403750
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_244:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_244
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403771
	.globl sub_403771
	.type sub_403771, @function
sub_403771:

	nop	word ptr cs:[rax + rax]
.label_250:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037ba

	.globl list_signal_handling
	.type list_signal_handling, @function
list_signal_handling:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	lea	rbx, [rsp + 0x20]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_250
	mov	ebx, 1
	lea	r14, [rsp + 0xa0]
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_252:
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r14
	call	sigaction
	test	eax, eax
	jne	.label_254
	cmp	qword ptr [rsp + 0xa0], 1
	mov	ebp, OFFSET FLAT:label_77
	mov	eax, OFFSET FLAT:label_253
	cmove	rbp, rax
	lea	rdi, [rsp + 0x20]
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	mov	r13d, OFFSET FLAT:label_77
	mov	eax, OFFSET FLAT:label_246
	cmovne	r13, rax
	cmp	byte ptr [rbp], 0
	movzx	eax, byte ptr [r13]
	mov	r15d, OFFSET FLAT:label_77
	je	.label_247
	test	al, al
	mov	r15d, OFFSET FLAT:label_77
	mov	ecx, OFFSET FLAT:label_248
	cmovne	r15, rcx
	cmp	byte ptr [rbp], 0
	jne	.label_249
.label_247:
	test	al, al
	je	.label_254
.label_249:
	mov	edi, ebx
	mov	rsi, r12
	call	sig2str
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_251
	mov	eax, 0
	mov	rcx, r12
	mov	r8d, ebx
	mov	r9, r13
	push	rbp
	push	r15
	call	__fprintf_chk
	add	rsp, 0x10
.label_254:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_252
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038da
	.globl sub_4038da
	.type sub_4038da, @function
sub_4038da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_256
	mov	al,  byte ptr [byte ptr [rip + sig_mask_changed]]
	test	al, al
	jne	.label_262
	mov	edi, OFFSET FLAT:block_signals
	call	sigemptyset
	mov	edi, OFFSET FLAT:unblock_signals
	call	sigemptyset
.label_262:
	mov	byte ptr [byte ptr [rip + sig_mask_changed]],  1
	mov	rdi, rbx
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_248
	mov	rdi, r14
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	je	.label_260
	mov	r12d, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	r13d, OFFSET FLAT:unblock_signals
	cmovne	r13, r12
	cmovne	r12, rax
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_257:
	mov	rdi, rbp
	mov	rsi, r15
	call	operand2sig
	mov	ebx, eax
	test	ebx, ebx
	je	.label_261
	jle	.label_255
	mov	rdi, r13
	mov	esi, ebx
	call	sigaddset
	mov	rdi, r12
	mov	esi, ebx
	call	sigdelset
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_257
.label_260:
	mov	rdi, r14
	call	free
	jmp	.label_258
.label_261:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_255:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4039f1
	.globl sub_4039f1
	.type sub_4039f1, @function
sub_4039f1:

	nop	
.label_256:
	mov	ebx, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	edi, OFFSET FLAT:unblock_signals
	cmovne	rdi, rbx
	cmovne	rbx, rax
	call	sigfillset
	mov	rdi, rbx
	call	sigemptyset
	mov	byte ptr [byte ptr [rip + sig_mask_changed]],  1
.label_258:
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
	#Procedure 0x403a30
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x403a3a
	.globl sub_403a3a
	.type sub_403a3a, @function
sub_403a3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_263
	nop	
.label_273:
	mov	edi, OFFSET FLAT:label_109
	call	strcmp
	test	eax, eax
	je	.label_271
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_273
.label_271:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_109
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_110
	mov	ecx, OFFSET FLAT:label_266
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_265
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_265
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_265:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_109
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_266
	mov	ecx, OFFSET FLAT:label_109
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_269
	mov	ecx, OFFSET FLAT:label_77
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
	#Procedure 0x403b5a
	.globl sub_403b5a
	.type sub_403b5a, @function
sub_403b5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b60

	.globl reset_signal_handlers
	.type reset_signal_handlers, @function
reset_signal_handlers:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, 1
	lea	r14, [rsp + 0x30]
	lea	r15, [rsp + 0x10]
.label_275:
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	eax, dword ptr [rax + rbx*4]
	test	eax, eax
	je	.label_274
	mov	r13b, 1
	cmp	eax, 2
	je	.label_279
	cmp	eax, 4
	je	.label_279
	xor	r13d, r13d
.label_279:
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	r12d, dword ptr [rax + rbx*4]
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r14
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	test	r13b, r13b
	jne	.label_286
	test	al, al
	je	.label_277
.label_286:
	dec	r12d
	test	ebp, ebp
	jne	.label_278
	xor	eax, eax
	cmp	r12d, 1
	seta	al
	mov	qword ptr [rsp + 0x30], rax
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	or	r13b, al
	je	.label_283
.label_278:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_274
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_274
	cmp	r12d, 2
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	r9d, OFFSET FLAT:label_253
	mov	eax, OFFSET FLAT:label_280
	cmovb	r9, rax
	test	ebp, ebp
	mov	eax, OFFSET FLAT:label_77
	mov	ecx, OFFSET FLAT:label_281
	cmovne	rax, rcx
	mov	qword ptr [rsp], rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_282
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	call	__fprintf_chk
	nop	
.label_274:
	inc	rbx
	cmp	rbx, 0x41
	jl	.label_275
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_283:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
.label_285:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	nop	dword ptr [rax]
.label_277:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	jmp	.label_285
.label_292:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
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
	#Procedure 0x403cf8

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_292
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
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
	#Procedure 0x403ee0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403eea
	.globl sub_403eea
	.type sub_403eea, @function
sub_403eea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ef0
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
	#Procedure 0x403f00

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x403f09
	.globl sub_403f09
	.type sub_403f09, @function
sub_403f09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f10

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x403f1a
	.globl sub_403f1a
	.type sub_403f1a, @function
sub_403f1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_303
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_303:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f38
	.globl sub_403f38
	.type sub_403f38, @function
sub_403f38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403f4a
	.globl sub_403f4a
	.type sub_403f4a, @function
sub_403f4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50

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
	#Procedure 0x403f7d
	.globl sub_403f7d
	.type sub_403f7d, @function
sub_403f7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f80

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
	#Procedure 0x403f93
	.globl sub_403f93
	.type sub_403f93, @function
sub_403f93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl set_signal_proc_mask
	.type set_signal_proc_mask, @function
set_signal_proc_mask:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rbx, [rsp + 0x18]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_310
	mov	ebx, 1
	lea	r14, [rsp + 0x18]
	lea	r15, [rsp]
	nop	dword ptr [rax]
.label_312:
	mov	edi, OFFSET FLAT:block_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_311
	mov	rdi, r14
	mov	esi, ebx
	call	sigaddset
	mov	r12d, OFFSET FLAT:label_246
	jmp	.label_307
	.section	.text
	.align	16
	#Procedure 0x404002
	.globl sub_404002
	.type sub_404002, @function
sub_404002:

	nop	word ptr cs:[rax + rax]
.label_311:
	mov	edi, OFFSET FLAT:unblock_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_304
	mov	rdi, r14
	mov	esi, ebx
	call	sigdelset
	mov	r12d, OFFSET FLAT:label_309
.label_307:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_304
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_304
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_306
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	mov	r9, r12
	call	__fprintf_chk
.label_304:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_312
	lea	rsi, [rsp + 0x18]
	mov	edi, 2
	xor	edx, edx
	call	sigprocmask
	test	eax, eax
	jne	.label_305
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_310:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	jmp	.label_308
.label_305:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
.label_308:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040e0

	.globl build_argv
	.type build_argv, @function
build_argv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	ebx, esi
	mov	r12, rdi
	mov	dword ptr [rsp + 0x24], 0
	mov	qword ptr [rsp + 0x30], 0
	test	r12, r12
	je	.label_319
	movsx	rbp, byte ptr [r12]
	test	rbp, rbp
	je	.label_319
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_319
	lea	rsi, [rsp + 0x30]
	lea	rdx, [rsp + 0x24]
	mov	rdi, r12
	call	validate_split_str
	mov	rdi, qword ptr [rsp + 0x30]
	add	rdi, 7
	call	xmalloc
	mov	r15, rax
	mov	eax, dword ptr [rsp + 0x24]
	lea	eax, [rbx + rax + 2]
	movsxd	rdi, eax
	shl	rdi, 3
	call	xmalloc
	mov	word ptr [r15 + 4], 0x59
	mov	dword ptr [r15], 0x4d4d5544
	mov	qword ptr [rax], r15
	mov	qword ptr [rsp + 0x40], rax
	add	rax, 8
	mov	qword ptr [rsp + 0x18], rax
	add	r15, 6
	mov	al, byte ptr [r12]
	test	al, al
	je	.label_315
	mov	r13b, 1
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
.label_340:
	mov	ecx, dword ptr [rsp + 0x10]
	mov	ebp, ecx
	and	bpl, 1
.label_318:
	mov	ecx, dword ptr [rsp + 0x14]
	mov	r14d, ecx
	mov	edx, dword ptr [rsp + 0x10]
	or	r14b, dl
	and	r14b, 1
	and	cl, 1
	mov	byte ptr [rsp + 0xf], cl
	mov	rbx, r12
.label_341:
	mov	r12, rbx
.label_327:
	movsx	edx, al
	lea	ecx, [rdx - 9]
	cmp	ecx, 0x1e
	ja	.label_332
	mov	rbx, r12
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_336]]
.label_656:
	test	r14b, r14b
	jne	.label_317
	mov	esi, 0x20
	mov	edx, 9
	mov	rdi, r12
	call	__strspn_c2
	add	r12, rax
	jmp	.label_314
	.section	.text
	.align	16
	#Procedure 0x404205
	.globl sub_404205
	.type sub_404205, @function
sub_404205:

	nop	word ptr cs:[rax + rax]
.label_332:
	cmp	edx, 0x5c
	jne	.label_317
	test	bpl, bpl
	je	.label_323
	movzx	ecx, byte ptr [r12 + 1]
	cmp	cl, 0x5c
	je	.label_323
	cmp	cl, 0x27
	jne	.label_317
.label_323:
	lea	rbx, [r12 + 1]
	movzx	eax, byte ptr [r12 + 1]
	cmp	al, 0x27
	je	.label_322
	cmp	al, 0x5c
	je	.label_322
	test	bpl, bpl
	je	.label_329
	cmp	al, 0x5f
	je	.label_333
	jmp	.label_316
.label_329:
	cmp	al, 0x5f
	jne	.label_324
.label_333:
	mov	al, 0x20
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_322
	add	r12, 2
.label_314:
	movzx	eax, byte ptr [r12]
	mov	r13b, 1
	test	al, al
	jne	.label_327
	jmp	.label_315
.label_657:
	test	bpl, bpl
	jne	.label_317
	jmp	.label_321
.label_658:
	test	r13b, 1
	mov	rbx, r12
	je	.label_322
	jmp	.label_315
.label_659:
	test	bpl, bpl
	jne	.label_317
	mov	rdi, r12
	call	extract_varname
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rax
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_331
	test	r13b, 1
	je	.label_335
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_335:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_326
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x38], rax
	mov	rdi, rbx
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_339
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	call	__fprintf_chk
.label_326:
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	r15, rax
	jmp	.label_330
.label_660:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_328
	nop	dword ptr [rax]
.label_317:
	mov	rbx, r12
.label_322:
	test	r13b, 1
	je	.label_334
	mov	byte ptr [r15], 0
	inc	r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], r15
	add	rcx, 8
	mov	qword ptr [rsp + 0x18], rcx
	xor	r13d, r13d
.label_334:
	mov	byte ptr [r15], al
	inc	r15
.label_337:
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	jne	.label_341
	jmp	.label_315
.label_324:
	mov	ecx, eax
	add	cl, 0xde
	cmp	cl, 3
	jb	.label_322
.label_316:
	cmp	al, 0x63
	je	.label_315
	movsx	edi, al
	call	escape_char
	jmp	.label_322
.label_331:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_330
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_342
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x28]
	call	__fprintf_chk
.label_330:
	mov	esi, 0x7d
	mov	rdi, r12
	call	strchr
	mov	rbx, rax
	jmp	.label_337
.label_321:
	mov	eax, dword ptr [rsp + 0x14]
	not	al
	mov	dword ptr [rsp + 0x14], eax
	test	r13b, 1
	je	.label_338
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_338:
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	mov	dword ptr [rsp + 0x14], eax
	mov	al, byte ptr [r12 + 1]
	inc	r12
	test	al, al
	jne	.label_318
	jmp	.label_315
.label_328:
	mov	eax, dword ptr [rsp + 0x10]
	not	al
	mov	dword ptr [rsp + 0x10], eax
	test	r13b, 1
	je	.label_325
	mov	byte ptr [r15], 0
	inc	r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r15
	add	rax, 8
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_325:
	mov	eax, dword ptr [rsp + 0x10]
	and	al, 1
	mov	dword ptr [rsp + 0x10], eax
	mov	al, byte ptr [r12 + 1]
	inc	r12
	test	al, al
	jne	.label_340
.label_315:
	mov	byte ptr [r15], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rsp + 0x40]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_319:
	mov	edi, OFFSET FLAT:label_33
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 0x18b
	mov	ecx, OFFSET FLAT:label_320
	call	__assert_fail
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
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_343
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_343:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4044d6
	.globl sub_4044d6
	.type sub_4044d6, @function
sub_4044d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_344
	test	rbx, rbx
	jne	.label_344
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_344:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_346
	test	rax, rax
	je	.label_345
.label_346:
	pop	rbx
	ret	
.label_345:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404510

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x404519
	.globl sub_404519
	.type sub_404519, @function
sub_404519:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404520

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
	mov	rax,  qword ptr [word ptr [rip + label_347]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_348]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_349]]
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
	#Procedure 0x404588
	.globl sub_404588
	.type sub_404588, @function
sub_404588:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404590

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  0x7d
	ret	
	.section	.text
	.align	16
	#Procedure 0x40459b
	.globl sub_40459b
	.type sub_40459b, @function
sub_40459b:

	nop	dword ptr [rax + rax]
.label_350:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4045a6
	.globl sub_4045a6
	.type sub_4045a6, @function
sub_4045a6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045ab

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_350
	test	rdx, rdx
	je	.label_350
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_352
	cmp	byte ptr [rax], 0x43
	jne	.label_354
	cmp	byte ptr [rax + 1], 0
	je	.label_351
.label_354:
	mov	esi, OFFSET FLAT:label_353
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_352
.label_351:
	xor	ebx, ebx
.label_352:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404601
	.globl sub_404601
	.type sub_404601, @function
sub_404601:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404610

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	xor	eax, eax
	mov	esi, OFFSET FLAT:label_48
	nop	word ptr cs:[rax + rax]
.label_358:
	cmp	dword ptr [rsi - 4], ebp
	je	.label_355
	inc	eax
	add	rsi, 0xc
	cmp	eax, 0x22
	jbe	.label_358
	call	__libc_current_sigrtmin
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	jg	.label_357
	cmp	eax, ebp
	jl	.label_357
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_360
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	jmp	.label_359
.label_355:
	mov	rdi, r14
	call	strcpy
	xor	ebx, ebx
	jmp	.label_357
.label_360:
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_359:
	xor	ebx, ebx
	sub	ebp, r15d
	je	.label_357
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_356
	xor	eax, eax
	mov	rdi, r14
	mov	r8d, ebp
	call	__sprintf_chk
.label_357:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046d5
	.globl sub_4046d5
	.type sub_4046d5, @function
sub_4046d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0

	.globl scan_varname
	.type scan_varname, @function
scan_varname:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_361
	cmp	byte ptr [rbx], 0x24
	jne	.label_361
	xor	r14d, r14d
	cmp	byte ptr [rbx + 1], 0x7b
	jne	.label_365
	movsx	edi, byte ptr [rbx + 2]
	call	c_isalpha
	test	al, al
	jne	.label_364
	xor	r14d, r14d
	cmp	byte ptr [rbx + 2], 0x5f
	jne	.label_365
.label_364:
	add	rbx, 3
	xor	r14d, r14d
	jmp	.label_366
	.section	.text
	.align	16
	#Procedure 0x404719
	.globl sub_404719
	.type sub_404719, @function
sub_404719:

	nop	dword ptr [rax]
.label_361:
	mov	edi, OFFSET FLAT:label_362
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 0xdd
	mov	ecx, OFFSET FLAT:label_363
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x404739
	.globl sub_404739
	.type sub_404739, @function
sub_404739:

	nop	word ptr cs:[rax + rax]
.label_367:
	inc	rbx
.label_366:
	movsx	edi, byte ptr [rbx]
	call	c_isalnum
	test	al, al
	jne	.label_367
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x5f
	je	.label_367
	cmp	al, 0x7d
	jne	.label_365
	mov	r14, rbx
.label_365:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404770
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
	#Procedure 0x40477f
	.globl sub_40477f
	.type sub_40477f, @function
sub_40477f:

	nop	
.label_368:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40478e
	.globl sub_40478e
	.type sub_40478e, @function
sub_40478e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404797

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_368
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_370
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_368
.label_370:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_368
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_369
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_369:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404800

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	scan_varname
	xor	ebx, ebx
	test	rax, rax
	je	.label_372
	sub	rax, r15
	lea	r14, [rax - 2]
	cmp	r14,  qword ptr [word ptr [rip + vnlen]]
	jb	.label_371
	dec	rax
	mov	qword ptr [word ptr [rip + vnlen]],  rax
	mov	rdi,  qword ptr [word ptr [rip + varname]]
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [word ptr [rip + varname]],  rax
.label_371:
	mov	rbx,  qword ptr [word ptr [rip + varname]]
	add	r15, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [rbx + r14], 0
.label_372:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40486b
	.globl sub_40486b
	.type sub_40486b, @function
sub_40486b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404870

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40487a
	.globl sub_40487a
	.type sub_40487a, @function
sub_40487a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404880
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_374
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_110
	mov	ecx, OFFSET FLAT:label_266
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4048f4
	.globl sub_4048f4
	.type sub_4048f4, @function
sub_4048f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40490a
	.globl sub_40490a
	.type sub_40490a, @function
sub_40490a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404910

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_377
	ret	
.label_377:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x404923
	.globl sub_404923
	.type sub_404923, @function
sub_404923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404930

	.globl initialize_signals
	.type initialize_signals, @function
initialize_signals:
	push	rax
	mov	edi, 0x104
	call	xmalloc
	mov	qword ptr [word ptr [rip + signals]],  rax
	xor	esi, esi
	mov	edx, 0x104
	mov	rdi, rax
	call	memset
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404953
	.globl sub_404953
	.type sub_404953, @function
sub_404953:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404960

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404982
	.globl sub_404982
	.type sub_404982, @function
sub_404982:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404990

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
	#Procedure 0x4049c7
	.globl sub_4049c7
	.type sub_4049c7, @function
sub_4049c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	ebp, esi
	test	rdi, rdi
	je	.label_383
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_248
	mov	rdi, r14
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	je	.label_384
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	ebp, [rax + rax + 1]
	lea	r15, [rsp]
	nop	
.label_386:
	mov	rdi, rbx
	mov	rsi, r15
	call	operand2sig
	test	eax, eax
	je	.label_381
	jle	.label_382
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + signals]]
	mov	dword ptr [rcx + rax*4], ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_386
.label_384:
	mov	rdi, r14
	call	free
	jmp	.label_380
.label_383:
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	r14d, [rax + rax + 2]
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	word ptr cs:[rax + rax]
.label_379:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_385
	mov	rax,  qword ptr [word ptr [rip + signals]]
	mov	dword ptr [rax + rbx*4], r14d
.label_385:
	inc	rbx
	cmp	rbx, 0x41
	jne	.label_379
.label_380:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_382:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	usage
	.section	.text
	.align	16
	#Procedure 0x404ad5
	.globl sub_404ad5
	.type sub_404ad5, @function
sub_404ad5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ae0

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
	mov	rcx,  qword ptr [word ptr [rip + label_347]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_348]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_349]]
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
	#Procedure 0x404b4d
	.globl sub_404b4d
	.type sub_404b4d, @function
sub_404b4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x404b5d
	.globl sub_404b5d
	.type sub_404b5d, @function
sub_404b5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x404b67
	.globl sub_404b67
	.type sub_404b67, @function
sub_404b67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b70

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_77
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_387
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b95
	.globl sub_404b95
	.type sub_404b95, @function
sub_404b95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x404baa
	.globl sub_404baa
	.type sub_404baa, @function
sub_404baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0

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
	je	.label_388
	mov	qword ptr [rax], rbx
.label_388:
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
	#Procedure 0x404c9c
	.globl sub_404c9c
	.type sub_404c9c, @function
sub_404c9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ca0
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
	#Procedure 0x404ce9
	.globl sub_404ce9
	.type sub_404ce9, @function
sub_404ce9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0
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
	#Procedure 0x404d06
	.globl sub_404d06
	.type sub_404d06, @function
sub_404d06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d1a
	.globl sub_404d1a
	.type sub_404d1a, @function
sub_404d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_389
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_391]]
.label_389:
	xor	eax, eax
	jmp	.label_390
	.section	.text
	.align	16
	#Procedure 0x404d35
	.globl sub_404d35
	.type sub_404d35, @function
sub_404d35:

	nop	word ptr cs:[rax + rax]
.label_390:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d40

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
	je	.label_392
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_393
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_393
.label_392:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_393
	test	cl, cl
	jne	.label_393
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_393:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404da6
	.globl sub_404da6
	.type sub_404da6, @function
sub_404da6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0
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
	#Procedure 0x404dbf
	.globl sub_404dbf
	.type sub_404dbf, @function
sub_404dbf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404dca
	.globl sub_404dca
	.type sub_404dca, @function
sub_404dca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dd0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x404ddd
	.globl sub_404ddd
	.type sub_404ddd, @function
sub_404ddd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404de0
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
	#Procedure 0x404df0

	.globl unset_envvars
	.type unset_envvars, @function
unset_envvars:
	push	rbp
	push	r14
	push	rbx
	cmp	qword ptr [word ptr [rip + usvars_used]],  0
	je	.label_397
	xor	ebp, ebp
.label_395:
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_394
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rcx, qword ptr [rax + rbp*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_396
	xor	eax, eax
	call	__fprintf_chk
.label_394:
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rdi, qword ptr [rax + rbp*8]
	call	unsetenv
	test	eax, eax
	jne	.label_399
	inc	rbp
	cmp	rbp,  qword ptr [word ptr [rip + usvars_used]]
	jb	.label_395
.label_397:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_399:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + usvars]]
	mov	rdi, qword ptr [rax + rbp*8]
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ea0
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
	#Procedure 0x404eaf
	.globl sub_404eaf
	.type sub_404eaf, @function
sub_404eaf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404eb0

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
	#Procedure 0x404ec7
	.globl sub_404ec7
	.type sub_404ec7, @function
sub_404ec7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0

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
	je	.label_409
	mov	edx, OFFSET FLAT:label_415
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_402
.label_409:
	mov	edx, OFFSET FLAT:label_404
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
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
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_410
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_411]]
.label_541:
	add	rsp, 8
	jmp	.label_403
.label_410:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
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
	jmp	.label_403
.label_542:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
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
.label_543:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
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
.label_544:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
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
.label_545:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
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
	jmp	.label_403
.label_546:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
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
	jmp	.label_403
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
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
	jmp	.label_403
.label_548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
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
	jmp	.label_403
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
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
	jmp	.label_403
.label_549:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
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
.label_403:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405228
	.globl sub_405228
	.type sub_405228, @function
sub_405228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40523e
	.globl sub_40523e
	.type sub_40523e, @function
sub_40523e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405240

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
	js	.label_419
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_422
	cmp	r12d, 0x7fffffff
	je	.label_424
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
	jne	.label_420
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_420:
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
.label_422:
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
	jbe	.label_425
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_421
.label_425:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_423
	mov	rdi, r14
	call	free
.label_423:
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
.label_421:
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
.label_419:
	call	abort
.label_424:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4053fd
	.globl sub_4053fd
	.type sub_4053fd, @function
sub_4053fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405400
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405408
	.globl sub_405408
	.type sub_405408, @function
sub_405408:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405410
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40541a
	.globl sub_40541a
	.type sub_40541a, @function
sub_40541a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420
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
	#Procedure 0x405439
	.globl sub_405439
	.type sub_405439, @function
sub_405439:

	nop	dword ptr [rax]
.label_427:
	cmp	edi, 0x7f
	je	.label_426
	xor	eax, eax
	jmp	.label_426
	.section	.text
	.align	16
	#Procedure 0x405449
	.globl sub_405449
	.type sub_405449, @function
sub_405449:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405458
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_427
.label_426:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405460

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_428
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_430
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_432
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_430
	mov	esi, OFFSET FLAT:label_431
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_433
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_433:
	mov	rbx, r14
.label_430:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_428:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_429
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405501
	.globl sub_405501
	.type sub_405501, @function
sub_405501:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405510

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
	#Procedure 0x405549
	.globl sub_405549
	.type sub_405549, @function
sub_405549:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405550

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
	#Procedure 0x405561
	.globl sub_405561
	.type sub_405561, @function
sub_405561:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405570
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
	#Procedure 0x405584
	.globl sub_405584
	.type sub_405584, @function
sub_405584:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405590
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_434
	call	rpl_calloc
	test	rax, rax
	je	.label_434
	pop	rcx
	ret	
.label_434:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4055b6
	.globl sub_4055b6
	.type sub_4055b6, @function
sub_4055b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0
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
	#Procedure 0x4055cd
	.globl sub_4055cd
	.type sub_4055cd, @function
sub_4055cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055d0

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
	je	.label_437
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_435
	jmp	.label_436
.label_437:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_436
.label_435:
	mov	eax, 1
	test	bpl, bpl
	je	.label_436
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
.label_436:
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
	#Procedure 0x405658
	.globl sub_405658
	.type sub_405658, @function
sub_405658:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660

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
	je	.label_438
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_440
	jmp	.label_439
.label_438:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_439
.label_440:
	mov	eax, 1
	test	bpl, bpl
	je	.label_439
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
.label_439:
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
	#Procedure 0x4056d9
	.globl sub_4056d9
	.type sub_4056d9, @function
sub_4056d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056e0

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
	je	.label_443
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_442
	jmp	.label_441
.label_443:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_441
.label_442:
	mov	eax, 1
	test	bpl, bpl
	je	.label_441
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
.label_441:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405743
	.globl sub_405743
	.type sub_405743, @function
sub_405743:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405750

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
	je	.label_446
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_444
	jmp	.label_445
.label_446:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_445
.label_444:
	mov	eax, 1
	test	bpl, bpl
	je	.label_445
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_445:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057af
	.globl sub_4057af
	.type sub_4057af, @function
sub_4057af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4057b0

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
	je	.label_447
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_449
	jmp	.label_448
.label_447:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_448
.label_449:
	mov	eax, 1
	test	bpl, bpl
	je	.label_448
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_448:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057f9
	.globl sub_4057f9
	.type sub_4057f9, @function
sub_4057f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405800

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
	je	.label_452
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_451
	jmp	.label_450
.label_452:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_450
.label_451:
	mov	eax, 1
	test	bpl, bpl
	je	.label_450
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_450:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405845
	.globl sub_405845
	.type sub_405845, @function
sub_405845:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405850

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_455
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_454
	jmp	.label_453
.label_455:
	mov	eax, 1
	test	cl, cl
	je	.label_453
.label_454:
	xor	eax, eax
.label_453:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40587f
	.globl sub_40587f
	.type sub_40587f, @function
sub_40587f:

	nop	
.label_459:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405885
	.globl sub_405885
	.type sub_405885, @function
sub_405885:

	nop	dword ptr [rax]
.label_460:
	call	xalloc_die
.label_458:
	test	rcx, rcx
	jne	.label_456
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_456:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_459
.label_457:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x4058d3

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_458
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_460
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_457
	.section	.text
	.align	16
	#Procedure 0x405900
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_461
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_461:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405923
	.globl sub_405923
	.type sub_405923, @function
sub_405923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_462
	test	rax, rax
	je	.label_463
.label_462:
	pop	rbx
	ret	
.label_463:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40594a
	.globl sub_40594a
	.type sub_40594a, @function
sub_40594a:

	nop	word ptr [rax + rax]
.label_466:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_465
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_464
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_466
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4059c9

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_467
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_468
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_468
.label_467:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_469
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_469:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405a10

	.globl parse_split_string
	.type parse_split_string, @function
parse_split_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbx
	nop	
.label_481:
	movsx	rcx, byte ptr [rbx + 1]
	inc	rbx
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_481
	test	cl, cl
	je	.label_484
	mov	esi, dword ptr [r14]
	sub	esi,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, rbx
	call	build_argv
	mov	r12, rax
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax]
	mov	qword ptr [r12], rax
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	mov	rax, r12
	jne	.label_475
	lea	rbp, [r12 + 8]
	cmp	qword ptr [rbp], 0
	mov	rax, r12
	je	.label_475
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_473
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	cmp	byte ptr [byte ptr [rip + dev_debug]],  1
	jne	.label_478
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, r12
	add	rbp, 0x10
	mov	rdi, qword ptr [r12 + 8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_471
	jmp	.label_472
	.section	.text
	.align	16
	#Procedure 0x405ad8
	.globl sub_405ad8
	.type sub_405ad8, @function
sub_405ad8:

	nop	dword ptr [rax + rax]
.label_475:
	cmp	qword ptr [rax + 8], 0
	lea	rax, [rax + 8]
	jne	.label_475
	jmp	.label_480
.label_472:
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	bl,  byte ptr [byte ptr [rip + dev_debug]]
.label_478:
	mov	rdi, qword ptr [rbp]
	nop	word ptr cs:[rax + rax]
.label_474:
	test	rdi, rdi
	je	.label_483
	test	bl, 1
	je	.label_474
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	add	rbp, 8
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_479
	jmp	.label_472
.label_483:
	mov	rax, rbp
.label_480:
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, dword ptr [r14]
	jge	.label_482
	movsxd	rdx, dword ptr [r14]
	nop	dword ptr [rax + rax]
.label_476:
	mov	rsi, qword ptr [r15]
	mov	rsi, qword ptr [rsi + rcx*8]
	mov	qword ptr [rax], rsi
	add	rax, 8
	inc	rcx
	cmp	rcx, rdx
	jl	.label_476
.label_482:
	mov	qword ptr [rax], 0
	xor	eax, eax
	cmp	qword ptr [r12], 0
	je	.label_477
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_470:
	cmp	qword ptr [r12 + rax*8 + 8], 0
	lea	rax, [rax + 1]
	jne	.label_470
.label_477:
	mov	dword ptr [r14], eax
	mov	qword ptr [r15], r12
	mov	dword ptr [dword ptr [rip + optind]],  0
.label_484:
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
	#Procedure 0x405bab
	.globl sub_405bab
	.type sub_405bab, @function
sub_405bab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_494
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, 0xffffffff
	cmp	rdx, r15
	je	.label_485
	cmp	byte ptr [rdx], 0
	jne	.label_485
	cmp	dword ptr [rbx], 0
	jne	.label_485
	cmp	eax, -1
	je	.label_485
	movsxd	rdx, eax
	cmp	rdx, rax
	jne	.label_485
	cmp	eax, 0xfe
	mov	edx, 0xff
	mov	ecx, 0x7f
	cmovg	ecx, edx
	and	ecx, eax
.label_485:
	mov	dword ptr [rsp + 4], ecx
	jmp	.label_493
.label_494:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_496
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_487:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_489
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_491
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_491:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_487
.label_496:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_486
	cmp	byte ptr [r12], 0x53
	jne	.label_488
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_488
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_488
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_486
.label_488:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_486:
	mov	rdi, r12
	call	free
.label_493:
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_492
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_490
.label_492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_495
.label_490:
	mov	eax, dword ptr [rsp + 4]
.label_495:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d21
	.globl sub_405d21
	.type sub_405d21, @function
sub_405d21:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d30

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
	jne	.label_504
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
	je	.label_497
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_501
	mov	eax, OFFSET FLAT:label_502
	jmp	.label_500
.label_503:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_168
	mov	eax, OFFSET FLAT:label_150
.label_500:
	cmove	rax, rcx
.label_504:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405daf
	.globl sub_405daf
	.type sub_405daf, @function
sub_405daf:

	nop	dword ptr [rax]
.label_497:
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
	je	.label_503
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_498
	mov	eax, OFFSET FLAT:label_499
	jmp	.label_500
	.section	.text
	.align	16
	#Procedure 0x405df0

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbx
	mov	rbx, rsi
	call	str2signum
	mov	dword ptr [rbx], eax
	sar	eax, 0x1f
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e00
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e0a
	.globl sub_405e0a
	.type sub_405e0a, @function
sub_405e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e10

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x405e15
	.globl sub_405e15
	.type sub_405e15, @function
sub_405e15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e20
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
	#Procedure 0x405e33
	.globl sub_405e33
	.type sub_405e33, @function
sub_405e33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_505
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_507:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_507
.label_505:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_509
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_508]], OFFSET FLAT:slot0
.label_509:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_506
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_506:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ed1
	.globl sub_405ed1
	.type sub_405ed1, @function
sub_405ed1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ee0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_510
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405f10

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
	je	.label_511
	cmp	r15, -2
	jb	.label_511
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_511
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_511:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f66
	.globl sub_405f66
	.type sub_405f66, @function
sub_405f66:

	nop	word ptr cs:[rax + rax]
.label_512:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_514:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_515
	inc	r9
	cmp	r9, 0xa
	jb	.label_513
.label_515:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f9f
	.globl sub_405f9f
	.type sub_405f9f, @function
sub_405f9f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405fa0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_513:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_512
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_514
	.section	.text
	.align	16
	#Procedure 0x405fc9
	.globl sub_405fc9
	.type sub_405fc9, @function
sub_405fc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406035
	.globl sub_406035
	.type sub_406035, @function
sub_406035:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406042
	.globl sub_406042
	.type sub_406042, @function
sub_406042:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406066
	.globl sub_406066
	.type sub_406066, @function
sub_406066:

	nop	word ptr cs:[rax + rax]
