	.section	.text
	.align	32
	#Procedure 0x401600

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
.label_9:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4016e0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_15
	nop	
.label_28:
	mov	edi, OFFSET FLAT:label_19
	call	strcmp
	test	eax, eax
	je	.label_26
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_28
.label_26:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_19
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_16
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_16
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_19
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_23
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401800

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_23
	call	setlocale
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_38
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_37
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, -1
	jne	.label_47
	cmp	dword ptr [dword ptr [rip + optind]],  r14d
	jne	.label_48
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	call	getuid
	mov	r14d, eax
	cmp	r14d, -1
	jne	.label_34
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	jne	.label_36
.label_34:
	mov	dword ptr [rbp], 0
	call	getegid
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_40
	mov	r15d, dword ptr [rbp]
	test	r15d, r15d
	jne	.label_42
.label_40:
	mov	dword ptr [rbp], 0
	call	getgid
	cmp	eax, -1
	jne	.label_44
	mov	ebp, dword ptr [rbp]
	test	ebp, ebp
	jne	.label_46
.label_44:
	xor	edi, edi
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, r14d
	mov	edx, eax
	mov	ecx, ebx
	call	print_group_list
	mov	r15b, al
	mov	edi, 0xa
	call	putchar_unlocked
	jmp	.label_31
.label_48:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	r15b, 1
	cmp	eax, r14d
	jge	.label_31
	mov	r15b, 1
.label_43:
	cdqe	
	mov	rdi, qword ptr [r12 + rax*8]
	call	getpwnam
	test	rax, rax
	je	.label_39
	mov	ebx, dword ptr [rax + 0x10]
	mov	ebp, dword ptr [rax + 0x14]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [r12 + rax*8]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_41
	xor	eax, eax
	call	__printf_chk
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r12 + rax*8]
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, ebx
	mov	edx, ebp
	mov	ecx, ebp
	call	print_group_list
	mov	ebx, eax
	test	bl, bl
	je	.label_49
	mov	ebx, r15d
.label_49:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	r15b, bl
	jmp	.label_30
	nop	dword ptr [rax]
.label_39:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r12 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_30:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r14d
	jl	.label_43
.label_31:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_47:
	cmp	eax, 0xffffff7d
	je	.label_51
	cmp	eax, 0xffffff7e
	jne	.label_52
	xor	edi, edi
	call	usage
.label_51:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_19
	mov	edx, OFFSET FLAT:label_17
	mov	r8d, OFFSET FLAT:label_32
	mov	r9d, OFFSET FLAT:label_33
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_52:
	mov	edi, 1
	call	usage
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	call	error
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	.section	.text
	.align	32
	#Procedure 0x401ac0

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], r9d
	mov	ebx, r8d
	mov	r14d, ecx
	mov	r13d, edx
	mov	r12, rdi
	mov	r15b, 1
	xor	ebp, ebp
	test	r12, r12
	je	.label_53
	mov	edi, esi
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	setne	r15b
.label_53:
	movzx	esi, bl
	mov	edi, r13d
	mov	dword ptr [rsp + 0xc], esi
	call	print_group
	mov	bl, al
	test	bl, bl
	je	.label_55
	mov	bl, r15b
.label_55:
	cmp	r14d, r13d
	je	.label_59
	mov	eax, dword ptr [rsp + 8]
	movsx	edi, al
	call	putchar_unlocked
	mov	edi, r14d
	mov	esi, dword ptr [rsp + 0xc]
	call	print_group
	test	al, al
	je	.label_65
	mov	eax, ebx
.label_65:
	mov	bl, al
.label_59:
	test	rbp, rbp
	mov	esi, r14d
	je	.label_67
	mov	esi, dword ptr [rbp + 0x14]
.label_67:
	lea	rdx, [rsp + 0x10]
	mov	rdi, r12
	call	xgetgroups
	test	eax, eax
	js	.label_61
	je	.label_60
	mov	ecx, dword ptr [rsp + 8]
	movsx	r12d, cl
	movsxd	rbp, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_64:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + r15*4]
	cmp	eax, r13d
	je	.label_63
	cmp	eax, r14d
	je	.label_63
	mov	edi, r12d
	call	putchar_unlocked
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + r15*4]
	mov	esi, dword ptr [rsp + 0xc]
	call	print_group
	test	al, al
	je	.label_62
	mov	eax, ebx
.label_62:
	mov	bl, al
.label_63:
	inc	r15
	cmp	r15, rbp
	jl	.label_64
.label_60:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	and	bl, 1
	jmp	.label_66
.label_61:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	r12, r12
	je	.label_54
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_58
.label_54:
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_58:
	xor	ebx, ebx
.label_66:
	mov	eax, ebx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c30

	.globl print_group
	.type print_group, @function
print_group:
	push	rbx
	sub	rsp, 0x10
	mov	dword ptr [rsp + 0xc], edi
	mov	bl, 1
	test	sil, sil
	je	.label_68
	call	getgrgid
	test	rax, rax
	je	.label_69
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_71
.label_69:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
.label_68:
	lea	rdi, [rsp + 0xc]
	call	gidtostr_ptr
	mov	rdi, rax
.label_71:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0

	.globl gidtostr_ptr
	.type gidtostr_ptr, @function
gidtostr_ptr:
	mov	edi, dword ptr [rdi]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	jmp	umaxtostr
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401cb0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cc0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_72
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_74
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_74
.label_72:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_73
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_75
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_73:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_75:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d90

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_79
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401de0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_80
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_82
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_82
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_85
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_85:
	mov	rbx, r14
.label_82:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_80:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_81
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e90
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ed0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x401ee0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x401ef0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_86
	test	rdx, rdx
	je	.label_86
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_86:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402000

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
.label_121:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_124
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_128]]
.label_373:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_133
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_138
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_374:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_147
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_147
	xor	r14d, r14d
.label_157:
	cmp	r14, r11
	jae	.label_154
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_154:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_157
.label_147:
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
	jmp	.label_173
.label_366:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_173
.label_369:
	mov	al, 1
.label_367:
	mov	r12b, 1
.label_370:
	test	r12b, 1
	mov	cl, 1
	je	.label_177
	mov	ecx, eax
.label_177:
	mov	al, cl
.label_368:
	test	r12b, 1
	jne	.label_180
	test	r11, r11
	je	.label_182
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_182:
	mov	r14d, 1
	jmp	.label_186
.label_180:
	xor	r14d, r14d
.label_186:
	mov	ecx, OFFSET FLAT:label_138
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_173
.label_371:
	test	r12b, 1
	jne	.label_197
	test	r11, r11
	je	.label_119
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_119:
	mov	r14d, 1
	jmp	.label_200
.label_372:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_95
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_173
.label_197:
	xor	r14d, r14d
.label_200:
	mov	eax, OFFSET FLAT:label_95
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_173:
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
	jmp	.label_195
	nop	dword ptr [rax]
.label_158:
	inc	rsi
.label_195:
	cmp	rbp, -1
	je	.label_137
	cmp	rsi, rbp
	jne	.label_169
	jmp	.label_143
	nop	word ptr cs:[rax + rax]
.label_137:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_143
.label_169:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_149
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_151
	cmp	rbp, -1
	jne	.label_151
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
.label_151:
	cmp	rbx, rbp
	jbe	.label_162
.label_149:
	xor	r8d, r8d
.label_171:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_164
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_167]]
.label_409:
	test	rsi, rsi
	jne	.label_161
	jmp	.label_94
	nop	
.label_162:
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
	jne	.label_184
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_171
	jmp	.label_104
.label_184:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_171
.label_413:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_89
	test	rsi, rsi
	jne	.label_91
	cmp	rbp, 1
	je	.label_94
	xor	r13d, r13d
	jmp	.label_90
.label_402:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_99
	cmp	byte ptr [rsp + 7], 0
	jne	.label_100
	cmp	r12d, 2
	jne	.label_102
	mov	eax, r9d
	and	al, 1
	jne	.label_102
	cmp	r14, r11
	jae	.label_163
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_163:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_109
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_109:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_113
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_113:
	add	r14, 3
	mov	r9b, 1
.label_102:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_120
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_120:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_123
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_123
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_123
	cmp	r14, r11
	jae	.label_134
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_134:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_106
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_106:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_90
.label_403:
	mov	bl, 0x62
	jmp	.label_145
.label_404:
	mov	cl, 0x74
	jmp	.label_148
.label_405:
	mov	bl, 0x76
	jmp	.label_145
.label_406:
	mov	bl, 0x66
	jmp	.label_145
.label_407:
	mov	cl, 0x72
	jmp	.label_148
.label_410:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_153
	cmp	byte ptr [rsp + 7], 0
	jne	.label_100
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
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_170
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_170:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_174
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_174:
	add	r14, 3
	xor	r9d, r9d
.label_153:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_90
.label_411:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_183
	cmp	r12d, 2
	jne	.label_161
	cmp	byte ptr [rsp + 7], 0
	je	.label_161
	jmp	.label_100
.label_412:
	cmp	r12d, 2
	jne	.label_193
	cmp	byte ptr [rsp + 7], 0
	jne	.label_100
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_98
.label_164:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_190
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
.label_142:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_114
	test	r8b, r8b
	je	.label_114
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_90
.label_89:
	test	rsi, rsi
	jne	.label_122
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_122
.label_94:
	mov	dl, 1
.label_408:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_100
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_90:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_129
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_131
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_129:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_135
.label_131:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_139
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_98
	jmp	.label_116
	nop	dword ptr [rax]
.label_135:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_116
	jmp	.label_98
.label_139:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_116
.label_99:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_158
	xor	r15d, r15d
	jmp	.label_161
.label_193:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_148
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_98
.label_148:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_100
.label_145:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_90
	nop	word ptr cs:[rax + rax]
.label_116:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_100
	cmp	r12d, 2
	jne	.label_178
	mov	eax, r9d
	and	al, 1
	jne	.label_178
	cmp	r14, r11
	jae	.label_181
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_181:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_103
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_103:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_189
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_189:
	add	r14, 3
	mov	r9b, 1
.label_178:
	cmp	r14, r11
	jae	.label_196
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_196:
	inc	r14
	jmp	.label_198
.label_190:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_201
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_201:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_187:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_108
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_111
	cmp	rbp, -2
	je	.label_144
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_117
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_146:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_191
	bt	rsi, rdx
	jb	.label_104
.label_191:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_146
.label_117:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_141
	xor	r13d, r13d
.label_141:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_187
	jmp	.label_142
.label_123:
	xor	r13d, r13d
	jmp	.label_90
.label_122:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_90
.label_183:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_161
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_161
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_161
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_165
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_168
	cmp	byte ptr [rsp + 7], 0
	jne	.label_100
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_194
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_185
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_185:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_188
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_188:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_90
.label_161:
	xor	eax, eax
.label_91:
	xor	r13d, r13d
	jmp	.label_90
.label_114:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_199
	nop	word ptr cs:[rax + rax]
.label_156:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_199:
	test	r8b, r8b
	je	.label_92
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_93
	cmp	r14, r11
	jae	.label_96
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_96:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_93
	nop	dword ptr [rax]
.label_92:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_104
	cmp	r12d, 2
	jne	.label_107
	mov	eax, r9d
	and	al, 1
	jne	.label_107
	cmp	r14, r11
	jae	.label_110
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_110:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_112
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_112:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_118
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_118:
	add	r14, 3
	mov	r9b, 1
.label_107:
	cmp	r14, r11
	jae	.label_192
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_192:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_126
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_126:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_132
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_132:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_93:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_98
	test	r9b, 1
	je	.label_88
	mov	ebx, eax
	and	bl, 1
	jne	.label_88
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_150
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_150:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_152:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_88:
	cmp	r14, r11
	jae	.label_156
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_156
	nop	word ptr cs:[rax + rax]
.label_98:
	test	r9b, 1
	je	.label_101
	and	al, 1
	jne	.label_101
	cmp	r14, r11
	jae	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_166:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_136
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_136:
	add	r14, 2
	xor	r9d, r9d
.label_101:
	mov	ebx, r15d
.label_198:
	cmp	r14, r11
	jae	.label_176
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_176:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_158
.label_111:
	xor	r13d, r13d
.label_108:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_142
.label_144:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_130
	mov	rsi, qword ptr [rsp + 0x50]
.label_172:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_155
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_172
	xor	r13d, r13d
	jmp	.label_142
.label_130:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_142
.label_155:
	xor	r13d, r13d
	jmp	.label_142
.label_165:
	xor	r13d, r13d
	jmp	.label_90
.label_168:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_90
	nop	dword ptr [rax + rax]
.label_143:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_97
	or	dl, al
	je	.label_104
.label_97:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_105
	or	dl, al
	jne	.label_105
	test	r10b, 1
	jne	.label_115
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_105
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_121
.label_105:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_125
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_127
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_127
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_140:
	cmp	r14, r11
	jae	.label_159
	mov	byte ptr [rcx + r14], al
.label_159:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_140
	jmp	.label_127
.label_100:
	mov	qword ptr [rsp + 0x20], rbp
.label_104:
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
.label_179:
	mov	r14, rax
.label_87:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_115:
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
	jmp	.label_179
.label_125:
	mov	rcx, qword ptr [rsp + 8]
.label_127:
	cmp	r14, r11
	jae	.label_87
	mov	byte ptr [rcx + r14], 0
	jmp	.label_87
.label_124:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402dc0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0

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
	je	.label_202
	mov	qword ptr [rax], rbx
.label_202:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_203
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_206:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_206
.label_203:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_207
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_204]], OFFSET FLAT:slot0
.label_207:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_205
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_205:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f60

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x402f70

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
	js	.label_211
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_214
	cmp	r12d, 0x7fffffff
	je	.label_209
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
	jne	.label_212
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_212:
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
.label_214:
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
	jbe	.label_210
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_213
.label_210:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_208
	mov	rdi, r14
	call	free
.label_208:
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
.label_213:
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
.label_211:
	call	abort
.label_209:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403130

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403140
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403150
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
	#Procedure 0x403160

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0

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
	je	.label_215
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
.label_215:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403200

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403240
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403260
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280

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
	mov	rcx,  qword ptr [word ptr [rip + label_216]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403300

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403310
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403320
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403370

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403380

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
	mov	rax,  qword ptr [word ptr [rip + label_216]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033f0
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403410
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403430

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403440
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
	#Procedure 0x403450

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403460

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403470

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
	jne	.label_223
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
	je	.label_219
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_224
	mov	eax, OFFSET FLAT:label_225
	jmp	.label_222
.label_219:
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
	je	.label_226
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_220
	mov	eax, OFFSET FLAT:label_221
	jmp	.label_222
.label_226:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_95
	mov	eax, OFFSET FLAT:label_138
.label_222:
	cmove	rax, rcx
.label_223:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403530

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
	je	.label_227
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_229
	jmp	.label_228
.label_227:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_228
.label_229:
	mov	eax, 1
	test	bpl, bpl
	je	.label_228
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
.label_228:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035b0

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
	je	.label_232
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_230
	jmp	.label_231
.label_232:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_231
.label_230:
	mov	eax, 1
	test	bpl, bpl
	je	.label_231
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
.label_231:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403640

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
	je	.label_233
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_235
	jmp	.label_234
.label_233:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_234
.label_235:
	mov	eax, 1
	test	bpl, bpl
	je	.label_234
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
.label_234:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036c0

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
	je	.label_238
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_237
	jmp	.label_236
.label_238:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_236
.label_237:
	mov	eax, 1
	test	bpl, bpl
	je	.label_236
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
.label_236:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403730

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
	je	.label_241
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_239
	jmp	.label_240
.label_241:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_240
.label_239:
	mov	eax, 1
	test	bpl, bpl
	je	.label_240
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_240:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403790

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
	je	.label_242
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_244
	jmp	.label_243
.label_242:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_243
.label_244:
	mov	eax, 1
	test	bpl, bpl
	je	.label_243
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_243:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0

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
	je	.label_247
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_246
	jmp	.label_245
.label_247:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_245
.label_246:
	mov	eax, 1
	test	bpl, bpl
	je	.label_245
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_245:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403830

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_248
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_250
	jmp	.label_249
.label_248:
	mov	eax, 1
	test	cl, cl
	je	.label_249
.label_250:
	xor	eax, eax
.label_249:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403860

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
	je	.label_263
	mov	edx, OFFSET FLAT:label_254
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_260
.label_263:
	mov	edx, OFFSET FLAT:label_261
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_260:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
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
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_266
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_267]]
.label_375:
	add	rsp, 8
	jmp	.label_253
.label_266:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
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
	jmp	.label_253
.label_376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
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
.label_377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
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
.label_378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
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
.label_379:
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
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_253
.label_380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
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
	jmp	.label_253
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
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
	jmp	.label_253
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
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
	jmp	.label_253
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
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
	jmp	.label_253
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
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
.label_253:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_270:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_270
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bf0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_272:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_271
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_273
	nop	dword ptr [rax]
.label_271:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_273:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_274
	inc	r9
	cmp	r9, 0xa
	jb	.label_272
.label_274:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403c50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_275
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_275:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ce0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_277
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_280
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_280:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_281
	test	rax, rax
	je	.label_282
.label_281:
	pop	rbx
	ret	
.label_282:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403db0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_283
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_283:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_284
	test	rbx, rbx
	jne	.label_284
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_284:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_286
	test	rax, rax
	je	.label_285
.label_286:
	pop	rbx
	ret	
.label_285:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403e10

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_287
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_290
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_288
.label_287:
	test	rcx, rcx
	jne	.label_291
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_291:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_289
.label_288:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_290:
	call	xalloc_die
.label_289:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e90

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ea0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403eb0
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_292
	call	rpl_calloc
	test	rax, rax
	je	.label_292
	pop	rcx
	ret	
.label_292:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f10

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f40
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403f90

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_295
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_294
.label_295:
	mov	eax, ebx
	pop	rbx
	ret	
.label_294:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403fb0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_296
	test	rsi, rsi
	mov	ecx, 1
	je	.label_297
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_297
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_296:
	mov	ecx, 1
.label_297:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404000

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
	je	.label_298
	cmp	r15, -2
	jb	.label_298
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_298
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_298:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404060
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_299
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_299
.label_300:
	ret	
.label_299:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_300
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404090
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_301
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_301:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4040b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4040d0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_302
.label_303:
	ret	
.label_302:
	cmp	edi, 0x7f
	je	.label_303
	xor	eax, eax
	jmp	.label_303
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040f0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404100
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404110
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404120
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404130
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_304
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_305]]
.label_306:
	ret	
.label_304:
	xor	eax, eax
	jmp	.label_306
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404150
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_307
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_307:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404170

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404180
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_308
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_308:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4041a0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041b0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0

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
	je	.label_309
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_310
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_310
.label_309:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_310
	test	cl, cl
	jne	.label_310
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_310:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_312
	cmp	byte ptr [rax], 0x43
	jne	.label_314
	cmp	byte ptr [rax + 1], 0
	je	.label_311
.label_314:
	mov	esi, OFFSET FLAT:label_313
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_312
.label_311:
	xor	ebx, ebx
.label_312:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404270

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_23
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_315
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042a0

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12d, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_324
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0xa
	call	realloc_groupbuf
	mov	rbx, rax
	mov	r13d, 0xffffffff
	test	rbx, rbx
	je	.label_320
	mov	r15d, r12d
	mov	qword ptr [rsp + 0x10], r14
	nop	
.label_318:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, rbp
	mov	esi, r15d
	mov	rdx, rbx
	lea	rcx, [rsp + 0xc]
	call	getgrouplist
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_319
	mov	eax, dword ptr [rsp + 0xc]
	cmp	r12d, eax
	jne	.label_319
	add	eax, eax
	mov	dword ptr [rsp + 0xc], eax
	nop	
.label_319:
	movsxd	rsi, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	call	realloc_groupbuf
	test	rax, rax
	je	.label_328
	test	r14d, r14d
	mov	rbx, rax
	js	.label_318
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r13d, dword ptr [rsp + 0xc]
	jmp	.label_320
.label_324:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_323
	cmp	r12d, -1
	jne	.label_325
	test	eax, eax
	jne	.label_327
.label_325:
	inc	dword ptr [rsp + 0xc]
.label_327:
	movsxd	rsi, dword ptr [rsp + 0xc]
	xor	edi, edi
	call	realloc_groupbuf
	mov	r15, rax
	mov	r13d, 0xffffffff
	test	r15, r15
	je	.label_320
	mov	edi, dword ptr [rsp + 0xc]
	xor	eax, eax
	cmp	r12d, -1
	setne	al
	sub	edi, eax
	lea	rsi, [r15 + rax*4]
	call	getgroups
	test	eax, eax
	js	.label_326
	cmp	r12d, -1
	mov	r13d, eax
	je	.label_321
	mov	dword ptr [r15], r12d
	inc	eax
	mov	r13d, eax
.label_321:
	mov	qword ptr [r14], r15
	cmp	r13d, 2
	jl	.label_320
	mov	eax, dword ptr [r15]
	movsxd	rcx, r13d
	lea	rcx, [r15 + rcx*4]
	mov	rdx, r15
	add	rdx, 4
	jmp	.label_317
.label_328:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
	jmp	.label_320
.label_323:
	call	__errno_location
	mov	r13d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_320
	xor	edi, edi
	mov	esi, 1
	call	realloc_groupbuf
	test	rax, rax
	je	.label_320
	mov	qword ptr [r14], rax
	mov	dword ptr [rax], r12d
	xor	r13d, r13d
	cmp	r12d, -1
	setne	r13b
	jmp	.label_320
.label_326:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_320
.label_322:
	mov	dword ptr [r15 + 4], esi
	add	r15, 4
	jmp	.label_316
	nop	dword ptr [rax]
.label_317:
	mov	esi, dword ptr [rdx]
	cmp	esi, eax
	je	.label_329
	cmp	esi, dword ptr [r15]
	jne	.label_322
.label_329:
	dec	r13d
.label_316:
	add	rdx, 4
	cmp	rdx, rcx
	jb	.label_317
.label_320:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404480

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rax
	mov	rax, rsi
	shr	rax, 0x3d
	je	.label_330
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_330:
	shl	rsi, 2
	call	realloc
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_331
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_333
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_331
.label_333:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_331
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_332
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_332:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_331:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404530

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_334
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_334
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_334:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404560

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_335
	ret	
.label_335:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404580

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
	jne	.label_336
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_336
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_337
.label_336:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_337:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_338
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_338:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x4045f0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
